use trabalho;

-- cria uma visão (view) para manter os nomes dos convidadoes e os códigos dos eventos que eles são convidados.
create view LISTA1
as select nome, rg, E.codigo
from `CONVIDADO` C natural join `EVENTO` E;

-- Exibe a lista de convidados em ordem alfabética do evento de código número 1. 
select codigo as evento, nome
from LISTA1
where codigo = 1
order by nome;

-- cria uma visão (view) para manter os números de identificação, os nomes e os números de telefone das pessoas físicas.
create view CONTATO_PF
as select PF.CONTRATANTE_id as id, nome, numero
from `P.FISICA` PF, `TELEFONES` T
where PF.CONTRATANTE_id = T.CONTRATANTE_id;

-- Lista os números de identificação, os nomes e os números de telefone das pessoas físicas.
select id, nome, numero
from CONTATO_PF
order by nome;

-- cria uma visão (view) para manter os números de identificação, a razão social e os números de telefone das pessoas jurídicas.
create view CONTATO_PJ
as select PJ.CONTRATANTE_id as id, razao_social, numero
from `P.JURIDICA` PJ natural join `TELEFONES` T;

-- Lista os números de identificação, os nomes e os números de telefone das pessoas jurídicas.
select id, razao_social, numero
from CONTATO_PJ
order by razao_social;

-- cria uma visão (view) para manter o CNPJ, o nome e os números de telefone dos buffets.
create view CONTATO_BUFFET
as select B.cnpj, B.nome, T.numero
from `BUFFET` B join `BUFFET_TELEFONES` T
where B.cnpj = T.BUFFET_cnpj;

-- Lista os números de identificação, os nomes e os números de telefone das pessoas físicas.
select cnpj, nome, numero
from CONTATO_BUFFET
order by nome;