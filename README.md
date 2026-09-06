# MiDinero PWA

## Qué es
PWA de control personal de dinero, optimizada para iPhone.

## Funciones
- Saldo total, ingresos y gastos.
- Registro de ingresos/gastos.
- Categorías y métodos.
- Historial, búsqueda y filtros.
- Estadísticas del mes.
- Modo oscuro/claro.
- Datos guardados localmente en el dispositivo.
- Funciona offline tras la primera carga.
- Exportación CSV para abrir en Numbers.

## Privacidad
No contiene analítica, publicidad ni código de seguimiento. En esta versión los movimientos se almacenan con `localStorage` en el navegador del dispositivo. No se envían a un servidor.

## Instalar en iPhone
1. Sube todos los archivos a un hosting con HTTPS.
2. Abre la web en Safari del iPhone.
3. Pulsa Compartir → Añadir a pantalla de inicio.
4. Ábrela desde el icono como una app.

## Numbers
Pulsa "Exportar" para crear `MiDinero.csv` y ábrelo con Numbers.

## Nube
Esta versión es deliberadamente local para mantener privacidad y cero coste. Una sincronización real entre dispositivos requiere un servicio de almacenamiento/sincronización; no se debe hacer pasar una PWA por conectada directamente a un archivo `.numbers`, porque Apple no ofrece una API web pública general para escribir ese formato.
