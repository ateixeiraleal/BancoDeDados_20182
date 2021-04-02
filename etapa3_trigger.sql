use trabalho;

-- Cria a tabela que armazenará os disparos do trigger `after_Orcamento_update`.
CREATE TABLE IF NOT EXISTS `AUDITORIA_ORCAMENTO` (
idAuditoria INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
codigoOrc INT NOT NULL,
validadeAntiga DATE NULL,
validadeNova DATE NULL,
valorAntigo FLOAT(9,2) NULL,
valorNovo FLOAT(9,2) NULL,
user VARCHAR(20) NOT NULL,
dataHora DATE NOT NULL
);

-- Cria um trigger que registra mudanças na tabela `ORCAMENTO`.
DELIMITER $$
CREATE TRIGGER after_Orcamento_update
AFTER UPDATE ON `ORCAMENTO` 
FOR EACH ROW
BEGIN
  IF OLD.data_validade != NEW.data_validade THEN
    INSERT INTO `AUDITORIA_ORCAMENTO` (codigoOrc, validadeAntiga, validadeNova, user, dataHora)
    VALUE (OLD.codigo, OLD.data_validade, NEW.data_validade, USER(), NOW());
  ELSEIF OLD.valor != NEW.valor THEN
    INSERT INTO `AUDITORIA_ORCAMENTO` (codigoOrc, valorAntigo, valorNovo, user, dataHora)
    VALUE (OLD.codigo, OLD.valor, NEW.valor, USER(), NOW());
  END IF;
END $$
DELIMITER ;

DROP TRIGGER after_Orcamento_update;

select *
from `ORCAMENTO` 
where codigo = 8;

update `ORCAMENTO` set valor = valor - 1000 where codigo = 8;
update `ORCAMENTO` set data_validade = '2019/01/15' where codigo = 8;

select *
from `AUDITORIA_ORCAMENTO`;


-- Trigger que controla o numero de telefone que cada contratante pode ter. Neste exemplo, vamos definir o número máximo = 3 telefones.
DROP TRIGGER before_insert_Telefones;

DELIMITER $$
CREATE TRIGGER before_insert_Telefones
BEFORE INSERT ON `TELEFONES` FOR EACH ROW
BEGIN
   DECLARE vNumTel INT;

   SELECT COUNT(CONTRATANTE_id)
   FROM `TELEFONES`
   WHERE CONTRATANTE_id = new.CONTRATANTE_id INTO vNumTel;	
   
   IF (vNumTel = 3) THEN
      SIGNAL SQLSTATE '45000' SET message_text = 'Contratante excede o número máximo de dtelefones.';
   END IF;
END; $$
DELIMITER ;

insert into `TELEFONES`
values('(79) 3512-2049',3);
insert into `TELEFONES`
values('(79) 3512-1527',3);
insert into `TELEFONES`
values('(79)99945-1248',3);

-- Trigger que verifica o caracter a ser informado no atributo Sexo da tabela Funcionario. São permitidos os valores M ou F.
DROP TRIGGER before_PessoaFisica_insert;

DELIMITER $$
CREATE TRIGGER before_PessoaFisica_insert
BEFORE INSERT ON `P.FISICA` FOR EACH ROW
BEGIN
   IF (new.sexo NOT IN ('M','F')) THEN
      SIGNAL SQLSTATE '45000' SET message_text = 'Caracter invalido para o atributo Sexo, informe M ou F..';
   END IF;
END; $$
DELIMITER ;

insert into `P.FISICA`
values('323.326.777-04','Maria José','k',12);