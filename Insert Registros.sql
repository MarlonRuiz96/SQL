INSERT INTO Estudiante (nombre, apellido, fecha_nacimiento, correo, telefono, direccion, fecha_inscripcion)
VALUES
('Juan', 'Pérez', '1999-03-15', 'juan.perez@example.com', '5551001', 'Calle 1 #123, Ciudad', '2024-01-10'),
('María', 'García', '2000-06-22', 'maria.garcia@example.com', '5551002', 'Avenida 2 #456, Ciudad', '2024-01-12'),
('José', 'Martínez', '1998-11-30', 'jose.martinez@example.com', '5551003', 'Boulevard 3 #789, Ciudad', '2024-01-15'),
('Ana', 'Rodríguez', '2001-04-05', 'ana.rodriguez@example.com', '5551004', 'Calle 4 #101, Ciudad', '2024-01-18'),
('Luis', 'Hernández', '1997-09-17', 'luis.hernandez@example.com', '5551005', 'Avenida 5 #202, Ciudad', '2024-01-20'),
('Carmen', 'López', '1999-12-03', 'carmen.lopez@example.com', '5551006', 'Calle 6 #303, Ciudad', '2024-01-22'),
('Miguel', 'González', '2000-08-08', 'miguel.gonzalez@example.com', '5551007', 'Boulevard 7 #404, Ciudad', '2024-01-25'),
('Sofía', 'Sánchez', '2001-02-14', 'sofia.sanchez@example.com', '5551008', 'Avenida 8 #505, Ciudad', '2024-01-28'),
('Carlos', 'Ramírez', '1998-07-19', 'carlos.ramirez@example.com', '5551009', 'Calle 9 #606, Ciudad', '2024-02-01'),
('Laura', 'Torres', '2000-05-12', 'laura.torres@example.com', '5551010', 'Avenida 10 #707, Ciudad', '2024-02-03'),
('Diego', 'Vargas', '1997-11-21', 'diego.vargas@example.com', '5551011', 'Boulevard 11 #808, Ciudad', '2024-02-05'),
('Elena', 'Díaz', '2001-03-08', 'elena.diaz@example.com', '5551012', 'Calle 12 #909, Ciudad', '2024-02-07'),
('Andrés', 'Moreno', '1999-10-30', 'andres.moreno@example.com', '5551013', 'Avenida 13 #1010, Ciudad', '2024-02-09'),
('Isabel', 'Castro', '2000-01-17', 'isabel.castro@example.com', '5551014', 'Boulevard 14 #1111, Ciudad', '2024-02-11'),
('Fernando', 'Ruiz', '1998-12-25', 'fernando.ruiz@example.com', '5551015', 'Calle 15 #1212, Ciudad', '2024-02-13');





INSERT INTO Docente (nombre, apellido, correo, telefono, especialidad, fecha_contratacion)
VALUES
('Carlos', 'Gómez', 'carlos.gomez@example.com', '5552001', 'Matemáticas', '2024-01-05'),
('Lucía', 'Fernández', 'lucia.fernandez@example.com', '5552002', 'Física', '2024-01-06'),
('Jorge', 'Martínez', 'jorge.martinez@example.com', '5552003', 'Química', '2024-01-07'),
('Ana', 'López', 'ana.lopez@example.com', '5552004', 'Literatura', '2024-01-08'),
('Miguel', 'Pérez', 'miguel.perez@example.com', '5552005', 'Historia', '2024-01-09'),
('Sofía', 'Ramírez', 'sofia.ramirez@example.com', '5552006', 'Biología', '2024-01-10'),
('Diego', 'Sánchez', 'diego.sanchez@example.com', '5552007', 'Geografía', '2024-01-11'),
('Elena', 'Torres', 'elena.torres@example.com', '5552008', 'Informática', '2024-01-12'),
('Andrés', 'González', 'andres.gonzalez@example.com', '5552009', 'Arte', '2024-01-13'),
('Isabel', 'Ruiz', 'isabel.ruiz@example.com', '5552010', 'Música', '2024-01-14');


