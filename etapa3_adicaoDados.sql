use trabalho;

-- -----------------------------------------------------
-- `CONTRATANTE`
-- -----------------------------------------------------
insert into CONTRATANTE
values();
insert into CONTRATANTE
values();
insert into CONTRATANTE
values();
insert into CONTRATANTE
values();
insert into CONTRATANTE
values();
insert into CONTRATANTE
values();
insert into CONTRATANTE
values();
insert into CONTRATANTE
values();
insert into CONTRATANTE
values();
insert into CONTRATANTE
values();
insert into CONTRATANTE
values();
insert into CONTRATANTE
values();


-- -----------------------------------------------------
-- `P.FISICA`
-- -----------------------------------------------------
insert into `P.FISICA`
values('856.588.867-32','João B. Silva','M',1);
insert into `P.FISICA`
values('401.148.026-61','Frank T. Santos','M',5);
insert into `P.FISICA`
values('624.326.654-06','Alice N. Pereira','F',null);
insert into `P.FISICA`
values('585.338.221-70','Luciana S. Santos','F',7);
insert into `P.FISICA`
values('965.531.942-38','Júnia B. Mendes','F',null);
insert into `P.FISICA`
values('707.557.657-70','Maria P. Ramos','F',9);
insert into `P.FISICA`
values('237.922.420-01','José S. Tavares','M',10);

-- -----------------------------------------------------
-- `P.JURIDICA`
-- -----------------------------------------------------
insert into `P.JURIDICA`
values('06.990.590/0001-23','Google Brasil Internet Ltda','José das Couves',2);
insert into `P.JURIDICA`
values('38.343.438/0001-45','Monstros SA','Felisbino da Alegria',3);
insert into `P.JURIDICA`
values('59.158.148/0001-00','Banco do Brasil S.A.','Ricardo Rico',4);
insert into `P.JURIDICA`
values('59.317.114/0001-02','Prefeitura Municipal de Lavras','Dilma Roussef',6);
insert into `P.JURIDICA`
values('74.161.330/0001-03','Complexo Penitenciário de Alcatraz','Luiz Inácio Lula da Silva',11);
insert into `P.JURIDICA`
values('15.256.344/0001-33','Governo Federal','Jair Messias Bolsonaro',8);

