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