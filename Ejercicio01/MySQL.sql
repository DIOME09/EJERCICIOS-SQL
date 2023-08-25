
    -- ? CREATE DATABASE ---> (Para crear una base de datos)
    CREATE DATABASE <db>;

    -- ? SHOW DATABASES ---> (Para visualizar las bases de datos)
    SHOW DATABASES;

    -- ? USE ---> (Para hacer uso de una base de datos)
    USE <db>;

    -- ? SHOW TABLES ---> (Para visualizar las tablas creadas en la base de datos usada)
    SHOW TABLES;

    -- ? CREATE TABLE ---> (Para crear una tabla dentro de una base de datos) - Sintaxis
    CREATE TABLE <table>(
        ind INT,
        nombre_usuario VARCHAR(50),
        correo VARCHAR(50),
        edad INT,
        estado ENUM('Activo','Inactivo'),
        intereses TEXT,
        creado TIMESTAMP
    );

    -- ? DESC <table> ---> (Para analizar cómo está creada la tabla)
    DESC prendices;

    -- ? DROP TABLE ---> (Para eliminar la tabla )
    DROP TABLE estudiantes;

    CREATE TABLE estudiantes(
    id INT,
    nombre_usuario VARCHAR(50),
    correo VARCHAR(50),
    edad INT,
    estado ENUM('Activo','Inactivo'),
    creado TIMESTAMP
    );

    -- ? new Table - new Sintaxis
    -- * LA PRIMERA LINEA : id IN AUTO_INCREMENT PRIMARY KEY: Se va incrementar el Id y va hacer la key primaria

    -- * LA SEGUNDA LINEA : nombre usuario VARCHAR(50) UNIQUE NO NULL, : Se utiliza para no inserten valores duplicados en una columna

    -- * LA TERCERA LINEA: Edad INT UNSIGNED NOT NULL: Para que no ingresen números negativo.

    -- * LA CUARTA LINEA: Estado ENUM ("Activo”, “Inactivo") DEFAULT "Inactivo", Para que cualquiera de las dos quede por defecto.

    -- TODO - Sintaxis
    CREATE TABLE aprendices(
        id INT AUTO_INCREMENT PRIMARY KEY,
        Nombre_Usuario VARCHAR(50) UNIQUE NOT NULL,
        Edad INT UNSIGNED NOT NULL,
        Estado ENUM('Activo','Inactivo') DEFAULT 'Inactivo',
        Intereses TEXT,
        creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );

    -- ? INSERT INTO <table> (columnas) VALUES ---> (Para insertar datos en las tablas)
    -- * Ejemplo INSERT INTO <tabla> ('Columna1','Columna2','Columna3',...)

    INSERT INTO aprendices (Nombre_Usuario, Edad, Estado, Intereses) VALUES("Juan Carlos", 21, "Activo", "I don't have thing");
    INSERT INTO aprendices (Nombre_Usuario, Edad, Estado, Intereses) VALUES("Maria Cruz", 21, "Inactivo", "Musica y Anime");
    INSERT INTO aprendices (Nombre_Usuario, Edad, Estado, Intereses) VALUES("Carlos", 37, "Inactivo", "Musica y FutBall");
    INSERT INTO aprendices (Nombre_Usuario, Edad, Estado, Intereses) VALUES("Luisa", 17, "Activo", "Literatura y Aire libre");
    INSERT INTO aprendices (Nombre_Usuario, Edad, Estado, Intereses) VALUES("Marcos", 25, "Activo", "video Juegos");
    INSERT INTO aprendices (Nombre_Usuario, Edad, Estado, Intereses) VALUES("Dr.Mario", 29, "Inactivo", "Musica, Peliculas y Arte");
    INSERT INTO aprendices (Nombre_Usuario, Edad, Estado, Intereses) VALUES("Diego", 20, "Activo", "Arte");
    INSERT INTO aprendices (Nombre_Usuario, Edad, Estado, Intereses) VALUES("Huggle", 28, "Inactivo", "Programacion y Video Games");
    INSERT INTO aprendices (Nombre_Usuario, Edad, Estado, Intereses) VALUES("Hector", 32, "Activo", "Viajes y paseo");
    INSERT INTO aprendices (Nombre_Usuario, Edad, Estado, Intereses) VALUES("Pedro", 42, "Inactivo", "Na");
    INSERT INTO aprendices (Nombre_Usuario, Edad, Estado, Intereses) VALUES("Luisa Maria", 20, "Activo", "Arte y cultura");
    INSERT INTO aprendices (Nombre_Usuario, Edad, Estado, Intereses) VALUES("Juana", 29, "Inactivo", "Nostradamus");
