```sql
-- ======================
-- CREACIÓN DE BASE DE DATOS
-- ======================
CREATE DATABASE IF NOT EXISTS PAU;
USE PAU;

-- ======================
-- TABLAS CATÁLOGO
-- ======================
CREATE TABLE rol (
    id_rol INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE estado (
    id_estado INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE tipo_barrera (
    id_tipo INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL UNIQUE
);

-- ======================
-- USUARIO
-- ======================
CREATE TABLE usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) UNIQUE NOT NULL,
    contrasena_hash VARCHAR(255) NOT NULL,
    id_rol INT NOT NULL,
    id_estado INT NOT NULL,
    fecha_registro DATE NOT NULL,
    FOREIGN KEY (id_rol) REFERENCES rol(id_rol),
    FOREIGN KEY (id_estado) REFERENCES estado(id_estado)
);

-- ======================
-- PERFIL
-- ======================
CREATE TABLE perfil_movilidad (
    id_perfil INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT UNIQUE NOT NULL,
    usa_silla_ruedas BOOLEAN DEFAULT FALSE,
    pendiente_maxima DECIMAL(5,2),
    evita_escaleras BOOLEAN DEFAULT FALSE,
    preferencias_texto TEXT,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

-- ======================
-- PREFERENCIAS
-- ======================
CREATE TABLE preferencia_accesibilidad (
    id_preferencia INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT UNIQUE NOT NULL,
    priorizar_rampas BOOLEAN DEFAULT FALSE,
    priorizar_ascensores BOOLEAN DEFAULT FALSE,
    evitar_zonas_peligrosas BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

-- ======================
-- RUTA
-- ======================
CREATE TABLE ruta (
    id_ruta INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    origen VARCHAR(150) NOT NULL,
    destino VARCHAR(150) NOT NULL,
    distancia DECIMAL(10,2),
    duracion_estimada DECIMAL(10,2),
    fecha_creacion DATE NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

-- ======================
-- SEGMENTO
-- ======================
CREATE TABLE segmento_ruta (
    id_segmento INT AUTO_INCREMENT PRIMARY KEY,
    id_ruta INT NOT NULL,
    lat_inicio DECIMAL(10,6) NOT NULL,
    lon_inicio DECIMAL(10,6) NOT NULL,
    lat_fin DECIMAL(10,6) NOT NULL,
    lon_fin DECIMAL(10,6) NOT NULL,
    pendiente DECIMAL(5,2),
    FOREIGN KEY (id_ruta) REFERENCES ruta(id_ruta)
);

-- ======================
-- BARRERA
-- ======================
CREATE TABLE barrera (
    id_barrera INT AUTO_INCREMENT PRIMARY KEY,
    id_tipo INT NOT NULL,
    severidad VARCHAR(50),
    latitud DECIMAL(10,6) NOT NULL,
    longitud DECIMAL(10,6) NOT NULL,
    descripcion TEXT,
    FOREIGN KEY (id_tipo) REFERENCES tipo_barrera(id_tipo)
);

-- ======================
-- REPORTE
-- ======================
CREATE TABLE reporte (
    id_reporte INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_barrera INT NOT NULL,
    id_estado INT NOT NULL,
    fecha_reporte DATE NOT NULL,
    nivel_confianza DECIMAL(3,2),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_barrera) REFERENCES barrera(id_barrera),
    FOREIGN KEY (id_estado) REFERENCES estado(id_estado)
);

-- ======================
-- VALIDACION
-- ======================
CREATE TABLE validacion (
    id_validacion INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_reporte INT NOT NULL,
    voto VARCHAR(50) NOT NULL,
    fecha_validacion DATE NOT NULL,
    UNIQUE (id_usuario, id_reporte),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_reporte) REFERENCES reporte(id_reporte)
);

-- ======================
-- PUNTO ACCESIBLE
-- ======================
CREATE TABLE punto_accesible (
    id_punto INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    categoria VARCHAR(100),
    latitud DECIMAL(10,6) NOT NULL,
    longitud DECIMAL(10,6) NOT NULL,
    nivel_confianza DECIMAL(3,2),
    id_estado INT NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_estado) REFERENCES estado(id_estado)
);

-- ======================
-- COMENTARIO
-- ======================
CREATE TABLE comentario (
    id_comentario INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_reporte INT NOT NULL,
    texto TEXT NOT NULL,
    fecha DATE NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_reporte) REFERENCES reporte(id_reporte)
);

-- ======================
-- IMAGEN
-- ======================
CREATE TABLE imagen (
    id_imagen INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_reporte INT NULL,
    id_punto INT NULL,
    url VARCHAR(255) NOT NULL,
    fecha_subida DATE NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_reporte) REFERENCES reporte(id_reporte),
    FOREIGN KEY (id_punto) REFERENCES punto_accesible(id_punto)
);

-- ======================
-- MODERACION
-- ======================
CREATE TABLE moderacion (
    id_moderacion INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_reporte INT NULL,
    id_punto INT NULL,
    decision VARCHAR(50) NOT NULL,
    motivo TEXT,
    fecha_moderacion DATE NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_reporte) REFERENCES reporte(id_reporte),
    FOREIGN KEY (id_punto) REFERENCES punto_accesible(id_punto)
);

-- ======================
-- SESION
-- ======================
CREATE TABLE sesion (
    id_sesion INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    token_sesion VARCHAR(255) NOT NULL,
    fecha_inicio DATETIME NOT NULL,
    fecha_ultima_actividad DATETIME NOT NULL,
    estado_sesion VARCHAR(50),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);
```
