# 📚 Sistema de Gestión Académica – Base de Datos

Este proyecto modela una base de datos relacional para una institución educativa, permitiendo gestionar estudiantes, docentes, cursos, calificaciones y periodos académicos.

---

## 📌 Funcionalidades principales

- Registro de estudiantes y docentes
- Gestión de cursos y su asignación por periodo
- Registro de calificaciones por curso y estudiante
- Consultas para reportes académicos, rankings y estados de rendimiento

---

## 🧩 Entidades del sistema

- **Estudiante**
- **Docente**
- **Curso**
- **Periodo**
- **Asignacion** (relación estudiante–curso–periodo)
- **Calificacion** (nota final de cada asignación)

---

## 🔗 Relaciones clave

| Entidad A     | Relación | Entidad B     | Tipo de Relación                              |
|---------------|----------|----------------|-----------------------------------------------|
| Estudiante    | ↔        | Curso          | Muchos a muchos (vía `Asignacion`)            |
| Estudiante    | →        | Asignacion     | Uno a muchos                                  |
| Curso         | →        | Asignacion     | Uno a muchos                                  |
| Curso         | ←        | Docente        | Muchos a uno                                  |
| Asignacion    | →        | Periodo        | Muchos a uno                                  |
| Asignacion    | ↔        | Calificacion   | Uno a uno (una nota por asignación)           |

---

## 🛠️ Requisitos técnicos

- Motor de base de datos: **MariaDB** o **MySQL**
- Compatibilidad SQL estándar
- Recomendado usar cliente como **DBeaver**, **phpMyAdmin**, **MySQL Workbench**, etc.

---

## 🧪 Consultas útiles incluidas

- Promedio por estudiante y clasificación (REPROBADO, REGULAR, HONORIFICOS)
- Top 3 estudiantes y su mejor curso
- Cursos más asignados por periodo
- Reportes por docente y rendimiento
