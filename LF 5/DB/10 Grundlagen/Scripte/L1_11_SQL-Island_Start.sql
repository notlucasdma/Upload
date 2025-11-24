-- MySQL dump 10.13  Distrib 5.5.27, for Win32 (x86)
--
-- Host: localhost    Database: sql_island
-- ------------------------------------------------------
-- Server version	5.5.27

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
-- Current Database: `sql_island`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `sql_island` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `sql_island`;

--
-- Table structure for table `bewohner`
--

DROP TABLE IF EXISTS `bewohner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bewohner` (
  `bewohnernr` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `dorfnr` int(11) DEFAULT NULL,
  `geschlecht` varchar(1) DEFAULT NULL,
  `beruf` varchar(45) DEFAULT NULL,
  `gold` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`bewohnernr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bewohner`
--

LOCK TABLES `bewohner` WRITE;
/*!40000 ALTER TABLE `bewohner` DISABLE KEYS */;
INSERT INTO `bewohner` VALUES (1,'Paul Backmann',1,'m','Baecker',850,'friedlich'),(2,'Ernst Peng',3,'m','Waffenschmied',280,'friedlich'),(3,'Rita Ochse',1,'w','Baecker',350,'friedlich'),(4,'Carl Ochse',1,'m','Kaufmann',250,'friedlich'),(5,'Dirty Dieter',3,'m','Schmied',650,'boese'),(6,'Gerd Schlachter',2,'m','Metzger',4850,'boese'),(7,'Peter Schlachter',3,'m','Metzger',3250,'boese'),(8,'Arthur Schneiderpaule',2,'m','Pilot',490,'gefangen'),(9,'Tanja Trommler',1,'w','Baecker',550,'boese'),(10,'Peter Trommler',1,'m','Schmied',600,'friedlich'),(11,'Dirty Doerthe',3,'w','Erntehelfer',10,'boese'),(12,'Otto Armleuchter',2,'m','Haendler',680,'friedlich'),(13,'Fritz Dichter',3,'m','Hoerbuchautor',420,'friedlich'),(14,'Enrico Zimmermann',3,'m','Waffenschmied',510,'boese'),(15,'Helga Rasenkopf',2,'w','Haendler',680,'friedlich'),(16,'Irene Hutmacher',1,'w','Haendler',770,'boese'),(17,'Erich Rasenkopf',3,'m','Metzger',990,'friedlich'),(18,'Rudolf Gaul',3,'m','Hufschmied',390,'friedlich'),(19,'Anna Flysh',2,'w','Metzger',2280,'friedlich');
/*!40000 ALTER TABLE `bewohner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dorf`
--

DROP TABLE IF EXISTS `dorf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dorf` (
  `dorfnr` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `haeuptling` int(11) DEFAULT NULL,
  PRIMARY KEY (`dorfnr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dorf`
--

LOCK TABLES `dorf` WRITE;
/*!40000 ALTER TABLE `dorf` DISABLE KEYS */;
INSERT INTO `dorf` VALUES (1,'Addenstadr',1),(2,'Gurkendorf',6),(3,'Zwiebelhausen',13);
/*!40000 ALTER TABLE `dorf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gegenstand`
--

DROP TABLE IF EXISTS `gegenstand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gegenstand` (
  `gegenstand` varchar(45) NOT NULL,
  `besitzer` int(11) DEFAULT NULL,
  PRIMARY KEY (`gegenstand`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gegenstand`
--

LOCK TABLES `gegenstand` WRITE;
/*!40000 ALTER TABLE `gegenstand` DISABLE KEYS */;
INSERT INTO `gegenstand` VALUES ('Eimer',NULL),('Gluehbirne',NULL),('Hammer',2),('Kaffeetasse',NULL),('Pappkarton',NULL),('Ring',NULL),('Seil',17),('Spazierstock',5),('Teekanne',NULL);
/*!40000 ALTER TABLE `gegenstand` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-15  8:41:55
