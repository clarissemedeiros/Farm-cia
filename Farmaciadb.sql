-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Farmaciadb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Farmaciadb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Farmaciadb` DEFAULT CHARACTER SET utf8 ;
USE `Farmaciadb` ;

-- -----------------------------------------------------
-- Table `Farmaciadb`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Farmaciadb`.`Cliente` (
  `ID_cliente` BIGINT(20) NOT NULL,
  `telefone` VARCHAR(60) NOT NULL,
  `endereco` VARCHAR(45) NOT NULL,
  `email` VARCHAR(250) NOT NULL,
  `nome_cliente` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`ID_cliente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Farmaciadb`.`Compra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Farmaciadb`.`Compra` (
  `status` VARCHAR(45) NOT NULL,
  `data_compra` DATE NOT NULL,
  `valor_compra` DOUBLE NOT NULL,
  `Cliente_ID_cliente` BIGINT(20) NOT NULL,
  PRIMARY KEY (`status`),
  INDEX `fk_Compra_Cliente1_idx` (`Cliente_ID_cliente` ASC) ,
  CONSTRAINT `fk_Compra_Cliente1`
    FOREIGN KEY (`Cliente_ID_cliente`)
    REFERENCES `Farmaciadb`.`Cliente` (`ID_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Farmaciadb`.`ListaDeEspera`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Farmaciadb`.`ListaDeEspera` (
  `ID_lista` BIGINT(20) NOT NULL,
  `status` VARCHAR(45) NOT NULL,
  `data_entrada` DATE NOT NULL,
  `Cliente_ID_cliente` BIGINT(20) NOT NULL,
  PRIMARY KEY (`ID_lista`),
  INDEX `fk_ListaDeEspera_Cliente1_idx` (`Cliente_ID_cliente` ASC) ,
  CONSTRAINT `fk_ListaDeEspera_Cliente1`
    FOREIGN KEY (`Cliente_ID_cliente`)
    REFERENCES `Farmaciadb`.`Cliente` (`ID_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Farmaciadb`.`Medicamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Farmaciadb`.`Medicamento` (
  `ID_medic` BIGINT NOT NULL,
  `nome_medic` VARCHAR(200) NOT NULL,
  `fabricante` VARCHAR(200) NOT NULL,
  `subst_ativa` VARCHAR(100) NOT NULL,
  `categ_terap` VARCHAR(100) NOT NULL,
  `ListaDeEspera_ID_lista` BIGINT(20) NOT NULL,
  PRIMARY KEY (`ID_medic`),
  INDEX `fk_Medicamento_ListaDeEspera1_idx` (`ListaDeEspera_ID_lista` ASC) ,
  CONSTRAINT `fk_Medicamento_ListaDeEspera1`
    FOREIGN KEY (`ListaDeEspera_ID_lista`)
    REFERENCES `Farmaciadb`.`ListaDeEspera` (`ID_lista`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Farmaciadb`.`Fornecedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Farmaciadb`.`Fornecedor` (
  `ID_fornec` BIGINT(20) NOT NULL,
  `nome_fornec` VARCHAR(200) NOT NULL,
  `endereco` VARCHAR(45) NOT NULL,
  `contato` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`ID_fornec`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Farmaciadb`.`Compra_has_Medicamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Farmaciadb`.`Compra_has_Medicamento` (
  `Compra_status` VARCHAR(45) NOT NULL,
  `Medicamento_ID_medic` BIGINT NOT NULL,
  PRIMARY KEY (`Compra_status`, `Medicamento_ID_medic`),
  INDEX `fk_Compra_has_Medicamento_Medicamento1_idx` (`Medicamento_ID_medic` ASC) ,
  INDEX `fk_Compra_has_Medicamento_Compra1_idx` (`Compra_status` ASC) ,
  CONSTRAINT `fk_Compra_has_Medicamento_Compra1`
    FOREIGN KEY (`Compra_status`)
    REFERENCES `Farmaciadb`.`Compra` (`status`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Compra_has_Medicamento_Medicamento1`
    FOREIGN KEY (`Medicamento_ID_medic`)
    REFERENCES `Farmaciadb`.`Medicamento` (`ID_medic`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Farmaciadb`.`Fornecedor_has_Medicamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Farmaciadb`.`Fornecedor_has_Medicamento` (
  `Fornecedor_ID_fornec` BIGINT(20) NOT NULL,
  `Medicamento_ID_medic` BIGINT NOT NULL,
  PRIMARY KEY (`Fornecedor_ID_fornec`, `Medicamento_ID_medic`),
  INDEX `fk_Fornecedor_has_Medicamento_Medicamento1_idx` (`Medicamento_ID_medic` ASC) ,
  INDEX `fk_Fornecedor_has_Medicamento_Fornecedor1_idx` (`Fornecedor_ID_fornec` ASC) ,
  CONSTRAINT `fk_Fornecedor_has_Medicamento_Fornecedor1`
    FOREIGN KEY (`Fornecedor_ID_fornec`)
    REFERENCES `Farmaciadb`.`Fornecedor` (`ID_fornec`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fornecedor_has_Medicamento_Medicamento1`
    FOREIGN KEY (`Medicamento_ID_medic`)
    REFERENCES `Farmaciadb`.`Medicamento` (`ID_medic`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
