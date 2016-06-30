-- MySQL Script generated by MySQL Workbench
-- 06/30/16 06:20:02
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema BDLA12
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema BDLA12
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `BDLA12` DEFAULT CHARACTER SET utf8 ;
USE `BDLA12` ;

-- -----------------------------------------------------
-- Table `BDLA12`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BDLA12`.`Usuario` (
  `idUsuario` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(50) NOT NULL,
  `password` NVARCHAR(60) NOT NULL,
  `nombres` NVARCHAR(40) NOT NULL,
  `apellidos` NVARCHAR(50) NOT NULL,
  `celular` CHAR(9) NULL,
  `DNI` CHAR(8) NOT NULL,
  `estado` CHAR(4) NOT NULL,
  PRIMARY KEY (`idUsuario`),
  UNIQUE INDEX `DNI_UNIQUE` (`DNI` ASC))
ENGINE = InnoDB
COMMENT = '	';


-- -----------------------------------------------------
-- Table `BDLA12`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BDLA12`.`Cliente` (
  `idCliente` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `estado` CHAR(4) NOT NULL,
  `Cliente_idUsuario` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idCliente`),
  INDEX `idUsuario_idx` (`Cliente_idUsuario` ASC),
  CONSTRAINT `Cliente_idUsuario`
    FOREIGN KEY (`Cliente_idUsuario`)
    REFERENCES `BDLA12`.`Usuario` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BDLA12`.`Departamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BDLA12`.`Departamento` (
  `idDepartamento` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` NVARCHAR(45) NOT NULL,
  `estado` CHAR(4) NOT NULL,
  PRIMARY KEY (`idDepartamento`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BDLA12`.`Provincia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BDLA12`.`Provincia` (
  `idProvincia` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` NVARCHAR(45) NOT NULL,
  `estado` CHAR(4) NOT NULL,
  `Provincia_idDepartamento` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idProvincia`),
  INDEX `idDepartamento_idx` (`Provincia_idDepartamento` ASC),
  CONSTRAINT `Provincia_idDepartamento`
    FOREIGN KEY (`Provincia_idDepartamento`)
    REFERENCES `BDLA12`.`Departamento` (`idDepartamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BDLA12`.`Distrito`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BDLA12`.`Distrito` (
  `idDistrito` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` NVARCHAR(45) NOT NULL,
  `estado` CHAR(4) NOT NULL,
  `Distrito_idProvincia` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idDistrito`),
  INDEX `idProvincia_idx` (`Distrito_idProvincia` ASC),
  CONSTRAINT `Distrito_idProvincia`
    FOREIGN KEY (`Distrito_idProvincia`)
    REFERENCES `BDLA12`.`Provincia` (`idProvincia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BDLA12`.`Sede`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BDLA12`.`Sede` (
  `idSede` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` NVARCHAR(50) NOT NULL,
  `direccion` VARCHAR(60) NOT NULL,
  `estado` CHAR(4) NOT NULL,
  `referencia` TEXT(200) NULL,
  `idDistrito` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idSede`),
  INDEX `idDistrito_idx` (`idDistrito` ASC),
  CONSTRAINT `idDistrito`
    FOREIGN KEY (`idDistrito`)
    REFERENCES `BDLA12`.`Distrito` (`idDistrito`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BDLA12`.`Cancha`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BDLA12`.`Cancha` (
  `idCancha` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `numero` INT NOT NULL,
  `estado` CHAR(4) NOT NULL,
  `Cancha_idSede` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idCancha`),
  INDEX `idSede_idx` (`Cancha_idSede` ASC),
  CONSTRAINT `Cancha_idSede`
    FOREIGN KEY (`Cancha_idSede`)
    REFERENCES `BDLA12`.`Sede` (`idSede`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BDLA12`.`Reserva`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BDLA12`.`Reserva` (
  `idReserva` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `fechaCreacion` DATETIME NOT NULL,
  `fechaReserva` DATETIME NOT NULL,
  `estado` CHAR(4) NOT NULL,
  `total` DECIMAL(10,2) NOT NULL,
  `Reserva_idCliente` INT UNSIGNED NOT NULL,
  `Reserva_idCancha` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idReserva`),
  INDEX `idCliente_idx` (`Reserva_idCliente` ASC),
  INDEX `idCancha_idx` (`Reserva_idCancha` ASC),
  CONSTRAINT `Reserva_idCliente`
    FOREIGN KEY (`Reserva_idCliente`)
    REFERENCES `BDLA12`.`Cliente` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Reserva_idCancha`
    FOREIGN KEY (`Reserva_idCancha`)
    REFERENCES `BDLA12`.`Cancha` (`idCancha`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BDLA12`.`Operador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BDLA12`.`Operador` (
  `idOperador` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `estado` CHAR(4) NOT NULL,
  `Operador_idUsuario` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idOperador`),
  INDEX `idUsuario_idx` (`Operador_idUsuario` ASC),
  CONSTRAINT `Operador_idUsuario`
    FOREIGN KEY (`Operador_idUsuario`)
    REFERENCES `BDLA12`.`Usuario` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BDLA12`.`Dirige`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BDLA12`.`Dirige` (
  `idDirige` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `inicio` DATE NOT NULL,
  `fin` DATE NULL,
  `Dirige_idSede` INT UNSIGNED NOT NULL,
  `Dirige_idOperador` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idDirige`),
  INDEX `idSede_idx` (`Dirige_idSede` ASC),
  INDEX `idOperador_idx` (`Dirige_idOperador` ASC),
  CONSTRAINT `Dirige_idSede`
    FOREIGN KEY (`Dirige_idSede`)
    REFERENCES `BDLA12`.`Sede` (`idSede`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Dirige_idOperador`
    FOREIGN KEY (`Dirige_idOperador`)
    REFERENCES `BDLA12`.`Operador` (`idOperador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BDLA12`.`HistorialCancha`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BDLA12`.`HistorialCancha` (
  `idHistorialCancha` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `inicio` DATETIME NOT NULL,
  `fin` DATETIME NOT NULL,
  `estado` CHAR(4) NOT NULL,
  `HC_idCancha` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idHistorialCancha`),
  INDEX `idCancha_idx` (`HC_idCancha` ASC),
  CONSTRAINT `HC_idCancha`
    FOREIGN KEY (`HC_idCancha`)
    REFERENCES `BDLA12`.`Cancha` (`idCancha`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BDLA12`.`Gerente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BDLA12`.`Gerente` (
  `idGerente` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `estado` CHAR(4) NOT NULL,
  `Gerente_idUsuario` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idGerente`),
  INDEX `idUsuario_idx` (`Gerente_idUsuario` ASC),
  CONSTRAINT `Gerente_idUsuario`
    FOREIGN KEY (`Gerente_idUsuario`)
    REFERENCES `BDLA12`.`Usuario` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BDLA12`.`HistorialGerente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BDLA12`.`HistorialGerente` (
  `idHistorialGerente` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `inicio` DATE NOT NULL,
  `fin` DATE NULL,
  `HG_idGerente` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idHistorialGerente`),
  INDEX `idGerente_idx` (`HG_idGerente` ASC),
  CONSTRAINT `HG_idGerente`
    FOREIGN KEY (`HG_idGerente`)
    REFERENCES `BDLA12`.`Gerente` (`idGerente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BDLA12`.`DetalleReserva`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BDLA12`.`DetalleReserva` (
  `idDetalleReserva` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `horaInicio` TIME NOT NULL,
  `horaFin` TIME NOT NULL,
  `subTotal` DECIMAL(10,2) NOT NULL,
  `DR_idReserva` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idDetalleReserva`),
  INDEX `idReserva_idx` (`DR_idReserva` ASC),
  CONSTRAINT `DR_idReserva`
    FOREIGN KEY (`DR_idReserva`)
    REFERENCES `BDLA12`.`Reserva` (`idReserva`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BDLA12`.`PrecioHora`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BDLA12`.`PrecioHora` (
  `idPrecioHora` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `diaSemana` CHAR(1) NOT NULL,
  `horaInicio` TIME NOT NULL,
  `horaFin` TIME NOT NULL,
  `precio` DECIMAL(10,2) NOT NULL,
  `estado` CHAR(4) NOT NULL,
  PRIMARY KEY (`idPrecioHora`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BDLA12`.`HistorialSede`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BDLA12`.`HistorialSede` (
  `idHistorialSede` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `inicio` DATETIME NOT NULL,
  `fin` DATETIME NOT NULL,
  `estado` CHAR(4) NOT NULL,
  `HS_idSede` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idHistorialSede`),
  INDEX `idSede_idx` (`HS_idSede` ASC),
  CONSTRAINT `HS_idSede`
    FOREIGN KEY (`HS_idSede`)
    REFERENCES `BDLA12`.`Sede` (`idSede`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BDLA12`.`Parametro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BDLA12`.`Parametro` (
  `idParametro` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `sep1` CHAR(2) NOT NULL,
  `sep2` CHAR(2) NOT NULL,
  `descripcion` VARCHAR(45) NOT NULL,
  `valor` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idParametro`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `BDLA12`.`Usuario`
-- -----------------------------------------------------
START TRANSACTION;
USE `BDLA12`;
INSERT INTO `BDLA12`.`Usuario` (`idUsuario`, `email`, `password`, `nombres`, `apellidos`, `celular`, `DNI`, `estado`) VALUES (DEFAULT, 'admin@admin.com', 'admin1234', 'Administrador', 'Administrador', NULL, '75763466', '0001');

COMMIT;


-- -----------------------------------------------------
-- Data for table `BDLA12`.`Gerente`
-- -----------------------------------------------------
START TRANSACTION;
USE `BDLA12`;
INSERT INTO `BDLA12`.`Gerente` (`idGerente`, `estado`, `Gerente_idUsuario`) VALUES (DEFAULT, '0001', 1);

COMMIT;

