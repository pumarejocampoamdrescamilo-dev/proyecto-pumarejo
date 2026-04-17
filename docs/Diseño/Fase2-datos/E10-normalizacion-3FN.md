# Modelo Normalizado en Tercera Forma Normal (3FN)

A continuación se presenta el modelo de datos normalizado hasta la tercera forma normal (3FN):

![Modelo 3FN](img/Untitled%20(18).png)

## Justificación de los cambios hacia la Tercera Forma Normal (3FN)

Con el objetivo de mejorar la calidad del diseño de la base de datos y cumplir con los principios de la Tercera Forma Normal (3FN), se realizaron diversos ajustes al modelo relacional.

En primer lugar, se identificó el uso de atributos de tipo texto que podían generar redundancia e inconsistencias, como es el caso de los campos **"rol"** y **"estado"**. Para solucionar esto, dichos atributos fueron normalizados mediante la creación de tablas independientes (**rol** y **estado**), permitiendo gestionar estos valores como catálogos controlados y evitando la repetición de información.

Como parte de este proceso, estos atributos fueron reemplazados por claves foráneas dentro de las tablas correspondientes, garantizando la integridad referencial y asegurando la consistencia de los datos almacenados.

Adicionalmente, se realizó la separación del atributo **"tipo"** en la entidad **barrera**, dando origen a la tabla **tipo_barrera**. Esta decisión permite estandarizar los tipos de barreras, facilitar su mantenimiento y evitar inconsistencias en el registro de la información.

Estos cambios eliminan dependencias transitivas dentro del modelo, ya que los atributos no clave dejan de depender de otros atributos no clave y pasan a depender exclusivamente de la clave primaria de cada tabla.

Cabe resaltar que el resto del modelo ya cumplía con los principios de normalización, manteniendo una adecuada separación de entidades, un uso correcto de claves primarias y foráneas, y una resolución apropiada de relaciones muchos a muchos mediante tablas intermedias como **validacion**.

En conclusión, el modelo resultante cumple con la Tercera Forma Normal (3FN), garantizando un diseño más eficiente, consistente, escalable y libre de redundancias.
