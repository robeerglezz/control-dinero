-- MiDinero: pega este SQL completo en Supabase > SQL Editor y ejecútalo.
create table if not exists public.profiles (
  id uuid primary key references auth.users(id) on delete cascade,
  salt text not null,
  created_at timestamptz not null default now()
);

create table if not exists public.movements (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  type text not null check (type in ('income','expense')),
  amount numeric(12,2) not null check (amount > 0),
  payload text not null,
  created_at timestamptz not null default now()
);

alter table public.profiles enable row level security;
alter table public.movements enable row level security;

drop policy if exists "profiles own row" on public.profiles;
create policy "profiles own row" on public.profiles for all using (auth.uid() = id) with check (auth.uid() = id);

drop policy if exists "movements own rows" on public.movements;
create policy "movements own rows" on public.movements for all using (auth.uid() = user_id) with check (auth.uid() = user_id);

create index if not exists movements_user_created_idx on public.movements(user_id, created_at desc);
