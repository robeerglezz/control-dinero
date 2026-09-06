# MiDinero — PWA sincronizada

PWA móvil-first para controlar ingresos y gastos.

## Funciones
- Registro paso a paso: tipo → cantidad → concepto/categoría → método/fecha → revisión.
- Saldo, ingresos, gastos, resumen mensual e historial.
- Búsqueda, filtros, borrado y exportación CSV.
- Inicio de sesión con email y contraseña.
- Sincronización entre iPhone, PC y otros dispositivos mediante Supabase.
- Los movimientos se cifran en el navegador con AES-256-GCM antes de subirse. La base de datos no guarda el concepto/categoría/método en texto legible.
- RLS: cada usuario solo puede leer/escribir sus propios registros.
- Copia local para tolerar cortes de conexión.

## Configuración de Supabase
1. Crea un proyecto en Supabase.
2. En **SQL Editor**, ejecuta `supabase.sql`.
3. Copia `config.example.js` a `config.js`.
4. En `config.js`, pon la URL del proyecto y la clave pública/anon del proyecto.
5. Sube todos los archivos a GitHub Pages.

### Importante sobre el cifrado
La contraseña de tu cuenta se usa para derivar la clave de cifrado de los movimientos mediante PBKDF2 + SHA-256. La clave no se envía a Supabase. Si pierdes la contraseña, los movimientos cifrados no se pueden recuperar desde la nube.

## Datos existentes
Al iniciar sesión, si ya tenías movimientos guardados localmente, la app intenta subirlos a tu cuenta y después descarga la copia sincronizada.

## Supabase gratis
La aplicación usa el cliente web de Supabase. El alojamiento/base de datos está sujeto a los límites y condiciones vigentes del plan de Supabase.
