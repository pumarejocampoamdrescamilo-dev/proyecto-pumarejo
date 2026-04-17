#  Proyecto Pumarejo - Semana 1

##  Descripción del Módulo

Este proyecto corresponde al módulo **Pumarejo**, desarrollado como parte del sistema general.

El módulo está orientado a la gestión de accesibilidad, rutas y preferencias de movilidad, integrando funcionalidades relacionadas con el uso del sistema por parte de los usuarios.

---

##  Tablas que cubre el módulo

Las tablas implementadas en este módulo son:

* perfil_movilidad
* preferencia_accesibilidad
* ruta
* punto_accesible
* sesion
* segmento_ruta

###  Tablas compartidas (no implementadas completamente):

* usuario
* rol
* estado

---

##  Módulos del sistema (según diagrama de componentes)

* usuarios
* accesibilidad
* mapas
* rutas
* moderacion
* beneficios
* notificaciones

*(Cada módulo está estructurado en el proyecto, pero el desarrollo se enfoca en el módulo asignado.)*

---

##  Framework utilizado

Se utilizó **Spring Boot (Java)** como framework principal.

### ¿Por qué Spring Boot?

* Permite organización por capas (controller, service, repository)
* Facilita la conexión con base de datos
* Ideal para desarrollo backend
* Escalable y mantenible

---

## ▶ ¿Cómo ejecutar el proyecto?

### Requisitos:

* Java 17 o superior
* Maven

### Pasos:

1. Clonar el repositorio:

```bash
git clone https://github.com/pumarejocampoamdrescamilo-dev/proyecto-pumarejo.git
```

2. Entrar al proyecto:

```bash
cd pumarejo
```

3. Ejecutar:

```bash
mvnw.cmd spring-boot:run
```

4. Abrir en navegador:

```
http://localhost:8080
```

---

##  Estructura del Proyecto

* `src/` → Código fuente organizado por módulos
* `docs/` → Documentación (análisis y diseño)
* `pom.xml` → Configuración del proyecto
* `BITACORA.md` → Registro del proceso
* `DECISIONES.md` → Decisiones técnicas

---



---

##  Estado del proyecto

✔ Framework inicializado y funcionando
✔ Estructura basada en el diagrama de componentes
✔ Repositorio organizado correctamente
✔ Documentación inicial cargada

---

##  Autor

**Andres Pumarejo**
