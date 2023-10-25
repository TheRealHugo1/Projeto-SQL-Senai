create database cursinho;

use cursinho;

create table alunos (
	matricula int,
    nome varchar(45),
    curso varchar(45)
    );

insert into alunos ( matricula, nome, curso)
values (100, 'Hugo', 'programador');

insert into alunos ( matricula, nome, curso)
values (101, 'Marcelo', 'programdor');

insert into alunos ( matricula, nome, curso)
values (102, 'Kauan', 'programador');

select * from alunos;

create database curso;

use curso;

create table cursos (
	codigo int,
    nome_do_curso varchar(60),
    quantidade_vagas int);
    
insert into cursos (codigo, nome_do_curso, quantidade_vagas)
values (1, 'programdor', 20),
(2, 'eletrica', 30),
(3, 'mecanica', 40);

select * from cursos;

drop table cursos;
