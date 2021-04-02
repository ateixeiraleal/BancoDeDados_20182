use trabalho;

select *
from `CONVIDADO`
order by nome;


select nome, rg
from `CONVIDADO`
where rg in (select LC.CONVIDADO_rg
from `EVENTO` E join `LISTA_CONVIDADOS` LC on (E.codigo = LC.EVENTO_codigo)
where E.descricao = 'Festa de Reveillon')
order by nome;

-- Convidado 'Aberta Demais de Oliveira' | Evento 'Festa de Reveillon'.
insert into `LISTA_CONVIDADOS`
VALUES ('MG13582989',1);

select *
from `ESTABELECIMENTO`;

update `CONVIDADO`
set rg = 'MA12357951'
where nome = 'Faraó do Egito Sousa';

update `CONVIDADO`
set rg = 'MG30609011'
where nome = 'Veneza Americana do Recife';


