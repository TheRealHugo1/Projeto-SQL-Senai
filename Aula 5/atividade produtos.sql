create database estoque_senai;

use estoque_senai;

create table marcas (
	id_marca int,
    nome varchar(60),
    descricao varchar(60),
    primary key (id_marca));
    
create table produtos (
	id_produto int,
    nome varchar(60),
    preco_unitario varchar(60),
    id_marca int,
    primary key (id_produto),
    foreign key (id_marca) references marcas (id_marca)
);

drop table marcas;
drop table produtos;

insert into marcas (id_marca, nome, descricao)
values (1, 'Eudora', 'produto de higiene');

insert into produtos (id_produto, nome, preco_unitario, id_marca)
values (100, 'Shampoo', '100,00', 1);

insert into marcas (id_marca, nome, descricao)
values (2, 'LongTech', 'eletrônicos');

insert into produtos (id_produto, nome, preco_unitario, id_marca)
values (101, 'Mouse gamer', '33,00', 2);

insert into marcas (id_marca, nome, descricao)
values (3, 'Apple', 'celular');

insert into produtos (id_produto, nome, preco_unitario, id_marca)
values (102, 'Iphone 15', '900,00', 3);

select * from produtos;