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
-- Table structure for table `fahrraeder`
--

DROP TABLE IF EXISTS `fahrraeder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fahrraeder` (
  `fahrradnr` int(11) NOT NULL AUTO_INCREMENT,
  `rahmennr` varchar(45) DEFAULT NULL,
  `tagesmietpreis` double(10,2) DEFAULT NULL,
  `anschaffungswert` double(10,2) DEFAULT NULL,
  `kaufdatum` date NOT NULL,
  `fahrradart` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`fahrradnr`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fahrraeder`
--

LOCK TABLES `fahrraeder` WRITE;
/*!40000 ALTER TABLE `fahrraeder` DISABLE KEYS */;
INSERT INTO `fahrraeder` VALUES 
(1,'55-88-333',15.75,700.00,'2018-02-02','Trekkingrad'),
(2,'55-88-334',15.75,770.00,'2014-06-27','Trekkingrad'),
(3,'U/H2345',19.95,1285.00,'2017-10-11','Jugendrad'),
(4,'56/32',10.50,889.00,'2018-05-05','Trekkingrad'),
(5,'56/33',10.50,819.00,'2017-09-23','Trekkingrad'),
(6,'MTB/B34',19.95,998.00,'2018-07-23','Mountainbike'),
(7,'0002',12.60,234.00,'2015-03-11','Kinderrad'),
(8,'88/07',22.05,1550.00,'2017-03-10','Jugendrad'),
(9,'340/90089',9.45,545.00,'2017-01-17','Kinderrad'),
(10,'298H46',17.85,810.00,'2017-05-27','Jugendrad'),
(11,'MTB/G11',21.00,1098.00,'2018-05-15','Mountainbike'),
(12,'MTB/Z68',35.70,689.00,'2018-05-05','Rennrad'),
(13,'4590/H2',8.40,56.00,'2018-05-23','Spezialrad'),
(14,'198H47',9.45,310.00,'2015-09-21','Kinderrad'),
(15,'4890/H2',8.40,118.00,'2018-01-02','Spezialrad'),
(16,'CB/098',11.55,1780.00,'2018-05-16','Trekkingrad'),
(17,'76/67654e',12.60,646.00,'2017-09-05','Jugendrad');
/*!40000 ALTER TABLE `fahrraeder` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-01 13:25:11
