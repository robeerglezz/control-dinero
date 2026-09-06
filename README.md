# MiDinero — PWA sincronizada

PWA móvil para controlar ingresos y gastos. Los movimientos se guardan localmente y, cuando el usuario inicia sesión, se sincronizan con Supabase. Antes de subir el contenido de cada movimiento, la PWA lo cifra en el navegador con AES-GCM; la clave se deriva de la contraseña mediante PBKDF2.

## Configuración
1. En Supabase ejecuta `supabase.sql`.
2. Edita `config.js` con la URL del proyecto y la Publishable key.
3. Sube todos los archivos a GitHub Pages o a cualquier hosting HTTPS.

No publiques nunca una `sb_secret_...`.

## Importante sobre la contraseña
La contraseña no se almacena en MiDinero. Se usa para derivar la clave de cifrado. Si borras la caché o cambias de dispositivo, inicia sesión con la misma contraseña para poder descifrar los movimientos.