-- -----------------------------------------------------
-- `ENDERECOS`
-- -----------------------------------------------------
insert into `ENDERECOS`(`rua`,`numero`,`complemento`,`bairro`,`cidade`,`cep`,`CONTRATANTE_id`)
values('Av. Pegadinhas Engraçadas',1487,'Andar 58 Sala 13','Cineastras Famosos','Berveley Rills','89421-657',3);
insert into `ENDERECOS`(`rua`,`numero`,`complemento`,`bairro`,`cidade`,`cep`,`CONTRATANTE_id`)
values('Rua da Abelhas',542,null,'Centenário','São Paulo','04538-133',1);
insert into `ENDERECOS`(`rua`,`numero`,`complemento`,`bairro`,`cidade`,`cep`,`CONTRATANTE_id`)
values('Av. Atlântica',1272,'Apto 702','Vila Rica','Rio de Janeiro','17013-666',1);
insert into `ENDERECOS`(`rua`,`numero`,`complemento`,`bairro`,`cidade`,`cep`,`CONTRATANTE_id`)
values('Av. Monsenhor Eustáquio',213,null,'Cascalho','Santa Rita do Sapucaí','35245-003',5);
insert into `ENDERECOS`(`rua`,`numero`,`complemento`,`bairro`,`cidade`,`cep`,`CONTRATANTE_id`)
values('Rua dos Bobos',368,'Andar 23','Centro','Pratápolis','23456-321',7);
insert into `ENDERECOS`(`rua`,`numero`,`complemento`,`bairro`,`cidade`,`cep`,`CONTRATANTE_id`)
values('Rua da Amargura',4520,null,'Pindorama','Belo Horizonte','45210-852',9);
insert into `ENDERECOS`(`rua`,`numero`,`complemento`,`bairro`,`cidade`,`cep`,`CONTRATANTE_id`)
values('Praça Pingo de Ouro',89,'Apto 904','Centro','Contagem','13245-652',10);
insert into `ENDERECOS`(`rua`,`numero`,`complemento`,`bairro`,`cidade`,`cep`,`CONTRATANTE_id`)
values('Alameda João XXIII',691,'Apto 721','Jardim Floresta','Blumenau','83254-627',10);
insert into `ENDERECOS`(`rua`,`numero`,`complemento`,`bairro`,`cidade`,`cep`,`CONTRATANTE_id`)
values('Av Brigadeiro Faria Lima',3477,'Andar 17 Torre Sul','Itaim Bibi','São Paulo','04538-133',2);
insert into `ENDERECOS`(`rua`,`numero`,`complemento`,`bairro`,`cidade`,`cep`,`CONTRATANTE_id`)
values('Rua das Criaturas Assustadoras',666,null,'Beco do Zumbi','Holliwood','17013-666',3);
insert into `ENDERECOS`(`rua`,`numero`,`complemento`,`bairro`,`cidade`,`cep`,`CONTRATANTE_id`)
values('Q Saun Quadra 5 Lote B Torre I',1584,'Andar 1 Sala 101','Asa Norte','Brasília','70040-912',4);
insert into `ENDERECOS`(`rua`,`numero`,`complemento`,`bairro`,`cidade`,`cep`,`CONTRATANTE_id`)
values('Av Dinheiro Vivo',1635,'Andar 23 Sala 105','Centro','Brasília','70040-924',6);
insert into `ENDERECOS`(`rua`,`numero`,`complemento`,`bairro`,`cidade`,`cep`,`CONTRATANTE_id`)
values('Av Triste Solidão',1313,'Andar 5 Sala 13','Pedra Solta','Curitiba','13131-313',11);
insert into `ENDERECOS`(`rua`,`numero`,`complemento`,`bairro`,`cidade`,`cep`,`CONTRATANTE_id`)
values('Palácio do Planalto',17,'Andar 17 Sala 17','Asa Sul','Brasília','70040-017',8);
insert into `ENDERECOS`(`rua`,`numero`,`complemento`,`bairro`,`cidade`,`cep`,`CONTRATANTE_id`)
values('Rua das Filmagens Perfeitas',45,'2º Andar','Nova Tomada','Cinelândia','58431-456',3);

-- -----------------------------------------------------
-- `TELEFONES`
-- -----------------------------------------------------
insert into `TELEFONES`
values('(11)99832-4569',1);
insert into `TELEFONES`
values('(11)93512-4582',2);
insert into `TELEFONES`
values('(79)98623-4521',3);
insert into `TELEFONES`
values('(37)99984-5656',4);
insert into `TELEFONES`
values('(31)99158-2789',5);
insert into `TELEFONES`
values('(15)97158-2587',6);
insert into `TELEFONES`
values('(11)93845-1247',1);
insert into `TELEFONES`
values('(11)98423-1247',2);
insert into `TELEFONES`
values('(31)99124-7589',7);
insert into `TELEFONES`
values('(72)96574-1587',8);
insert into `TELEFONES`
values('(21)99912-1524',4);
insert into `TELEFONES`
values('(19)96245-4785',9);
insert into `TELEFONES`
values('(21)98401-2574',10);
insert into `TELEFONES`
values('(18)97532-1456',7);
insert into `TELEFONES`
values('(65)97328-9541',11);

