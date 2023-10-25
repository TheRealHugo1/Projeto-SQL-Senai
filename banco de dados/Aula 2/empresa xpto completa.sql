# criando banco de dados
create database empresa_xpto;
# fazendo funcionar
use empresa_xpto;
	
create table funcionarios (
    nome varchar(60),
    cpf char(12),
    cargo varchar(60),
    salario float,
    nascimento date);
    
describe funcionarios;
    
insert into funcionarios (nome, cpf, cargo, salario, nascimento)
values ('hugo', 111222333444, 'TI', 2000.00, '2006-04-06');

insert into funcionarios (nome, cpf, cargo, salario, nascimento)
values ('Vitor', 222333444555, 'Produçao', 3000.00, '2000-05-09');


select * from funcionarios;

select nome, cargo, salario from funcionarios;

select salario, cargo from funcionarios where cargo = "Professor";

select * from funcionarios where cargo = "Arquiteto de Software";

select nome as 'Nome Completo', cargo, salario as 'Salário' from funcionarios where cargo = "Gerente de Projetos";

select nome, cargo, salario from funcionarios where salario >= "10000";

select nome from funcionarios where salario < " 1320 ";

select cargo from funcionarios where salario >= "28000";

select nome from funcionarios where nome = "Monica Yates";

select salario, cargo from funcionarios where nome = "Jennifer Gardner";

select nascimento from funcionarios where nome = "Russell Cole";

select nome, cargo from funcionarios where CPF = "84716339531";

select nome as 'Nome Completo', salario as 'Salário', nascimento as 'Data de Nascimento' from funcionarios where nascimento >= "1998-01-01";

select * from funcionarios order by nome asc;

select nome, cargo, salario from funcionarios order by salario desc;

select salario, cargo from funcionarios order by nascimento asc;

select nome, cargo from funcionarios order by salario asc limit 5;

select nome from funcionarios order by nascimento asc limit 1;

select salario from funcionarios order by salario asc limit 10;

select nome, salario, cargo from funcionarios where cargo = "Professor" order by nome asc;

select nome, salario, cargo from funcionarios where cargo = "Médico" order by salario desc limit 5; 

select nome, cpf from funcionarios where cargo = "Recepcionista" order by salario asc limit 1;

drop table funcionarios;

set sql_safe_updates = 0;

use empresa_xpto;
update funcionarios set nome = "Hugo Gabriel" where nome = "Monica Yates";

set sql_safe_updates = 0;

select * from funcionarios where nome = "Hugo Gabriel";

update funcionarios set nome = "Hugo Gabriel";

delete from funcionarios;

select * from funcionarios;

delete from funcionarios where nome = "Monica Yates";

update funcionarios set salario= salario*1.1 where cargo = "Professor";

update funcionarios set salario = 1320 where salario <= 1320;

SELECT NOW();
SELECT CURDATE();
SELECT DAY('2023-10-20');
SELECT MONTH('2023-10-20');
SELECT YEAR('2023-10-20');

select nome, year(curdate()) - year(nascimento) as 'Idade' from funcionarios;

drop table funcionarios;