INSERT INTO Curso (nombre_curso, descripcion, creditos, id_docente)
VALUES
('Matemáticas Básicas', 'Curso introductorio a conceptos matemáticos fundamentales', 4, 1),
('Física General', 'Conceptos fundamentales de la física, mecánica y termodinámica', 4, 2),
('Química Orgánica', 'Estudio de compuestos orgánicos y reacciones químicas', 4, 3),
('Literatura Española', 'Análisis de la literatura clásica y moderna de España', 3, 4),
('Historia Universal', 'Repaso de eventos históricos y su impacto en la sociedad', 3, 5),
('Biología Celular', 'Introducción a la biología de la célula y sus procesos', 4, 6),
('Geografía Física', 'Estudio de los elementos naturales y su distribución en la Tierra', 3, 7),
('Introducción a la Informática', 'Fundamentos de la informática y sistemas computacionales', 4, 8),
('Historia del Arte', 'Exploración de movimientos artísticos y sus influencias', 2, 9),
('Música y Composición', 'Teoría musical, composición y análisis de obras', 2, 10);


INSERT INTO periodo (Nombre,fecha_inicio,fecha_fin) 
VALUES('2024-A','2024-01-02','2024-12-01')


INSERT INTO Asignacion (id_curso, id_estudiante, id_periodo, fecha_asignacion)
VALUES
  (6, 1, 1, '2024-03-02'),
  (7, 2, 1, '2024-03-02'),
  (8, 3, 1, '2024-03-02'),
  (9, 4, 1, '2024-03-02'),
  (10, 5, 1, '2024-03-02'),
  (1, 6, 1, '2024-03-02'),
  (2, 7, 1, '2024-03-02'),
  (3, 8, 1, '2024-03-02'),
  (4, 9, 1, '2024-03-02'),
  (5, 10, 1, '2024-03-02'),
  (6, 11, 1, '2024-03-02'),
  (7, 12, 1, '2024-03-02'),
  (8, 13, 1, '2024-03-02'),
  (9, 14, 1, '2024-03-02'),
  (10, 15, 1, '2024-03-02'),
  (2, 1, 1, '2024-03-03'),
  (3, 2, 1, '2024-03-03'),
  (4, 3, 1, '2024-03-03'),
  (5, 4, 1, '2024-03-03'),
  (6, 5, 1, '2024-03-03'),
  (7, 6, 1, '2024-03-03'),
  (8, 7, 1, '2024-03-03'),
  (9, 8, 1, '2024-03-03'),
  (10, 9, 1, '2024-03-03'),
  (1, 10, 1, '2024-03-03'),
  (2, 11, 1, '2024-03-03'),
  (3, 12, 1, '2024-03-03'),
  (4, 13, 1, '2024-03-03'),
  (5, 14, 1, '2024-03-03'),
  (6, 15, 1, '2024-03-03'),
  (1, 2, 1, '2024-03-04'),
  (2, 3, 1, '2024-03-04'),
  (3, 4, 1, '2024-03-04'),
  (4, 5, 1, '2024-03-04'),
  (5, 6, 1, '2024-03-04'),
  (6, 7, 1, '2024-03-04'),
  (7, 8, 1, '2024-03-04'),
  (8, 9, 1, '2024-03-04'),
  (9, 10, 1, '2024-03-04'),
  (10, 11, 1, '2024-03-04'),
  (1, 12, 1, '2024-03-05'),
  (2, 13, 1, '2024-03-05'),
  (3, 14, 1, '2024-03-05'),
  (4, 15, 1, '2024-03-05'),
  (5, 1, 1, '2024-03-05'),
  (6, 2, 1, '2024-03-05'),
  (7, 3, 1, '2024-03-05'),
  (8, 4, 1, '2024-03-05'),
  (9, 5, 1, '2024-03-05'),
  (10, 6, 1, '2024-03-05')
(1, 1, 1, '2024-03-01'),
(2, 2, 1, '2024-03-01'),
(3, 3, 1, '2024-03-01'),
(4, 4, 1, '2024-03-01'),
(5, 5, 1, '2024-03-01'),
(6, 6, 1, '2024-03-01'),
(7, 7, 1, '2024-03-01'),
(8, 8, 1, '2024-03-01'),
(9, 9, 1, '2024-03-01'),
(10, 10, 1, '2024-03-01'),
(1, 11, 1, '2024-03-01'),
(2, 12, 1, '2024-03-01'),
(3, 13, 1, '2024-03-01'),
(4, 14, 1, '2024-03-01'),
(5, 15, 1, '2024-03-01');


