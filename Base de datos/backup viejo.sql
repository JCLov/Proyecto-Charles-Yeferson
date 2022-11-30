-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: encuestas
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cursos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'curso 1','Introducción a la regulación emocional','https://www.edx.org/es/course/introduccion-a-la-regulacion-emocional-basada-en-m'),(2,'curso 2','Inteligencia emocional para el liderazgo','https://www.edx.org/es/course/inteligencia-emocional-para-el-liderazgo-efectiv-2'),(3,'curso 3','Gestión del estrés','https://www.edx.org/es/course/gestion-del-estres-y-mindfulness-2'),(4,'curso 4','Desarrollo de habilidades para el emprendimiento','https://platzi.com/cursos/desarrollar-habilidades-emprendimiento'),(5,'curso 5','Curso de Desarrollo de Habilidades Blandas para Equipos de Trabajo','https://platzi.com/cursos/habilidades-blandas/'),(6,'curso 6','Creatividad e Innovación','https://platzi.com/cursos/creatividad-innovacion/'),(7,'curso 7','Liderazgos Creativos','https://platzi.com/cursos/liderazgo-creativos/'),(8,'curso 8','Innovación y creatividad organizacional','https://www.edx.org/es/course/innovacion-y-creatividad-organizacional'),(9,'curso 9','Emprendimiento e innovación','https://www.edx.org/es/course/el-trabajado-del-siglo-xxi-emprendimiento-e-innovacion');
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES (1,'Tachira');
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institucion`
--

DROP TABLE IF EXISTS `institucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institucion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `idTipoInstitucion` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_TIN_INS` (`idTipoInstitucion`),
  CONSTRAINT `FK_TIN_INS` FOREIGN KEY (`idTipoInstitucion`) REFERENCES `tipo_institucion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institucion`
--

LOCK TABLES `institucion` WRITE;
/*!40000 ALTER TABLE `institucion` DISABLE KEYS */;
INSERT INTO `institucion` VALUES (1,'Los Andes',2),(2,'Las Americas',1),(3,'Nuestra Sra del Rosario',2);
/*!40000 ALTER TABLE `institucion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libros`
--

DROP TABLE IF EXISTS `libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `libros` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros`
--

LOCK TABLES `libros` WRITE;
/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
INSERT INTO `libros` VALUES (1,'Las 15 leyes indispensables del conocimiento','https://drive.google.com/file/d/1NqhAV1oV-1aIC81YSSuSscOBeygYKRI0/view?usp=sharing'),(2,'Hábitos Átomicos','https://drive.google.com/file/d/1a67Xmi1Y20L1YeOQAirseF5W5fHJJ85Y/view?usp=sharing\r\n'),(3,'7 Hábitos de la gente altamente efectiva','https://drive.google.com/file/d/1XDdiZ9PJV8uqOsu0aAWz5UvaD2a8u5h0/view?usp=sharing'),(4,'Tu mundo en una servilleta','https://drive.google.com/file/d/1jJlBAxPYgWq7aNn_Lypqvb6etAgwt1hO/view?usp=sharing'),(5,'Crear o morir','https://drive.google.com/file/d/1NdzV-gZfY7mk-EN2MSeGRjdJVLIldE0b/view?usp=sharing\r\n'),(6,'Rompe la barrera del no','https://drive.google.com/file/d/1pufBhsAWGQFy_J9rplpgGdmOuuJkIMfP/view?usp=sharing'),(7,'El arte de empezar','https://drive.google.com/file/d/1HPx4J-vyQn0DCBiSDssDulZmfuVAvmEx/view?usp=sharing\r\n'),(8,'La vaca purpura','https://drive.google.com/file/d/1gLtJ9kB6zGmUwtRvqhAI4h-LziPpP28c/view?usp=sharing'),(9,'El método Lean Startup','https://drive.google.com/file/d/1xA8nyiObF0nX7TygrhLKR6a1RoDHTWaW/view?usp=share_link');
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `links` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links`
--

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
INSERT INTO `links` VALUES (1,'Link 1','\"Todas las cosas son imposibles, mientras lo parecen\", Concepción Arenal','url link 1'),(2,'Link 2','\"Cada proceso enseña algo que necesitamos aprender\", Charles Dickens','url link 2'),(3,'Link 3','El éxito es la capacidad de ir de fracaso en fracaso sin perder el entusiasmo\", Winston Churchill.\r\n','url link 3'),(4,'Link 4','\"El secreto para una vida exitosa es encontrar nuestro propósito y luego hacerlo\", Henry Ford.','url link 4'),(5,'Link 5','\"Cuando la mente está ocupada con pensamientos positivos, es más difícil que el cuerpo se enferme\", Dalai Lama','url link 5'),(6,'Link 6','\"Tú eres más fuerte que tus miedos. Tus fuerzas son mayores que tus dudas\".','url link 6'),(7,'link 7','\"Lo que la mente de un hombre puede concebir y puede creer, también lo puede lograr\", Clement Stone.','url link 7'),(8,'link 8','“La forma más elevada de inteligencia consiste en pensar de manera creativa” K.Robinson','url link 8'),(9,'link 9','“La innovación es lo que distingue a un líder de los demás” Steve Jobs','url link 9');
/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `municipio`
--

