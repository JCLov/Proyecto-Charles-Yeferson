-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-11-2022 a las 05:53:28
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `institucion`
--

CREATE TABLE `institucion` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `idTipoInstitucion` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(150) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE `municipio` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `idEstado` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas_preguntas_respuestas`
--

CREATE TABLE `personas_preguntas_respuestas` (
  `id` bigint(20) NOT NULL,
  `fecha` date DEFAULT NULL,
  `cedula_persona` bigint(20) DEFAULT NULL,
  `idPreguntasRespuestas` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `idTipoPregunta` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas`
--

CREATE TABLE `respuestas` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_institucion`
--

CREATE TABLE `tipo_institucion` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_preguntas`
--

CREATE TABLE `tipo_preguntas` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` bigint(20) NOT NULL,
  `user` varchar(100) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `institucion`
--
ALTER TABLE `institucion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `links`
--
ALTER TABLE `links`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `municipio`
--
ALTER TABLE `municipio`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `cedula` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personas_preguntas_respuestas`
--
ALTER TABLE `personas_preguntas_respuestas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `preguntas_respuestas`
--
ALTER TABLE `preguntas_respuestas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_institucion`
--
ALTER TABLE `tipo_institucion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_preguntas`
--
ALTER TABLE `tipo_preguntas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
