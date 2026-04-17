##  Historias de Usuario (HU)

**HU01**
Como persona con discapacidad física residente en Medellín, quiero configurar mi perfil de movilidad para recibir rutas adaptadas a mis necesidades específicas.
**Criterio de aceptación:** El usuario puede seleccionar preferencias como uso de silla de ruedas, evitar escaleras y rutas iluminadas.

**HU02**
Como persona con discapacidad física residente en Medellín, quiero evitar rutas con escaleras para desplazarme sin barreras físicas.
**Criterio de aceptación:** El sistema filtra rutas que incluyan escaleras según la configuración del perfil.

**HU03**
Como residente de Medellín, quiero recibir información sobre zonas peligrosas para evitar riesgos durante mis desplazamientos.
**Criterio de aceptación:** El sistema muestra alertas visibles en el mapa sobre obstáculos o zonas peligrosas.

**HU04**
Como residente de Medellín, quiero acceder a rutas actualizadas en tiempo real para planificar mejor mis trayectos.
**Criterio de aceptación:** Las rutas se actualizan con base en reportes recientes de la comunidad.

**HU05**
Como residente de Medellín, quiero conocer beneficios disponibles para acceder a apoyos que mejoren mi calidad de vida.
**Criterio de aceptación:** El sistema muestra una lista clara de beneficios disponibles.

**HU06**
Como persona con discapacidad física de estratos 1 a 4 en Medellín, quiero que la aplicación me ayude a movilizarme de forma autónoma para reducir mi dependencia de terceros.
**Criterio de aceptación:** El sistema recomienda rutas accesibles personalizadas.

---

###  

**HU07**
Como usuario residente de Medellín, quiero recibir alertas de obstáculos en tiempo real para evitar zonas peligrosas.
**Criterio de aceptación:** El sistema muestra notificaciones visuales o audibles en el mapa.

**HU08**
Como usuario con discapacidad física, quiero ver rutas confiables para llegar a mi destino sin contratiempos.
**Criterio de aceptación:** Las rutas muestran indicadores de validación por otros usuarios.

**HU09**
Como nuevo usuario residente de Medellín, quiero una interfaz amigable para navegar fácilmente por la aplicación.
**Criterio de aceptación:** La interfaz es intuitiva y fácil de usar.

**HU10**
Como usuario residente de Medellín con discapacidad física, quiero ver la accesibilidad de lugares turísticos para disfrutar de la ciudad sin limitaciones.
**Criterio de aceptación:** El sistema muestra lugares turísticos accesibles con filtros.

---

###  

**HU11**
Como turista con discapacidad física, quiero acceder a tabletas en puntos estratégicos para conocer lugares accesibles y planificar recorridos.
**Criterio de aceptación:** El sistema permite consultar información desde dispositivos públicos.

---

###  

**HU12**
Como ciudadano colaborador, quiero subir imágenes de lugares accesibles para compartir información útil.
**Criterio de aceptación:** El usuario puede cargar imágenes asociadas a ubicaciones.

**HU13**
Como usuario colaborador, quiero participar en el mapeo de accesibilidad para mejorar la información disponible.
**Criterio de aceptación:** El sistema permite registrar y validar puntos accesibles.

**HU14**
Como ciudadano residente de Medellín, quiero confiar en el sistema colaborativo para contribuir a mejorar la accesibilidad urbana.
**Criterio de aceptación:** El sistema muestra indicadores de confianza basados en validaciones.


## Requisitos Funcionales (RF)

**RF01** – Configuración de perfil de movilidad
Descripción: El sistema debe permitir configurar preferencias del usuario.
Prioridad: Alta
Criterio de aceptación: El usuario puede guardar y modificar preferencias.

**RF02** – Filtrado de rutas accesibles
Descripción: El sistema debe excluir rutas con barreras físicas.
Prioridad: Alta
Criterio de aceptación: No se muestran rutas con escaleras si el usuario lo configura.

**RF03** – Alertas de zonas peligrosas
Descripción: El sistema debe mostrar alertas en tiempo real.
Prioridad: Alta
Criterio de aceptación: Las alertas aparecen en el mapa con iconos visibles.

**RF04** – Actualización en tiempo real
Descripción: El sistema debe actualizar rutas constantemente.
Prioridad: Alta
Criterio de aceptación: Cambios reflejados en menos de 5 minutos.

**RF05** – Consulta de beneficios
Descripción: El sistema debe mostrar beneficios disponibles.
Prioridad: Media
Criterio de aceptación: Información visible y accesible.

