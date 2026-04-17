# Modelo Entidad-Relación

![DER](img/Diagrama%20en%20blanco%20(6).png)

## Consideraciones del Modelo

Debido a las limitaciones de la versión gratuita de la herramienta Lucidchart, no fue posible representar gráficamente todas las relaciones del modelo entidad-relación. Sin embargo, a continuación se describen las relaciones faltantes para garantizar la completitud del modelo:

* **Punto_Accesible – Imagen (1:N):** Un punto accesible puede tener múltiples imágenes asociadas, mientras que cada imagen puede estar vinculada opcionalmente a un único punto accesible.

* **Punto_Accesible – Moderacion (1:N):** Un punto accesible puede ser objeto de múltiples procesos de moderación, mientras que cada registro de moderación se asocia a un único punto accesible.

* **Reporte – Moderacion (1:N):** Un reporte puede ser moderado varias veces, mientras que cada registro de moderación corresponde a un único reporte.

Adicionalmente, se aclara que la relación entre **Usuario** y **Reporte** es de tipo **N:M**, la cual se encuentra correctamente normalizada mediante la entidad intermedia **Validacion**, donde un usuario puede validar múltiples reportes y un reporte puede ser validado por múltiples usuarios.

Con estas aclaraciones, el modelo refleja completamente las relaciones necesarias del sistema.
