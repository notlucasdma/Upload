-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema kino
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `kino` DEFAULT CHARACTER SET utf8 ;
USE `kino` ;

-- -----------------------------------------------------
-- Table `kino`.`kinofilme`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `kino`.`kinofilme` (
  `auffuehrungsnr` INT NOT NULL AUTO_INCREMENT,
  `filmtitel` VARCHAR(30) NULL DEFAULT NULL,
  `eintrittspreis` DOUBLE(10,2) NULL DEFAULT NULL,
  `filmnummer` INT(11) NOT NULL,
  `saalnr` INT(11) NOT NULL,
  `saalbezeichnung` VARCHAR(30) NULL DEFAULT NULL,
  `plaetze` INT(11) NULL DEFAULT NULL,
  `personalnr` INT(11) NOT NULL,
  `personalname` VARCHAR(30) NULL DEFAULT NULL,
  `personalvorname` VARCHAR(30) NULL DEFAULT NULL,
  PRIMARY KEY (`auffuehrungsnr`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

INSERT INTO `kinofilme` VALUES (101,'Die Schöne und das Biest',7.00,145,7,'Gloria 2',40,6,'Husch','Heike'),
(102,'The Boss Baby',8.50,200,2,'Panoptikum',42,4,'Spät','Fritz'),
(103,'Life',5.50,205,1,'Blauer Salon',38,2,'Heidenei','Heidi'),
(104,'Moonlight',8.90,210,2,'Panoptikum',42,3,'Schön','Karl'),
(105,'Lion',12.00,260,6,'Gloria 1',80,3,'Schön','Karl'),
(106,'Die andere Seite der Hoffnung',11.00,310,2,'Panoptikum',42,8,'Kurz','Karl'),
(107,'La la Land',9.50,311,3,'Cinema',30,9,'Schwarz','Chrisl'),
(108,'Der junge Marx',6.00,315,8,'Gloria 3',22,6,'Husch','Heike'),
(109,'Wilde Maus',5.50,410,1,'Blauer Salon',38,9,'Schwarz','Chrisl');

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