INSERT INTO Calificacion (id_curso, id_estudiante, id_periodo, nota, observacion)
VALUES
  -- Grupo 1: 15 registros
  (6, 1, 1, 8.50, 'Muy bien'),
  (7, 2, 1, 7.20, 'Bien'),
  (8, 3, 1, 9.00, 'Excelente'),
  (9, 4, 1, 6.80, 'Satisfactorio'),
  (10, 5, 1, 7.50, 'Regular'),
  (1, 6, 1, 8.00, 'Bueno'),
  (2, 7, 1, 6.00, 'Necesita apoyo'),
  (3, 8, 1, 8.70, 'Destacado'),
  (4, 9, 1, 7.30, 'Aceptable'),
  (5, 10, 1, 9.20, 'Sobresaliente'),
  (6, 11, 1, 7.80, 'Bien'),
  (7, 12, 1, 8.40, 'Muy bien'),
  (8, 13, 1, 6.50, 'Requiere mejorar'),
  (9, 14, 1, 7.90, 'Aceptable'),
  (10, 15, 1, 8.10, 'Satisfactorio'),
  
  -- Grupo 2: 15 registros
  (2, 1, 1, 6.80, 'Regular'),
  (3, 2, 1, 7.60, 'Bien'),
  (4, 3, 1, 8.30, 'Satisfactorio'),
  (5, 4, 1, 7.00, 'Necesita mejorar'),
  (6, 5, 1, 8.50, 'Destacado'),
  (7, 6, 1, 6.20, 'Bajo rendimiento'),
  (8, 7, 1, 7.40, 'Aceptable'),
  (9, 8, 1, 8.90, 'Excelente'),
  (10, 9, 1, 7.70, 'Bueno'),
  (1, 10, 1, 8.00, 'Muy bien'),
  (2, 11, 1, 7.20, 'Regular'),
  (3, 12, 1, 8.10, 'Satisfactorio'),
  (4, 13, 1, 6.90, 'Necesita esfuerzo'),
  (5, 14, 1, 8.40, 'Destacado'),
  (6, 15, 1, 7.50, 'Bien'),
  
  -- Grupo 3: 10 registros
  (1, 2, 1, 7.80, 'Bien'),
  (2, 3, 1, 8.00, 'Muy bien'),
  (3, 4, 1, 6.50, 'Regular'),
  (4, 5, 1, 7.90, 'Satisfactorio'),
  (5, 6, 1, 8.30, 'Destacado'),
  (6, 7, 1, 7.10, 'Aceptable'),
  (7, 8, 1, 8.60, 'Muy bien'),
  (8, 9, 1, 7.40, 'Bien'),
  (9, 10, 1, 8.20, 'Excelente'),
  (10, 11, 1, 7.00, 'Regular'),
  
  -- Grupo 4: 10 registros
  (1, 12, 1, 8.50, 'Muy bien'),
  (2, 13, 1, 7.60, 'Bien'),
  (3, 14, 1, 8.10, 'Satisfactorio'),
  (4, 15, 1, 6.80, 'Regular'),
  (5, 1, 1, 7.90, 'Destacado'),
  (6, 2, 1, 8.00, 'Bueno'),
  (7, 3, 1, 7.20, 'Aceptable'),
  (8, 4, 1, 8.40, 'Muy bien'),
  (9, 5, 1, 7.70, 'Bien'),
  (10, 6, 1, 8.30, 'Satisfactorio'),
  
  -- Grupo 5: 15 registros
  (1, 1, 1, 8.10, 'Satisfactorio'),
  (2, 2, 1, 7.40, 'Bien'),
  (3, 3, 1, 8.60, 'Muy bien'),
  (4, 4, 1, 6.90, 'Regular'),
  (5, 5, 1, 7.80, 'Destacado'),
  (6, 6, 1, 8.00, 'Bueno'),
  (7, 7, 1, 7.50, 'Aceptable'),
  (8, 8, 1, 8.90, 'Excelente'),
  (9, 9, 1, 7.30, 'Satisfactorio'),
  (10, 10, 1, 8.20, 'Muy bien'),
  (1, 11, 1, 7.60, 'Regular'),
  (2, 12, 1, 8.30, 'Destacado'),
  (3, 13, 1, 7.00, 'Necesita mejorar'),
  (4, 14, 1, 8.50, 'Muy bien'),
  (5, 15, 1, 7.90, 'Bien');




