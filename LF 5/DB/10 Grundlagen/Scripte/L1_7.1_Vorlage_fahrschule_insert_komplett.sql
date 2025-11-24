-- MySQL dump 10.13  Distrib 5.5.27, for Win32 (x86)
--
-- Host: localhost    Database: fahrschule
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
-- Current Database: `fahrschule`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `fahrschule` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `fahrschule`;

--
-- Table structure for table `fahrraeder`
--

DROP TABLE IF EXISTS `fahrschueler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fahrschueler` (
  `schuelernr` int(11) NOT NULL,
  `nachname` varchar(45) DEFAULT NULL,
  `vorname` varchar(45) DEFAULT NULL,
  `telefon` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `strasse` varchar(45) DEFAULT NULL,
  `hausnr` varchar(4) DEFAULT NULL,
  `plz` varchar(5) DEFAULT NULL,
  `ort` varchar(45) DEFAULT NULL,
  `geburtsdatum` date DEFAULT NULL,
  `fahrstundenzahl` double DEFAULT NULL,
  PRIMARY KEY (`schuelernr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fahrschueler`
--

LOCK TABLES `fahrschueler` WRITE;
/*!40000 ALTER TABLE `fahrschueler` DISABLE KEYS */;
INSERT INTO `fahrschueler` VALUES 
(1,'Abele','Andreas','0159787383','andreas@abele.de','Ahornweg','3','73614','Schorndorf','1999-12-02',2),
(2,'Beutel','Barbara','016673344','babsib@mail.de','Bahnhofstraße','52','73642','Welzheim','2000-06-20',12),
(3,'Cramer','Conradt','01785521221','cc@cramer.info','Cäcilienweg','34 A','73614','Schorndorf','2001-07-15',3),
(4,'Deiß','Dagmar','0166876434','d.deiss@gmx.de','Hauptstraße','44','73655','Plüderhausen','2002-11-23',14),
(5,'Emmrich','Anton','0155494521','toni.e@yahoo.com','Ginsterweg','11','73099','Adelberg','2001-03-24',6),
(6,'Dressel','Dagmar','0161745119','dagi99@web.de','Drosselweg','2','73614','Schorndorf','2000-02-04',1),
(7,'Fernandes','Enrico','01778855','f.enrico@t-online.de','Konrad-Adenauer-Straße','123','73547','Lorch','2001-05-13',15),
(8,'Lutz','Frederik','016788913','lutze@gmail.com','Mozartstraße ','88','73614','Schorndorf','2000-12-24',25),
(9,'Grund','Dietmar','015545785','dgrund@web.de','Meisenweg','1','73655','Plüderhausen','2002-09-20',13),
(10,'Demürel','Ali','01632382','alibaba99@yahoo.com','Webergasse','14','73642','Welzheim','2001-12-23',23),
(11,'Dressel','Andreas','015526372','andidressel@gmail.com','Drosselweg','4','73614','Schorndorf','2000-10-22',3),
(12,'Schmidt','Alex','01563723','aschmidt@yahoo.com','Bahnhofstraße','34','73642','Welzheim','2001-07-30',22),
(13,'Cramer','Susanne','01763734572','susi.cramer@web.de','Buchenweg','8','73614','Schorndorf','2002-02-18',NULL),
(14,'Öztürk','Hakan','0552368992',NULL,'Sperbergasse','19','73655','Plüderhausen',NULL,NULL),
(15,'Bellino','Luigi','01672747893','l.bellino@gmx.de','Goethestraße','33','73547','Lorch',NULL,2);
/*!40000 ALTER TABLE `fahrschueler` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-21 13:25:11
