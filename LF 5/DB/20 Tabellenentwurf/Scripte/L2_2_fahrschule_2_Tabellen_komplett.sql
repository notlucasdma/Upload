
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
-- Table structure for table `orte`
--

DROP TABLE IF EXISTS `orte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orte` (
  `ortnr` int(11) NOT NULL AUTO_INCREMENT,
  `plz` varchar(5) DEFAULT NULL,
  `ort` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ortnr`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orte`
--

LOCK TABLES `orte` WRITE;
/*!40000 ALTER TABLE `orte` DISABLE KEYS */;
INSERT INTO `orte` VALUES 
(1,'73099','Adelberg'),
(2,'73547','Lorch'),
(3,'73614','Schorndorf'),
(4,'73642','Welzheim'),
(5,'73655','Plüderhausen');
/*!40000 ALTER TABLE `orte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fahrschueler`
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
  `geburtsdatum` date DEFAULT NULL,
  `fahrstundenzahl` double DEFAULT NULL,
  `ortnr` int(11) NOT NULL,
  PRIMARY KEY (`schuelernr`),
  KEY `fk_fahrschueler_orte_idx` (`ortnr`),
  CONSTRAINT `fk_fahrschueler_orte` FOREIGN KEY (`ortnr`) REFERENCES `orte` (`ortnr`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fahrschueler`
--

LOCK TABLES `fahrschueler` WRITE;
/*!40000 ALTER TABLE `fahrschueler` DISABLE KEYS */;
INSERT INTO `fahrschueler` VALUES 
(1,'Abele','Andreas','0159787383','andreas@abele.de','Ahornweg','3','1999-12-02',2,3),
(2,'Beutel','Barbara','016673344','babsib@mail.de','Bahnhofstraße','52','2000-06-20',12,4),
(3,'Cramer','Conradt','01785521221','cc@cramer.info','Cäcilienweg','34 A','2001-07-15',3,3),
(4,'Deiß','Dagmar','0166876434','d.deiss@gmx.de','Hauptstraße','44','2002-11-23',14,5),
(5,'Emmrich','Anton','0155494521','toni.e@yahoo.com','Ginsterweg','11','2001-03-24',6,1),
(6,'Dressel','Dagmar','0161745119','dagi99@web.de','Drosselweg','2','2000-02-04',1,3),
(7,'Fernandes','Enrico','01778855','f.@t-online.de','Konrad-Adenauer-Straße','123','2001-05-13',15,2),
(8,'Lutz','Frederik','016788913','lutze@gmail.com','Mozartstraße ','88','2000-12-24',25,3),
(9,'Grund','Dietmar','015545785','dgrund@web.de','Meisenweg','1','2002-09-20',13,5),
(10,'Demürel','Ali','01632382','alibaba99@yahoo.com','Webergasse','14','2001-12-23',23,4),
(11,'Dressel','Andreas','015526372','andidressel@gmail.com','Drosselweg','4','2000-10-22',3,3),
(12,'Schmidt','Alex','01563723','aschmidt@yahoo.com','Bahnhofstraße','34','2001-07-30',22,4),
(14,'Öztürk','Hakan','01552368992','hakan.oeztuerk@web.de','Sperbergasse','19','2002-05-21',3,5);
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


