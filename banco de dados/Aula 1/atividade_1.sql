# criando banco de dados
create database empresa_xpto;
# fazendo funcionar
use empresa_xpto;
	
create table funcionario (
    nome varchar(60),
    cpf char(12),
    cargo varchar(60),
    salario float,
    nascimento date);
    
insert into funcionario (nome, cpf, cargo, salario, nascimento)
values ('hugo', 111222333444, 'TI', 2000.00, '2006-04-06');

insert into funcionario (nome, cpf, cargo, salario, nascimento)
values ('Vitor', 222333444555, 'Produçao', 3000.00, '2000-05-09');

select * from funcionario;