-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema jfog
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema jfog
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `jfog` DEFAULT CHARACTER SET utf8 ;
USE `jfog` ;

-- -----------------------------------------------------
-- Table `jfog`.`employee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jfog`.`employee` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `ename` VARCHAR(45) NOT NULL,
  `ephone` INT(11) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jfog`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jfog`.`product` (
  `id` INT(11) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `vare_nr.` VARCHAR(45) NOT NULL,
  `price` DOUBLE NOT NULL,
  `` VARCHAR(45) NULL DEFAULT 'default',
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `jfog`.`order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jfog`.`order` (
  `id` INT(11) NOT NULL,
  `product_id` INT(11) NOT NULL,
  `checkout_time` DATETIME(6) NOT NULL,
  `shipping_price` DOUBLE NOT NULL,
  `delivery_time` TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(),
  `pid` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `pid_idx` (`pid` ASC),
  CONSTRAINT `pid`
    FOREIGN KEY (`pid`)
    REFERENCES `jfog`.`product` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `jfog`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jfog`.`customer` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `fname` VARCHAR(45) NOT NULL,
  `lname` VARCHAR(45) NOT NULL,
  `address` VARCHAR(45) NOT NULL,
  `cphone` INT(11) NOT NULL,
  `mail` VARCHAR(45) NOT NULL,
  `authorization` VARCHAR(45) NOT NULL,
  `eid` INT(11) NULL,
  `oid` INT(11) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC),
  INDEX `eid_idx` (`eid` ASC),
  INDEX `oid_idx` (`oid` ASC),
  CONSTRAINT `eid`
    FOREIGN KEY (`eid`)
    REFERENCES `jfog`.`employee` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `oid`
    FOREIGN KEY (`oid`)
    REFERENCES `jfog`.`order` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 13
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `jfog`.`product_item`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jfog`.`product_item` (
  `id` INT(11) NOT NULL,
  `wood_quantity` INT(11) NOT NULL,
  `screw_quantity` INT(11) NOT NULL,
  `upright_lenght` VARCHAR(45) NOT NULL,
  `roof_quantity` INT(11) NOT NULL,
  `roof_pitch` VARCHAR(45) NOT NULL,
  `bracket` INT(11) NOT NULL,
  INDEX `id_idx` (`id` ASC),
  CONSTRAINT `id`
    FOREIGN KEY (`id`)
    REFERENCES `jfog`.`product` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
