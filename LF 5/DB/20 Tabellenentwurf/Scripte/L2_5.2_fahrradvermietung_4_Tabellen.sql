-- MySQL dump 10.13  Distrib 5.5.27, for Win32 (x86)
--
-- Host: localhost    Database: fahrradvermietung
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
-- Current Database: `fahrradvermietung`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `fahrradvermietung` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `fahrradvermietung`;

--
-- Table structure for table `fahrradarten`
--

DROP TABLE IF EXISTS `fahrradarten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fahrradarten` (
  `artnr` int(11) NOT NULL,
  `bezeichnung` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`artnr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fahrradarten`
--

LOCK TABLES `fahrradarten` WRITE;
/*!40000 ALTER TABLE `fahrradarten` DISABLE KEYS */;
INSERT INTO `fahrradarten` VALUES (1,'Kinderrad'),(2,'Jugendrad'),(3,'Trekkingrad'),(4,'Mountainbike'),(5,'Rennrad'),(6,'Tandem'),(7,'Spezialrad');
/*!40000 ALTER TABLE `fahrradarten` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fahrraeder`
--

DROP TABLE IF EXISTS `fahrraeder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fahrraeder` (
  `fahrradnr` int(11) NOT NULL,
  `rahmennr` varchar(10) DEFAULT NULL,
  `anschaffungswert` double DEFAULT NULL,
  `kaufdatum` date NOT NULL,
  `modellnr` int(11) NOT NULL,
  PRIMARY KEY (`fahrradnr`),
  KEY `fk_fahrraeder_bezeichnungen1` (`modellnr`),
  CONSTRAINT `fk_fahrraeder_bezeichnungen1` FOREIGN KEY (`modellnr`) REFERENCES `modelle` (`modellnr`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fahrraeder`
--

LOCK TABLES `fahrraeder` WRITE;
/*!40000 ALTER TABLE `fahrraeder` DISABLE KEYS */;
INSERT INTO `fahrraeder` VALUES (1,'55-88-333',700,'2018-02-02',1),(2,'55-88-334',770,'2015-06-27',1),(3,'U/H2345',1285,'2017-10-11',2),(4,'56/32',889,'2018-05-05',3),(5,'56/33',819,'2017-09-23',3),(6,'MTB/B34',998,'2018-07-23',5),(7,'0002',234,'2017-03-11',6),(8,'88/07',1550,'2017-03-10',7),(9,'340/90089',545,'2017-01-17',8),(10,'298H46',810,'2017-05-27',9),(11,'MTB/G11',1098,'2018-05-15',10),(12,'MTB/Z68',689,'2018-05-05',11),(13,'4590/H2',56,'2018-05-23',12),(14,'198H47',310,'2015-09-21',8),(15,'4890/H2',118,'2018-01-02',14),(16,'CB/098',1780,'2018-05-16',15),(17,'76/67654e',646,'2017-09-05',4);
/*!40000 ALTER TABLE `fahrraeder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hersteller`
--

DROP TABLE IF EXISTS `hersteller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hersteller` (
  `herstellernr` int(11) NOT NULL,
  `herstellername` varchar(30) DEFAULT NULL,
  `portal` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`herstellernr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hersteller`
--

LOCK TABLES `hersteller` WRITE;
/*!40000 ALTER TABLE `hersteller` DISABLE KEYS */;
INSERT INTO `hersteller` VALUES (1,'Kettler','http://www.kettler-bike.de/'),(2,'Bianci','http://www.bianchi.com/de/dealerArea/dealerArea_In'),(3,'Fishbone','http://www.fishbone.ch'),(4,'Scott','http://www.scott-sports.com/'),(5,'Yazoo','http://www.yaupp.com'),(6,'Arcona','http://www.arcpma-bike.com'),(7,'BBF','http://www.bbf-company.com'),(8,'Cateye','http://www.cateye-ei'),(9,'Bulls','http://www.bulls.de/'),(10,'Dahon','http://www.dahon.jp'),(11,'Centano','http://www.centano.com'),(12,'Ergon','http://www.erogn.uk'),(13,'Flyke','http://www.flyke.com'),(14,'GIANT','http://www.giant.ch'),(15,'Hercules','http://www.hercules-bikes.de'),(16,'KTM Bikes','http://www.KTM.ne'),(17,'Puky','http://www.puky-bikes.de/wissenswertes/fahrrad'),(18,'Rmer','http://www.rmer.ro'),(19,'Schwalbe','http://www.schwalbe.de'),(20,'Panther','http://www.panther.at'),(21,'Cube','http://www.cube.uk'),(22,'Comus','http://www.comus.fr'),(23,'Koga-Miyata','http://www.k-m.au'),(24,'Maxcycles','http://www.maxcycles.de');
/*!40000 ALTER TABLE `hersteller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelle`
--

DROP TABLE IF EXISTS `modelle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modelle` (
  `modellnr` int(11) NOT NULL,
  `bezeichnung` varchar(50) DEFAULT NULL,
  `tagesmietpreis` double DEFAULT NULL,
  `artnr` int(11) NOT NULL,
  `herstellernr` int(11) NOT NULL,
  PRIMARY KEY (`modellnr`),
  KEY `fk_bezeichnungen_fahrradarten1` (`artnr`),
  KEY `fk_bezeichnungen_hersteller1` (`herstellernr`),
  CONSTRAINT `fk_bezeichnungen_fahrradarten1` FOREIGN KEY (`artnr`) REFERENCES `fahrradarten` (`artnr`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_bezeichnungen_hersteller1` FOREIGN KEY (`herstellernr`) REFERENCES `hersteller` (`herstellernr`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelle`
--

LOCK TABLES `modelle` WRITE;
/*!40000 ALTER TABLE `modelle` DISABLE KEYS */;
INSERT INTO `modelle` VALUES (1,'Viale Abruzzi Gent',15.75,3,2),(2,'Fishbone FR 100',19.95,2,3),(3,'Scott Comtessa',10.5,3,4),(4,'Scott Voltage Jr 16',12.6,2,4),(5,'Scott Aspect 50',19.95,4,4),(6,'Kindertransportanhänger mit Federung',12.6,1,4),(7,'Scale 70',22.05,2,4),(8,'Panther Thedy',9.45,1,5),(9,'Yazoo FSV-3.6N',17.85,2,5),(10,'Bulls Sharptail 2',21,4,9),(11,'Cube ATTENTION HS 11',35.7,5,21),(12,'Comus Einrad',8.4,7,22),(14,'Comus Einrad XM',8.4,7,22),(15,'Maxcycles Lady Lite Comfort',11.55,3,24);
/*!40000 ALTER TABLE `modelle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-22 11:17:47
