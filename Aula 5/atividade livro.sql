create database livraria_do_hugo;

use livraria_do_hugo;

create table editoras (
	id_editora int,
    nome varchar(45),
    cnpj varchar(45),
    primary key (id_editora)
);

create table livros (
	id_livro int,
    titulo varchar(45),
    lancamento int,
    id_editora int,
    primary key(id_livro),
    foreign key(id_editora) references editoras(id_editora)
);

insert into editoras (id_editora, nome, cnpj)
values (1, 'Intrinseca', '05660045000106');

insert into livros (id_livro, titulo, lancamento, id_editora)
values (100, 'Uma breve história do tempo', '1988', 1);

insert into livros (id_livro, titulo, lancamento, id_editora)
values (101, 'O livro das fobias e manias', '2022', 1);

insert into livros (id_livro, titulo, lancamento, id_editora)
values (102, 'Trader ou investidor', '2023', 1);

select * from livros;

insert into editoras (id_editora, nome, cnpj)
values (2, 'Atlas', '61080370000766');

insert into livros (id_livro, titulo, lancamento, id_editora)
values (103, 'Administração', '2021', 2);

insert into livros (id_livro, titulo, lancamento, id_editora)
values (104, 'Gestão de pessoas e culturas organizacional', '2021', 2);


drop table livros;

drop table editoras;

insert into editoras (id_editora, nome, cnpj)
values (3, 'L&PM', '87932463000170');

insert into livros (id_livro, titulo, lancamento, id_editora)
values (105, 'Além do bem e do mal', '2008', 3);