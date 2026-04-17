# Diccionario de Datos

---

## Tabla: usuario

Tabla que almacena la información básica de los usuarios del sistema.

| Campo           | Tipo    | Tamaño | Nulo | AI | Tipo Campo | Relación | Descripción                     |
| --------------- | ------- | ------ | ---- | -- | ---------- | -------- | ------------------------------- |
| id_usuario      | INT     | —      | NO   | SÍ | PK         | —        | Identificador único del usuario |
| nombre          | VARCHAR | 100    | NO   | NO | Atributo   | —        | Nombre completo                 |
| correo          | VARCHAR | 150    | NO   | NO | Atributo   | —        | Correo electrónico              |
| contrasena_hash | VARCHAR | 255    | NO   | NO | Atributo   | —        | Hash de contraseña              |
| rol             | VARCHAR | 30     | NO   | NO | Atributo   | —        | Rol del usuario                 |
| estado          | VARCHAR | 20     | NO   | NO | Atributo   | —        | Estado de la cuenta             |
| fecha_registro  | DATE    | —      | NO   | NO | Atributo   | —        | Fecha de registro               |

---

## Tabla: perfil_movilidad

Tabla que almacena las condiciones de movilidad del usuario.

| Campo              | Tipo    | Tamaño | Nulo | AI | Tipo Campo | Relación | Descripción              |
| ------------------ | ------- | ------ | ---- | -- | ---------- | -------- | ------------------------ |
| id_perfil          | INT     | —      | NO   | SÍ | PK         | —        | Identificador            |
| id_usuario         | INT     | —      | NO   | NO | FK         | usuario  | Usuario dueño            |
| usa_silla_ruedas   | BOOLEAN | —      | NO   | NO | Atributo   | —        | Uso de silla             |
| pendiente_maxima   | DECIMAL | 5,2    | NO   | NO | Atributo   | —        | Pendiente máxima         |
| evita_escaleras    | BOOLEAN | —      | NO   | NO | Atributo   | —        | Evita escaleras          |
| preferencias_texto | TEXT    | —      | SÍ   | NO | Atributo   | —        | Preferencias adicionales |

---

## Tabla: preferencia_accesibilidad

| Campo                   | Tipo    | Tamaño | Nulo | AI | Tipo Campo | Relación | Descripción         |
| ----------------------- | ------- | ------ | ---- | -- | ---------- | -------- | ------------------- |
| id_preferencia          | INT     | —      | NO   | SÍ | PK         | —        | Identificador       |
| id_usuario              | INT     | —      | NO   | NO | FK         | usuario  | Usuario             |
| priorizar_rampas        | BOOLEAN | —      | NO   | NO | Atributo   | —        | Prioriza rampas     |
| priorizar_ascensores    | BOOLEAN | —      | NO   | NO | Atributo   | —        | Prioriza ascensores |
| evitar_zonas_peligrosas | BOOLEAN | —      | NO   | NO | Atributo   | —        | Evita zonas         |

---

## Tabla: ruta

| Campo             | Tipo    | Tamaño | Nulo | AI | Tipo Campo | Relación | Descripción   |
| ----------------- | ------- | ------ | ---- | -- | ---------- | -------- | ------------- |
| id_ruta           | INT     | —      | NO   | SÍ | PK         | —        | Identificador |
| id_usuario        | INT     | —      | NO   | NO | FK         | usuario  | Usuario       |
| origen            | VARCHAR | 150    | NO   | NO | Atributo   | —        | Punto inicio  |
| destino           | VARCHAR | 150    | NO   | NO | Atributo   | —        | Punto final   |
| distancia         | DECIMAL | 10,2   | NO   | NO | Atributo   | —        | Distancia     |
| duracion_estimada | INT     | —      | NO   | NO | Atributo   | —        | Duración      |
| fecha_creacion    | DATE    | —      | NO   | NO | Atributo   | —        | Fecha         |

---