-- -----------------------------------------------------
-- `EVENTO`
-- -----------------------------------------------------
insert into `EVENTO`(`inicio`,`termino`,`descricao`,`tipo`)
values('2018/12/31 22:00','2019-01-01 06:00','Festa de Reveillon','S');
insert into `EVENTO`(`inicio`,`termino`,`descricao`,`tipo`)
values('2019/02/13 12:00','2019/02/14 12:00','Raive do Jacó','S');
insert into `EVENTO`(`inicio`,`termino`,`descricao`,`tipo`)
values('2019/06/24 21:30','2019/06/25 04:30','Arraiá dos Mió','O');
insert into `EVENTO`(`inicio`,`termino`,`descricao`,`tipo`)
values('2019/05/18 16:00','2019/05/19 18:00','Renovação dos votos de José e Maria','C');
insert into `EVENTO`(`inicio`,`termino`,`descricao`,`tipo`)
values('2018/12/16 10:00','2018/12/16 23:00','Bodas de Prata: Antônio Veado Prematuro & Fodelícia dos Santos','O');
insert into `EVENTO`(`inicio`,`termino`,`descricao`,`tipo`)
values('2018/12/22 19:00','2018/12/13 03:00',null,'A');
insert into `EVENTO`(`inicio`,`termino`,`descricao`,`tipo`)
values('2018/06/02 19:00','2018/06/03 02:00','Niver de Arromba','A');
insert into `EVENTO`(`inicio`,`termino`,`descricao`,`tipo`)
values('2019/01/01 16:00','2019/01/01 23:30','Jantar de Posse','O');

-- -----------------------------------------------------
-- `ORCAMENTO`
-- -----------------------------------------------------
insert into `ORCAMENTO`(`data`,`data_validade`,`valor`,`CONTRATANTE_id`,`EVENTO_codigo`)
values('2015/11/15','2015/12/15', 3125843.17, 6, 1);
insert into `ORCAMENTO`(`data`,`data_validade`,`valor`,`CONTRATANTE_id`,`EVENTO_codigo`)
values('2018/11/15','2018/12/15', 3267458.90, 6, 1);
insert into `ORCAMENTO`(`data`,`data_validade`,`valor`,`CONTRATANTE_id`,`EVENTO_codigo`)
values('2018/11/20','2018/12/30', 23678.23, 9, 2);
insert into `ORCAMENTO`(`data`,`data_validade`,`valor`,`CONTRATANTE_id`,`EVENTO_codigo`)
values('2018/10/09','2018/12/09', 45572.33, 5, 5);
insert into `ORCAMENTO`(`data`,`data_validade`,`valor`,`CONTRATANTE_id`,`EVENTO_codigo`)
values('2018/07/18','2018/09/17', 64245.70, 5, 3);
insert into `ORCAMENTO`(`data`,`data_validade`,`valor`,`CONTRATANTE_id`,`EVENTO_codigo`)
values('2018/05/11','2018/06/26', 27455.90, 3, 3);
insert into `ORCAMENTO`(`data`,`data_validade`,`valor`,`CONTRATANTE_id`,`EVENTO_codigo`)
values('2018/08/21','2018/09/28', 95423.35, 3, 4);
insert into `ORCAMENTO`(`data`,`data_validade`,`valor`,`CONTRATANTE_id`,`EVENTO_codigo`)
values('2018/11/15','2018/12/15', 197423.77, 11, 3);
insert into `ORCAMENTO`(`data`,`data_validade`,`valor`,`CONTRATANTE_id`,`EVENTO_codigo`)
values('2018/04/01','2018/04/30', 15649.85, 2, 7);
insert into `ORCAMENTO`(`data`,`data_validade`,`valor`,`CONTRATANTE_id`,`EVENTO_codigo`)
values('2018/11/13','2018/11/23', 3784251.39, 8, 8);

-- -----------------------------------------------------
-- `ANIVERSARIO`
-- -----------------------------------------------------
insert into `ANIVERSARIO`
values('Falidora da Fortuna Dopai Ramiro','2013/12/19','Debutante', 6);
insert into `ANIVERSARIO`
values('Cincero do Nascimento','1984/02/06','Circo dos Horrores', 7);

-- -----------------------------------------------------
-- `CASAMENTO`
-- -----------------------------------------------------
insert into `CASAMENTO`
values('Matriz São Vicente', 4);

-- -----------------------------------------------------
-- `SHOW`
-- -----------------------------------------------------
insert into `SHOW`
values('Variado',1);
insert into `SHOW`
values('Trance',2);

