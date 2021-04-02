use trabalho;

-- -----------------------------------------------------
-- `UPDATE`
-- -----------------------------------------------------

-- Altera na tabela `EVENTO` a descrição do evento de código 6.
update `EVENTO` set descricao = 'Baile de Debutante' where codigo = 6;

-- Altera na tabela `ANIVERSAIO` a data de nascimento do aniversariante do evento de código 6.
update `ANIVERSARIO` set data_nasc = '2003/12/19' where EVENTO_codigo = 6;

-- Altera na tabela `ANIVERSAIO` o tema do evento de código 6.
update `ANIVERSARIO` set tema = 'Festa tradicional' where EVENTO_codigo = 6;

-- Acrescenta 1% no valor do `ORCAMENTO` de código 8
update `ORCAMENTO` set valor = valor + (valor * 0.01) where codigo = 8;
update `ORCAMENTO` set EVENTO_codigo = 6 where codigo = 8;

update `LISTA_CONVIDADOS`
set EVENTO_codigo = 3
where EVENTO_codigo in (select codigo
	from `EVENTO`
	where descricao = 'Niver de Arromba');

-- -----------------------------------------------------
-- `DELETE`
-- -----------------------------------------------------

-- Exclui da lista de convidados a pessoa cujo RG é 'RR85321753'.
delete from `LISTA_CONVIDADOS` where CONVIDADO_rg = 'RR85321753';

-- Exclui da lista de convidados a pessoa cujo RG é 'PR30125521'.
delete from `LISTA_CONVIDADOS` where CONVIDADO_rg = 'PR30125521';

-- Exclui da lista de telefones de buffet o número '(35)98401-2413'.
delete from `BUFFET_TELEFONES` where numero = '(35)98401-2413';

-- Exclui o convidado cujo RG é 'SP96325874'.
delete from `CONVIDADO` where rg = 'SP96325874';

-- Exclui todas as pessoas físicas cujo id de contratante é igual a null.
delete from `P.FISICA` where CONTRATANTE_id is null;

-- Exclui os convidados do evento cuja descrição é 'Renovação dos votos de José e Maria'.
delete from `LISTA_CONVIDADOS`
where EVENTO_codigo in (select codigo
	from `EVENTO`
	where descricao = 'Renovação dos votos de José e Maria');