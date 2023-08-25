-- ? Creamos la base de datos
CREATE DATABASE sena;

-- ? Seleccionamos la base de datos ---> Use sena
USE sena;

-- ? CREATE TABLE <table> ----> creamos la tabla
CREATE TABLE aprendices(
    id INT (20) AUTO_INCREMENT UNIQUE PRIMARY KEY,
    nombre_apellido VARCHAR (50) UNIQUE NOT NULL,
    correo VARCHAR(50) UNIQUE NOT NULL,
    edad INT UNSIGNED NOT NULL,
    direccion VARCHAR(20) NOT NULL,
    ciudad VARCHAR(20) NOT NULL,
    estado ENUM('Activo', 'Inactivo') DEFAULT 'Inactivo',
    creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ? Insertamos los datos a la tabla
-- ? 1
INSERT INTO aprendices (nombre_apellido, correo, edad, direccion, ciudad, estado) 
VALUES ('Juan Calderon', 'juan@gmail.com', 21, 'Nazareth', 'Garzon', 1);
-- ? 2
INSERT INTO aprendices (nombre_apellido, correo, edad, direccion, ciudad, estado) 
VALUES ('Paulo Sousa', 'PauloSousa@gmail.com', 17, 'Andes', 'Altamira', 1);
-- ? 3
INSERT INTO aprendices (nombre_apellido, correo, edad, direccion, ciudad, estado) 
VALUES ('Malak Florez', 'MalakFlorez@gmail.com', 29, 'Cali', 'Garzon', 2);
-- ? 4
INSERT INTO aprendices (nombre_apellido, correo, edad, direccion, ciudad, estado) 
VALUES ('Jose Daniel', 'JoseDaniel@gmail.com', 28, 'Cr.4 #1-5', 'Pitalito', 1);
-- ? 5
INSERT INTO aprendices (nombre_apellido, correo, edad, direccion, ciudad, estado) 
VALUES ('Lorenza Vivas', 'LorenzaVivas@gmail.com', 21, 'Calle 5 #4-16', 'Altamira', 1);
-- ? 6
INSERT INTO aprendices (nombre_apellido, correo, edad, direccion, ciudad, estado) 
VALUES ('Bernat Sanz', 'BernatSanz@gmail.com', 32, 'Calle 5 #12-76', 'Altamira', 2);
-- ? 8
INSERT INTO aprendices (nombre_apellido, correo, edad, direccion, ciudad, estado) 
VALUES ('Lorenzo Parada', 'LorenzoParada@gmail.com', 18, 'Calle 5 #12-1', 'Suaza', 2);
-- ? 9
INSERT INTO aprendices (nombre_apellido, correo, edad, direccion, ciudad, estado) 
VALUES ('Vanesa Ramos', 'VanesaRamos@gmail.com', 19, 'Nazareth', 'Garzon', 2);
-- ? 10
INSERT INTO aprendices (nombre_apellido, correo, edad, direccion, ciudad, estado) 
VALUES ('Luis Cera', 'Luis Cera@gmail.com', 21, 'Brox', 'Bogota', 1);
-- ? 11
INSERT INTO aprendices (nombre_apellido, correo, edad, direccion, ciudad, estado) 
VALUES ('Lucho Muñoz', 'LuchoMuñoz@gmail.com', 27, 'Majo', 'Garzon', 2);
-- ? 12
INSERT INTO aprendices (nombre_apellido, correo, edad, direccion, ciudad, estado) 
VALUES ('Mar Quitos', 'MarQuitos@gmail.com', 10, '  ', 'Garzon', 1);
-- ? 13
INSERT INTO aprendices (nombre_apellido, correo, edad, direccion, ciudad, estado) 
VALUES ('Juan Sebastian', 'Juan Sebastian@gmail.com', 29, 'Metro', 'Medellin', 1);
-- ? 14
INSERT INTO aprendices (nombre_apellido, correo, edad, direccion, ciudad, estado) 
VALUES ('Juan Guarnizo', 'JuanGuarnizo@gmail.com', 45, 'Nazareth', 'Garzon', 1);
-- ? 15
INSERT INTO aprendices (nombre_apellido, correo, edad, direccion, ciudad, estado) 
VALUES ('German Garmendia', 'GermanGarmendia@gmail.com', 25, 'Seul', 'Madrid', 2);
-- ? 16
INSERT INTO aprendices (nombre_apellido, correo, edad, direccion, ciudad, estado) 
VALUES ('German Fernandez', 'GermanFernandez@gmail.com', 20, 'Majo', 'Garzon', 2);

--! CASO 1
--? Seleccionamos la el id de la tabla 'aprendices', el cual nos retorna solo los IDs
SELECT id FROM aprendices;

--! CASO 2
--? Seleccionamos nombre_apellido, edad  de la tabla 'aprendices', el cual nos retorna solo los IDs
SELECT nombre_apellido, edad FROM aprendices;

--! CASO 3
--? Seleccionamos nombre_apellido, edad, estado  de la tabla 'aprendices', el cual nos retorna solo los IDs
SELECT nombre_apellido, edad, estado FROM aprendices;

--todo Formas de mostrar los resultados ------------------------------------------

--! CASO 1
--? SELECT id 
SELECT id FROM aprendices\G;

--! CASO 2
--? Seleccionamos nombre_apellido, edad, estado  de la tabla 'aprendices', el cual nos retorna solo los IDs
SELECT nombre_apellido, edad, estado FROM aprendices\G;

--! CASO 3
--? Seleccionamos nombre_apellido, edad, estado  de la tabla 'aprendices', el cual nos retorna solo los IDs
SELECT * FROM aprendices\G;

--todo Formas de mostrar conjunto de datos especificos ------------------------------------------

--! CASO 1
--? SYNTAXIS ====> SELECT (columnas) FROM (tabla) WHERE (condicion)
SELECT * FROM aprendices WHERE id = 1;

--! CASO 2
--? SYNTAXIS ====> SELECT (columnas) FROM (tabla) WHERE (condicion)
SELECT * FROM aprendices WHERE correo = 'MarQuitos@gmail.com';

--! CASO 3
--? SYNTAXIS ====> SELECT (columnas) FROM (tabla) WHERE (condicion)
SELECT * FROM aprendices WHERE edad > 24;

--! CASO 4
--? SYNTAXIS ====> SELECT (columnas) FROM (tabla) WHERE (condicion)
SELECT * FROM aprendices WHERE creado > '2023-06-05 00:00:01';

--! CASO 5
--? SYNTAXIS ====> SELECT (columnas) FROM (tabla) WHERE (columna) IN (busqueda) El operador IN nos permite limitar la búsqueda a campos específicos o listas
SELECT * FROM aprendices WHERE id IN (1,6,9);

--! CASO 6
--? SYNTAXIS ====> SELECT (columnas) FROM (tabla) ORDER BY (columna) DESC/ASC
--? ORDER BY --> ordenar por (columna)
--? DESC/ASC --> desendiendo(restando)/acendiendo(sumando)
--? LIMIT N --> limite de (N cantidad de resultados)
SELECT * FROM aprendices ORDER BY edad ASC LIMIT 7;

--! CASO 7
--? SYNTAXIS ====> SELECT (columnas) FROM (tabla) LIKE '%(terminacion)'
--? LIKE --> que terminan de esta foma ('%(terminacion)')
SELECT * FROM aprendices WHERE correo LIKE '%.com';

--! CASO 8
--? SYNTAXIS ====> SELECT (columnas) FROM (tabla) LIKE '%(terminacion)'
--? LIKE --> El LIKE nos permite trabajar con cadenas de caracteres: TEXT o VARCHAR para prefijos o sufijos
SELECT * FROM aprendices WHERE correo LIKE 'don%';
