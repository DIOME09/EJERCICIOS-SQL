CREATE DATABASE facturacion;

USE facturacion;

CREATE TABLE cliente(
    id_cliente VARCHAR(30) UNIQUE PRIMARY KEY,
    nombre VARCHAR(25) UNIQUE NOT NULL,
    apellido VARCHAR(25) UNIQUE NOT NULL,
    direccion VARCHAR(20) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    correo VARCHAR(50) UNIQUE NOT NULL,
    municipio VARCHAR(20),
    departamento VARCHAR(20),
    pais VARCHAR(20) CHECK (pais='colombia'),
    creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE factura(
    num_factura VARCHAR(20) UNIQUE PRIMARY KEY,
    id_cliente VARCHAR(30),
    id_producto VARCHAR(30),
    creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
ALTER TABLE factura ADD FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente);

CREATE TABLE productos(
    id_producto VARCHAR(30) UNIQUE PRIMARY KEY,
    nombre VARCHAR(25) NOT NULL,
    precio INT(25) NOT NULL,
    stock INT(25) NOT NULL,
    num_factura VARCHAR(20),
    creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

ALTER TABLE productos ADD FOREIGN KEY(num_factura) REFERENCES factura(num_factura);

ALTER TABLE factura ADD FOREIGN KEY(id_producto) REFERENCES productos(id_producto);

--TODO Tabla - Cliente

INSERT INTO cliente(id_cliente, nombre, apellido, direccion, telefono, correo, municipio, departamento, pais)
VALUES 
('900876543-0','Juan','Gomez','calle 13','8608978','user@user1.com','quebradas','risaralda','colombia'),
('800876543-0','camilo','velez','calle 11','87098765','user2@user2.com','orito','putumayo','colombia'),
('1077654345','juana','de arco','calle 10','861876567','user3@user3.com','bogota','cundinamarca','colombia');

--TODO Tabla - Factura

INSERT INTO factura(num_factura, id_cliente)
VALUES
('A-001','900876543-0'),
('A-002','1077654345'),
('A-003','800876543-0');

INSERT INTO productos(id_producto, nombre, precio, stock, num_factura)
VALUES
('PRO-001','portatil','2800000','70','A-001'),
('PRO-002','teclado','30000','30','A-002'),
('PRO-003','mouse','15000','20','A-003');

UPDATE factura SET id_producto = 'PRO-001' WHERE num_factura = 'A-001';
UPDATE factura SET id_producto = 'PRO-002' WHERE num_factura = 'A-002';
UPDATE factura SET id_producto = 'PRO-003' WHERE num_factura = 'A-003';
