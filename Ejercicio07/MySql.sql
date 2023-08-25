CREATE DATABASE db_biblioteca;

USE db_biblioteca;

CREATE TABLE libros(
    id_libro INT PRIMARY KEY,
    nombre_libro VARCHAR(25),
    id_genero INT,
    editorial VARCHAR(25),
    creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE generos(
    id_genero INT PRIMARY KEY,
    generos VARCHAR(30),
    creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE prestamos(
    id_prestamo INT PRIMARY KEY,
    id_estudiante INT,
    id_libro INT,
    creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE estudiantes(
    id_estudiante INT PRIMARY KEY,
    nombre VARCHAR(25),
    apellido VARCHAR(25),
    grado VARCHAR(25),
    creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE devolucion(
    id_devolucion INT PRIMARY KEY,
    id_prestamo INT,
    creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

ALTER TABLE libros ADD FOREIGN KEY (id_genero) REFERENCES generos(id_genero);
ALTER TABLE prestamos ADD FOREIGN KEY (id_libro) REFERENCES libros(id_libro);
ALTER TABLE prestamos ADD FOREIGN KEY (id_estudiante) REFERENCES estudiantes(id_estudiante);
ALTER TABLE devolucion ADD FOREIGN KEY (id_prestamo) REFERENCES prestamos(id_prestamo);

INSERT INTO libros (id_libro, nombre_libro, id_genero, editorial)
VALUES
    (1, 'Señor de los anillos', 4, 'Minotauro'),
    (2, '1984', 6, 'Debolsillo'),
    (3, 'Cien años de soledad', 12, 'Diana'),
    (4, 'Harry', 4, 'Salamanca'),
    (5, 'Crónica de muerte', 3, 'Planeta'),
    (6, 'Don Quijote', 19, 'Alfaguara'),
    (7, 'El alquimista', 10, 'HarperOne'),
    (8, 'El código Da Vinci', 5, 'Doubleday'),
    (9, 'Nombre del viento', 4, 'Gollancz'),
    (10, 'Orgullo y prejuicio', 3, 'Alianza'),
    (11, 'Amor', 3, 'DeBolsillo'),
    (12, 'Sombra del viento', 12, 'Planeta'),
    (13, '1984', 6, 'Debolsillo'),
    (14, 'Juegos del hambre', 2, 'RBA'),
    (15, 'El Hobbit', 4, 'Minotauro'),
    (16, 'Curioso incidente', 5, 'Salamandra'),
    (17, 'Matar a un ruiseñor', 13, 'Grijalbo'),
    (18, 'Crimen y castigo', 6, 'Alianza'),
    (19, 'Pilares de la tierra', 6, 'DeBolsillo'),
    (20, 'El Principito', 9, 'Santillana');

INSERT INTO generos (id_genero, generos)
VALUES
    (1, 'Aventura'),
    (2, 'Ciencia Ficción'),
    (3, 'Romance'),
    (4, 'Fantasía'),
    (5, 'Misterio'),
    (6, 'Historia'),
    (7, 'Thriller'),
    (8, 'Biografía'),
    (9, 'Novela Gráfica'),
    (10, 'Autoayuda'),
    (11, 'Terror'),
    (12, 'Suspenso'),
    (13, 'Drama'),
    (14, 'Poesía'),
    (15, 'Ciencia'),
    (16, 'Política'),
    (17, 'Humor'),
    (18, 'Filosofía'),
    (19, 'Autores Clásicos'),
    (20, 'Viajes');

INSERT INTO prestamos (id_prestamo, id_estudiante, id_libro)
VALUES
    (1, 101, 3),
    (2, 102, 1),
    (3, 103, 2),
    (4, 104, 4),
    (5, 105, 5),
    (6, 106, 6),
    (7, 107, 7),
    (8, 108, 8),
    (9, 109, 9),
    (10, 110, 10),
    (11, 111, 11),
    (12, 112, 12),
    (13, 113, 13),
    (14, 114, 14),
    (15, 115, 15),
    (16, 116, 16),
    (17, 117, 17),
    (18, 118, 18),
    (19, 119, 19),
    (20, 120, 20);

INSERT INTO estudiantes (id_estudiante, nombre, apellido, grado)
VALUES
    (101, 'Juan', 'Gómez', '10°'),
    (102, 'María', 'López', '9°'),
    (103, 'Pedro', 'Martínez', '11°'),
    (104, 'Laura', 'Ramírez', '8°'),
    (105, 'Carlos', 'García', '12°'),
    (106, 'Ana', 'Rodríguez', '10°'),
    (107, 'Luis', 'Hernández', '9°'),
    (108, 'Sofía', 'Torres', '11°'),
    (109, 'Diego', 'Vargas', '8°'),
    (110, 'Marta', 'Silva', '12°'),
    (111, 'Andrés', 'Ríos', '10°'),
    (112, 'Carolina', 'Mendoza', '9°'),
    (113, 'José', 'Paredes', '11°'),
    (114, 'Diana', 'Castillo', '8°'),
    (115, 'Alejandro', 'Figueroa', '12°'),
    (116, 'Gabriela', 'Morales', '10°'),
    (117, 'Arturo', 'Velázquez', '9°'),
    (118, 'Valentina', 'Gutiérrez', '11°'),
    (119, 'Ricardo', 'Ortiz', '8°'),
    (120, 'Paola', 'Pacheco', '12°');

INSERT INTO devolucion (id_devolucion, id_prestamo)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10),
    (11, 11),
    (12, 12),
    (13, 13),
    (14, 14),
    (15, 15),
    (16, 16),
    (17, 17),
    (18, 18),
    (19, 19),
    (20, 20);


SELECT libros.nombre_libro AS NombreLibro, generos.generos AS Genero
FROM libros
JOIN generos ON libros.id_genero = generos.id_genero;


SELECT estudiantes.id_estudiante, estudiantes.nombre, estudiantes.apellido, estudiantes.grado, libros.nombre_libro AS libro_prestado
FROM estudiantes
JOIN prestamos ON estudiantes.id_estudiante = prestamos.id_estudiante
JOIN libros ON prestamos.id_libro = libros.id_libro;

SELECT id_devolucion AS Devolucion, prestamos.id_estudiante AS id_estudiante, estudiantes.nombre, estudiantes.apellido
FROM devolucion
JOIN prestamos ON devolucion.id_prestamo = prestamos.id_prestamo
JOIN estudiantes ON prestamos.id_estudiante = estudiantes.id_estudiante;