-- -----------------------------------------------------
-- `PATROCINADORES`
-- -----------------------------------------------------
insert into `PATROCINADORES`
values('Nas Alturas Fogos e Pipas',1);
insert into `PATROCINADORES`
values('América Pirotecnia Com Exp Imp e Assessoria',1);
insert into `PATROCINADORES`
values('Elite Pirotecnia',2);
insert into `PATROCINADORES`
values('Bavária',1);
insert into `PATROCINADORES`
values('Cervejaria Bebum da Madrugada',1);
insert into `PATROCINADORES`
values('Cervejaria Se Sobrá Nóis Vende',2);

-- -----------------------------------------------------
-- `BANDAS`
-- -----------------------------------------------------
insert into `BANDAS`
values('Tribo da Periferia', 1);
insert into `BANDAS`
values('Dj Tesoura', 2);
insert into `BANDAS`
values('Maroon 5', 1);
insert into `BANDAS`
values('Cabelinho da Lua', 2);
insert into `BANDAS`
values('Seu Jorge', 1);
insert into `BANDAS`
values('Ventania', 2);

-- -----------------------------------------------------
-- `CONVIDADO`
-- -----------------------------------------------------
insert into `CONVIDADO`
values('MG15354892','Abias Corpus da Silva');
insert into `CONVIDADO`
values('SP15756324','Barrigudinha Seleida');
insert into `CONVIDADO`
values('BA65925756','Pinto Brochado');
insert into `CONVIDADO`
values('PR53149825','Mitiko Kudo Endo');
insert into `CONVIDADO`
values('TO12953015','Pernilonguildo Tentofaz Furão');
insert into `CONVIDADO`
values('MA94251763','Um Dois Três de Oliveira Quatro');
insert into `CONVIDADO`
values('AC45328765','Rolando Escadabaixo');
insert into `CONVIDADO`
values('SC52145632','Vivelinda Cabrita');
insert into `CONVIDADO`
values('AM52146852','Safada da Sogra Vitorina');
insert into `CONVIDADO`
values('BA62154852','Orlando Modesto Pinto');
insert into `CONVIDADO`
values('SP52654123','Mijardina Pinto');
insert into `CONVIDADO`
values('RS93178325','Passamão Nocorrimão');
insert into `CONVIDADO`
values('MT45952147','Tobiniana Matusquela');
insert into `CONVIDADO`
values('MG62852357','Pinto Crespo Magalhães');
insert into `CONVIDADO`
values('AL58753951','Leda Prazeres Amante');
insert into `CONVIDADO`
values('AP85234369','Josefina Grosso');
insert into `CONVIDADO`
values('PB12321654','João Cara de José');
insert into `CONVIDADO`
values('PB12963258','Ana Baiana Meleva Daqui Pratinhos');
insert into `CONVIDADO`
values('RR85321753','Otávio Bundasseca');
insert into `CONVIDADO`
values('PB85963210','Delícia Costa Melo');
insert into `CONVIDADO`
values('SE12357951','Faraó do Egito Sousa');
insert into `CONVIDADO`
values('SP89321456','Maria do Bom Despacho');
insert into `CONVIDADO`
values('MG85321753','Eva Gina Melo');
insert into `CONVIDADO`
values('PE12951258','Jaspion Brasileiro Dantas Garcia');
insert into `CONVIDADO`
values('PB01254753','Capote Valente');
insert into `CONVIDADO`
values('MG13582989','Aberta Demais de Oliveira');
insert into `CONVIDADO`
values('TO52452378','Domingos Pinto Justo');
insert into `CONVIDADO`
values('RR47357852','Hitle Mussolini');
insert into `CONVIDADO`
values('SE95856784','Janeiro Fevereiro de Março Abril');
insert into `CONVIDADO`
values('AL10201350','Inocêncio Coitadinho');
insert into `CONVIDADO`
values('SP20030154','Maiquel Edy Marfy');
insert into `CONVIDADO`
values('SC80062501','Ácido Acético Etílico da Silva');
insert into `CONVIDADO`
values('BA20300108','Hugo Madeira de Lei Aroeiro');
insert into `CONVIDADO`
values('PA74100231','Maria Tributina Prostituta Cataerva');
insert into `CONVIDADO`
values('PR30125521','Joaquim Pinto Molhadinho');
insert into `CONVIDADO`
values('PE85020369','Oceano Atlântico da Silveira e Souza');
insert into `CONVIDADO`
values('AM70425932','Zélia Tocafundo Pinto');
insert into `CONVIDADO`
values('MA56102357','Benvindo Viola');
insert into `CONVIDADO`
values('SC85013021','Rego Penteado');
insert into `CONVIDADO`
values('MG12854753','Carabino Tiro Certo');
insert into `CONVIDADO`
values('SP96325874','Maria Bastarda Dequem');
insert into `CONVIDADO`
values('SP10542387','Jacinto Leite Aquino Rêgo');
insert into `CONVIDADO`
values('AL58423952','Sextavado Obtusângulo Reto');
insert into `CONVIDADO`
values('PE84725658','Juvenalda Datia Gulosa');
insert into `CONVIDADO`
values('DF98201456','Maria da Delícia Dazona');
insert into `CONVIDADO`
values('SC74325963','Manuel Sola de Sá Pato');
insert into `CONVIDADO`
values('MG14253698','Simplício Simplório da Simplicidade Simples');
insert into `CONVIDADO`
values('MG11223344','Josefina Grosso');
insert into `CONVIDADO`
values('SE51455221','Manoel Sovaco de Gamba');
insert into `CONVIDADO`
values('MG30609010','Veneza Americana do Recife');
insert into `CONVIDADO`
values('BA21578329','Vitória Carne e Osso');
insert into `CONVIDADO`
values('MG74859625','Amável Pinto');

