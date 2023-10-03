DROP DATABASE IF EXISTS ferreteria;
CREATE DATABASE ferreteria CHARACTER SET utf8mb4;
USE ferreteria;

CREATE TABLE cliente (
  id_dni INT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  apellido1 VARCHAR(100) NOT NULL,
  apellido2 VARCHAR(100),
  ciudad VARCHAR(100),
  direccion VARCHAR(100),
  email VARCHAR(100)
);

CREATE TABLE proveedores (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre_o_empresa VARCHAR(100) NOT NULL,
  ciudad VARCHAR(100),
  direccion VARCHAR(100),
  email VARCHAR(100)
);

CREATE TABLE empleados (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  apellido1 VARCHAR(100) NOT NULL,
  apellido2 VARCHAR(100),
  puesto VARCHAR(100) NOT NULL,
  ciudad VARCHAR(100),
  direccion VARCHAR(100),
  email VARCHAR(100)
);

CREATE TABLE productos (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  id_producto_tipo VARCHAR(100) NOT NULL,
  descripcion_prod VARCHAR(150) NOT NULL
);


CREATE TABLE operacion (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  compra VARCHAR(100) NOT NULL,
  venta VARCHAR(100) NOT NULL,
  forma_de_pago VARCHAR(100),
  total FLOAT
);

CREATE TABLE pedido (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  total DOUBLE NOT NULL,
  fecha DATE,
  id_cliente INT UNSIGNED NOT NULL,
  FOREIGN KEY (id_cliente) REFERENCES cliente(id)
);