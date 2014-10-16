-- phpMyAdmin SQL Dump
-- version 3.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1:3306

-- Tiempo de generación: 16-10-2014 a las 16:41:33
-- Versión del servidor: 5.1.52
-- Versión de PHP: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `cursirij_bd`
--
DROP DATABASE `cursirij_bd`;
CREATE DATABASE `cursirij_bd` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `cursirij_bd`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
   CONSTRAINT usuario_pk PRIMARY KEY (username) 
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE form (
    id_form int    NOT NULL  AUTO_INCREMENT,
    nombre_form varchar(255)    NOT NULL ,
    tipo_iu_id_iu int    NOT NULL ,
    CONSTRAINT form_pk PRIMARY KEY (id_form)
);

-- Table: funcion
CREATE TABLE funcion (
    id_funcion int    NOT NULL  AUTO_INCREMENT,
    nombre_funcion varchar(255)    NOT NULL ,
    CONSTRAINT funcion_pk PRIMARY KEY (id_funcion)
);

-- Table: funcion_form
CREATE TABLE funcion_form (
    funcion_id_funcion int    NOT NULL ,
    form_id_form int    NOT NULL 
);

-- Table: rol
CREATE TABLE rol (
    id_rol int    NOT NULL  AUTO_INCREMENT,
    nombre_rol varchar(255)    NOT NULL ,
    CONSTRAINT rol_pk PRIMARY KEY (id_rol)
);

-- Table: rol_funcion
CREATE TABLE rol_funcion (
    rol_id_rol int    NOT NULL ,
    funcion_id_funcion int    NOT NULL 
);

-- Table: tipo_iu
CREATE TABLE tipo_iu (
    id_iu int    NOT NULL  AUTO_INCREMENT,
    nombre_iu varchar(255)    NOT NULL ,
    CONSTRAINT tipo_iu_pk PRIMARY KEY (id_iu)
);

-- Table: usuario_rol
CREATE TABLE usuario_rol (
    usuario_username varchar(255)    NOT NULL ,
    rol_id_rol int    NOT NULL 
);

-- foreign keys
-- Reference:  Table_5_rol (table: usuario_rol)


ALTER TABLE usuario_rol ADD CONSTRAINT Table_5_rol FOREIGN KEY Table_5_rol (rol_id_rol)
    REFERENCES rol (id_rol);
-- Reference:  Table_5_usuario (table: usuario_rol)


ALTER TABLE usuario_rol ADD CONSTRAINT Table_5_usuario FOREIGN KEY Table_5_usuario (usuario_username)
    REFERENCES usuario (username);
-- Reference:  Table_7_funcion (table: rol_funcion)


ALTER TABLE rol_funcion ADD CONSTRAINT Table_7_funcion FOREIGN KEY Table_7_funcion (funcion_id_funcion)
    REFERENCES funcion (id_funcion);
-- Reference:  Table_7_rol (table: rol_funcion)


ALTER TABLE rol_funcion ADD CONSTRAINT Table_7_rol FOREIGN KEY Table_7_rol (rol_id_rol)
    REFERENCES rol (id_rol);
-- Reference:  Table_9_form (table: funcion_form)


ALTER TABLE funcion_form ADD CONSTRAINT Table_9_form FOREIGN KEY Table_9_form (form_id_form)
    REFERENCES form (id_form);
-- Reference:  Table_9_funcion (table: funcion_form)


ALTER TABLE funcion_form ADD CONSTRAINT Table_9_funcion FOREIGN KEY Table_9_funcion (funcion_id_funcion)
    REFERENCES funcion (id_funcion);
-- Reference:  form_tipo_iu (table: form)


ALTER TABLE form ADD CONSTRAINT form_tipo_iu FOREIGN KEY form_tipo_iu (tipo_iu_id_iu)
    REFERENCES tipo_iu (id_iu);

--
-- Volcar la base de datos para la tabla `usuario`
--

INSERT INTO `usuario` VALUES('Antonio', 'asdf');
INSERT INTO `usuario` VALUES('Alejandro', 'qwerty');
INSERT INTO `usuario` VALUES('Jorge', 'zxcv');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
