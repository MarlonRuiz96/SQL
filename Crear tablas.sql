-- ======================================================
-- Creación de la base de datos (opcional)
-- ======================================================
CREATE DATABASE IF NOT EXISTS InstitucionEducativa;
USE InstitucionEducativa;

-- ======================================================
-- Tabla: Estudiante
-- ======================================================
CREATE TABLE Estudiante (
    id_estudiante INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE,
    correo VARCHAR(100),
    telefono VARCHAR(20),
    direccion VARCHAR(255),
    fecha_inscripcion DATE
) ENGINE=InnoDB;

-- ======================================================
-- Tabla: Docente
-- ======================================================
CREATE TABLE Docente (
    id_docente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    correo VARCHAR(100),
    telefono VARCHAR(20),
    especialidad VARCHAR(100),
    fecha_contratacion DATE
) ENGINE=InnoDB;

-- ======================================================
-- Tabla: Curso
-- ======================================================
CREATE TABLE Curso (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nombre_curso VARCHAR(100) NOT NULL,
    descripcion TEXT,
    creditos INT,
    id_docente INT,
    CONSTRAINT fk_curso_docente FOREIGN KEY (id_docente)
        REFERENCES Docente(id_docente)
        ON DELETE SET NULL
) ENGINE=InnoDB;

-- ======================================================
-- Tabla: Periodo
-- ======================================================
CREATE TABLE Periodo (
    id_periodo INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL,    -- Ej: "2024-A"
    fecha_inicio DATE,
    fecha_fin DATE
) ENGINE=InnoDB;

-- ======================================================
-- Tabla: Asignacion
-- Esta tabla relaciona Estudiante, Curso y Periodo.
-- Se define una clave primaria compuesta para evitar duplicados.
-- ======================================================
CREATE TABLE Asignacion (
    id_curso INT NOT NULL,
    id_estudiante INT NOT NULL,
    id_periodo INT NOT NULL,
    fecha_asignacion DATE,
    PRIMARY KEY (id_curso, id_estudiante, id_periodo),
    CONSTRAINT fk_asignacion_curso FOREIGN KEY (id_curso)
        REFERENCES Curso(id_curso)
        ON DELETE CASCADE,
    CONSTRAINT fk_asignacion_estudiante FOREIGN KEY (id_estudiante)
        REFERENCES Estudiante(id_estudiante)
        ON DELETE CASCADE,
    CONSTRAINT fk_asignacion_periodo FOREIGN KEY (id_periodo)
        REFERENCES Periodo(id_periodo)
        ON DELETE CASCADE
) ENGINE=InnoDB;

-- ======================================================
-- Tabla: Calificacion
-- Cada registro de calificación está asociado a una asignación (curso, estudiante y periodo)
-- ======================================================
CREATE TABLE Calificacion (
    id_calificacion INT AUTO_INCREMENT PRIMARY KEY,
    id_curso INT NOT NULL,
    id_estudiante INT NOT NULL,
    id_periodo INT NOT NULL,
    nota DECIMAL(5,2),
    observacion TEXT,
    CONSTRAINT fk_calificacion_asignacion FOREIGN KEY (id_curso, id_estudiante, id_periodo)
        REFERENCES Asignacion(id_curso, id_estudiante, id_periodo)
        ON DELETE CASCADE
) ENGINE=InnoDB;
