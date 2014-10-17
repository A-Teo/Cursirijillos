-- phpMyAdmin SQL Dump
-- version 3.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1:3306

-- Tiempo de generación: 17-10-2014 a las 00:30:39
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
-- Estructura de tabla para la tabla `form`
--

CREATE TABLE `form` (
  `id_form` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_form` varchar(255) NOT NULL,
  `tipo_iu_id_iu` int(11) NOT NULL,
  PRIMARY KEY (`id_form`),
  KEY `form_tipo_iu` (`tipo_iu_id_iu`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `form`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `funcion`
--

CREATE TABLE `funcion` (
  `id_funcion` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_funcion` varchar(255) NOT NULL,
  PRIMARY KEY (`id_funcion`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcar la base de datos para la tabla `funcion`
--

INSERT INTO `funcion` VALUES(1, 'Ver Capacitadores y su Área');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `funcion_form`
--

CREATE TABLE `funcion_form` (
  `funcion_id_funcion` int(11) NOT NULL,
  `form_id_form` int(11) NOT NULL,
  KEY `Table_9_form` (`form_id_form`),
  KEY `Table_9_funcion` (`funcion_id_funcion`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `funcion_form`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_rol` varchar(255) NOT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcar la base de datos para la tabla `rol`
--

INSERT INTO `rol` VALUES(1, 'Organizador');
INSERT INTO `rol` VALUES(2, 'Capacitador');
INSERT INTO `rol` VALUES(3, 'Asistente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol_funcion`
--

CREATE TABLE `rol_funcion` (
  `rol_id_rol` int(11) NOT NULL,
  `funcion_id_funcion` int(11) NOT NULL,
  KEY `Table_7_funcion` (`funcion_id_funcion`),
  KEY `Table_7_rol` (`rol_id_rol`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `rol_funcion`
--

INSERT INTO `rol_funcion` VALUES(1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_iu`
--

CREATE TABLE `tipo_iu` (
  `id_iu` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_iu` varchar(255) NOT NULL,
  PRIMARY KEY (`id_iu`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `tipo_iu`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `usuario`
--

INSERT INTO `usuario` VALUES('Antonio', 'asdf');
INSERT INTO `usuario` VALUES('Alejandro', 'qwerty');
INSERT INTO `usuario` VALUES('Jorge', 'zxcv');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_rol`
--

CREATE TABLE `usuario_rol` (
  `usuario_username` varchar(255) NOT NULL,
  `rol_id_rol` int(11) NOT NULL,
  KEY `Table_5_rol` (`rol_id_rol`),
  KEY `Table_5_usuario` (`usuario_username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `usuario_rol`
--

INSERT INTO `usuario_rol` VALUES('Antonio', 1);
INSERT INTO `usuario_rol` VALUES('Alejandro', 2);
INSERT INTO `usuario_rol` VALUES('Jorge', 3);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
