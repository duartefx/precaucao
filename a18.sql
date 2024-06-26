create database lojaDB;
use lojaDB;

drop database lojaDb;
drop table vendas;


create table if not exists vendas (
id_nf int,
id_item int,
cod_prod int,
valor_unit double (5,2),
quantidade int,
desconto int
) default charset=utf8MB4;

insert into vendas (id_nf, id_item, cod_prod, 
valor_unit, quantidade) values
(1, 2, 2, '13.50', 3), (1, 3, 3, '15.00', 2), 
(1, 4, 4, '10.00', 1),(1, 5, 5, '30.00', 1), 
(2, 1,3, '15.00', 4), (2, 2, 4, '10.00', 5), 
(2, 3, 5, '30.00', 7), (3, 1, 1, '25.00', 5), 
(3, 2, 4, '10.00', 4), (3, 3, 5, '30.00', 5), 
(3, 4, 2, '13.50', 7), (5, 1, 3, '15.00', 3), 
(5, 2, 5, '30.00', 6);


insert into vendas (id_nf, id_item, cod_prod, 
valor_unit, quantidade, desconto) values
(1, 1, 1, '25.00', 10, 5), (4, 1, 3, '30.00', 10, 15),
(4, 4, 2, '13.50', 15, 5), (4, 3, 1, '25.00', 13, 5), 
(4, 2, 4, '10.00', 12, 5), (6, 1, 1, '25.00', 22, 15),
(6, 2, 3, '15.00', 25, 20),(7, 1, 1, '25.00', 10, 3), 
(7, 1, 3, '13.50', 10, 4), (7, 3, 3, '15.00', 10, 4),
(7, 4, 5, '30.00', 10, 1);

select * from vendas;

select id_nf, id_item, cod_prod, valor_unit from vendas
order by id_nf;

update vendas set desconto  where id_nf = '4'+ '6'+ '7';




