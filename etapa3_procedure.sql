use trabalho;

-- Função para selecionar todos os eventos até um determinado código passado como referência.
DELIMITER $$ 
CREATE PROCEDURE Selecionar_Eventos(IN quantidade INT)
BEGIN
    SELECT *
    FROM EVENTO
    LIMIT quantidade;
END $$
DELIMITER ;

CALL Selecionar_Eventos(3);

-- Função para selecionar um orcamento cujo código é passado como parâmetro.
DELIMITER $$ 
CREATE PROCEDURE Selecionar_Orcamentos(in x int)
BEGIN
    SELECT *
    FROM `ORCAMENTO`
    where codigo = x;
END $$
DELIMITER ;

CALL Selecionar_Orcamentos(2);

-- Função para selecionar todos os buffets e seus respectivos números de telefone.
DELIMITER $$ 
CREATE PROCEDURE Selecionar_Buffets()
BEGIN
	SELECT B.nome, B.cnpj, T.numero 
    FROM `BUFFET` B JOIN `BUFFET_TELEFONES` T 
    ON(B.cnpj = T.BUFFET_cnpj) WHERE 1 ORDER BY B.nome ASC;
END $$
DELIMITER ;

CALL Selecionar_Buffets();

-- Lista todos os eventos agruoados pelo mês.
DELIMITER // 
CREATE PROCEDURE Lista_Agenda()
BEGIN
   SELECT CASE EXTRACT(MONTH FROM inicio) 
             WHEN 01 THEN 'JANEIRO'
             WHEN 02 THEN 'FEVEREIRO'
             WHEN 03 THEN 'MARÇO'
             WHEN 04 THEN 'ABRIL'
             WHEN 05 THEN 'MAIO'
             WHEN 06 THEN 'JUNHO'
             WHEN 07 THEN 'JULHO'
             WHEN 08 THEN 'AGOSTO'
             WHEN 09 THEN 'SETEMBRO'
             WHEN 10 THEN 'OUTUBRO'
             WHEN 11 THEN 'NOVEMBRO'
             WHEN 12 THEN 'DEZEMBRO'
          END AS mes, GROUP_CONCAT(descricao) AS eventos
    FROM `EVENTO`
    GROUP BY mes;
END // 
DELIMITER ;

call Lista_Agenda();