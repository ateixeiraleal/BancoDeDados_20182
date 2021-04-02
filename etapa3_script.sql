-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
create schema Trabalho;
use Trabalho;

-- -----------------------------------------------------
-- Table `CONTRATANTE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CONTRATANTE` (
  `id` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `P.FISICA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `P.FISICA` (
  `cpf` CHAR(14) NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `sexo` CHAR(1) NOT NULL,
  `CONTRATANTE_id` INT NULL,
  PRIMARY KEY (`cpf`),
  INDEX `fk_P.FISICA_CONTRATANTE1_idx` (`CONTRATANTE_id` ASC),
  CONSTRAINT `fk_P.FISICA_CONTRATANTE1`
    FOREIGN KEY (`CONTRATANTE_id`)
    REFERENCES `CONTRATANTE` (`id`)
    ON DELETE SET NULL
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `P.JURIDICA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `P.JURIDICA` (
  `cnpj` CHAR(18) NOT NULL,
  `razao_social` VARCHAR(45) NOT NULL,
  `pessoa_contato` VARCHAR(45) NOT NULL,
  `CONTRATANTE_id` INT NULL,
  PRIMARY KEY (`cnpj`),
  INDEX `fk_P.JURIDICA_CONTRATANTE1_idx` (`CONTRATANTE_id` ASC),
  CONSTRAINT `fk_P.JURIDICA_CONTRATANTE1`
    FOREIGN KEY (`CONTRATANTE_id`)
    REFERENCES `CONTRATANTE` (`id`)
    ON DELETE SET NULL
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `ENDERECOS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ENDERECOS` (
  `codigo` INT NOT NULL AUTO_INCREMENT,
  `rua` VARCHAR(45) NOT NULL,
  `numero` INT(5) NOT NULL,
  `complemento` VARCHAR(20) NULL,
  `bairro` VARCHAR(45) NOT NULL,
  `cidade` VARCHAR(45) NOT NULL,
  `cep` CHAR(9) NOT NULL,
  `CONTRATANTE_id` INT NOT NULL,
  PRIMARY KEY (`codigo`),
  INDEX `fk_ENDERECOS_CONTRATANTE1_idx` (`CONTRATANTE_id` ASC),
  UNIQUE INDEX `chave_secundaria` (`rua` ASC, `numero` ASC, `cep` ASC),
  CONSTRAINT `fk_ENDERECOS_CONTRATANTE1`
    FOREIGN KEY (`CONTRATANTE_id`)
    REFERENCES `CONTRATANTE` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `TELEFONES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `TELEFONES` (
  `numero` CHAR(14) NOT NULL,
  `CONTRATANTE_id` INT NOT NULL,
  PRIMARY KEY (`numero`, `CONTRATANTE_id`),
  INDEX `fk_TELEFONES_CONTRATANTE1_idx` (`CONTRATANTE_id` ASC),
  CONSTRAINT `fk_TELEFONES_CONTRATANTE1`
    FOREIGN KEY (`CONTRATANTE_id`)
    REFERENCES `CONTRATANTE` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `EVENTO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `EVENTO` (
  `codigo` INT NOT NULL AUTO_INCREMENT,
  `inicio` DATETIME NOT NULL,
  `termino` DATETIME NOT NULL,
  `descricao` VARCHAR(1000) NULL,
  `tipo` CHAR(1) NOT NULL,
  PRIMARY KEY (`codigo`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `ORCAMENTO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ORCAMENTO` (
  `codigo` INT NOT NULL AUTO_INCREMENT,
  `data` DATE NOT NULL,
  `data_validade` DATE NOT NULL,
  `valor` FLOAT NOT NULL,
  `CONTRATANTE_id` INT NOT NULL,
  `EVENTO_codigo` INT NOT NULL,
  INDEX `fk_ORCAMENTO_EVENTO1_idx` (`EVENTO_codigo` ASC),
  PRIMARY KEY (`codigo`),
  UNIQUE INDEX `chave_secundaria` (`data` ASC, `CONTRATANTE_id` ASC),
  CONSTRAINT `fk_ORCAMENTO_CONTRATANTE1`
    FOREIGN KEY (`CONTRATANTE_id`)
    REFERENCES `CONTRATANTE` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ORCAMENTO_EVENTO1`
    FOREIGN KEY (`EVENTO_codigo`)
    REFERENCES `EVENTO` (`codigo`)
    ON DELETE RESTRICT
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `ANIVERSARIO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ANIVERSARIO` (
  `aniversariante` VARCHAR(45) NOT NULL,
  `data_nasc` DATE NOT NULL,
  `tema` VARCHAR(45) NOT NULL,
  `EVENTO_codigo` INT NOT NULL,
  PRIMARY KEY (`EVENTO_codigo`),
  CONSTRAINT `fk_ANIVERSARIO_EVENTO1`
    FOREIGN KEY (`EVENTO_codigo`)
    REFERENCES `EVENTO` (`codigo`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `CASAMENTO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CASAMENTO` (
  `igreja_cerimonia` VARCHAR(45) NOT NULL,
  `EVENTO_codigo` INT NOT NULL,
  PRIMARY KEY (`EVENTO_codigo`),
  CONSTRAINT `fk_CASAMENTO_EVENTO1`
    FOREIGN KEY (`EVENTO_codigo`)
    REFERENCES `EVENTO` (`codigo`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `SHOW`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SHOW` (
  `estilo` VARCHAR(45) NOT NULL,
  `EVENTO_codigo` INT NOT NULL,
  PRIMARY KEY (`EVENTO_codigo`),
  CONSTRAINT `fk_SHOW_EVENTO1`
    FOREIGN KEY (`EVENTO_codigo`)
    REFERENCES `EVENTO` (`codigo`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `PATROCINADORES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PATROCINADORES` (
  `patrocinador` VARCHAR(45) NOT NULL,
  `SHOW_EVENTO_codigo` INT(4) NOT NULL,
  PRIMARY KEY (`SHOW_EVENTO_codigo`, `patrocinador`),
  CONSTRAINT `fk_PARCEIROS_SHOW1`
    FOREIGN KEY (`SHOW_EVENTO_codigo`)
    REFERENCES `SHOW` (`EVENTO_codigo`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `BANDAS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BANDAS` (
  `banda` VARCHAR(45) NOT NULL,
  `SHOW_EVENTO_codigo` INT NOT NULL,
  PRIMARY KEY (`SHOW_EVENTO_codigo`, `banda`),
  CONSTRAINT `fk_BANDAS_SHOW1`
    FOREIGN KEY (`SHOW_EVENTO_codigo`)
    REFERENCES `SHOW` (`EVENTO_codigo`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `CONVIDADO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CONVIDADO` (
  `rg` VARCHAR(10) NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`rg`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `LISTA_CONVIDADOS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LISTA_CONVIDADOS` (
  `CONVIDADO_rg` VARCHAR(10) NOT NULL,
  `EVENTO_codigo` INT NOT NULL,
  PRIMARY KEY (`CONVIDADO_rg`, `EVENTO_codigo`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `BUFFET`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BUFFET` (
  `cnpj` CHAR(18) NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`cnpj`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `BUFFET_TELEFONES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BUFFET_TELEFONES` (
  `numero` CHAR(14) NOT NULL,
  `BUFFET_cnpj` VARCHAR(18) NOT NULL,
  PRIMARY KEY (`numero`),
  INDEX `fk_TELEFONES_BUFFET1_idx` (`BUFFET_cnpj` ASC),
  CONSTRAINT `fk_TELEFONES_BUFFET1`
    FOREIGN KEY (`BUFFET_cnpj`)
    REFERENCES `BUFFET` (`cnpj`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `ESTABELECIMENTO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ESTABELECIMENTO` (
  `codigo` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `rua` VARCHAR(45) NOT NULL,
  `numero` INT NOT NULL,
  `complemento` VARCHAR(20) NULL,
  `bairro` VARCHAR(45) NOT NULL,
  `cidade` VARCHAR(45) NOT NULL,
  `cep` CHAR(9) NOT NULL,
  `capacidade_pessoas` INT NOT NULL,
  `capacidade_estacionamento` INT NOT NULL,
  `pessoa_contato` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`codigo`),
  UNIQUE INDEX `nome_UNIQUE` (`nome` ASC))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `ESTABELECIMENTO_TELEFONES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ESTABELECIMENTO_TELEFONES` (
  `numero` CHAR(14) NOT NULL,
  `ESTABELECIMENTO_codigo` INT NOT NULL,
  PRIMARY KEY (`numero`),
  INDEX `fk_ESTABELECIMENTO_TELEFONES_ESTABELECIMENTO1_idx` (`ESTABELECIMENTO_codigo` ASC),
  CONSTRAINT `fk_ESTABELECIMENTO_TELEFONES_ESTABELECIMENTO1`
    FOREIGN KEY (`ESTABELECIMENTO_codigo`)
    REFERENCES `ESTABELECIMENTO` (`codigo`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `CONTRATO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CONTRATO` (
  `numero` INT NOT NULL AUTO_INCREMENT,
  `data_assinatura` DATE NULL,
  `ORCAMENTO_codigo` INT NOT NULL,
  `ESTABELECIMENTO_codigo` INT NOT NULL,
  PRIMARY KEY (`numero`),
  INDEX `fk_CONTRATO_ORCAMENTO1_idx` (`ORCAMENTO_codigo` ASC),
  INDEX `fk_CONTRATO_ESTABELECIMENTO1_idx` (`ESTABELECIMENTO_codigo` ASC),
  CONSTRAINT `fk_CONTRATO_ORCAMENTO1`
    FOREIGN KEY (`ORCAMENTO_codigo`)
    REFERENCES `ORCAMENTO` (`codigo`)
    ON DELETE RESTRICT
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_CONTRATO_ESTABELECIMENTO1`
    FOREIGN KEY (`ESTABELECIMENTO_codigo`)
    REFERENCES `ESTABELECIMENTO` (`codigo`)
    ON DELETE RESTRICT
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `PRESTA_SERVICO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PRESTA_SERVICO` (
  `CONTRATO_numero` INT NOT NULL,
  `BUFFET_cnpj` CHAR(18) NOT NULL,
  PRIMARY KEY (`BUFFET_cnpj`, `CONTRATO_numero`),
  INDEX `fk_CONTEM_BUFFET1_idx` (`BUFFET_cnpj` ASC),
  CONSTRAINT `fk_CONTEM_CONTRATO1`
    FOREIGN KEY (`CONTRATO_numero`)
    REFERENCES `CONTRATO` (`numero`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_CONTEM_BUFFET1`
    FOREIGN KEY (`BUFFET_cnpj`)
    REFERENCES `BUFFET` (`cnpj`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Alterações e Exclusões
-- -----------------------------------------------------

-- Adiciona uma cláusa de restrição dos tipos dos eventos, podendos estes serem: A-Aniversário; S-Show; C-Casamento; O-Outros
ALTER TABLE `EVENTO`
ADD CONSTRAINT ck_tipo CHECK (tipo='A' or tipo='S' or tipo ='C' or tipo ='O');

-- Adiciona uma cláusa de restrição dos tipos de sexo, podendos estes serem: M-Masculino ou F-Feminino 
ALTER TABLE `P.FISICA`
ADD CONSTRAINT ck_sexo CHECK (sexo='M' or sexo='F');

-- Altera o tipo dos valores a serem adicionados às tupas como atributo de valor. Anteriormente o mesmo estava como FLOAT.
ALTER TABLE `ORCAMENTO`
DROP `valor`,
ADD `valor` DOUBLE (9,2) NOT NULL;

-- Adiciona na tabela LISTA_CONVIDADOS as referencias de chave estrangeira e suas restrições de integridade.
ALTER TABLE `LISTA_CONVIDADOS` 
ADD	INDEX `fk_CONVIDADO_has_EVENTO_EVENTO1_idx` (`EVENTO_codigo` ASC),
ADD	INDEX `fk_CONVIDADO_has_EVENTO_CONVIDADO1_idx` (`CONVIDADO_rg` ASC),
ADD CONSTRAINT `fk_CONVIDADO_has_EVENTO_CONVIDADO1`
    FOREIGN KEY (`CONVIDADO_rg`)
    REFERENCES `CONVIDADO` (`rg`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_CONVIDADO_has_EVENTO_EVENTO1`
    FOREIGN KEY (`EVENTO_codigo`)
    REFERENCES `EVENTO` (`codigo`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
    
-- Deleta a tabela BUFFET_TELEFONES. A cláusula RESTRICT impede que a mesma seja deletada caso haja alguma restrição ou visão para a tabela em questão.
DROP TABLE `BUFFET_TELEFONES` RESTRICT;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;