DROP TABLE IF EXISTS `municipio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `municipio` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `idEstado` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_EST_MUN` (`idEstado`),
  CONSTRAINT `FK_EST_MUN` FOREIGN KEY (`idEstado`) REFERENCES `estado` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `municipio`
--

LOCK TABLES `municipio` WRITE;
/*!40000 ALTER TABLE `municipio` DISABLE KEYS */;
INSERT INTO `municipio` VALUES (1,'Andrés Bello',1),(2,'Antonio Rómulo Costa',1),(3,'Ayacucho',1),(4,'Bolívar',1),(5,'Cárdenas',1),(6,'Córdoba',1),(7,'Fernández Feo',1),(8,'Francisco de Miranda',1),(9,'García de Hevia',1),(10,'Guásimos',1),(11,'Independencia',1),(12,'Jáuregui',1),(13,'José María Vargas',1),(14,'Junín',1),(15,'Libertad',1),(16,'Libertador',1),(17,'Lobatera',1),(18,'Michelena',1),(19,'Panamericano',1),(20,'Pedro María Ureña',1),(21,'Rafael Urdaneta',1),(22,'Samuel Darío Maldonado',1),(23,'San Cristóbal',1),(24,'San Judas Tadeo',1),(25,'Seboruco',1),(26,'Simón Rodríguez',1),(27,'Sucre',1),(28,'Torbes',1),(29,'Uribante',1);
/*!40000 ALTER TABLE `municipio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personas` (
  `cedula` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `idUsuario` bigint(20) DEFAULT NULL,
  `idMunicipio` bigint(20) DEFAULT NULL,
  `idInstitucion` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`cedula`),
  KEY `FK_USU_PER` (`idUsuario`),
  KEY `FK_MUN_PER` (`idMunicipio`),
  KEY `FK_INS_PER` (`idInstitucion`),
  CONSTRAINT `FK_INS_PER` FOREIGN KEY (`idInstitucion`) REFERENCES `institucion` (`id`),
  CONSTRAINT `FK_MUN_PER` FOREIGN KEY (`idMunicipio`) REFERENCES `municipio` (`id`),
  CONSTRAINT `FK_USU_PER` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19925889 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas`
--

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` VALUES (11222666,'prueba','prueba','Direccion Prueba','0000-00-00','04144569856',19,14,1),(15632698,'NombrePrueba','ApellidoPrueba','Direccion Prueba','1990-01-01','04145563652',17,14,1),(19925888,'Jesus','Acevedo','Urb manuel pulido mendez','1992-11-04','04147896523',18,14,2);
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personas_preguntas_respuestas`
--

DROP TABLE IF EXISTS `personas_preguntas_respuestas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personas_preguntas_respuestas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `intento` bigint(20) DEFAULT NULL,
  `terminado` tinyint(1) DEFAULT NULL,
  `cedula_persona` bigint(20) DEFAULT NULL,
  `idPreguntasRespuestas` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_PER_PPR` (`cedula_persona`),
  KEY `FK_TIN_PPR` (`idPreguntasRespuestas`),
  CONSTRAINT `FK_PER_PPR` FOREIGN KEY (`cedula_persona`) REFERENCES `personas` (`cedula`),
  CONSTRAINT `FK_TIN_PPR` FOREIGN KEY (`idPreguntasRespuestas`) REFERENCES `preguntas_respuestas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas_preguntas_respuestas`
--

LOCK TABLES `personas_preguntas_respuestas` WRITE;
/*!40000 ALTER TABLE `personas_preguntas_respuestas` DISABLE KEYS */;
INSERT INTO `personas_preguntas_respuestas` VALUES (1,'2022-11-29',1,1,19925888,1),(2,'2022-11-29',1,1,19925888,6),(3,'2022-11-29',1,1,19925888,12),(4,'2022-11-29',1,1,19925888,17),(5,'2022-11-29',1,1,19925888,22),(6,'2022-11-29',1,1,19925888,27),(7,'2022-11-29',1,1,19925888,32),(8,'2022-11-29',1,1,19925888,36),(9,'2022-11-29',1,1,19925888,43),(10,'2022-11-29',1,1,19925888,49),(11,'2022-11-29',1,1,19925888,52),(12,'2022-11-29',1,1,19925888,56),(13,'2022-11-29',1,1,19925888,61),(14,'2022-11-29',1,1,19925888,69),(15,'2022-11-29',1,1,19925888,73),(16,'2022-11-29',2,1,19925888,1),(17,'2022-11-29',2,1,19925888,6),(18,'2022-11-29',2,1,19925888,11),(19,'2022-11-29',2,1,19925888,16),(20,'2022-11-29',2,1,19925888,21),(21,'2022-11-29',2,1,19925888,26),(22,'2022-11-29',2,1,19925888,31),(23,'2022-11-29',2,1,19925888,36),(24,'2022-11-29',2,1,19925888,41),(25,'2022-11-29',2,1,19925888,46),(26,'2022-11-29',2,1,19925888,52),(27,'2022-11-29',2,1,19925888,58),(28,'2022-11-29',2,1,19925888,65),(29,'2022-11-29',2,1,19925888,69),(30,'2022-11-29',2,1,19925888,75),(31,'2022-11-29',3,1,19925888,1),(32,'2022-11-29',3,1,19925888,6),(33,'2022-11-29',3,1,19925888,11),(34,'2022-11-29',3,1,19925888,16),(35,'2022-11-29',3,1,19925888,21),(36,'2022-11-29',3,1,19925888,26),(37,'2022-11-29',3,1,19925888,31),(38,'2022-11-29',3,1,19925888,40),(39,'2022-11-29',3,1,19925888,45),(40,'2022-11-29',3,1,19925888,50),(41,'2022-11-29',3,1,19925888,53),(42,'2022-11-29',3,1,19925888,58),(43,'2022-11-29',3,1,19925888,63),(44,'2022-11-29',3,1,19925888,68),(45,'2022-11-29',3,1,19925888,73),(46,'2022-11-29',4,1,19925888,1),(47,'2022-11-29',4,1,19925888,6),(48,'2022-11-29',4,1,19925888,11),(49,'2022-11-29',4,1,19925888,16),(50,'2022-11-29',4,1,19925888,21),(51,'2022-11-29',4,1,19925888,27),(52,'2022-11-29',4,1,19925888,32),(53,'2022-11-29',4,1,19925888,37),(54,'2022-11-29',4,1,19925888,42),(55,'2022-11-29',4,1,19925888,47),(56,'2022-11-29',4,1,19925888,54),(57,'2022-11-29',4,1,19925888,59),(58,'2022-11-29',4,1,19925888,64),(59,'2022-11-29',4,1,19925888,69),(60,'2022-11-29',4,1,19925888,74);
/*!40000 ALTER TABLE `personas_preguntas_respuestas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preguntas`
--

DROP TABLE IF EXISTS `preguntas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preguntas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  `idTipoPregunta` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_TPR_PRE` (`idTipoPregunta`),
  CONSTRAINT `FK_TPR_PRE` FOREIGN KEY (`idTipoPregunta`) REFERENCES `tipo_preguntas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preguntas`
--

LOCK TABLES `preguntas` WRITE;
/*!40000 ALTER TABLE `preguntas` DISABLE KEYS */;
INSERT INTO `preguntas` VALUES (1,'Pregunta 1 Tipo 1',1),(2,'Pregunta 2 Tipo 1',1),(3,'Pregunta 3 Tipo 1',1),(4,'Pregunta 4 Tipo 1',1),(5,'Pregunta 5 Tipo 1',1),(6,'Pregunta 1 Tipo 2',2),(7,'Pregunta 2 Tipo 2',2),(8,'Pregunta 3 Tipo 2',2),(9,'Pregunta 4 Tipo 2',2),(10,'Pregunta 5 Tipo 2',2),(11,'Pregunta 1 Tipo 3',3),(12,'Pregunta 2 Tipo 3',3),(13,'Pregunta 3 Tipo 3',3),(14,'Pregunta 4 Tipo 3',3),(15,'Pregunta 5 Tipo 3',3);
/*!40000 ALTER TABLE `preguntas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preguntas_respuestas`
--

DROP TABLE IF EXISTS `preguntas_respuestas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preguntas_respuestas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `puntaje` bigint(20) DEFAULT NULL,
  `idPregunta` bigint(20) DEFAULT NULL,
  `idRespuesta` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_PRE_PRERES` (`idPregunta`),
  KEY `FK_RES_PRERES` (`idRespuesta`),
  CONSTRAINT `FK_PRE_PRERES` FOREIGN KEY (`idPregunta`) REFERENCES `preguntas` (`id`),
  CONSTRAINT `FK_RES_PRERES` FOREIGN KEY (`idRespuesta`) REFERENCES `respuestas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preguntas_respuestas`
--

LOCK TABLES `preguntas_respuestas` WRITE;
/*!40000 ALTER TABLE `preguntas_respuestas` DISABLE KEYS */;
INSERT INTO `preguntas_respuestas` VALUES (1,10,1,1),(2,20,1,2),(3,30,1,3),(4,40,1,4),(5,50,1,5),(6,10,2,6),(7,25,2,7),(8,30,2,8),(9,40,2,9),(10,55,2,10),(11,10,3,11),(12,20,3,12),(13,35,3,13),(14,40,3,14),(15,55,3,1),(16,10,4,2),(17,20,4,3),(18,30,4,4),(19,40,4,5),(20,55,4,6),(21,10,5,7),(22,20,5,8),(23,35,5,9),(24,40,5,10),(25,50,5,11),(26,15,6,12),(27,20,6,13),(28,30,6,14),(29,40,6,1),(30,50,6,2),(31,10,7,15),(32,25,7,1),(33,30,7,3),(34,45,7,3),(35,50,7,4),(36,50,8,5),(37,10,8,6),(38,25,8,7),(39,35,8,8),(40,40,8,9),(41,10,9,10),(42,25,9,11),(43,30,9,12),(44,45,9,13),(45,50,9,14),(46,10,10,15),(47,25,10,1),(48,30,10,2),(49,40,10,3),(50,50,10,4),(51,15,11,5),(52,25,11,6),(53,20,11,7),(54,30,11,8),(55,40,11,9),(56,50,12,10),(57,15,12,11),(58,20,12,12),(59,30,12,13),(60,45,12,14),(61,50,13,15),(62,10,13,1),(63,20,13,2),(64,35,13,3),(65,40,13,4),(66,50,14,5),(67,10,14,6),(68,25,14,7),(69,30,14,8),(70,40,14,9),(71,50,15,10),(72,15,15,11),(73,25,15,12),(74,30,15,13),(75,40,15,14);
/*!40000 ALTER TABLE `preguntas_respuestas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `respuestas`
--

DROP TABLE IF EXISTS `respuestas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `respuestas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  `idTipoRespuesta` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_TRE_RES` (`idTipoRespuesta`),
  CONSTRAINT `FK_TRE_RES` FOREIGN KEY (`idTipoRespuesta`) REFERENCES `tipo_respuestas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respuestas`
--

LOCK TABLES `respuestas` WRITE;
/*!40000 ALTER TABLE `respuestas` DISABLE KEYS */;
INSERT INTO `respuestas` VALUES (1,'Respuesta 1 Tipo 1',1),(2,'Respuesta 2 Tipo 1',1),(3,'Respuesta 3 Tipo 1',1),(4,'Respuesta 1 Tipo 2',1),(5,'Respuesta 2 Tipo 2',1),(6,'Respuesta 3 Tipo 2',2),(7,'Respuesta 1 Tipo 3',2),(8,'Respuesta 2 Tipo 3',2),(9,'Respuesta 3 Tipo 3',2),(10,'Respuesta 5 Tipo 2',2),(11,'Respuesta 1 Tipo 3',3),(12,'Respuesta 2 Tipo 3',3),(13,'Respuesta 3 Tipo 3',3),(14,'Respuesta 4 Tipo 3',3),(15,'Respuesta 5 Tipo 3',3);
/*!40000 ALTER TABLE `respuestas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resultados`
--

DROP TABLE IF EXISTS `resultados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resultados` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(200) DEFAULT NULL,
  `idTipoResultado` bigint(20) NOT NULL,
  `puntosMax` bigint(11) NOT NULL,
  `puntosMin` bigint(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_TRE_RESS` (`idTipoResultado`),
  CONSTRAINT `FK_TRE_RESS` FOREIGN KEY (`idTipoResultado`) REFERENCES `tipo_resultados` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resultados`
--

LOCK TABLES `resultados` WRITE;
/*!40000 ALTER TABLE `resultados` DISABLE KEYS */;
INSERT INTO `resultados` VALUES (1,'Resultado 1 Tipo 1',1,90,0),(2,'Resultado 2 Tipo 1',1,170,91),(3,'Resultado 3 Tipo 1',1,299,171),(4,'Resultado 1 Tipo 2',2,90,0),(5,'Resultado 2 Tipo 2',2,170,91),(6,'Resultado 3 Tipo 2',2,299,171),(7,'Resultado 1 Tipo 3',3,90,0),(8,'Resultado 2 Tipo 3',3,170,91),(9,'Resultado 3 Tipo 3',3,299,171);
/*!40000 ALTER TABLE `resultados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resultados_cursos`
--

DROP TABLE IF EXISTS `resultados_cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resultados_cursos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `idCursos` bigint(20) DEFAULT NULL,
  `idResultados` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_RES_CUR` (`idCursos`),
  KEY `FK_RESU_CUR` (`idResultados`),
  CONSTRAINT `FK_RESU_CUR` FOREIGN KEY (`idResultados`) REFERENCES `resultados` (`id`),
  CONSTRAINT `FK_RES_CUR` FOREIGN KEY (`idCursos`) REFERENCES `cursos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resultados_cursos`
--

LOCK TABLES `resultados_cursos` WRITE;
/*!40000 ALTER TABLE `resultados_cursos` DISABLE KEYS */;
INSERT INTO `resultados_cursos` VALUES (1,1,1),(2,3,1),(3,2,2),(4,4,2),(5,5,3),(6,6,3),(7,6,4),(8,4,4),(9,2,5),(10,3,5),(11,1,6),(12,5,6),(13,3,7),(14,4,7),(15,1,8),(16,5,8),(17,6,9),(18,2,9);
/*!40000 ALTER TABLE `resultados_cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resultados_libros`
--

DROP TABLE IF EXISTS `resultados_libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resultados_libros` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `idLibros` bigint(20) DEFAULT NULL,
  `idResultados` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_RES_LIB` (`idLibros`),
  KEY `FK_RESU_LIB` (`idResultados`),
  CONSTRAINT `FK_RESU_LIB` FOREIGN KEY (`idResultados`) REFERENCES `resultados` (`id`),
  CONSTRAINT `FK_RES_LIB` FOREIGN KEY (`idLibros`) REFERENCES `libros` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resultados_libros`
--

LOCK TABLES `resultados_libros` WRITE;
/*!40000 ALTER TABLE `resultados_libros` DISABLE KEYS */;
INSERT INTO `resultados_libros` VALUES (1,3,1),(2,4,1),(3,2,2),(4,1,2),(5,6,3),(6,5,3),(7,2,4),(8,6,4),(9,5,5),(10,4,5),(11,1,6),(12,3,6),(13,5,7),(14,3,7),(15,2,8),(16,6,8),(17,4,9),(18,1,9);
/*!40000 ALTER TABLE `resultados_libros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resultados_link`
--

DROP TABLE IF EXISTS `resultados_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resultados_link` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `idLinks` bigint(20) DEFAULT NULL,
  `idResultados` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_RES_LIN` (`idLinks`),
  KEY `FK_RESU_LIN` (`idResultados`),
  CONSTRAINT `FK_RESU_LIN` FOREIGN KEY (`idResultados`) REFERENCES `resultados` (`id`),
  CONSTRAINT `FK_RES_LIN` FOREIGN KEY (`idLinks`) REFERENCES `links` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resultados_link`
--

LOCK TABLES `resultados_link` WRITE;
/*!40000 ALTER TABLE `resultados_link` DISABLE KEYS */;
INSERT INTO `resultados_link` VALUES (1,6,1),(2,4,1),(3,2,2),(4,3,2),(5,1,3),(6,5,3),(7,3,4),(8,4,4),(9,1,5),(10,5,5),(11,6,6),(12,2,6),(13,1,7),(14,3,7),(15,2,8),(16,4,8),(17,5,9),(18,6,9);
/*!40000 ALTER TABLE `resultados_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resultados_personas`
--

DROP TABLE IF EXISTS `resultados_personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resultados_personas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `cedula_persona` bigint(20) DEFAULT NULL,
  `idResultado` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_PER_CPER` (`cedula_persona`),
  KEY `FK_RESU_CPER` (`idResultado`),
  CONSTRAINT `FK_PER_CPER` FOREIGN KEY (`cedula_persona`) REFERENCES `personas` (`cedula`),
  CONSTRAINT `FK_RESU_CPER` FOREIGN KEY (`idResultado`) REFERENCES `resultados` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resultados_personas`
--

LOCK TABLES `resultados_personas` WRITE;
/*!40000 ALTER TABLE `resultados_personas` DISABLE KEYS */;
INSERT INTO `resultados_personas` VALUES (1,'2022-11-29',19925888,1),(2,'2022-11-29',19925888,5),(3,'2022-11-29',19925888,8);
/*!40000 ALTER TABLE `resultados_personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Administrador'),(2,'Estandar');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_institucion`
--

DROP TABLE IF EXISTS `tipo_institucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_institucion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_institucion`
--

LOCK TABLES `tipo_institucion` WRITE;
/*!40000 ALTER TABLE `tipo_institucion` DISABLE KEYS */;
INSERT INTO `tipo_institucion` VALUES (1,'Publica'),(2,'Privada');
/*!40000 ALTER TABLE `tipo_institucion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_preguntas`
--

DROP TABLE IF EXISTS `tipo_preguntas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_preguntas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_preguntas`
--

LOCK TABLES `tipo_preguntas` WRITE;
/*!40000 ALTER TABLE `tipo_preguntas` DISABLE KEYS */;
INSERT INTO `tipo_preguntas` VALUES (1,'Pregunta Tipo 1'),(2,'Pregunta tipo 1'),(3,'Pregunta tipo 2'),(4,'Pregunta tipo 3'),(5,'Pregunta tipo 4');
/*!40000 ALTER TABLE `tipo_preguntas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_respuestas`
--

DROP TABLE IF EXISTS `tipo_respuestas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_respuestas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_respuestas`
--

LOCK TABLES `tipo_respuestas` WRITE;
/*!40000 ALTER TABLE `tipo_respuestas` DISABLE KEYS */;
INSERT INTO `tipo_respuestas` VALUES (1,'Tipo Respuesta 1'),(2,'Tipo Respuesta 2'),(3,'Tipo Respuesta 3'),(4,'Tipo Respuesta 4');
/*!40000 ALTER TABLE `tipo_respuestas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_resultados`
--

DROP TABLE IF EXISTS `tipo_resultados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_resultados` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  `puntosMax` bigint(20) NOT NULL,
  `puntosMin` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_resultados`
--

LOCK TABLES `tipo_resultados` WRITE;
/*!40000 ALTER TABLE `tipo_resultados` DISABLE KEYS */;
INSERT INTO `tipo_resultados` VALUES (1,'RESPUESTAS PERSONALES',500,200),(2,'RESPUESTAS TALENTOS',199,100),(3,'RESPUESTAS LABORALES',99,0);
/*!40000 ALTER TABLE `tipo_resultados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user` varchar(100) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL,
  `idRoles` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ROL_USU` (`idRoles`),
  CONSTRAINT `FK_ROL_USU` FOREIGN KEY (`idRoles`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'usuarioprueba','1234',2),(2,'usuarioprueba2','1234',2),(7,'usuarioprueba3','1234',2),(8,'usuarioprueba4','1234',2),(9,'pruebasUsuario','1234',2),(17,'usuarioprueba5','12345tt',2),(18,'jeam','1234',2),(19,'usuarioprueba6','1234',2);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-30 15:46:14