-- -----------------------------------------------------
-- `LISTA_CONVIDADOS`
-- -----------------------------------------------------
insert into `LISTA_CONVIDADOS`
values('MG15354892',8);
insert into `LISTA_CONVIDADOS`
values('BA65925756',8);
insert into `LISTA_CONVIDADOS`
values('PR53149825',8);
insert into `LISTA_CONVIDADOS`
values('PE85020369',5);
insert into `LISTA_CONVIDADOS`
values('SC85013021',3);
insert into `LISTA_CONVIDADOS`
values('PB85963210',8);
insert into `LISTA_CONVIDADOS`
values('MG85321753',8);
insert into `LISTA_CONVIDADOS`
values('SP96325874',5);
insert into `LISTA_CONVIDADOS`
values('PE85020369',4);
insert into `LISTA_CONVIDADOS`
values('SP10542387',1);
insert into `LISTA_CONVIDADOS`
values('MA56102357',3);
insert into `LISTA_CONVIDADOS`
values('MG12854753',4);
insert into `LISTA_CONVIDADOS`
values('RR47357852',8);
insert into `LISTA_CONVIDADOS`
values('AM70425932',3);
insert into `LISTA_CONVIDADOS`
values('SP10542387',7);
insert into `LISTA_CONVIDADOS`
values('SC85013021',2);
insert into `LISTA_CONVIDADOS`
values('AM70425932',4);
insert into `LISTA_CONVIDADOS`
values('MG13582989',8);
insert into `LISTA_CONVIDADOS`
values('AL58423952',1);
insert into `LISTA_CONVIDADOS`
values('SC85013021',1);
insert into `LISTA_CONVIDADOS`
values('SC85013021',6);
insert into `LISTA_CONVIDADOS`
values('SE51455221',2);
insert into `LISTA_CONVIDADOS`
values('AL10201350',8);
insert into `LISTA_CONVIDADOS`
values('AM70425932',8);
insert into `LISTA_CONVIDADOS`
values('AL58423952',3);
insert into `LISTA_CONVIDADOS`
values('SC85013021',4);
insert into `LISTA_CONVIDADOS`
values('SP10542387',2);
insert into `LISTA_CONVIDADOS`
values('MA94251763',1);
insert into `LISTA_CONVIDADOS`
values('SC85013021',5);
insert into `LISTA_CONVIDADOS`
values('MG15354892',6);
insert into `LISTA_CONVIDADOS`
values('PA74100231',8);
insert into `LISTA_CONVIDADOS`
values('AC45328765',7);
insert into `LISTA_CONVIDADOS`
values('SP15756324',6);
insert into `LISTA_CONVIDADOS`
values('AC45328765',5);
insert into `LISTA_CONVIDADOS`
values('BA65925756',1);
insert into `LISTA_CONVIDADOS`
values('MA94251763',2);
insert into `LISTA_CONVIDADOS`
values('BA65925756',5);
insert into `LISTA_CONVIDADOS`
values('BA65925756',6);
insert into `LISTA_CONVIDADOS`
values('SC85013021',8);
insert into `LISTA_CONVIDADOS`
values('SP10542387',4);
insert into `LISTA_CONVIDADOS`
values('AC45328765',1);
insert into `LISTA_CONVIDADOS`
values('SC52145632',6);
insert into `LISTA_CONVIDADOS`
values('SP10542387',5);
insert into `LISTA_CONVIDADOS`
values('AM52146852',6);
insert into `LISTA_CONVIDADOS`
values('DF98201456',8);
insert into `LISTA_CONVIDADOS`
values('MG62852357',1);
insert into `LISTA_CONVIDADOS`
values('AC45328765',4);
insert into `LISTA_CONVIDADOS`
values('MT45952147',1);
insert into `LISTA_CONVIDADOS`
values('MG14253698',8);
insert into `LISTA_CONVIDADOS`
values('BA21578329',8);
insert into `LISTA_CONVIDADOS`
values('MG62852357',6);
insert into `LISTA_CONVIDADOS`
values('PR30125521',1);
insert into `LISTA_CONVIDADOS`
values('BA62154852',4);
insert into `LISTA_CONVIDADOS`
values('RS93178325',2);
insert into `LISTA_CONVIDADOS`
values('SP10542387',6);
insert into `LISTA_CONVIDADOS`
values('MG74859625',8);
insert into `LISTA_CONVIDADOS`
values('MG62852357',7);
insert into `LISTA_CONVIDADOS`
values('BA62154852',5);
insert into `LISTA_CONVIDADOS`
values('MG62852357',2);
insert into `LISTA_CONVIDADOS`
values('AL58753951',1);
insert into `LISTA_CONVIDADOS`
values('MG62852357',8);
insert into `LISTA_CONVIDADOS`
values('MG11223344',6);
insert into `LISTA_CONVIDADOS`
values('PE84725658',3);
insert into `LISTA_CONVIDADOS`
values('MG14253698',1);
insert into `LISTA_CONVIDADOS`
values('AL58753951',5);
insert into `LISTA_CONVIDADOS`
values('AP85234369',2);
insert into `LISTA_CONVIDADOS`
values('MG62852357',4);
insert into `LISTA_CONVIDADOS`
values('SC74325963',3);
insert into `LISTA_CONVIDADOS`
values('MG62852357',5);
insert into `LISTA_CONVIDADOS`
values('AM52146852',8);
insert into `LISTA_CONVIDADOS`
values('BA21578329',6);
insert into `LISTA_CONVIDADOS`
values('AC45328765',8);
insert into `LISTA_CONVIDADOS`
values('BA21578329',1);
insert into `LISTA_CONVIDADOS`
values('PB01254753',5);
insert into `LISTA_CONVIDADOS`
values('AL10201350',6);
insert into `LISTA_CONVIDADOS`
values('PR30125521',5);
insert into `LISTA_CONVIDADOS`
values('PR30125521',4);
insert into `LISTA_CONVIDADOS`
values('MG74859625',2);
insert into `LISTA_CONVIDADOS`
values('RR85321753',1);
insert into `LISTA_CONVIDADOS`
values('TO52452378',4);
insert into `LISTA_CONVIDADOS`
values('SE95856784',2);
insert into `LISTA_CONVIDADOS`
values('RR47357852',2);
insert into `LISTA_CONVIDADOS`
values('MG74859625',7);
insert into `LISTA_CONVIDADOS`
values('PB12963258',5);
insert into `LISTA_CONVIDADOS`
values('MG85321753',6);
insert into `LISTA_CONVIDADOS`
values('PR30125521',6);
insert into `LISTA_CONVIDADOS`
values('AL10201350',4);
insert into `LISTA_CONVIDADOS`
values('PB12963258',6);
insert into `LISTA_CONVIDADOS`
values('RR85321753',4);
insert into `LISTA_CONVIDADOS`
values('PE12951258',2);
insert into `LISTA_CONVIDADOS`
values('RR85321753',6);
insert into `LISTA_CONVIDADOS`
values('PA74100231',7);
insert into `LISTA_CONVIDADOS`
values('PR30125521',2);
insert into `LISTA_CONVIDADOS`
values('PB12963258',1);
insert into `LISTA_CONVIDADOS`
values('PR30125521',3);
insert into `LISTA_CONVIDADOS`
values('SC80062501',5);
insert into `LISTA_CONVIDADOS`
values('PA74100231',2);
insert into `LISTA_CONVIDADOS`
values('PB85963210',1);
insert into `LISTA_CONVIDADOS`
values('MG85321753',1);
insert into `LISTA_CONVIDADOS`
values('PB12321654',3);
insert into `LISTA_CONVIDADOS`
values('SP89321456',6);
insert into `LISTA_CONVIDADOS`
values('PB12321654',6);
insert into `LISTA_CONVIDADOS`
values('BA20300108',2);
insert into `LISTA_CONVIDADOS`
values('RR85321753',2);
insert into `LISTA_CONVIDADOS`
values('TO12953015',8);
insert into `LISTA_CONVIDADOS`
values('SC80062501',1);
insert into `LISTA_CONVIDADOS`
values('PB85963210',7);
insert into `LISTA_CONVIDADOS`
values('MG85321753',4);
insert into `LISTA_CONVIDADOS`
values('BA20300108',5);
insert into `LISTA_CONVIDADOS`
values('PB12321654',1);

