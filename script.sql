SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

DROP SCHEMA IF EXISTS `projeto` ;
CREATE SCHEMA IF NOT EXISTS `projeto` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
USE `projeto` ;

-- -----------------------------------------------------
-- Table `Usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Usuario` ;

CREATE  TABLE IF NOT EXISTS `Usuario` (
  `idUsuario` INT NOT NULL AUTO_INCREMENT ,
  `nmUsuario` VARCHAR(45) NULL ,
  `password` VARCHAR(45) NULL ,
  `dtCadastro` DATE NULL ,
  `dtDesativacao` DATE NULL ,
  PRIMARY KEY (`idUsuario`) )
ENGINE = InnoDB;

CREATE UNIQUE INDEX `nmUsuario_UNIQUE` ON `Usuario` (`nmUsuario` ASC) ;


-- -----------------------------------------------------
-- Table `TipoDespesa`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `TipoDespesa` ;

CREATE  TABLE IF NOT EXISTS `TipoDespesa` (
  `idTipoDespesa` INT NOT NULL AUTO_INCREMENT ,
  `dsTipoDespesa` VARCHAR(45) NOT NULL ,
  `dtCadastro` DATE NOT NULL ,
  `Usuario_idUsuario` INT NOT NULL ,
  PRIMARY KEY (`idTipoDespesa`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Despesa`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Despesa` ;

CREATE  TABLE IF NOT EXISTS `Despesa` (
  `idDespesa` INT NOT NULL AUTO_INCREMENT ,
  `dtDespesa` DATE NULL ,
  `valorDespesa` DOUBLE NULL ,
  `TipoDespesa_idTipoDespesa` INT NOT NULL ,
  PRIMARY KEY (`idDespesa`, `TipoDespesa_idTipoDespesa`) )
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