## Tabla: segmento_ruta

| Campo       | Tipo    | Tamaño | Nulo | AI | Tipo Campo | Relación | Descripción     |
| ----------- | ------- | ------ | ---- | -- | ---------- | -------- | --------------- |
| id_segmento | INT     | —      | NO   | SÍ | PK         | —        | Identificador   |
| id_ruta     | INT     | —      | NO   | NO | FK         | ruta     | Ruta            |
| lat_inicio  | DECIMAL | 10,6   | NO   | NO | Atributo   | —        | Latitud inicio  |
| lon_inicio  | DECIMAL | 10,6   | NO   | NO | Atributo   | —        | Longitud inicio |
| lat_fin     | DECIMAL | 10,6   | NO   | NO | Atributo   | —        | Latitud fin     |
| lon_fin     | DECIMAL | 10,6   | NO   | NO | Atributo   | —        | Longitud fin    |
| pendiente   | DECIMAL | 5,2    | NO   | NO | Atributo   | —        | Pendiente       |

---

## Tabla: barrera

| Campo       | Tipo    | Tamaño | Nulo | AI | Tipo Campo | Relación | Descripción   |
| ----------- | ------- | ------ | ---- | -- | ---------- | -------- | ------------- |
| id_barrera  | INT     | —      | NO   | SÍ | PK         | —        | Identificador |
| tipo        | VARCHAR | 50     | NO   | NO | Atributo   | —        | Tipo          |
| severidad   | VARCHAR | 30     | NO   | NO | Atributo   | —        | Severidad     |
| latitud     | DECIMAL | 10,6   | NO   | NO | Atributo   | —        | Latitud       |
| longitud    | DECIMAL | 10,6   | NO   | NO | Atributo   | —        | Longitud      |
| descripcion | TEXT    | —      | SÍ   | NO | Atributo   | —        | Descripción   |

---

## Tabla: reporte

| Campo           | Tipo    | Tamaño | Nulo | AI | Tipo Campo | Relación | Descripción   |
| --------------- | ------- | ------ | ---- | -- | ---------- | -------- | ------------- |
| id_reporte      | INT     | —      | NO   | SÍ | PK         | —        | Identificador |
| id_usuario      | INT     | —      | NO   | NO | FK         | usuario  | Usuario       |
| id_barrera      | INT     | —      | NO   | NO | FK         | barrera  | Barrera       |
| fecha_reporte   | DATE    | —      | NO   | NO | Atributo   | —        | Fecha         |
| estado          | VARCHAR | 30     | NO   | NO | Atributo   | —        | Estado        |
| nivel_confianza | DECIMAL | 5,2    | NO   | NO | Atributo   | —        | Confianza     |

---

## Tabla: validacion

| Campo            | Tipo    | Tamaño | Nulo | AI | Tipo Campo | Relación | Descripción          |
| ---------------- | ------- | ------ | ---- | -- | ---------- | -------- | -------------------- |
| id_validacion    | INT     | —      | NO   | SÍ | PK         | —        | Identificador        |
| id_usuario       | INT     | —      | NO   | NO | FK         | usuario  | Usuario              |
| id_reporte       | INT     | —      | NO   | NO | FK         | reporte  | Reporte              |
| voto             | VARCHAR | 20     | NO   | NO | Atributo   | —        | Confirmo / No existe |
| fecha_validacion | DATE    | —      | NO   | NO | Atributo   | —        | Fecha                |

**Restricción:** Un usuario solo puede validar un reporte una vez (UNIQUE id_usuario + id_reporte)

---

## Tabla: punto_accesible