-- -----------------------------------------------------
-- `BUFFET`
-- -----------------------------------------------------
insert into `BUFFET`
values('51.821.883/0001-31','Buffet Evento Perfeito');
insert into `BUFFET`
values('68.509.644/0001-43','Espaço Favoritto Buffet');
insert into `BUFFET`
values('38.829.316/0001-63','Buffet Mediterrâneo');
insert into `BUFFET`
values('48.527.781/0001-01','Buffet Colonial');
insert into `BUFFET`
values('45.117.918/0001-53','AiKiFome Buffet Empresarial SA');

-- -----------------------------------------------------
-- `BUFFET_TELEFONES`
-- -----------------------------------------------------
insert into `BUFFET_TELEFONES`
values('(35)99823-5872','51.821.883/0001-31');
insert into `BUFFET_TELEFONES`
values('(35)98432-1584','51.821.883/0001-31');
insert into `BUFFET_TELEFONES`
values('(35)98401-2413','51.821.883/0001-31');
insert into `BUFFET_TELEFONES`
values('(37)98814-1223','68.509.644/0001-43');
insert into `BUFFET_TELEFONES`
values('(31)99142-2565','38.829.316/0001-63');
insert into `BUFFET_TELEFONES`
values('(31)99173-1325','48.527.781/0001-01');
insert into `BUFFET_TELEFONES`
values('(19) 3517-1717','45.117.918/0001-53');

