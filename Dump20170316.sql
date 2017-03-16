-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: instrdidactica
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `asignaturas`
--

DROP TABLE IF EXISTS `asignaturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asignaturas` (
  `idasignaturas` int(11) NOT NULL AUTO_INCREMENT,
  `idcarreras` int(11) NOT NULL,
  `nom_asignatura` varchar(50) DEFAULT NULL,
  `clave_asignatura` varchar(8) DEFAULT NULL,
  `horas_teoria` int(11) DEFAULT NULL,
  `horas_practica` int(11) DEFAULT NULL,
  `creditos_asignatura` int(11) DEFAULT NULL,
  `presentacion_asignatura` text,
  `intencion_didactica` text,
  `numero_temas` int(11) DEFAULT NULL,
  `idtemas` int(11) DEFAULT NULL,
  `idtemas_competencias` int(11) DEFAULT NULL,
  `fuentes_informacion` text,
  PRIMARY KEY (`idasignaturas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignaturas`
--

LOCK TABLES `asignaturas` WRITE;
/*!40000 ALTER TABLE `asignaturas` DISABLE KEYS */;
/*!40000 ALTER TABLE `asignaturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carreras`
--

DROP TABLE IF EXISTS `carreras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carreras` (
  `idcarreras` int(11) NOT NULL AUTO_INCREMENT,
  `desc_carrera` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idcarreras`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carreras`
--

LOCK TABLES `carreras` WRITE;
/*!40000 ALTER TABLE `carreras` DISABLE KEYS */;
INSERT INTO `carreras` VALUES (1,'Ing. en Sistemas Computacionales'),(2,'Lic. en Contabilidad'),(3,'Arquitectura'),(4,'Ing. en Administración'),(5,'Gastronomia'),(6,'Ingenieria Civil'),(7,'Ing. en Electromecanica'),(8,'Lic. en Turismo');
/*!40000 ALTER TABLE `carreras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temas`
--

DROP TABLE IF EXISTS `temas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temas` (
  `idtemas` int(11) NOT NULL AUTO_INCREMENT,
  `idasignatura` int(11) NOT NULL,
  `numero_tema` int(11) DEFAULT NULL,
  `nombre_tema` varchar(45) DEFAULT NULL,
  `subtemas` text,
  PRIMARY KEY (`idtemas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temas`
--

LOCK TABLES `temas` WRITE;
/*!40000 ALTER TABLE `temas` DISABLE KEYS */;
/*!40000 ALTER TABLE `temas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temascomp`
--

DROP TABLE IF EXISTS `temascomp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temascomp` (
  `idtemas_competencias` int(11) NOT NULL AUTO_INCREMENT,
  `idasignatura` int(11) NOT NULL,
  `numero_competencia` int(11) DEFAULT NULL,
  `competencia_especifica` varchar(45) DEFAULT NULL,
  `competencias_genericas` text,
  `actividades_aprendizaje` text,
  PRIMARY KEY (`idtemas_competencias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temascomp`
--

LOCK TABLES `temascomp` WRITE;
/*!40000 ALTER TABLE `temascomp` DISABLE KEYS */;
/*!40000 ALTER TABLE `temascomp` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-16 10:49:29
