#  Casos de Uso (Principales)

---

##  CU-01: Registrar cuenta

**Actores:** Usuario (inicia), Servicio de Autenticación (participa)
**Precondiciones:** El usuario no tiene cuenta activa. Conectividad disponible.

### Flujo Normal

1. El usuario selecciona “Registrarse”.
2. El sistema solicita correo, contraseña y ofrece registro con proveedor externo (opcional).
3. El usuario ingresa los datos o elige proveedor externo.
4. El sistema valida formato y unicidad del correo.
5. El sistema crea la cuenta y envía verificación (si aplica).
6. El sistema confirma el registro exitoso e inicia sesión.

### Flujos Alternativos / Excepción

* **A1:** Correo ya registrado → El sistema sugiere “Iniciar sesión” o “Recuperar contraseña”.
* **E1:** Fallo de red → Mostrar mensaje y permitir reintentar.

**Postcondiciones:** Cuenta creada; sesión iniciada o verificación pendiente.
**RF asociado:** RF-01

---

##  CU-02: Iniciar sesión

**Actores:** Usuario (inicia), Servicio de Autenticación
**Precondiciones:** El usuario ya está registrado.

### Flujo Normal

1. El usuario selecciona “Iniciar sesión”.
2. Ingresa correo/contraseña o elige proveedor externo.
3. El sistema valida credenciales.
4. El sistema inicia sesión y redirige al mapa principal.

### Alternativos / Excepción

* **A1:** “Recordarme” activado → sesión persiste.
* **E1:** Credenciales inválidas → mensaje y opción de recuperación.
* **E2:** Fallo de red → reintentar.

**Postcondiciones:** Sesión activa.
**RF asociado:** RF-02

---

##  CU-03: Configurar preferencias de accesibilidad

**Actores:** Usuario
**Precondiciones:** Sesión iniciada.

### Flujo Normal

1. El usuario accede a “Mi perfil” → “Accesibilidad”.
2. Selecciona condición y ayudas.
3. Define restricciones (pendiente, evitar escaleras, etc.).
4. Guarda cambios.
5. El sistema confirma y actualiza el perfil.

### Alternativos / Excepción

* **A1:** Valores por defecto si no hay cambios.
* **E1:** Error al guardar → reintentar.

**Postcondiciones:** Preferencias activas.
**RF asociado:** RF-03

---

##  CU-04: Visualizar mapa con filtros

**Actores:** Usuario, API de Mapas
**Precondiciones:** Sesión iniciada.

### Flujo Normal

1. El usuario abre el mapa.
2. El sistema centra la vista.
3. El usuario activa filtros.
4. El sistema muestra elementos accesibles.
5. El usuario consulta detalles.

### Alternativos / Excepción

* **A1:** Sin ubicación → vista general.
* **E1:** Fallo API → mensaje o caché.

**Postcondiciones:** Preferencias guardadas.
**RF asociado:** RF-04

---

##  CU-05: Buscar destino

**Actores:** Usuario, API de Geocodificación

### Flujo Normal

1. El usuario usa la barra de búsqueda.
2. El sistema muestra sugerencias.
3. El usuario selecciona destino.
4. El sistema lo marca en el mapa.

### Alternativos / Excepción

* **A1:** Sin resultados → sugerencias.
* **E1:** Fallo API → reintento.

**Postcondiciones:** Destino definido.
**RF asociado:** RF-05

---

##  CU-06: Planificar ruta accesible

**Actores:** Usuario, API de Rutas

### Flujo Normal

1. El usuario solicita ruta.
2. El sistema envía preferencias.
3. Se generan rutas posibles.
4. El usuario selecciona una.
5. Se muestra en el mapa.

### Alternativos / Excepción

* **A1:** No hay ruta exacta → alternativa.
* **E1:** Fallo API → ruta básica.

**Postcondiciones:** Ruta seleccionada.
**RF asociado:** RF-06, RF-13

---

##  CU-07: Iniciar navegación

**Actores:** Usuario, GPS

### Flujo Normal

1. El usuario inicia navegación.
2. El sistema guía paso a paso.
3. Recalcula si hay desvío.

### Alternativos / Excepción

* **E1:** Sin conexión → modo básico.

**Postcondiciones:** Ruta completada.
**RF asociado:** RF-07

---

##  CU-08: Reportar barrera

**Actores:** Usuario

### Flujo Normal

1. El usuario crea reporte.
2. Adjunta imagen y ubicación.
3. Envía información.

### Alternativos / Excepción

* **E1:** Sin conexión → guardar borrador.

**Postcondiciones:** Reporte creado.
**RF asociado:** RF-08, RF-10

---

##  CU-09: Validar reportes

**Actores:** Usuario

### Flujo Normal

1. El usuario revisa reporte.
2. Vota o valida.
3. El sistema actualiza confianza.

**Postcondiciones:** Estado actualizado.
**RF asociado:** RF-09

---

##  CU-10: Crear POI

**Actores:** Usuario

### Flujo Normal

1. El usuario agrega lugar.
2. Define características.
3. Envía información.

**Postcondiciones:** POI creado.
**RF asociado:** RF-11, RF-10

---

##  CU-11: Moderar contenido

**Actores:** Administrador

### Flujo Normal

1. Revisa contenido.
2. Aprueba o rechaza.

**Postcondiciones:** Estado actualizado.
**RF asociado:** RF-12

---

##  CU-12: Guardar y compartir ruta

**Actores:** Usuario

### Flujo Normal

1. Guarda ruta.
2. Genera enlace.
3. Comparte.

**Postcondiciones:** Ruta almacenada.
**RF asociado:** RF-13