-- -----------------------------------------------------
-- `ESTABELECIMENTO`
-- -----------------------------------------------------
insert into `ESTABELECIMENTO`(`nome`,`rua`,`numero`,`complemento`,`bairro`,`cidade`,`cep`,`capacidade_pessoas`,`capacidade_estacionamento`, `pessoa_contato`)
values('Parque de Exposicões Valdez Gacia','Rua Joaquim Murtinho',1542,null,'Encosta do Morro','Vassouras','71254-321',50000,10000,'Catiússa do Bom Faro');
insert into `ESTABELECIMENTO`(`nome`,`rua`,`numero`,`complemento`,`bairro`,`cidade`,`cep`,`capacidade_pessoas`,`capacidade_estacionamento`, `pessoa_contato`)
values('Expô Center','Av dos Ferroviários',1652,null,'Funcionários','Belo Horizonte','19456-230',35000,12000,'Colapso Cardíaco da Silva');
insert into `ESTABELECIMENTO`(`nome`,`rua`,`numero`,`complemento`,`bairro`,`cidade`,`cep`,`capacidade_pessoas`,`capacidade_estacionamento`, `pessoa_contato`)
values('Anhembi','Av. Olavo Fontoura',1209,null,'Santana','São Paulo','02012-021',50000,25000,'Francisco Zebedeu Sanguessuga');
insert into `ESTABELECIMENTO`(`nome`,`rua`,`numero`,`complemento`,`bairro`,`cidade`,`cep`,`capacidade_pessoas`,`capacidade_estacionamento`, `pessoa_contato`)
values('Casa Mágica','Av. Barão de Mauá',879,null,'Centro','Capitólio','02012-021',500,65,'Antonio Donizete Bobo');
insert into `ESTABELECIMENTO`(`nome`,`rua`,`numero`,`complemento`,`bairro`,`cidade`,`cep`,`capacidade_pessoas`,`capacidade_estacionamento`, `pessoa_contato`)
values('Parque Quedas do Rio bonito','Rod. MG354 Km 9',1,null,'Zona Rural','Lavras','37200-000',1500,450,'Fotocópia Xérox Copiadora');
insert into `ESTABELECIMENTO`(`nome`,`rua`,`numero`,`complemento`,`bairro`,`cidade`,`cep`,`capacidade_pessoas`,`capacidade_estacionamento`, `pessoa_contato`)
values('Granja do Torto','Rod. Fode Brasil',1,null,'Aza Sul','Brasília','17013-117',3500,1000,'Nicolau dos Santos Neto');

