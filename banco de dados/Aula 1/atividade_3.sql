create database feira_de_livros;

use feira_de_livros;

create table livros (
	ano int,
    nome varchar(100),
    autor varchar(100)
    );
    
insert into livros (ano, nome, autor)
values (1988, 'Uma Breve História do Tempo', 'Stephen Hawking'),
(1997, 'Pai Rico, Pai Pobre', 'Robert Kiyosaki'),
(2011, 'Uma Breve História da Humanidade', 'Yuval Harari');

select * from livros;