| Campo           | Tipo    | Tamaño | Nulo | AI | Tipo Campo | Relación | Descripción   |
| --------------- | ------- | ------ | ---- | -- | ---------- | -------- | ------------- |
| id_punto        | INT     | —      | NO   | SÍ | PK         | —        | Identificador |
| id_usuario      | INT     | —      | NO   | NO | FK         | usuario  | Usuario       |
| categoria       | VARCHAR | 50     | NO   | NO | Atributo   | —        | Categoría     |
| latitud         | DECIMAL | 10,6   | NO   | NO | Atributo   | —        | Latitud       |
| longitud        | DECIMAL | 10,6   | NO   | NO | Atributo   | —        | Longitud      |
| nivel_confianza | DECIMAL | 5,2    | NO   | NO | Atributo   | —        | Confianza     |
| estado          | VARCHAR | 30     | NO   | NO | Atributo   | —        | Estado        |

---

## Tabla: imagen

| Campo        | Tipo    | Tamaño | Nulo | AI | Tipo Campo | Relación        | Descripción   |
| ------------ | ------- | ------ | ---- | -- | ---------- | --------------- | ------------- |
| id_imagen    | INT     | —      | NO   | SÍ | PK         | —               | Identificador |
| id_usuario   | INT     | —      | NO   | NO | FK         | usuario         | Usuario       |
| id_reporte   | INT     | —      | SÍ   | NO | FK         | reporte         | Reporte       |
| id_punto     | INT     | —      | SÍ   | NO | FK         | punto_accesible | Punto         |
| url          | VARCHAR | 255    | NO   | NO | Atributo   | —               | Ruta imagen   |
| fecha_subida | DATE    | —      | NO   | NO | Atributo   | —               | Fecha         |

---

## Tabla: comentario

| Campo         | Tipo | Tamaño | Nulo | AI | Tipo Campo | Relación | Descripción   |
| ------------- | ---- | ------ | ---- | -- | ---------- | -------- | ------------- |
| id_comentario | INT  | —      | NO   | SÍ | PK         | —        | Identificador |
| id_usuario    | INT  | —      | NO   | NO | FK         | usuario  | Usuario       |
| id_reporte    | INT  | —      | NO   | NO | FK         | reporte  | Reporte       |
| texto         | TEXT | —      | NO   | NO | Atributo   | —        | Contenido     |
| fecha         | DATE | —      | NO   | NO | Atributo   | —        | Fecha         |

---

## Tabla: sesion

| Campo                  | Tipo     | Tamaño | Nulo | AI | Tipo Campo | Relación | Descripción      |
| ---------------------- | -------- | ------ | ---- | -- | ---------- | -------- | ---------------- |
| id_sesion              | INT      | —      | NO   | SÍ | PK         | —        | Identificador    |
| id_usuario             | INT      | —      | NO   | NO | FK         | usuario  | Usuario          |
| token_sesion           | VARCHAR  | 255    | NO   | NO | Atributo   | —        | Token            |
| fecha_inicio           | DATETIME | —      | NO   | NO | Atributo   | —        | Inicio           |
| fecha_ultima_actividad | DATETIME | —      | NO   | NO | Atributo   | —        | Última actividad |
| estado_sesion          | VARCHAR  | 20     | NO   | NO | Atributo   | —        | Estado           |

---

## Tabla: moderacion

| Campo            | Tipo    | Tamaño | Nulo | AI | Tipo Campo | Relación        | Descripción        |
| ---------------- | ------- | ------ | ---- | -- | ---------- | --------------- | ------------------ |
| id_moderacion    | INT     | —      | NO   | SÍ | PK         | —               | Identificador      |
| id_usuario       | INT     | —      | NO   | NO | FK         | usuario         | Moderador          |
| id_reporte       | INT     | —      | SÍ   | NO | FK         | reporte         | Reporte            |
| id_punto         | INT     | —      | SÍ   | NO | FK         | punto_accesible | Punto              |
| decision         | VARCHAR | 20     | NO   | NO | Atributo   | —               | Aprobar / rechazar |
| motivo           | TEXT    | —      | SÍ   | NO | Atributo   | —               | Motivo             |
| fecha_moderacion | DATE    | —      | NO   | NO | Atributo   | —               | Fecha              |

---
