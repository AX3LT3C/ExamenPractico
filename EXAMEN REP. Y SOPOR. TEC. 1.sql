CREATE DATABASE escuela CHARACTER SET utf8 collate utf8_general_ci;

USE escuela;

CREATE TABLE grados(
    codigo_grado int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nomobre varchar(20)
);

CREATE TABLE estudiantes(
    carne int(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre varchar(15),
    apellido varchar(16),
    direccion varchar(18),
    telefono int,
    email varchar(15),
    fechaNacimiento date,
    codigo_grado int
);

CREATE TABLE empleados(
    cod_empleado int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre varchar(20),
    apellido varchar(10),
    direccion varchar(20),
    email varchar(15)
);

CREATE TABLE prestamos(
    cod_prestamo int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    codigo_libro int,
    carne int,
    fecha_prestamo date,
    fecha_devolucion date,
    cod_empleado int
);

CREATE TABLE estados(
    cod_estado bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre varchar(18)
);

CREATE TABLE libros(
    codigo_libro int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    codigo_autor int,
    codigo_editorial int,
    titulo varchar(10),
    numero_paginas int,
    tamaño int,
    precio float,
    estado bigint,
    edicion int
);

CREATE TABLE editoriales(
    codigo_editorial int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre varchar(20),
    direccion varchar(15),
    telefono int,
    email varchar(15)
);

CREATE TABLE autores(
    codigo_autor int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    apellido_autor varchar(15),
    nombre_autor varchar(15),
    pais_origen int
);

CREATE TABLE paises(
    cod_pais int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre varchar(15)
);

ALTER TABLE estudiantes
ADD CONSTRAINT pk_fk_estudiante FOREIGN KEY (codigo_grado) REFERENCES grados(codigo_grado) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE prestamos
ADD CONSTRAINT pk_fk_prestamo FOREIGN KEY (carne) REFERENCES estudiantes(carne) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE prestamos
ADD CONSTRAINT pk_fk_prestame FOREIGN KEY (cod_empleado) REFERENCES empleados(cod_empleado) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE prestamos
ADD CONSTRAINT pk_fk_prestami FOREIGN KEY (codigo_libro) REFERENCES libros(codigo_libro) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE libros
ADD CONSTRAINT pk_fk_libro FOREIGN KEY (estado) REFERENCES estados(cod_estado) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE libros
ADD CONSTRAINT pk_fk_libri FOREIGN KEY (codigo_autor) REFERENCES autores(codigo_autor) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE libros
ADD CONSTRAINT pk_fk_libror FOREIGN KEY (codigo_editorial) REFERENCES editoriales(codigo_editorial) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE autores
ADD CONSTRAINT pk_fk_autore FOREIGN KEY (pais_origen) REFERENCES paises(cod_pais) ON UPDATE CASCADE ON DELETE CASCADE;