**RF06** – Recomendaciones personalizadas
Descripción: El sistema debe sugerir rutas adaptadas.
Prioridad: Alta
Criterio de aceptación: Se generan rutas según perfil.

**RF07** – Alertas de obstáculos
Descripción: El sistema debe notificar obstáculos.
Prioridad: Alta
Criterio de aceptación: Notificaciones visibles o audibles.

**RF08** – Visualización de rutas confiables
Descripción: El sistema debe mostrar rutas validadas.
Prioridad: Alta
Criterio de aceptación: Rutas con indicadores de confianza.

**RF09** – Interfaz accesible
Descripción: El sistema debe ser fácil de usar.
Prioridad: Alta
Criterio de aceptación: Navegación intuitiva.

**RF10** – Lugares turísticos accesibles
Descripción: El sistema debe mostrar sitios accesibles.
Prioridad: Media
Criterio de aceptación: Filtros disponibles por accesibilidad.

**RF11** – Integración con tabletas
Descripción: El sistema debe mostrar información en puntos físicos.
Prioridad: Baja
Criterio de aceptación: Acceso desde dispositivos públicos.

**RF12** – Subida de imágenes
Descripción: El sistema debe permitir subir evidencias.
Prioridad: Alta
Criterio de aceptación: Imágenes asociadas a ubicaciones.

**RF13** – Mapeo colaborativo
Descripción: El sistema debe permitir participación comunitaria.
Prioridad: Alta
Criterio de aceptación: Usuarios pueden registrar puntos.

**RF14** – Sistema de confianza
Descripción: El sistema debe mostrar confiabilidad.
Prioridad: Media
Criterio de aceptación: Indicadores visibles por validación.



##  Requisitos No Funcionales (RNF)

**RNF01 – Accesibilidad en dispositivos de gama baja**
Descripción: El sistema debe ser accesible desde dispositivos móviles de gama baja y compatible con lectores de pantalla.
Métrica: Funcionamiento correcto en dispositivos con mínimo 2GB de RAM y soporte para tecnologías de asistencia.

**RNF02 – Rendimiento**
Descripción: El sistema debe responder rápidamente al generar rutas accesibles.
Métrica: Tiempo de respuesta menor a 3 segundos.

**RNF03 – Seguridad de la información**
Descripción: El sistema debe garantizar la privacidad de los datos personales.
Métrica: Implementación de cifrado (HTTPS) y autenticación segura.

**RNF04 – Usabilidad en configuración**
Descripción: El sistema debe permitir la personalización del perfil sin conocimientos técnicos.
Métrica: El usuario puede completar la configuración en menos de 2 minutos.

**RNF05 – Alertas accesibles**
Descripción: Las alertas deben ser visibles y audibles.
Métrica: Las notificaciones incluyen señal visual y sonora configurable.

**RNF06 – Interfaz intuitiva**
Descripción: La interfaz debe ser fácil de usar para personas con baja alfabetización digital.
Métrica: El usuario puede navegar sin asistencia en pruebas de uso.

**RNF07 – Funcionamiento offline**
Descripción: El sistema debe funcionar sin conexión en zonas con baja cobertura.
Métrica: Acceso a rutas previamente descargadas sin conexión.

**RNF08 – Optimización de imágenes**
Descripción: Las imágenes deben ser comprimidas automáticamente.
Métrica: Reducción mínima del 50% del tamaño sin pérdida significativa de calidad.

**RNF09 – Visualización de zonas peligrosas**
Descripción: Las zonas peligrosas deben mostrarse claramente.
Métrica: Uso de iconos accesibles y colores contrastantes.

**RNF10 – Validación comunitaria**
Descripción: El sistema debe evitar información errónea.
Métrica: Mínimo 2 validaciones por punto antes de marcarlo como confiable.

**RNF11 – Actualización de rutas**
Descripción: Las rutas deben actualizarse automáticamente.
Métrica: Actualización cada máximo 5 minutos.

**RNF12 – Indicadores de confianza**
Descripción: El sistema debe mostrar niveles de confiabilidad.
Métrica: Visualización de puntuación basada en validaciones.

**RNF13 – Accesibilidad de beneficios**
Descripción: La información de beneficios debe ser accesible.
Métrica: Disponible en texto claro, audio y formato visual accesible.

**RNF14 – Recomendaciones éticas**
Descripción: El sistema debe ofrecer recomendaciones personalizadas sin comprometer la privacidad.
Métrica: No almacenamiento de datos sensibles sin consentimiento explícito.
