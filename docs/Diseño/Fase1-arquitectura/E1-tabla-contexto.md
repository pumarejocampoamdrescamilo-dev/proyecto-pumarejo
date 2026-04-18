# E1 - Tabla de Contexto

Lista cada entidad externa con su tipo y descripción, más RIE y RF que la justifican.

| Entidad Externa | Tipo | Descripción (rol en el contexto) | RIE relacionados | RF que justifican |
| :--- | :--- | :--- | :--- | :--- |
| **Persona con Discapacidad Física** | Usuario | Usa el sistema para configurar perfil de movilidad, planificar rutas accesibles, navegar, reportar barreras y validar contenido. | RIE 01, 02, 03, 04, 05, 06, 07, 09 | RF01, RF02, RF03, RF04, RF05, RF06, RF07, RF08, RF12, RF13, RF14 |
| **Usuario General** | Usuario | Consulta mapa, busca destinos, planifica y navega rutas, reporta y valida incidencias; puede guardar/compartir rutas. | RIE 01, 03, 04, 05, 06, 07, 09 | RF03, RF04, RF05, RF06, RF07, RF08, RF12, RF13, RF14 |
| **Colaborador Ciudadano** | Usuario | Aporta datos a la comunidad: reporta barreras con foto, crea/edita POI accesibles y valida confiabilidad. | RIE 01, 06, 07 | RF11, RF12, RF13, RF14 |
| **Moderador / Administrador** | Usuario | Revisa cola de moderación, aprueba/rechaza contenido, resuelve conflictos y cuida la calidad. | RIE 10 | RF13, RF14 |
| **GPS del Dispositivo (OS)** | IH | Provee coordenadas actuales para centrar el mapa, calcular y recalcular rutas durante la navegación. | RIE 11 | RF06, RF02, RF07 |
| **Cámara / Galería del Dispositivo (OS)** | IH | Permite capturar o adjuntar fotos para reportes y POI accesibles. | RIE 12 | RF12, RF13 |
| **Proveedor de Mapas / Tiles** | IS | Suministra teselas de mapa y estilos para renderizar capas de accesibilidad. | RIE 13 | RF04 |
| **API de Geocodificación** | IS | Convierte texto de búsqueda en coordenadas (autocompletar y selección de destino). | RIE 14 | RF05 |
| **Motor de Ruteo Accesible** | IS | Calcula rutas accesibles según origen/destino y preferencias (evitar escaleras, pendiente). | RIE 15 | RF06, RF02 |
| **Servicio de Almacenamiento de Imágenes** | IS | Recibe cargas de imágenes y entrega URLs para mostrar en reportes/POI. | RIE 16 | RF12, RF11 |
| **Servicio de Notificaciones Push** | IS | Envía alertas sobre obstáculos y zonas peligrosas a los usuarios. | RIE 17 | RF07, RF03 |
| **Servicio/Módulo de Confianza** | IS | Registra votos y devuelve indicador de confiabilidad de reportes/POI. | RIE 18 | RF13, RF14 |
| **Servicio de Autenticación (OAuth/OIDC)** | IS | Maneja registro, inicio de sesión y tokens de acceso/renovación. | RIE 23 | RF-AU1, RF-AU2 |
| **Servidor de Correo Transaccional** | IC | Envía correos de verificación y recuperación de cuenta. | RIE 24 | - |