use trabalho;

-- Cria o usuário gasparzinho em localhost.
CREATE USER 'gasparzinho'@'localhost' IDENTIFIED BY '54321';
-- Concede ao usuário 'gasparzinho' em 'localhost' todos os privilégios à tabela CONVIDADO
GRANT ALL ON Trabalho.CONVIDADO TO 'gasparzinho'@'localhost';
-- Concede ao usuário 'gasparzinho' em 'localhost' o direito de executar SELECT na tabela EVENTO.
GRANT SELECT ON Trabalho.EVENTO TO 'gasparzinho'@'localhost';
-- Concede ao usuário 'gasparzinho' em 'localhost' o direito de executar SELECT e INSERT na tabela LISTA_CONVIDADOS
GRANT SELECT, INSERT ON Trabalho.LISTA_CONVIDADOS TO 'gasparzinho'@'localhost';
-- Revoga, do usuário 'gasparzinho' em 'localhost', o direito de alterar a coluna 'rg' na tabela CONVIDADOS.
REVOKE UPDATE (rg) ON Trabalho.CONVIDADO FROM 'gasparzinho'@'localhost';
-- Revoga, do usuário 'gasparzinho' em 'localhost', todos os privilégios sobre tabela CONVIDADOS.
REVOKE ALL ON Trabalho.CONVIDADO FROM 'gasparzinho'@'localhost';
-- Exclui o usuário gasparzinho em localhost.
DROP USER 'gasparzinho'@'localhost';

-- Cria o usuário ismilinguido em localhost.
CREATE USER 'ismilinguido'@'localhost' IDENTIFIED BY '12345';
-- Concede ao usuário 'ismilinguido' em 'localhost' todos os privilégios à tabela ESTABELECIMENTO
GRANT ALL ON Trabalho.ESTABELECIMENTO TO 'ismilinguido'@'localhost';
-- Concede ao usuário 'ismilinguido' em 'localhost' o direito de executar SELECT e INSERT na tabela CONTRATO
GRANT SELECT, INSERT ON Trabalho.CONTRATO TO 'ismilinguido'@'localhost';
-- Revoga, do usuário 'ismilinguido' em 'localhost', o direito de alterar a coluna 'rg' na tabela ESTABELECIMENTO.
REVOKE UPDATE (nome) ON Trabalho.ESTABELECIMENTO FROM 'ismilinguido'@'localhost';
-- Revoga, do usuário 'ismilinguido' em 'localhost', todos os privilégios sobre tabela CONTRATO.
REVOKE ALL ON Trabalho.CONTRATO FROM 'ismilinguido'@'localhost';
-- Exclui o usuário ismilinguido em localhost.
DROP USER 'ismilinguido'@'localhost';