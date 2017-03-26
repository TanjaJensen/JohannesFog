-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema FOG
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `FOG` ;

-- -----------------------------------------------------
-- Schema FOG
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `FOG` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema new_schema1
-- -----------------------------------------------------
USE `FOG` ;

-- -----------------------------------------------------
-- Table `FOG`.`employee`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `FOG`.`employee` ;

CREATE TABLE IF NOT EXISTS `FOG`.`employee` (
  `id` INT(45) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `tlf_number` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `id_UNIQUE` ON `FOG`.`employee` (`id` ASC);


-- -----------------------------------------------------
-- Table `FOG`.`wood`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `FOG`.`wood` ;

CREATE TABLE IF NOT EXISTS `FOG`.`wood` (
  `id` INT(45) NOT NULL,
  `width` VARCHAR(45) NOT NULL,
  `lenght` VARCHAR(45) NOT NULL,
  `quantity` INT NOT NULL,
  PRIMARY KEY (`id`, `width`, `lenght`, `quantity`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `id_wood_UNIQUE` ON `FOG`.`wood` (`id` ASC);


-- -----------------------------------------------------
-- Table `FOG`.`roof`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `FOG`.`roof` ;

CREATE TABLE IF NOT EXISTS `FOG`.`roof` (
  `id` INT(50) NOT NULL,
  `type` VARCHAR(45) NOT NULL,
  `color` VARCHAR(45) NOT NULL,
  `quantity` INT NOT NULL,
  `roof_pitch` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`, `color`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `type_UNIQUE` ON `FOG`.`roof` (`id` ASC);


-- -----------------------------------------------------
-- Table `FOG`.`screw`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `FOG`.`screw` ;

CREATE TABLE IF NOT EXISTS `FOG`.`screw` (
  `id` INT(45) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `size` VARCHAR(100) NOT NULL,
  `quantity` INT NOT NULL,
  `screwcol` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `id_UNIQUE` ON `FOG`.`screw` (`id` ASC);


-- -----------------------------------------------------
-- Table `FOG`.`bracket`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `FOG`.`bracket` ;

CREATE TABLE IF NOT EXISTS `FOG`.`bracket` (
  `id` INT(45) NOT NULL,
  `navn` VARCHAR(45) NULL,
  `size` VARCHAR(100) NULL,
  `quantity` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `FOG`.`upright`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `FOG`.`upright` ;

CREATE TABLE IF NOT EXISTS `FOG`.`upright` (
  `id` INT(50) NOT NULL,
  `thickness` VARCHAR(100) NOT NULL,
  `width` VARCHAR(45) NOT NULL,
  `lenght` VARCHAR(45) NOT NULL,
  `quantity` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `id_UNIQUE` ON `FOG`.`upright` (`id` ASC);


-- -----------------------------------------------------
-- Table `FOG`.`customer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `FOG`.`customer` ;

CREATE TABLE IF NOT EXISTS `FOG`.`customer` (
  `id` INT(50) NOT NULL,
  `name` VARCHAR(45) NULL,
  `address` VARCHAR(100) NOT NULL,
  `tlf_number` VARCHAR(45) NOT NULL,
  `mail` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `FOG`.`ordre`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `FOG`.`ordre` ;

CREATE TABLE IF NOT EXISTS `FOG`.`ordre` (
  `id_employee` INT(45) NOT NULL,
  `id_wood` INT(45) NOT NULL,
  `id_roof` INT(50) NOT NULL,
  `id_screw` INT(45) NOT NULL,
  `id_bracket` INT(45) NOT NULL,
  `id_upright` INT(50) NOT NULL,
  `id_custommer` INT(50) NOT NULL)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