-- -----------------------------------------------------
-- `ESTABELECIMENTO_TELEFONES`
-- -----------------------------------------------------
insert into `ESTABELECIMENTO_TELEFONES`
values('(12) 3389-4590',1);
insert into `ESTABELECIMENTO_TELEFONES`
values('(12)99145-6215',1);
insert into `ESTABELECIMENTO_TELEFONES`
values('(31) 2278-0325',2);
insert into `ESTABELECIMENTO_TELEFONES`
values('(31)98402-1317',2);
insert into `ESTABELECIMENTO_TELEFONES`
values('(11) 3215-4578',3);
insert into `ESTABELECIMENTO_TELEFONES`
values('(11)99126-8908',3);
insert into `ESTABELECIMENTO_TELEFONES`
values('(35)98406-5323',5);
insert into `ESTABELECIMENTO_TELEFONES`
values('(35) 6451-1717',6);

-- -----------------------------------------------------
-- `CONTRATO`
-- -----------------------------------------------------
insert into `CONTRATO`(`data_assinatura`,`ORCAMENTO_codigo`,`ESTABELECIMENTO_codigo`)
values('2018/11/26',2,1);
insert into `CONTRATO`(`data_assinatura`,`ORCAMENTO_codigo`,`ESTABELECIMENTO_codigo`)
values('2018/07/30',6,4);
insert into `CONTRATO`(`data_assinatura`,`ORCAMENTO_codigo`,`ESTABELECIMENTO_codigo`)
values('2018/11/28',3,5);
insert into `CONTRATO`(`data_assinatura`,`ORCAMENTO_codigo`,`ESTABELECIMENTO_codigo`)
values('2018/04/18',5,4);
insert into `CONTRATO`(`data_assinatura`,`ORCAMENTO_codigo`,`ESTABELECIMENTO_codigo`)
values('2018/11/17',10,6);

-- -----------------------------------------------------
-- `PRESTA_SERVICO`
-- -----------------------------------------------------
insert into `PRESTA_SERVICO`
values(1,'51.821.883/0001-31');
insert into `PRESTA_SERVICO`
values(1,'48.527.781/0001-01');
insert into `PRESTA_SERVICO`
values(4,'38.829.316/0001-63');
insert into `PRESTA_SERVICO`
values(5,'38.829.316/0001-63');