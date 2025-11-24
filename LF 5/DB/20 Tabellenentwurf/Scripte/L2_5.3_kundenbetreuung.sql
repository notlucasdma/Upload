-- MySQL dump 10.16  Distrib 10.1.28-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: kundenbetreuung
-- ------------------------------------------------------
-- Server version	10.1.28-MariaDB

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
-- Current Database: `kundenbetreuung`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `kundenbetreuung` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `kundenbetreuung`;

--
-- Table structure for table `abteilungen`
--

DROP TABLE IF EXISTS `abteilungen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `abteilungen` (
  `abteilungnr` int(11) NOT NULL,
  `bezeichnung` varchar(45) DEFAULT NULL,
  `kuerzel` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`abteilungnr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abteilungen`
--

LOCK TABLES `abteilungen` WRITE;
/*!40000 ALTER TABLE `abteilungen` DISABLE KEYS */;
INSERT INTO `abteilungen` VALUES (1,'Geschäftsleitung','GL'),(2,'Personal','Pers'),(3,'Finanzen','Fin'),(4,'Verwaltung','Vw'),(5,'Vertrieb','Vt'),(6,'Fertigung','Fert'),(7,'Forschung','F&E');
/*!40000 ALTER TABLE `abteilungen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kunden`
--

DROP TABLE IF EXISTS `kunden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kunden` (
  `kundennr` int(11) NOT NULL,
  `firma` varchar(45) DEFAULT NULL,
  `strasse` varchar(45) DEFAULT NULL,
  `telefon` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `ortnr` int(11) NOT NULL,
  `mitarbeiternr` int(11) NOT NULL,
  PRIMARY KEY (`kundennr`),
  KEY `fk_kunden_orte1_idx` (`ortnr`),
  KEY `fk_kunden_mitarbeiter1_idx` (`mitarbeiternr`),
  CONSTRAINT `fk_kunden_mitarbeiter1` FOREIGN KEY (`mitarbeiternr`) REFERENCES `mitarbeiter` (`mitarbeiternr`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_kunden_orte1` FOREIGN KEY (`ortnr`) REFERENCES `orte` (`ortnr`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kunden`
--

LOCK TABLES `kunden` WRITE;
/*!40000 ALTER TABLE `kunden` DISABLE KEYS */;
INSERT INTO `kunden` VALUES (270002,'FIRENCE Leuchten GmbH','Calwer Str.','0711-5415824','firence-leuchten@aol.de',29521,400026),(270004,'Möbelhaus Schneider','Hochstr. 55','07141-223588','Moebel.Schneider@t-online.de',30047,400026),(270005,'MÖBEL-CENTER Beckstein','Marienplatz 1','089-244457','MöbelCenter@web.de',33019,400039),(270007,'Möbel Bison Heck','Brehmstr. 121','089-255472','Zentrale@bison.de',32931,400039),(270008,'Bär-Möbel GmbH','Luisenstr. 55','0731-558754','einkauf@baer-moebel.de',36023,400039),(270009,'forum EINRICHTUNGEN GmbH','Händelstr. 1','07441-65560','vw@forum.einrichtungen.de',30225,400013),(270010,'Möbel Rutscher KG','Uhlandstr. 20','0751-123210','r.rutscher@rutscher-kg.de',35720,400080),(270011,'Möbel Riegel GmbH','Postfach 446688','0711-717110','zentrale@moebel-riegel.de',29724,400039),(270012,'Einrichtungshaus Unger','Talstr. 21','089-852520','Unger.Muenchen@freenet.de',32802,400080),(270013,'Siegel Wohnkomfort GmbH','Muthstr. 3','07541-88470','kaiser@wohnkomfort.de',35623,400080),(270015,'Schlenz Möbel KG','Bachrain 71','07307-45225','zentrale@schlenz-moebel.de',36113,400080),(270016,'WOHNWELT GmbH','Q 1, 15','0621-845775','joerg.meiser@wohnwelt-gmbh.de',28262,400013),(270017,'NimmMit Mitnahmemöbel GmbH','Brühlstr. 50','0711-8745447','mk@nimm-mit.de',29306,400080),(270018,'Einrichtungshaus Bull e.K.','Hauptstraße','0711-258745','info@bull.de',29654,400039),(270019,'L\'ALTRA GALLERIA GmbH','Odeonsplatz 5','089-455650','galleria@t-online.de',32803,400080),(270021,'L + M Müller','Kaiserring 33','07161-456582','k.reiser@l+m-mueller.de',28955,400080),(270022,'QuerPass-Einrichtung mit Stil','Am Heurigen 1','0761-2587423','zentrale@querpass.de',32168,400013),(270024,'Einrichtungszentrum OTTO','Gartenstr. 23','0721-897640','service@otto.de',30985,400013),(270026,'SCHERER Einrichtungen GmbH','Am Rheinufer 1','07221-205870','verwaltung@scherer.de',31193,400013),(270027,'Tisch & Stuhl GmbH','Innweg 5','07153-521220','vera.hauser@freenet.de',29003,400080),(270028,'Wohnen und Design','Am Ring 95','07361-885640','einkauf@wohnen+design.de',29089,400039),(270029,'Priel Wohnsysteme GmbH','Schulstr. 39','07051-456210','maike.schreier@priel.de',30842,400013),(270030,'Möbel-Fenchel GmbH','Mühlstraße 33','0791-505045','zentrale@fenchel-gmbh.de',30479,400026),(270032,'DREIPUNKT GmbH','Hauptstr. 114','08382-454570','zentrale@dreipunkt.de',35668,400080),(270033,'Einrichtungshaus Blessing','Bissinger Str. 5','0821-789522','f.blessing@t-online.de',34976,400137),(270035,'Wohncreation Traub & Zwiesel','Karlstr. 33','07152-546320','v.zwiesel@wohncreation.de',29875,400026),(270036,'Meinschneider Einrichtungen','Brunnenweg 88','0711-5488715','heinz.meinschneider@web.de',29303,400137),(270038,'Möbel Hirschlinger OHG','Schützenstr. 39','07141-548770','w.hubbel@hirschlinger.ohg.de',30075,400039),(270039,'Rustikalmöbel GmbH','Im Degenfeld 9','0711-8987440','einkauf@rustikal-gmbh.de',29321,400137),(270040,'Schober Vollholzmöbel KG','Heilbronner Str. 3','0711-8466327','r.meininger@t-online.de',29675,400039),(270041,'Moll Stilmöbel','Klosterweg 55','07161-785020','stilmoebel@freenet.de',28935,400039),(270042,'City-Möbel GmbH','Neckarstr. 155','07331-204580','einkauf@city-moebel-gmbh.de',29053,400039),(270043,'Hestra Einrichtungen GmbH','Kirchheimer Str. 2','07024-548870','t.schnell@hestra-gmbh.de',29017,400137),(270044,'TOWO-Möbel GmbH','Lindenstraße 4','07951-510210','franz.müller@towo.gmbh.de',30504,400039),(270046,'Möbelzentrale WILLY','Industrieweg 74','07144-458520','m-w@willy.com',29502,400039),(270047,'MARKTEX Exclusiveinrichtungen','Friedrichsweg 32','07321-556870','einkauf@marktex.de',36225,400039),(270048,'GLASIMA Möbelstudio GmbH','Chemnitzer Str. 5','07031-855472','g.herschel@glasima-gmbh.de',29785,400013),(270049,'Möbel-Treffpunkt-Exclusiv','Borsigstraße 29','07621-556872','gh@treffpunkt-exclusiv.de',32381,400013),(270050,'Möbel-Rau','Richthofweg 42','07032-502447','rau.moebel@web.de',29810,400026),(270051,'ARTEFAKT GmbH','Salacher Str. 45','07031-257780','f.rauh@gmx.de',29799,400026),(270052,'Möbel Scheufele','Boschstraße 66','07223-258750','zentrale@scheufele.com',31652,400026),(270053,'Einrichtungshaus Bluthardt','Kastellstr. 14','0711-457868','k.heinzer@t-online.de',29303,400137),(270055,'Möbel Schmidt GmbH & Co KG','Friedhofsweg 1','0931-547780','gero.schmidt@moebelhaus-schmidt.de',38490,400026);
/*!40000 ALTER TABLE `kunden` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mitarbeiter`
--

DROP TABLE IF EXISTS `mitarbeiter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mitarbeiter` (
  `mitarbeiternr` int(11) NOT NULL,
  `nachname` varchar(45) DEFAULT NULL,
  `vorname` varchar(45) DEFAULT NULL,
  `strasse` varchar(45) DEFAULT NULL,
  `gebtag` date DEFAULT NULL,
  `stkl` varchar(3) DEFAULT NULL,
  `gehalt` double DEFAULT NULL,
  `abteilungnr` int(11) NOT NULL,
  `ortnr` int(11) NOT NULL,
  PRIMARY KEY (`mitarbeiternr`),
  KEY `fk_mitarbeiter_abteilungen_idx` (`abteilungnr`),
  KEY `fk_mitarbeiter_orte1_idx` (`ortnr`),
  CONSTRAINT `fk_mitarbeiter_abteilungen` FOREIGN KEY (`abteilungnr`) REFERENCES `abteilungen` (`abteilungnr`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_mitarbeiter_orte1` FOREIGN KEY (`ortnr`) REFERENCES `orte` (`ortnr`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mitarbeiter`
--

LOCK TABLES `mitarbeiter` WRITE;
/*!40000 ALTER TABLE `mitarbeiter` DISABLE KEYS */;
INSERT INTO `mitarbeiter` VALUES (400000,'Schneider','Heinrich','Goezstraße 25','1946-10-18','I',8800,1,29306),(400001,'Schlauch','Franz','Ulmer Weg 56','1972-04-01','III',4400,5,29675),(400002,'Schlauch','Christine','Ulmer Weg 56','1978-04-01','III',3675,4,29675),(400003,'Böckle','Jennifer','Hermann-Hesse-Str. 3','1986-05-25','V',4600,3,29675),(400004,'Hauffe','Johann','Seestraße 21','1978-02-01','III',5400,6,29306),(400005,'Yilmaz','Ali','Wehrstraße 87','1991-05-01','III',2175,6,29315),(400006,'Berger','Johann','Vaihinger Str. 103','1996-10-18','I',1900,5,30050),(400007,'Schweizer','Anton','Schillingstraße 18','1982-01-30','III',4950,5,29303),(400008,'Lambert','Hans','Molkereigässle 7','1978-05-29','III',3450,6,29306),(400009,'Sautter','Fritz','Karlstraße 23','1994-08-12','V',1900,6,28952),(400010,'Branduardi','Francesco','Rosenweg 11A','1989-10-31','I',6150,7,29740),(400011,'Dreizler','Helmut','Karl-Marx-Str. 2','1994-11-14','I',1900,6,29318),(400012,'Heller','Ulrich','Lindenallee 78','1988-07-04','III',1900,6,29531),(400013,'Linker','Torsten','Neckarstraße 23','1992-03-15','I',3800,5,30050),(400014,'Sommer','Achim','Talwiese 39','1987-09-20','I',2100,3,29875),(400016,'Kratzer','Franz','R.-Wagner Str. 38','1992-12-06','II',1800,6,29675),(400017,'Dreiss','Uwe','Ringstraße 73','1990-02-03','III',2900,6,29740),(400018,'Anschütz','Günter','Tulpenweg 31','1993-07-20','III',3250,6,29023),(400019,'Blaschke','Hilde','Brückenstraße 44','1987-09-19','I',2150,3,29306),(400020,'Bittner','Helmut','Hügelstraße 36','1988-11-08','III',3200,6,29722),(400021,'Steck','Gerlinde','Adenauerstr. 39','1996-12-06','II',2162.5,6,29573),(400022,'Watzke','Bernd','Filderweg 44','1983-12-21','II',2300,6,29740),(400023,'Dihlmann','Thomas','Auf der Insel 3','1982-05-13','V',4900,6,29003),(400024,'Köber','Hannes','Hauptstr. 31','1984-06-12','V',2400,6,30418),(400025,'Alber','Rolf','Vogelweg 84','1993-05-14','III',2300,6,29675),(400026,'Karl','Malte','Heilbronner Str. 22','1990-06-28','II',4150,5,29654),(400027,'Bitto','Barbara','W.-Röntgen-Str. 44','1985-07-04','II',2050,6,29315),(400030,'Gutbier','Gerhard','Schwarzwaldweg 1','1979-02-06','I',2050,3,29892),(400031,'Engel','Fabian','Wasenweg 33','1978-10-31','V',2700,6,29531),(400032,'Maier','Ingrid','Hohe Straße 87','1984-09-02','II',3900,3,29305),(400033,'Schweizer','Karin','Th.-Heuss-Allee 73','1980-04-06','I',3750,2,29654),(400034,'Dörner','Julia','Rosenweg 15A','1986-12-31','I',2250,3,29315),(400035,'Jaksch','Danijel','Maurener Weg 67','1989-01-11','I',2050,4,29740),(400036,'Toppmöller','Vanessa','Eichenweg 3','1996-12-26','V',2300,4,29305),(400037,'Kolesnik','Walter','Webergasse 1','1987-05-01','I',1900,4,29305),(400038,'Mainzer','Heinz','Allee 34','1978-10-07','I',2550,4,29306),(400039,'Mainzer','Erwin','Marktplatz 1','1979-06-08','I',4390,5,30047),(400040,'Knaller','Willi','Königsweg 56','1984-03-05','III',4050,6,29521),(400041,'Berger','Nora','Wehrstraße 87','1985-10-18','I',2700,6,29315),(400042,'Dieterle','Samuel','Gartenstraße 78','1997-06-27','I',5900,6,29573),(400044,'Bajrami','Frosina','Schillingstraße 18','1988-03-31','II',1950,3,29303),(400045,'Hennes','Andreas','Lindenallee 12','1982-10-16','I',1950,2,29303),(400046,'Dettinger','Mainhard','Haupstraße 120','1995-12-11','V',2050,6,29303),(400047,'König','Jürgen','Gärtringer Str. 7','1975-06-04','III',1950,6,29764),(400048,'Gissing','Beate','Olgastraß1 123','1982-07-29','III',2050,3,29675),(400049,'Lenker','Erwin','Helfensteinerstr. 31','1969-11-20','III',2300,7,29641),(400059,'Albanesi','Dario','Molkereigasse 2','1995-12-21','I',4900,3,29675),(400069,'Gössler','Rainer','Schmiedstraße 8/C','1979-12-27','III',5950,3,29927),(400080,'Schlauch','Rudolf','Karlstraße 12','1980-10-09','I',4750,5,29267),(400082,'Egeler','Karl-Friedrich','Tannenstr. 2','1980-08-09','V',1900,6,29238),(400085,'Binder','Anton','Altdorfer Str. 87','1989-06-10','V',3600,6,29022),(400087,'Erikson','Judith','Wagnerstr.15','1984-04-21','I',2200,3,29267),(400092,'Landenberger','Sabine','Marktplatz 12','1992-11-12','V',2500,7,29897),(400111,'Kessler','Melani','Vaihinger Str. 103','1996-06-21','I',2100,2,30050),(400113,'Kolar','Pavel','Geranienstraße 76','1968-12-10','I',2100,6,30044),(400114,'Pessoa','Erwin','Am Oberen See 12','1989-07-30','I',1800,3,28936),(400116,'Kienle','Kristine','Schillerstraß 46','1977-07-05','V',2300,6,29023),(400117,'Lauxmann','Klaus','Jasminweg 18','1988-04-29','I',2200,7,29305),(400119,'Ragusa','Michael','Augustinerstr. 8','1984-06-29','I',2500,7,29003),(400120,'Jakovljewic','Emira','Seestraße 21','1986-11-21','V',2100,6,29306),(400122,'Delfini','Romolo','Krokusstraße 7','1995-12-29','III',2100,6,29287),(400123,'Passinhas','Fernando','Molkereigässle 7','1991-05-06','III',2500,2,29306),(400124,'Binder','Elke','Altdorfer Str. 87','1993-11-23','V',2200,6,29023),(400126,'Tabucchi','Antonia','Stuttgarter Str. 68','1985-10-09','I',2300,7,29003),(400128,'Hörmann','Barbara','Adelbortenstraße 22','1982-04-18','II',2100,6,30426),(400129,'Schettler','Christoph','Guttenbrunnstraße 88','1985-01-26','I',1900,7,30426),(400131,'Mielnik','Hans','Hermann-Hesse-Str. 3','1988-06-16','I',2300,6,29740),(400133,'Dengler','Manfred','Marktplatz 3','1991-03-14','III',2000,6,29009),(400135,'Banzhaff','Jörg','Ehninger Weg 8','1987-05-31','V',1900,2,29009),(400136,'Anters','Vera','Karlsplatz 3','1986-03-30','I',2300,2,30418),(400137,'Daumer','Ulla','Karlstraße 23','2000-08-30','I',2500,5,29003),(400138,'Hauffe','Johanna','Teckstraße 77','1987-02-01','IV',6100,4,30389),(400139,'Schlauch','Angelika','Neckaallee 81','1988-04-01','I',5900,4,29003),(400140,'Harr','Egon','Ulmer Weg 56','1985-07-04','II',2600,4,29305),(400141,'Lutz','Hans-Dieter','Rosenstraße 8/1','2000-04-17','I',2100,2,29306),(400142,'Frey','Donald','Weite Str. 12','2001-12-09','III',5600,4,29022),(400143,'Lambert','Franziska','Veilchenstraße 13','2001-05-30','I',2400,6,29023);
/*!40000 ALTER TABLE `mitarbeiter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orte`
--

DROP TABLE IF EXISTS `orte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orte` (
  `ortnr` int(11) NOT NULL,
  `plz` varchar(5) DEFAULT NULL,
  `ortname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ortnr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orte`
--

LOCK TABLES `orte` WRITE;
/*!40000 ALTER TABLE `orte` DISABLE KEYS */;
INSERT INTO `orte` VALUES (10010,'24122','Kiel'),(11553,'26476','Wangerooge'),(12282,'28068','Bremen'),(12291,'28077','Bremen'),(14008,'10825','Berlin'),(14019,'10865','Berlin'),(14157,'12113','Berlin'),(16306,'17221','Neustrelitz'),(16314,'20738','Hamburg'),(16339,'20763','Hamburg'),(16414,'21022','Hamburg'),(17019,'40047','Düsseldorf'),(18111,'44285','Dortmund'),(18200,'44607','Herne'),(18446,'45289','Essen'),(19007,'47151','Duisburg'),(19031,'47206','Duisburg'),(19765,'49084','Osnabrück'),(20345,'50446','Köln'),(20359,'50460','Köln'),(20501,'50683','Köln'),(20740,'51153','Köln'),(20788,'51333','Leverkusen'),(20807,'51381','Leverkusen'),(20811,'51390','Burscheid'),(20927,'51616','Gummersbach'),(21000,'52021','Aachen'),(21005,'52026','Aachen'),(21042,'52089','Aachen'),(21108,'52310','Düren'),(21335,'53170','Bonn'),(21414,'53404','Remagen'),(22444,'55040','Mainz'),(22512,'55220','Alzey'),(22553,'55247','Mainz-Kastel'),(22583,'55278','Dalheim'),(24010,'57030','Siegen'),(25420,'60423','Frankfurt'),(25427,'60433','Frankfurt'),(25555,'61103','Bad Vilbel'),(27301,'66711','Saarlouis'),(27522,'66932','Pirmasens'),(27850,'67445','Haßloch'),(27953,'67610','Kaiserslautern'),(28255,'68146','Mannheim'),(28262,'68161','Mannheim'),(28299,'68264','Mannheim'),(28380,'68705','Schwetzingen'),(28499,'69080','Heidelberg'),(28511,'69126','Heidelberg'),(28609,'69459','Weinheim'),(28878,'72766','Reutlingen'),(28933,'73031','Göppingen'),(28935,'73033','Göppingen'),(28936,'73035','Göppingen'),(28952,'73061','Ebersbach'),(28955,'73066','Uhingen'),(29003,'73207','Plochingen'),(29008,'73223','Kirchheim'),(29009,'73230','Kirchheim'),(29017,'73240','Wendlingen'),(29022,'73249','Berghof'),(29023,'73249','Wernau'),(29053,'73312','Geislingen'),(29087,'73426','Aalen'),(29089,'73430','Aalen'),(29110,'07745','Jena'),(29172,'73525','Schwäbisch Gmünd'),(29238,'73608','Schorndorf'),(29267,'73650','Winterbach'),(29287,'73705','Esslingen'),(29303,'73730','Esslingen'),(29305,'73733','Esslingen'),(29306,'73734','Esslingen'),(29307,'73744','Ostfildern'),(29311,'73750','Ostfildern'),(29315,'73760','Ostfildern'),(29318,'73765','Neuhausen'),(29321,'73770','Denkendorf'),(29331,'74004','Heilbronn'),(29367,'74074','Heilbronn'),(29375,'74100','Heilbronn'),(29391,'74169','Neckarsulm'),(29466,'74321','Bietigheim-Bissingen'),(29502,'74385','Pleidelsheim'),(29521,'70173','Stuttgart'),(29531,'70191','Stuttgart'),(29573,'70376','Stuttgart'),(29575,'70378','Stuttgart'),(29641,'70523','Stuttgart'),(29654,'70555','Stuttgart'),(29657,'70559','Stuttgart'),(29675,'70599','Stuttgart'),(29722,'70771','Leinfelden-Echterdingen'),(29724,'70773','Filderstadt'),(29740,'70794','Filderstadt'),(29764,'70839','Gerlingen'),(29774,'71010','Böblingen'),(29785,'71032','Böblingen'),(29797,'71059','Sindelfingen'),(29799,'71063','Sindelfingen'),(29805,'71072','Herrenberg'),(29810,'71083','Herrenberg'),(29875,'71229','Leonberg,'),(29892,'71263','Weil der Stadt'),(29897,'71272','Renningen'),(29927,'71319','Waiblingen'),(29981,'71512','Backnang'),(30044,'71628','Ludwigsburg'),(30047,'71634','Ludwigsburg'),(30050,'71640','Ludwigsburg'),(30059,'71667','Marbach'),(30075,'71691','Freiberg'),(30124,'72014','Tübingen'),(30222,'72238','Freudenstadt'),(30225,'72250','Freudenstadt'),(30266,'72310','Balingen'),(30296,'72375','Hechingen'),(30334,'72440','Albstadt'),(30350,'72482','Sigmaringen'),(30389,'72555','Metzingen'),(30414,'72609','Nürtingen'),(30418,'72622','Nürtingen'),(30426,'72639','Neuffen'),(30470,'74510','Schwäbisch Hall'),(30479,'74523','Schwäbisch Hall'),(30504,'74564','Crailsheim'),(30541,'74606','Öhringen'),(30556,'74638','Waldenburg'),(30563,'74649','Künzelsau'),(30585,'74714','Buchen'),(30587,'74722','Buchen'),(30589,'74724','Walldürn'),(30615,'74819','Mosbach'),(30654,'74879','Sinsheim'),(30662,'74906','Bad Rappenau'),(30775,'75181','Pforzheim'),(30840,'75358','Calw'),(30842,'75365','Calw'),(30873,'75415','Mühlacker'),(30899,'08100','Zwickau'),(30985,'76131','Karlsruhe'),(31038,'76233','Karlsruhe'),(31052,'76252','Karlsruhe'),(31066,'76273','Ettlingen'),(31122,'76407','Rastatt'),(31129,'76414','Rastatt'),(31159,'76482','Baden-Baden'),(31179,'76514','Baden-Baden'),(31182,'76517','Baden-Baden'),(31193,'76530','Baden-Baden'),(31194,'76532','Baden-Baden'),(31200,'76552','Gaggenau'),(31213,'76586','Gernsbach'),(31237,'76624','Bruchsal'),(31241,'76629','Bruchsal'),(31474,'77582','Offenburg'),(31491,'77599','Offenburg'),(31540,'77656','Offenburg'),(31553,'77675','Kehl'),(31561,'77683','Kehl'),(31651,'77813','Bühl'),(31652,'77815','Bühl'),(31670,'77854','Achern'),(31671,'77855','Achern'),(31704,'77914','Lahr'),(31767,'78052','Villingen-Schwenningen'),(31777,'78073','Bad Dürrheim'),(31800,'78114','Furtwangen'),(31830,'78158','Donaueschingen'),(31953,'78441','Konstanz'),(31963,'78465','Konstanz'),(31974,'78506','Tuttlingen'),(32031,'78609','Tuningen'),(32154,'79088','Freiburg'),(32168,'79110','Freiburg'),(32175,'79121','Freiburg'),(32269,'79302','Emmendingen'),(32354,'79512','Lörrach'),(32374,'79555','Weil am Rhein'),(32381,'79576','Weil am Rhein'),(32404,'79613','Rheinfelden'),(32523,'79811','Titisee-Neustadt'),(32644,'80152','München'),(32802,'80538','München'),(32803,'80539','München'),(32931,'80999','München'),(33019,'81241','München'),(33165,'81733','München'),(33177,'81823','München'),(33195,'81929','München'),(33393,'82315','Starnberg'),(33770,'83359','Ettendorf'),(33918,'83462','Berchtesgaden'),(33960,'83540','Rott a. Inn'),(34547,'85219','Dachau'),(34976,'86150','Augsburg'),(35615,'88023','Friedrichshafen'),(35623,'88045','Friedrichshafen'),(35625,'88048','Friedrichshafen'),(35668,'88131','Lindau'),(35705,'88187','Ravensburg'),(35720,'88212','Ravensburg'),(35733,'88239','Wangen'),(35830,'88388','Biberach'),(35933,'88620','Pfullendorf'),(35949,'88644','Überlingen'),(36023,'89073','Ulm'),(36025,'89077','Ulm'),(36113,'89250','Senden'),(36217,'89505','Heidenheim'),(36225,'89518','Heidenheim'),(36236,'89534','Giengen'),(36262,'89573','Ehingen'),(36322,'90103','Nürnberg'),(36997,'91802','Meinheim'),(37504,'94001','Passau'),(38484,'97062','Würzburg'),(38490,'97070','Würzburg'),(38909,'97867','Wertheim'),(38936,'97935','Tauberbischofsheim'),(38951,'97961','Bad Mergentheim'),(39325,'99094','Erfurt'),(39753,'99805','Eisenach'),(39814,'99867','Gotha');
/*!40000 ALTER TABLE `orte` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-23 23:39:42
