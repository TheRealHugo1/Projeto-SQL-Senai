 create database cine_senai_max;
 
use cine_senai_max;
 
 create table filmes (
#'id_filmes int primary key auto_increment' também funciona, sem as aspas
    id_filme int,
    titulo varchar(60),
    genero varchar(45),
    duracao varchar(45),
    ano_lancamento int,
    preco_aluguel double,
    primary key (id_filme));
    
insert into filmes (id_filme, titulo, genero, duracao, ano_lancamento, preco_aluguel)
values
('1', 'Scarface', 'Acao', '120', '1983', '60');

select * from filmes;

drop table filmes;

select titulo, genero from filmes where id_filme = 6;

select titulo, ano_lancamento from filmes where id_filme =33;

select titulo, genero, duracao, ano_lancamento, preco_aluguel from filmes where id_filme = 73;

set sql_safe_uptades = 0;

delete from filmes where titulo = 'O Rappa - Me Deixa';

select id_filme from filmes where titulo = 'Rio 2';

update filmes set genero = 'Animação' where id_filme = '71';

update filmes set preco_aluguel=preco_aluguel*1.1 where titulo = 'Tropa de Elite';

select titulo, genero from filmes where id_filme = '6';

select titulo, ano_lancamento from filmes where id_filme = '33';

select titulo, genero, preco_aluguel from filmes where genero = 'Drama' or genero = 'Comedia';

select titulo, ano_lancamento from filmes where ano_lancamento >= 2001 and ano_lancamento <= 2005; #'between 2001 and 2005' também serve

select titulo, ano_lancamento, genero 
from filmes 
where genero = 'Drama' or genero = 'Animação' and ano_lancamento < 2009;

select titulo, ano_lancamento, genero from filmes 
where (genero = 'Ação e Aventura' or genero = 'Mistério e Suspense')
and (ano_lancamento > 2005 and ano_lancamento < 2010);

select titulo, ano_lancamento, genero from filmes 
where (genero = 'Ação e Aventura' or genero = 'Mistério e Suspense')
and (ano_lancamento > 2005 and ano_lancamento < 2010)
and preco_aluguel > 3;

set sql_safe_updates = 0;

update filmes set preco_aluguel = preco_aluguel * 1.1
where (preco_aluguel >= '4' and preco_aluguel <= '5');

update filmes set preco_aluguel = preco_aluguel * 1.5
where (preco_aluguel >= '2' and preco_aluguel <= '3');

update filmes set preco_aluguel = preco_aluguel - preco_aluguel * 0.1
where ano_lancamento >= 2001 and ano_lancamento <= 2003;

create table atores (
id_ator INT,
nome_ator VARCHAR(60), 
ano_nascimento INT, 
nacionalidade VARCHAR(20), 
sexo VARCHAR(10));

