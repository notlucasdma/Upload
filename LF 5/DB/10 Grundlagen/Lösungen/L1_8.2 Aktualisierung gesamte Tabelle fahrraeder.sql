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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fahrraeder`
--

LOCK TABLES `fahrraeder` WRITE;
/*!40000 ALTER TABLE `fahrraeder` DISABLE KEYS */;
INSERT INTO `fahrraeder` VALUES 
(1,'55-88-333',18.60,700.00,'2018-02-02','Trekkingrad'),
(3,'U/H2345',18.95,1285.00,'2017-10-11','Jugendrad'),
(4,'56/32',10.50,889.00,'2018-05-05','Trekkingrad'),
(5,'56/33',25.00,819.00,'2017-09-23','Trekkingrad'),
(6,'MTB/B34',19.95,998.00,'2018-07-23','Mountainbike'),
(8,'88/07',20.95,1550.00,'2017-03-10','Jugendrad'),
(10,'298H46',16.96,810.00,'2017-05-27','Jugendrad'),
(11,'MTB/G11',21.00,1098.00,'2018-05-15','Mountainbike'),
(12,'MTB/Z68',33.91,689.00,'2018-05-05','Rennrad'),
(15,'4890/H2',9.58,118.00,'2018-01-02','Spezialrad'),
(16,'CB/098',10.16,1780.00,'2018-05-16','Trekkingrad'),
(17,'76/67654e',11.97,646.00,'2017-09-05','Jugendrad'),
(18,'380/4532 ',22.00,2499.00,'2019-02-21','Mountainbike'),
(19,'380/4755',22.00,2499.00,'2019-02-21','Mountainbike'),
(20,'TS-457-5',15.00,889.00,'2019-02-21','Trekkingrad');
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

-- Dump completed on 2018-12-21 16:16:24
