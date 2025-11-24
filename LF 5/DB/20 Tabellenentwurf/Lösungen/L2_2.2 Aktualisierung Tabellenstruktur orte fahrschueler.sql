-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema fahrschule
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema fahrschule
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `fahrschule` DEFAULT CHARACTER SET utf8 ;
USE `fahrschule` ;

-- -----------------------------------------------------
-- Table `fahrschule`.`orte`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fahrschule`.`orte` (
  `ortnr` INT(11) NOT NULL AUTO_INCREMENT,
  `plz` VARCHAR(5) NULL DEFAULT NULL,
  `ort` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`ortnr`))
ENGINE = InnoDB
AUTO_INCREMENT = 8
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `fahrschule`.`fahrschueler`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fahrschule`.`fahrschueler` (
  `schuelernr` INT(11) NOT NULL,
  `nachname` VARCHAR(45) NULL DEFAULT NULL,
  `vorname` VARCHAR(45) NULL DEFAULT NULL,
  `telefon` VARCHAR(45) NULL DEFAULT NULL,
  `email` VARCHAR(45) NULL DEFAULT NULL,
  `strasse` VARCHAR(45) NULL DEFAULT NULL,
  `hausnr` VARCHAR(4) NULL DEFAULT NULL,
  `geburtsdatum` DATE NULL DEFAULT NULL,
  `fahrstundenzahl` DOUBLE NULL DEFAULT NULL,
  `ortnr` INT(11) NOT NULL,
  PRIMARY KEY (`schuelernr`),
  INDEX `fk_fahrschueler_orte_idx` (`ortnr` ASC),
  CONSTRAINT `fk_fahrschueler_orte`
    FOREIGN KEY (`ortnr`)
    REFERENCES `fahrschule`.`orte` (`ortnr`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
