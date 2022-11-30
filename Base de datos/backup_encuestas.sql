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
INSERT INTO `personas` VALUES (55555,'Prueba','Final','Centro','2022-11-30','04165555555',20,14,3),(19925888,'Pedro','Perez','Centro','2000-04-01','04147896523',18,14,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas_preguntas_respuestas`
--

LOCK TABLES `personas_preguntas_respuestas` WRITE;
/*!40000 ALTER TABLE `personas_preguntas_respuestas` DISABLE KEYS */;
INSERT INTO `personas_preguntas_respuestas` VALUES (1,'2022-11-29',1,1,19925888,1),(2,'2022-11-29',1,1,19925888,6),(3,'2022-11-29',1,1,19925888,12),(4,'2022-11-29',1,1,19925888,17),(5,'2022-11-29',1,1,19925888,22),(6,'2022-11-29',1,1,19925888,27),(7,'2022-11-29',1,1,19925888,32),(8,'2022-11-29',1,1,19925888,36),(9,'2022-11-29',1,1,19925888,43),(10,'2022-11-29',1,1,19925888,49),(11,'2022-11-29',1,1,19925888,52),(12,'2022-11-29',1,1,19925888,56),(13,'2022-11-29',1,1,19925888,60),(14,'2022-11-29',1,1,19925888,59),(15,'2022-11-29',1,1,19925888,3),(16,'2022-11-29',2,1,19925888,1),(17,'2022-11-29',2,1,19925888,6),(18,'2022-11-29',2,1,19925888,11),(19,'2022-11-29',2,1,19925888,16),(20,'2022-11-29',2,1,19925888,21),(21,'2022-11-29',2,1,19925888,26),(22,'2022-11-29',2,1,19925888,31),(23,'2022-11-29',2,1,19925888,36),(24,'2022-11-29',2,1,19925888,41),(25,'2022-11-29',2,1,19925888,46),(26,'2022-11-29',2,1,19925888,52),(27,'2022-11-29',2,1,19925888,58),(28,'2022-11-29',2,1,19925888,55),(29,'2022-11-29',2,1,19925888,59),(30,'2022-11-29',2,1,19925888,10),(31,'2022-11-29',3,1,19925888,1),(32,'2022-11-29',3,1,19925888,6),(33,'2022-11-29',3,1,19925888,11),(34,'2022-11-29',3,1,19925888,16),(35,'2022-11-29',3,1,19925888,21),(36,'2022-11-29',3,1,19925888,26),(37,'2022-11-29',3,1,19925888,31),(38,'2022-11-29',3,1,19925888,40),(39,'2022-11-29',3,1,19925888,45),(40,'2022-11-29',3,1,19925888,50),(41,'2022-11-29',3,1,19925888,53),(42,'2022-11-29',3,1,19925888,58),(43,'2022-11-29',3,1,19925888,53),(44,'2022-11-29',3,1,19925888,38),(45,'2022-11-29',3,1,19925888,53),(46,'2022-11-29',4,1,19925888,1),(47,'2022-11-29',4,1,19925888,6),(48,'2022-11-29',4,1,19925888,11),(49,'2022-11-29',4,1,19925888,16),(50,'2022-11-29',4,1,19925888,21),(51,'2022-11-29',4,1,19925888,27),(52,'2022-11-29',4,1,19925888,32),(53,'2022-11-29',4,1,19925888,37),(54,'2022-11-29',4,1,19925888,42),(55,'2022-11-29',4,1,19925888,47),(56,'2022-11-29',4,1,19925888,54),(57,'2022-11-29',4,1,19925888,59),(58,'2022-11-29',4,1,19925888,24),(59,'2022-11-29',4,1,19925888,20),(60,'2022-11-29',4,1,19925888,36),(61,'2022-11-30',5,1,19925888,1),(62,'2022-11-30',5,1,19925888,4),(63,'2022-11-30',5,1,19925888,6),(64,'2022-11-30',5,1,19925888,10),(65,'2022-11-30',5,1,19925888,14),(66,'2022-11-30',5,1,19925888,17),(67,'2022-11-30',5,1,19925888,21),(68,'2022-11-30',5,1,19925888,22),(69,'2022-11-30',5,1,19925888,26),(70,'2022-11-30',5,1,19925888,30),(71,'2022-11-30',5,1,19925888,32),(72,'2022-11-30',5,1,19925888,36),(73,'2022-11-30',5,1,19925888,38),(74,'2022-11-30',5,1,19925888,41),(75,'2022-11-30',5,1,19925888,43),(76,'2022-11-30',5,1,19925888,47),(77,'2022-11-30',5,1,19925888,51),(78,'2022-11-30',5,1,19925888,54),(79,'2022-11-30',5,1,19925888,56),(80,'2022-11-30',5,1,19925888,58),(81,'2022-11-30',1,1,55555,1),(82,'2022-11-30',1,1,55555,4),(83,'2022-11-30',1,1,55555,6),(84,'2022-11-30',1,1,55555,10),(85,'2022-11-30',1,1,55555,13),(86,'2022-11-30',1,1,55555,16),(87,'2022-11-30',1,1,55555,19),(88,'2022-11-30',1,1,55555,22),(89,'2022-11-30',1,1,55555,25),(90,'2022-11-30',1,1,55555,28),(91,'2022-11-30',1,1,55555,31),(92,'2022-11-30',1,1,55555,34),(93,'2022-11-30',1,1,55555,37),(94,'2022-11-30',1,1,55555,40),(95,'2022-11-30',1,1,55555,43),(96,'2022-11-30',1,1,55555,46),(97,'2022-11-30',1,1,55555,49),(98,'2022-11-30',1,1,55555,52),(99,'2022-11-30',1,1,55555,55),(100,'2022-11-30',1,1,55555,58),(101,'2022-11-30',2,1,55555,1),(102,'2022-11-30',2,1,55555,4),(103,'2022-11-30',2,1,55555,6),(104,'2022-11-30',2,1,55555,10),(105,'2022-11-30',2,1,55555,13),(106,'2022-11-30',2,1,55555,16),(107,'2022-11-30',2,1,55555,19),(108,'2022-11-30',2,1,55555,22),(109,'2022-11-30',2,1,55555,25),(110,'2022-11-30',2,1,55555,28),(111,'2022-11-30',2,1,55555,31),(112,'2022-11-30',2,1,55555,34),(113,'2022-11-30',2,1,55555,37),(114,'2022-11-30',2,1,55555,40),(115,'2022-11-30',2,1,55555,43),(116,'2022-11-30',2,1,55555,46),(117,'2022-11-30',2,1,55555,49),(118,'2022-11-30',2,1,55555,52),(119,'2022-11-30',2,1,55555,55),(120,'2022-11-30',2,1,55555,58);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preguntas`
--

LOCK TABLES `preguntas` WRITE;
/*!40000 ALTER TABLE `preguntas` DISABLE KEYS */;
INSERT INTO `preguntas` VALUES (1,'¿Qué características te describen mejor como persona?',1),(2,'¿Qué tanto te afectaría fracasar en la vida?',1),(3,'La rutina para ti es…',1),(4,'¿A menudo sientes que puedes concretar sueños?',1),(5,'¿Necesitas estar seguro de que algo va a funcionar antes de intentarlo?',1),(6,'¿Qué haces en tus tiempos libres?',1),(7,'¿Consideras que planificar las cosas es importante para ti?',1),(8,'¿Cómo describes tus hábitos de gastos personales',1),(9,'¿Te gusta asumir retos?',1),(10,'¿Te consideras una persona creativa?',1),(11,'¿Qué profesión tienes o has querido siempre tener?',2),(12,'¿Si tuvieras que trabajar toda la vida de tu mejor habilidad lo harías?',2),(13,'¿Qué tipo de libro te gusta leer?',2),(14,'¿Te gustaría aprender en algún momento sobre finanzas?',2),(15,'¿Te consideras una persona más amante a temas de?',2),(16,'¿Cómo te sientes cuando sabes que no eres la persona más inteligente en tu grupo?',3),(17,'¿Cómo es tu conducta con tus compañeros?',3),(18,'¿Si alguien expresa interés en hacer equipo contigo, ¿Cómo le haces seguimiento?',3),(19,'¿Te resulta fácil asignarle responsabilidades a las personas?',3),(20,'¿Si tuvieses que trabajar en una nueva idea, pero sin recibir dinero por 1 año lo harías?',3);
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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preguntas_respuestas`
--

LOCK TABLES `preguntas_respuestas` WRITE;
/*!40000 ALTER TABLE `preguntas_respuestas` DISABLE KEYS */;
INSERT INTO `preguntas_respuestas` VALUES (1,10,1,1),(2,20,1,2),(3,30,1,3),(4,10,2,4),(5,20,2,5),(6,30,3,6),(7,10,3,7),(8,20,3,8),(9,30,3,9),(10,10,4,10),(11,20,4,11),(12,30,4,12),(13,10,5,13),(14,20,5,14),(15,30,5,15),(16,10,6,16),(17,20,6,17),(18,30,6,18),(19,10,7,19),(20,20,7,20),(21,30,7,21),(22,10,8,22),(23,20,8,23),(24,30,8,24),(25,10,9,25),(26,20,9,26),(27,30,9,27),(28,10,10,28),(29,20,10,29),(30,30,10,30),(31,10,11,31),(32,20,11,32),(33,30,11,33),(34,10,12,34),(35,20,12,35),(36,30,12,36),(37,10,13,37),(38,20,13,38),(39,30,13,39),(40,10,14,40),(41,20,14,41),(42,30,14,42),(43,10,15,43),(44,20,15,44),(45,30,15,45),(46,10,16,46),(47,20,16,47),(48,30,16,48),(49,10,17,49),(50,20,17,50),(51,30,17,51),(52,10,18,52),(53,20,18,53),(54,30,18,54),(55,10,19,55),(56,20,19,56),(57,30,19,57),(58,10,20,58),(59,20,20,59),(60,30,20,60);
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respuestas`
--

LOCK TABLES `respuestas` WRITE;
/*!40000 ALTER TABLE `respuestas` DISABLE KEYS */;
INSERT INTO `respuestas` VALUES (1,'Pasivo, retraído, regular',1),(2,'Amable, cordial, ubicado',1),(3,'Activo, sociable, inquieto',1),(4,'Suelo caer en depresión',1),(5,'Algo, la paso mal unos días',1),(6,'Poco, los veo como oportunidades',1),(7,'Esencial, si no me siento perdido (y permite optimizar tiempo)\r\n',1),(8,'Buena, en algunos aspectos',1),(9,'Agobiante',1),(10,'No, pero sería bonito que alguno se cumpliera',1),(11,'A veces, algunos se me olvidan',1),(12,'Sí, hago todo lo posible para cumplirlos',1),(13,'Si mi instinto me dice que sí, puedo implementar una idea rápidamente.',1),(14,'Soy una persona que planifica todo y necesito examinar cada detalle antes de actuar.',1),(15,'Siempre tengo nuevas ideas, pero no las hago realidad hasta no probarlas bien.',1),(16,'Me gusta aprender y mejorar mis talentos.',1),(17,'Salgo a compartir con mis amistades.',1),(18,'Juego en el celular o consola y veo películas o series.',1),(19,'Sí, suelo planificar casi todo lo que hago.',1),(20,'Planifico solo las cosas importantes.',1),(21,'Pienso que las cosas improvisadas resultan mejor',1),(22,'Aunque tenga dinero extra, prefiero ahorrarlo que gastarlo.',1),(23,'Cubro mis gastos fijos y deudas y lo que me sobra lo gasto.',1),(24,'Disfruto la vida con el dinero que gano.',1),(25,'Sí, constantemente me gusta aventurarme en nuevos retos.',1),(26,'Primero analizo el panorama y si veo que es muy complicado no me arriesgo.',1),(27,'No, prefiero hacer las cosas seguras y sin riesgos.',1),(28,'Sí, soy bastante creativo (a).',1),(29,'Me considero que soy lo normalmente creativo (a).',1),(30,'No soy para nada creativo (a).',1),(31,'Algo en lo que involucrarme, donde pueda mancharme las manos de pintura y ser yo mismo.',2),(32,'El deporte es mi afición preferida y me gustaría vivir de eso',2),(33,'Me considero un poco cerebrito, necesito una profesión en la que poder explotar todo mi potencial.',2),(34,'Por supuesto',2),(35,'Posiblemente me aburra en algún momento',2),(36,'No tengo una habilidad con la que pueda trabajar',2),(37,'Me gustan los libros que me hagan pensar y que me enseñen cosas que no sé.',2),(38,'Me gustan los libros de aventura, como los comics, novelas.',2),(39,'Me gustan los libros que me mantengan al tanto del día a día, como revistas o periódicos.',2),(40,'Si, lo creo muy necesario para mi vida',2),(41,'Creo que más adelante cuando sea un adulto y tenga responsabilidades',2),(42,'No lo considero necesario por la situación de la nación.',2),(43,'Astronomía, biología, botánica, física, mineralogía; informática, matemática.',2),(44,'Administración, Política, derecho, Comunicación, historia, medicina',2),(45,'El arte, música, deporte, dibujo, moda.',2),(46,'Bien. Pienso que la gente más inteligente podrá hacer las cosas que yo no puedo',3),(47,'Me afecta un poco el ego, pero lo manejo bien.',3),(48,'Casi siempre soy la persona más inteligente.',3),(49,'Generalmente estoy feliz, pero me altero si tengo que trabajar hasta tarde',3),(50,'Amo lo que hago y siempre estoy de buen ánimo, mis compañeros dicen que es una actitud contagiosa.',3),(51,'No expreso cómo me siento, sea bien o mal, lo guardo en mi interior.',3),(52,'Soy insistente por teléfono, por redes sociales o en persona. El insistir me da resultado.',3),(53,'Le busco una o dos veces por semana, no quiero ser una molestia.',3),(54,'Una vez después de un contacto inicial, luego dejo que venga a mí.',3),(55,'Sí, creo que lo hago bien, pero puedo mejorar cada día.',3),(56,'Creo que más adelante cuando sea un adulto y tenga responsabilidades',3),(57,'No me gusta tomar responsabilidad de líder, prefiero que me digan que hacer y ya.',3),(58,'Si, sin pensarlo, me arriesgaría porque sé que será una gran idea.',3),(59,'Tendría que analizar muy bien y tener otro trabajo por si acaso.',3),(60,'Creo que no, prefiero un trabajo estable y no sentir el miedo a quedar en la quiebra.',3);
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
INSERT INTO `resultados` VALUES (1,'Nos alegra el gran entusiasmo que tienes por mejorar cada día como persona, sigue adelante.',1,150,0),(2,'Excelente. Nos alegra tu sinceridad, y que sabes que debes mejorar cada día más para así lograr tus metas. Sigue avanzando cada día con un paso a la vez.\r\nLibro\r\n',1,210,151),(3,'No te rindes, ¿he?. Eso es lo importante. Nunca es tarde para empezar a crear. Inicia desde tu interior hacia lo exterior y anda.',1,300,211),(4,'¡WOW! Con tus talentos podrás cambiar el mundo. Empieza a explotar y a compartir todo tu potencial con los demás.',2,150,0),(5,'¿De verdad cuentas con todo ese potencial? Excelente. Nunca dejes de aprender y no te rindas porque acabas de iniciar en tu camino',2,210,151),(6,'¡Esa es la actitud! Todo un espartano. No importa cuan débil crees que eres, tú puedes ser el próximo Bill Gates si así te lo propones.',2,300,211),(7,'Así es que es, todo un trabajador nato. Sería excelente que pronto nos puedas mostrar tu próximo emprendimiento.',3,150,0),(8,'¡Ánimo! Cada día esfuérzate un poco más y lograrás tus metas. Crea algo único que nos deje a todos con la boca abierta. ',3,210,151),(9,'Nunca pares de aprender. A pesar de que creas que se te dificulta el entorno laboral, sabemos que serás alguien relevante. Solo necesitas una guía.',3,300,211);
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
INSERT INTO `resultados_cursos` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9);
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
INSERT INTO `resultados_libros` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9);
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
INSERT INTO `resultados_link` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resultados_personas`
--

LOCK TABLES `resultados_personas` WRITE;
/*!40000 ALTER TABLE `resultados_personas` DISABLE KEYS */;
INSERT INTO `resultados_personas` VALUES (1,'2022-11-29',19925888,1),(2,'2022-11-29',19925888,5),(3,'2022-11-29',19925888,8),(4,'2022-11-30',19925888,2),(5,'2022-11-30',19925888,4),(6,'2022-11-30',19925888,7),(7,'2022-11-30',55555,1),(8,'2022-11-30',55555,4),(9,'2022-11-30',55555,7),(10,'2022-11-30',55555,1),(11,'2022-11-30',55555,4),(12,'2022-11-30',55555,7);
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
INSERT INTO `tipo_preguntas` VALUES (1,'Pregunta Personal'),(2,'Pregunta de capacidades'),(3,'Pregunta Laboral');
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
INSERT INTO `tipo_respuestas` VALUES (1,'Respuesta Personal'),(2,'Respuesta de capacidades'),(3,'Respuesta laboral');
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_resultados`
--

LOCK TABLES `tipo_resultados` WRITE;
/*!40000 ALTER TABLE `tipo_resultados` DISABLE KEYS */;
INSERT INTO `tipo_resultados` VALUES (1,'RESPUESTAS PERSONALES'),(2,'RESPUESTAS TALENTOS'),(3,'RESPUESTAS LABORALES');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (18,'pedroperez','1234',2),(20,'prueba','1234',2);
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

-- Dump completed on 2022-11-30 18:40:40
