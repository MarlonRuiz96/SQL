-- Reporte que muestra los cursos y cuántos estudiantes se asignaron al periodo 2024-A
SELECT c.nombre_curso, COUNT(a.id_estudiante) AS total_estudiantes
FROM asignacion a
JOIN curso c ON a.id_curso = c.id_curso
JOIN periodo p ON a.id_periodo = p.id_periodo
WHERE p.nombre = '2024-A'
GROUP BY c.nombre_curso;

-- Los 3 cursos que tienen más alumnos asignados en el periodo 2024-A
SELECT c.nombre_curso, COUNT(a.id_estudiante) AS total
FROM asignacion a
JOIN curso c ON a.id_curso = c.id_curso
JOIN periodo p ON a.id_periodo = p.id_periodo
WHERE p.nombre = '2024-A'
GROUP BY c.nombre_curso
ORDER BY total DESC
LIMIT 3;

-- Listado de los 3 cursos con mejor promedio y el docente que los imparte
SELECT 
    c.nombre_curso AS curso,
    ROUND(AVG(cal.nota), 2) AS promedio_obtenido, 
    CONCAT(d.nombre, ' ', d.apellido) AS docente
FROM calificacion cal
JOIN curso c ON cal.id_curso = c.id_curso
JOIN docente d ON c.id_docente = d.id_docente
GROUP BY c.nombre_curso
ORDER BY promedio_obtenido DESC
LIMIT 3;

-- Listado de los 3 estudiantes con el promedio más bajo en el periodo 2024-A
SELECT 
    e.nombre, 
    e.apellido, 
    ROUND(AVG(cal.nota), 2) AS promedio
FROM calificacion cal
JOIN estudiante e ON cal.id_estudiante = e.id_estudiante
JOIN periodo p ON cal.id_periodo = p.id_periodo
WHERE p.nombre = '2024-A'
GROUP BY e.nombre, e.apellido
ORDER BY promedio ASC
LIMIT 3;

-- Listado de estudiantes y su promedio, ordenados de mayor a menor
SELECT 
    e.nombre,
    e.apellido,
    ROUND(AVG(ca.nota), 2) AS promedio_general
FROM calificacion ca
JOIN estudiante e ON ca.id_estudiante = e.id_estudiante
GROUP BY e.id_estudiante, e.nombre, e.apellido
ORDER BY promedio_general DESC;

-- Listado de estudiantes y su etiqueta de acuerdo a su promedio
SELECT 
    e.nombre AS nombre_alumno,
    e.apellido AS apellido_alumno,
    ROUND(AVG(ca.nota), 2) AS promedio,
    CASE
        WHEN AVG(ca.nota) < 7.5 THEN 'REPROBADO'
        WHEN AVG(ca.nota) > 8.5 THEN 'HONORÍFICOS'
        ELSE 'REGULAR'
    END AS estado
FROM calificacion ca
JOIN estudiante e ON ca.id_estudiante = e.id_estudiante
GROUP BY e.id_estudiante, e.nombre, e.apellido;

-- Nombre del docente, cuántos cursos imparte y el promedio general de calificaciones de esos cursos
SELECT 
    d.nombre AS nombre_docente,
    d.apellido AS apellido_docente,
    COUNT(DISTINCT c.id_curso) AS cursos_impartidos,
    ROUND(AVG(cal.nota), 2) AS promedio_general,
    CASE
        WHEN AVG(cal.nota) > 8.5 THEN 'Destacado'
        WHEN AVG(cal.nota) < 7.0 THEN 'Bajo rendimiento'
        ELSE 'Aceptable'
    END AS clasificacion
FROM docente d
JOIN curso c ON d.id_docente = c.id_docente
JOIN calificacion cal ON cal.id_curso = c.id_curso
GROUP BY d.id_docente, d.nombre, d.apellido;

-- Listado de estudiantes, sus cursos, el nombre del docente que imparte cada curso, la nota obtenida y su estado académico
SELECT 
    e.nombre AS nombre_estudiante,
    e.apellido AS apellido_estudiante,
    c.nombre_curso,
    CONCAT(d.nombre, ' ', d.apellido) AS docente,
    cal.nota,
    CASE
        WHEN cal.nota < 7.5 THEN 'REPROBADO'
        WHEN cal.nota > 8.5 THEN 'HONORÍFICOS'
        ELSE 'REGULAR'
    END AS estado
FROM calificacion cal
JOIN estudiante e ON cal.id_estudiante = e.id_estudiante
JOIN curso c ON cal.id_curso = c.id_curso
JOIN docente d ON c.id_docente = d.id_docente
ORDER BY e.apellido, c.nombre_curso;

-- Promedio general de calificaciones por curso en un periodo específico, incluyendo el nombre del docente
SELECT 
    p.nombre AS periodo,
    c.nombre_curso,
    CONCAT(d.nombre, ' ', d.apellido) AS docente,
    ROUND(AVG(cal.nota), 2) AS promedio_curso
FROM calificacion cal
JOIN curso c ON cal.id_curso = c.id_curso
JOIN docente d ON c.id_docente = d.id_docente
JOIN periodo p ON cal.id_periodo = p.id_periodo
WHERE p.nombre = '2024-A'
GROUP BY p.nombre, c.nombre_curso, d.nombre, d.apellido
ORDER BY promedio_curso DESC;

-- Top 5 estudiantes con mejor rendimiento general, su promedio y cuántos cursos aprobaron
SELECT 
    e.nombre,
    e.apellido,
    ROUND(AVG(cal.nota), 2) AS promedio_general,
    COUNT(CASE WHEN cal.nota >= 7 THEN 1 END) AS cursos_aprobados
FROM calificacion cal
JOIN estudiante e ON cal.id_estudiante = e.id_estudiante
GROUP BY e.id_estudiante, e.nombre, e.apellido
ORDER BY promedio_general DESC
LIMIT 5;

-- Subconsulta que calcula el promedio general de cada estudiante y selecciona los 3 mejores
SELECT 
    e.nombre,
    e.apellido,
    c.nombre_curso AS mejor_curso,
    cal.nota AS nota_mas_alta
FROM calificacion cal
JOIN estudiante e ON cal.id_estudiante = e.id_estudiante
JOIN curso c ON cal.id_curso = c.id_curso
JOIN (
    SELECT id_estudiante, MAX(nota) AS nota_max
    FROM calificacion
    GROUP BY id_estudiante
) AS top_notas ON cal.id_estudiante = top_notas.id_estudiante AND cal.nota = top_notas.nota_max
JOIN (
    SELECT id_estudiante
    FROM calificacion
    GROUP BY id_estudiante
    ORDER BY AVG(nota) DESC
    LIMIT 3
) AS top3 ON cal.id_estudiante = top3.id_estudiante;
