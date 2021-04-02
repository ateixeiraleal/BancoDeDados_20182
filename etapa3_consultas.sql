use trabalho;

-- 1. Exibe os dados de todas as tabelas.
select * from `P.FISICA`;
select * from `P.JURIDICA`;
select * from `CONTRATANTE`;
select * from `ENDERECOS`;
select * from `TELEFONES`;
select * from `ORCAMENTO`;
select * from `EVENTO`;
select * from `ANIVERSARIO`;
select * from `CASAMENTO`;
select * from `SHOW`;
select * from `PATROCINADORES`;
select * from `BANDAS`;
select * from `LISTA_CONVIDADOS`;
select * from `CONVIDADO`;
select * from `CONTRATO`;
select * from `PRESTA_SERVICO`;
select * from `BUFFET`;
select * from `BUFFET_TELEFONES`;
select * from `ESTABELECIMENTO`;
select * from `ESTABELECIMENTO_TELEFONES`;

-- 2. Seleciona os endereços da pessoa jurídica de razão social ‘Monstros SA’.
select E.*
from `P.JURIDICA` J natural join `ENDERECOS` E
where J.razao_social = 'Monstros SA';

-- 3. Seleciona o nome e o RG dos convidados para o evento 'Raive do Jacó'.
select nome, rg
from `CONVIDADO`
where rg in (select LC.CONVIDADO_rg
from `EVENTO` E join `LISTA_CONVIDADOS` LC on (E.codigo = LC.EVENTO_codigo)
where E.descricao = 'Arraiá dos Mió' or E.descricao = 'Niver de Arromba');

-- 4. Lista o nome de todas as pessoas que não são convidadas para nenhum evento.
select nome
from `CONVIDADO` C left outer join `LISTA_CONVIDADOS` LC on (C.rg = LC.CONVIDADO_rg)
where EVENTO_codigo is null;

-- 5. Lista o código e a quantidade de convidados de cada evento.
select EVENTO_codigo, count(*) as qdeConvidados
from `LISTA_CONVIDADOS`
group by EVENTO_codigo;

-- 6. Lista os códigos dos eventos cuja a quantidade de convidados é igual ou superior a 15.
select EVENTO_codigo, count(*)
from `LISTA_CONVIDADOS`
group by EVENTO_codigo
having count(*) >= 15;

-- 7. Lista todos os eventos ordenados pelas datas de início.
select *
from `EVENTO`
order by inicio;

-- 8. Lista o nome de todos os convidados para o evento `Festa de Reveillon` ou para o evento `Niver de Arromba`.
select nome, rg
from `CONVIDADO`
where rg in (select LC.CONVIDADO_rg
from `EVENTO` E join `LISTA_CONVIDADOS` LC on (E.codigo = LC.EVENTO_codigo)
where E.descricao = 'Festa de Reveillon')
union
select nome, rg
from `CONVIDADO`
where rg in (select LC.CONVIDADO_rg
from `EVENTO` E join `LISTA_CONVIDADOS` LC
where E.descricao = 'Niver de Arromba' and E.codigo = LC.EVENTO_codigo);

-- 9. Lista o código, a descrição e o tipo dos eventos que forem dos tipos: (A)Aniversário ou (C)Casamento.
select codigo, descricao, tipo
from `EVENTO`
where tipo = 'A' or tipo = 'C';

-- 10. Lista os buffets que ainda não estão incluídos em nenhum contrato de prestação de serviços.
select nome
from `BUFFET`
where cnpj not in (select BUFFET_cnpj
	from `PRESTA_SERVICO`);

-- 11. Lista o código, o id do contrante, o código do evento e o valor dos orçamentos cujo valor está entre 50.000 e 100.000.
select O.codigo, CONTRATANTE_id as contratente, EVENTO_codigo as evento, descricao, valor
from `ORCAMENTO` O join `EVENTO` E on (O.EVENTO_codigo = E.codigo)
where valor between 40000 and 100000;

-- 12. Lista todas as bandas que tocarão no evento cujo número de contrato é 1.
select banda
from `BANDAS`
where SHOW_EVENTO_codigo in (select EVENTO_codigo
	from `ORCAMENTO`
    where EVENTO_codigo in (select ORCAMENTO_codigo
		from `CONTRATO`
		where numero = 1));
        
-- 13. Lista o nome e os endereços de `José S. Tavares`.
select nome, rua, numero, complemento, bairro, cidade, cep
from `P.FISICA` natural join `ENDERECOS`
where nome like 'José S. Tavares';

-- 14. Lista o código do contrato e o código do contratante daqueles contratos que estão faltando assinatura.
select numero, ORCAMENTO_codigo
from `CONTRATO`
where data_assinatura is null;

-- 15. Lista o código e o valor dos eventos cujos orçamentos são de valores mais altos que algum orçamento cujo código do evento é igual 4.
select EVENTO_codigo, valor
from `ORCAMENTO`
where valor > some (select valor
	from `ORCAMENTO`
    where EVENTO_codigo = 4);

-- 16. Lista o código e o valor dos eventos cujos orçamentos são de valores mais altos que todos os orçamento cujos códigos do evento é menor que 7.
select EVENTO_codigo, valor
from `ORCAMENTO`
where valor > all (select valor
	from `ORCAMENTO`
    where EVENTO_codigo < 7);
    
-- 17. Lista o nome das pessoas que não são convidadas para nenhum evento.
select nome
from `CONVIDADO` C
where not exists (select CONVIDADO_rg
	from `LISTA_CONVIDADOS` LC
	where C.rg = LC.CONVIDADO_rg);