-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-11-2022 a las 10:16:58
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `encuestas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(150) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id`, `nombre`, `descripcion`, `url`) VALUES
(1, 'curso 1', 'Descripcion curso 1', 'url curso 1'),
(2, 'curso 2', 'Descripcion curso 2', 'url curso 2'),
(3, 'curso 3', 'Descripcion curso 3', 'url curso 3'),
(4, 'curso 4', 'Descripcion curso 4', 'url curso 4'),
(5, 'curso 5', 'Descripcion curso 5', 'url curso 5'),
(6, 'curso 6', 'Descripcion curso 6', 'url curso 6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id`, `nombre`) VALUES
(1, 'Tachira');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `institucion`
--

CREATE TABLE `institucion` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `idTipoInstitucion` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `institucion`
--

INSERT INTO `institucion` (`id`, `nombre`, `idTipoInstitucion`) VALUES
(1, 'Institucion 1', 1),
(2, 'Institucion 2', 1),
(3, 'Institucion 3', 1),
(4, 'Institucion 4', 1),
(5, 'Institucion 5', 1),
(6, 'Institucion 6', 1),
(7, 'Institucion 7', 1),
(8, 'Institucion 8', 1),
(9, 'Institucion 9', 1),
(10, 'Institucion 10', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(150) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id`, `nombre`, `descripcion`) VALUES
(1, 'libro 1', 'Descripcion libro 1'),
(2, 'libro 2', 'Descripcion libro 2'),
(3, 'libro 3', 'Descripcion libro 3'),
(4, 'libro 4', 'Descripcion libro 4'),
(5, 'libro 5', 'Descripcion libro 5'),
(6, 'libro 6', 'Descripcion libro 6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `links`
--

CREATE TABLE `links` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(150) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `links`
--

INSERT INTO `links` (`id`, `nombre`, `descripcion`, `url`) VALUES
(1, 'Link 1', 'Descripcion link 1', 'url link 1'),
(2, 'Link 2', 'Descripcion link 2', 'url link 2'),
(3, 'Link 3', 'Descripcion link 3', 'url link 3'),
(4, 'Link 4', 'Descripcion link 4', 'url link 4'),
(5, 'Link 5', 'Descripcion link 5', 'url link 5'),
(6, 'Link 6', 'Descripcion link 6', 'url link 6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE `municipio` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `idEstado` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `municipio`
--

INSERT INTO `municipio` (`id`, `nombre`, `idEstado`) VALUES
(1, 'Andrés Bello', 1),
(2, 'Antonio Rómulo Costa', 1),
(3, 'Ayacucho', 1),
(4, 'Bolívar', 1),
(5, 'Cárdenas', 1),
(6, 'Córdoba', 1),
(7, 'Fernández Feo', 1),
(8, 'Francisco de Miranda', 1),
(9, 'García de Hevia', 1),
(10, 'Guásimos', 1),
(11, 'Independencia', 1),
(12, 'Jáuregui', 1),
(13, 'José María Vargas', 1),
(14, 'Junín', 1),
(15, 'Libertad', 1),
(16, 'Libertador', 1),
(17, 'Lobatera', 1),
(18, 'Michelena', 1),
(19, 'Panamericano', 1),
(20, 'Pedro María Ureña', 1),
(21, 'Rafael Urdaneta', 1),
(22, 'Samuel Darío Maldonado', 1),
(23, 'San Cristóbal', 1),
(24, 'San Judas Tadeo', 1),
(25, 'Seboruco', 1),
(26, 'Simón Rodríguez', 1),
(27, 'Sucre', 1),
(28, 'Torbes', 1),
(29, 'Uribante', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `cedula` bigint(20) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `idUsuario` bigint(20) DEFAULT NULL,
  `idMunicipio` bigint(20) DEFAULT NULL,
  `idInstitucion` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`cedula`, `nombre`, `apellido`, `direccion`, `fecha_nacimiento`, `telefono`, `idUsuario`, `idMunicipio`, `idInstitucion`) VALUES
(11222666, 'prueba', 'prueba', 'Direccion Prueba', '0000-00-00', '04144569856', 19, 14, 1),
(15632698, 'NombrePrueba', 'ApellidoPrueba', 'Direccion Prueba', '1990-01-01', '04145563652', 17, 14, 1),
(19925888, 'Jesus', 'Acevedo', 'Urb manuel pulido mendez', '1992-11-04', '04147896523', 18, 14, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas_preguntas_respuestas`
--

CREATE TABLE `personas_preguntas_respuestas` (
  `id` bigint(20) NOT NULL,
  `fecha` date DEFAULT NULL,
  `intento` bigint(20) DEFAULT NULL,
  `terminado` tinyint(1) DEFAULT NULL,
  `cedula_persona` bigint(20) DEFAULT NULL,
  `idPreguntasRespuestas` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `personas_preguntas_respuestas`
--

INSERT INTO `personas_preguntas_respuestas` (`id`, `fecha`, `intento`, `terminado`, `cedula_persona`, `idPreguntasRespuestas`) VALUES
(1, '2022-11-29', 1, 1, 19925888, 1),
(2, '2022-11-29', 1, 1, 19925888, 6),
(3, '2022-11-29', 1, 1, 19925888, 12),
(4, '2022-11-29', 1, 1, 19925888, 17),
(5, '2022-11-29', 1, 1, 19925888, 22),
(6, '2022-11-29', 1, 1, 19925888, 27),
(7, '2022-11-29', 1, 1, 19925888, 32),
(8, '2022-11-29', 1, 1, 19925888, 36),
(9, '2022-11-29', 1, 1, 19925888, 43),
(10, '2022-11-29', 1, 1, 19925888, 49),
(11, '2022-11-29', 1, 1, 19925888, 52),
(12, '2022-11-29', 1, 1, 19925888, 56),
(13, '2022-11-29', 1, 1, 19925888, 61),
(14, '2022-11-29', 1, 1, 19925888, 69),
(15, '2022-11-29', 1, 1, 19925888, 73),
(16, '2022-11-29', 2, 1, 19925888, 1),
(17, '2022-11-29', 2, 1, 19925888, 6),
(18, '2022-11-29', 2, 1, 19925888, 11),
(19, '2022-11-29', 2, 1, 19925888, 16),
(20, '2022-11-29', 2, 1, 19925888, 21),
(21, '2022-11-29', 2, 1, 19925888, 26),
(22, '2022-11-29', 2, 1, 19925888, 31),
(23, '2022-11-29', 2, 1, 19925888, 36),
(24, '2022-11-29', 2, 1, 19925888, 41),
(25, '2022-11-29', 2, 1, 19925888, 46),
(26, '2022-11-29', 2, 1, 19925888, 52),
(27, '2022-11-29', 2, 1, 19925888, 58),
(28, '2022-11-29', 2, 1, 19925888, 65),
(29, '2022-11-29', 2, 1, 19925888, 69),
(30, '2022-11-29', 2, 1, 19925888, 75),
(31, '2022-11-29', 3, 1, 19925888, 1),
(32, '2022-11-29', 3, 1, 19925888, 6),
(33, '2022-11-29', 3, 1, 19925888, 11),
(34, '2022-11-29', 3, 1, 19925888, 16),
(35, '2022-11-29', 3, 1, 19925888, 21),
(36, '2022-11-29', 3, 1, 19925888, 26),
(37, '2022-11-29', 3, 1, 19925888, 31),
(38, '2022-11-29', 3, 1, 19925888, 40),
(39, '2022-11-29', 3, 1, 19925888, 45),
(40, '2022-11-29', 3, 1, 19925888, 50),
(41, '2022-11-29', 3, 1, 19925888, 53),
(42, '2022-11-29', 3, 1, 19925888, 58),
(43, '2022-11-29', 3, 1, 19925888, 63),
(44, '2022-11-29', 3, 1, 19925888, 68),
(45, '2022-11-29', 3, 1, 19925888, 73);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `idTipoPregunta` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id`, `descripcion`, `idTipoPregunta`) VALUES
(1, 'Pregunta 1 Tipo 1', 1),
(2, 'Pregunta 2 Tipo 1', 1),
(3, 'Pregunta 3 Tipo 1', 1),
(4, 'Pregunta 4 Tipo 1', 1),
(5, 'Pregunta 5 Tipo 1', 1),
(6, 'Pregunta 1 Tipo 2', 2),
(7, 'Pregunta 2 Tipo 2', 2),
(8, 'Pregunta 3 Tipo 2', 2),
(9, 'Pregunta 4 Tipo 2', 2),
(10, 'Pregunta 5 Tipo 2', 2),
(11, 'Pregunta 1 Tipo 3', 3),
(12, 'Pregunta 2 Tipo 3', 3),
(13, 'Pregunta 3 Tipo 3', 3),
(14, 'Pregunta 4 Tipo 3', 3),
(15, 'Pregunta 5 Tipo 3', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas_respuestas`
--

CREATE TABLE `preguntas_respuestas` (
  `id` bigint(20) NOT NULL,
  `puntaje` bigint(20) DEFAULT NULL,
  `idPregunta` bigint(20) DEFAULT NULL,
  `idRespuesta` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `preguntas_respuestas`
--

INSERT INTO `preguntas_respuestas` (`id`, `puntaje`, `idPregunta`, `idRespuesta`) VALUES
(1, 10, 1, 1),
(2, 20, 1, 2),
(3, 30, 1, 3),
(4, 40, 1, 4),
(5, 50, 1, 5),
(6, 10, 2, 6),
(7, 25, 2, 7),
(8, 30, 2, 8),
(9, 40, 2, 9),
(10, 55, 2, 10),
(11, 10, 3, 11),
(12, 20, 3, 12),
(13, 35, 3, 13),
(14, 40, 3, 14),
(15, 55, 3, 1),
(16, 10, 4, 2),
(17, 20, 4, 3),
(18, 30, 4, 4),
(19, 40, 4, 5),
(20, 55, 4, 6),
(21, 10, 5, 7),
(22, 20, 5, 8),
(23, 35, 5, 9),
(24, 40, 5, 10),
(25, 50, 5, 11),
(26, 15, 6, 12),
(27, 20, 6, 13),
(28, 30, 6, 14),
(29, 40, 6, 1),
(30, 50, 6, 2),
(31, 10, 7, 15),
(32, 25, 7, 1),
(33, 30, 7, 3),
(34, 45, 7, 3),
(35, 50, 7, 4),
(36, 50, 8, 5),
(37, 10, 8, 6),
(38, 25, 8, 7),
(39, 35, 8, 8),
(40, 40, 8, 9),
(41, 10, 9, 10),
(42, 25, 9, 11),
(43, 30, 9, 12),
(44, 45, 9, 13),
(45, 50, 9, 14),
(46, 10, 10, 15),
(47, 25, 10, 1),
(48, 30, 10, 2),
(49, 40, 10, 3),
(50, 50, 10, 4),
(51, 15, 11, 5),
(52, 25, 11, 6),
(53, 20, 11, 7),
(54, 30, 11, 8),
(55, 40, 11, 9),
(56, 50, 12, 10),
(57, 15, 12, 11),
(58, 20, 12, 12),
(59, 30, 12, 13),
(60, 45, 12, 14),
(61, 50, 13, 15),
(62, 10, 13, 1),
(63, 20, 13, 2),
(64, 35, 13, 3),
(65, 40, 13, 4),
(66, 50, 14, 5),
(67, 10, 14, 6),
(68, 25, 14, 7),
(69, 30, 14, 8),
(70, 40, 14, 9),
(71, 50, 15, 10),
(72, 15, 15, 11),
(73, 25, 15, 12),
(74, 30, 15, 13),
(75, 40, 15, 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas`
--

CREATE TABLE `respuestas` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `idTipoRespuesta` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `respuestas`
--

INSERT INTO `respuestas` (`id`, `descripcion`, `idTipoRespuesta`) VALUES
(1, 'Respuesta 1 Tipo 1', 1),
(2, 'Respuesta 2 Tipo 1', 1),
(3, 'Respuesta 3 Tipo 1', 1),
(4, 'Respuesta 1 Tipo 2', 1),
(5, 'Respuesta 2 Tipo 2', 1),
(6, 'Respuesta 3 Tipo 2', 2),
(7, 'Respuesta 1 Tipo 3', 2),
(8, 'Respuesta 2 Tipo 3', 2),
(9, 'Respuesta 3 Tipo 3', 2),
(10, 'Respuesta 5 Tipo 2', 2),
(11, 'Respuesta 1 Tipo 3', 3),
(12, 'Respuesta 2 Tipo 3', 3),
(13, 'Respuesta 3 Tipo 3', 3),
(14, 'Respuesta 4 Tipo 3', 3),
(15, 'Respuesta 5 Tipo 3', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultados`
--

CREATE TABLE `resultados` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `idTipoResultado` bigint(20) NOT NULL,
  `puntosMax` bigint(11) NOT NULL,
  `puntosMin` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `resultados`
--

INSERT INTO `resultados` (`id`, `descripcion`, `idTipoResultado`, `puntosMax`, `puntosMin`) VALUES
(1, 'Resultado 1 Tipo 1', 1, 90, 0),
(2, 'Resultado 2 Tipo 1', 1, 170, 91),
(3, 'Resultado 3 Tipo 1', 1, 299, 171),
(4, 'Resultado 1 Tipo 2', 2, 90, 0),
(5, 'Resultado 2 Tipo 2', 2, 170, 91),
(6, 'Resultado 3 Tipo 2', 2, 299, 171),
(7, 'Resultado 1 Tipo 3', 3, 90, 0),
(8, 'Resultado 2 Tipo 3', 3, 170, 91),
(9, 'Resultado 3 Tipo 3', 3, 299, 171);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultados_cursos`
--

CREATE TABLE `resultados_cursos` (
  `id` bigint(20) NOT NULL,
  `idCursos` bigint(20) DEFAULT NULL,
  `idResultados` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `resultados_cursos`
--

INSERT INTO `resultados_cursos` (`id`, `idCursos`, `idResultados`) VALUES
(1, 1, 1),
(2, 3, 1),
(3, 2, 2),
(4, 4, 2),
(5, 5, 3),
(6, 6, 3),
(7, 6, 4),
(8, 4, 4),
(9, 2, 5),
(10, 3, 5),
(11, 1, 6),
(12, 5, 6),
(13, 3, 7),
(14, 4, 7),
(15, 1, 8),
(16, 5, 8),
(17, 6, 9),
(18, 2, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultados_libros`
--

CREATE TABLE `resultados_libros` (
  `id` bigint(20) NOT NULL,
  `idLibros` bigint(20) DEFAULT NULL,
  `idResultados` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `resultados_libros`
--

INSERT INTO `resultados_libros` (`id`, `idLibros`, `idResultados`) VALUES
(1, 3, 1),
(2, 4, 1),
(3, 2, 2),
(4, 1, 2),
(5, 6, 3),
(6, 5, 3),
(7, 2, 4),
(8, 6, 4),
(9, 5, 5),
(10, 4, 5),
(11, 1, 6),
(12, 3, 6),
(13, 5, 7),
(14, 3, 7),
(15, 2, 8),
(16, 6, 8),
(17, 4, 9),
(18, 1, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultados_link`
--

CREATE TABLE `resultados_link` (
  `id` bigint(20) NOT NULL,
  `idLinks` bigint(20) DEFAULT NULL,
  `idResultados` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `resultados_link`
--

INSERT INTO `resultados_link` (`id`, `idLinks`, `idResultados`) VALUES
(1, 6, 1),
(2, 4, 1),
(3, 2, 2),
(4, 3, 2),
(5, 1, 3),
(6, 5, 3),
(7, 3, 4),
(8, 4, 4),
(9, 1, 5),
(10, 5, 5),
(11, 6, 6),
(12, 2, 6),
(13, 1, 7),
(14, 3, 7),
(15, 2, 8),
(16, 4, 8),
(17, 5, 9),
(18, 6, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultados_personas`
--

CREATE TABLE `resultados_personas` (
  `id` bigint(20) NOT NULL,
  `fecha` date DEFAULT NULL,
  `cedula_persona` bigint(20) DEFAULT NULL,
  `idResultado` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `descripcion`) VALUES
(1, 'Administrador'),
(2, 'Estandar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_institucion`
--

CREATE TABLE `tipo_institucion` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_institucion`
--

INSERT INTO `tipo_institucion` (`id`, `nombre`) VALUES
(1, 'Publica'),
(2, 'Privada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_preguntas`
--

CREATE TABLE `tipo_preguntas` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_preguntas`
--

INSERT INTO `tipo_preguntas` (`id`, `descripcion`) VALUES
(1, 'Pregunta Tipo 1'),
(2, 'Pregunta tipo 1'),
(3, 'Pregunta tipo 2'),
(4, 'Pregunta tipo 3'),
(5, 'Pregunta tipo 4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_respuestas`
--

CREATE TABLE `tipo_respuestas` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_respuestas`
--

INSERT INTO `tipo_respuestas` (`id`, `descripcion`) VALUES
(1, 'Tipo Respuesta 1'),
(2, 'Tipo Respuesta 2'),
(3, 'Tipo Respuesta 3'),
(4, 'Tipo Respuesta 4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_resultados`
--

CREATE TABLE `tipo_resultados` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `puntosMax` bigint(20) NOT NULL,
  `puntosMin` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_resultados`
--

INSERT INTO `tipo_resultados` (`id`, `descripcion`, `puntosMax`, `puntosMin`) VALUES
(1, 'RESPUESTAS PERSONALES', 500, 200),
(2, 'RESPUESTAS TALENTOS', 199, 100),
(3, 'RESPUESTAS LABORALES', 99, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` bigint(20) NOT NULL,
  `user` varchar(100) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL,
  `idRoles` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `user`, `pass`, `idRoles`) VALUES
(1, 'usuarioprueba', '1234', 2),
(2, 'usuarioprueba2', '1234', 2),
(7, 'usuarioprueba3', '1234', 2),
(8, 'usuarioprueba4', '1234', 2),
(9, 'pruebasUsuario', '1234', 2),
(17, 'usuarioprueba5', '12345tt', 2),
(18, 'jeam', '1234', 2),
(19, 'usuarioprueba6', '1234', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `institucion`
--
ALTER TABLE `institucion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_TIN_INS` (`idTipoInstitucion`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_EST_MUN` (`idEstado`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`cedula`),
  ADD KEY `FK_USU_PER` (`idUsuario`),
  ADD KEY `FK_MUN_PER` (`idMunicipio`),
  ADD KEY `FK_INS_PER` (`idInstitucion`);

--
-- Indices de la tabla `personas_preguntas_respuestas`
--
ALTER TABLE `personas_preguntas_respuestas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_PER_PPR` (`cedula_persona`),
  ADD KEY `FK_TIN_PPR` (`idPreguntasRespuestas`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_TPR_PRE` (`idTipoPregunta`);

--
-- Indices de la tabla `preguntas_respuestas`
--
ALTER TABLE `preguntas_respuestas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_PRE_PRERES` (`idPregunta`),
  ADD KEY `FK_RES_PRERES` (`idRespuesta`);

--
-- Indices de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_TRE_RES` (`idTipoRespuesta`);

--
-- Indices de la tabla `resultados`
--
ALTER TABLE `resultados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_TRE_RESS` (`idTipoResultado`);

--
-- Indices de la tabla `resultados_cursos`
--
ALTER TABLE `resultados_cursos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_RES_CUR` (`idCursos`),
  ADD KEY `FK_RESU_CUR` (`idResultados`);

--
-- Indices de la tabla `resultados_libros`
--
ALTER TABLE `resultados_libros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_RES_LIB` (`idLibros`),
  ADD KEY `FK_RESU_LIB` (`idResultados`);

--
-- Indices de la tabla `resultados_link`
--
ALTER TABLE `resultados_link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_RES_LIN` (`idLinks`),
  ADD KEY `FK_RESU_LIN` (`idResultados`);

--
-- Indices de la tabla `resultados_personas`
--
ALTER TABLE `resultados_personas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_PER_CPER` (`cedula_persona`),
  ADD KEY `FK_RESU_CPER` (`idResultado`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_institucion`
--
ALTER TABLE `tipo_institucion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_preguntas`
--
ALTER TABLE `tipo_preguntas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_respuestas`
--
ALTER TABLE `tipo_respuestas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_resultados`
--
ALTER TABLE `tipo_resultados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ROL_USU` (`idRoles`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `institucion`
--
ALTER TABLE `institucion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `links`
--
ALTER TABLE `links`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `municipio`
--
ALTER TABLE `municipio`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `cedula` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19925889;

--
-- AUTO_INCREMENT de la tabla `personas_preguntas_respuestas`
--
ALTER TABLE `personas_preguntas_respuestas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `preguntas_respuestas`
--
ALTER TABLE `preguntas_respuestas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `resultados`
--
ALTER TABLE `resultados`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `resultados_cursos`
--
ALTER TABLE `resultados_cursos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `resultados_libros`
--
ALTER TABLE `resultados_libros`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `resultados_link`
--
ALTER TABLE `resultados_link`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `resultados_personas`
--
ALTER TABLE `resultados_personas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo_institucion`
--
ALTER TABLE `tipo_institucion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo_preguntas`
--
ALTER TABLE `tipo_preguntas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tipo_respuestas`
--
ALTER TABLE `tipo_respuestas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tipo_resultados`
--
ALTER TABLE `tipo_resultados`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `institucion`
--
ALTER TABLE `institucion`
  ADD CONSTRAINT `FK_TIN_INS` FOREIGN KEY (`idTipoInstitucion`) REFERENCES `tipo_institucion` (`id`);

--
-- Filtros para la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD CONSTRAINT `FK_EST_MUN` FOREIGN KEY (`idEstado`) REFERENCES `estado` (`id`);

--
-- Filtros para la tabla `personas`
--
ALTER TABLE `personas`
  ADD CONSTRAINT `FK_INS_PER` FOREIGN KEY (`idInstitucion`) REFERENCES `institucion` (`id`),
  ADD CONSTRAINT `FK_MUN_PER` FOREIGN KEY (`idMunicipio`) REFERENCES `municipio` (`id`),
  ADD CONSTRAINT `FK_USU_PER` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `personas_preguntas_respuestas`
--
ALTER TABLE `personas_preguntas_respuestas`
  ADD CONSTRAINT `FK_PER_PPR` FOREIGN KEY (`cedula_persona`) REFERENCES `personas` (`cedula`),
  ADD CONSTRAINT `FK_TIN_PPR` FOREIGN KEY (`idPreguntasRespuestas`) REFERENCES `preguntas_respuestas` (`id`);

--
-- Filtros para la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD CONSTRAINT `FK_TPR_PRE` FOREIGN KEY (`idTipoPregunta`) REFERENCES `tipo_preguntas` (`id`);

--
-- Filtros para la tabla `preguntas_respuestas`
--
ALTER TABLE `preguntas_respuestas`
  ADD CONSTRAINT `FK_PRE_PRERES` FOREIGN KEY (`idPregunta`) REFERENCES `preguntas` (`id`),
  ADD CONSTRAINT `FK_RES_PRERES` FOREIGN KEY (`idRespuesta`) REFERENCES `respuestas` (`id`);

--
-- Filtros para la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD CONSTRAINT `FK_TRE_RES` FOREIGN KEY (`idTipoRespuesta`) REFERENCES `tipo_respuestas` (`id`);

--
-- Filtros para la tabla `resultados`
--
ALTER TABLE `resultados`
  ADD CONSTRAINT `FK_TRE_RESS` FOREIGN KEY (`idTipoResultado`) REFERENCES `tipo_resultados` (`id`);

--
-- Filtros para la tabla `resultados_cursos`
--
ALTER TABLE `resultados_cursos`
  ADD CONSTRAINT `FK_RESU_CUR` FOREIGN KEY (`idResultados`) REFERENCES `resultados` (`id`),
  ADD CONSTRAINT `FK_RES_CUR` FOREIGN KEY (`idCursos`) REFERENCES `cursos` (`id`);

--
-- Filtros para la tabla `resultados_libros`
--
ALTER TABLE `resultados_libros`
  ADD CONSTRAINT `FK_RESU_LIB` FOREIGN KEY (`idResultados`) REFERENCES `resultados` (`id`),
  ADD CONSTRAINT `FK_RES_LIB` FOREIGN KEY (`idLibros`) REFERENCES `libros` (`id`);

--
-- Filtros para la tabla `resultados_link`
--
ALTER TABLE `resultados_link`
  ADD CONSTRAINT `FK_RESU_LIN` FOREIGN KEY (`idResultados`) REFERENCES `resultados` (`id`),
  ADD CONSTRAINT `FK_RES_LIN` FOREIGN KEY (`idLinks`) REFERENCES `links` (`id`);

--
-- Filtros para la tabla `resultados_personas`
--
ALTER TABLE `resultados_personas`
  ADD CONSTRAINT `FK_PER_CPER` FOREIGN KEY (`cedula_persona`) REFERENCES `personas` (`cedula`),
  ADD CONSTRAINT `FK_RESU_CPER` FOREIGN KEY (`idResultado`) REFERENCES `resultados` (`id`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `FK_ROL_USU` FOREIGN KEY (`idRoles`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
