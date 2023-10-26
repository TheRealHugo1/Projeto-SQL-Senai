create database entregas_express;

use entregas_express;

create table paises (
	id_pais int,
    nome varchar(60),
    latitude varchar(60),
    longitude varchar(60),
    idioma_oficial varchar(60),
    primary key (id_pais));
    
create table unidades_federativas (
	id_uf int,
    nome_uf varchar(60),
    abreviacao varchar(60),
	id_pais int,
    primary key (id_uf),
    foreign key (id_pais) references paises (id_pais)
);

create table municipios (
	id_municipio int,
    nome varchar(60),
    id_uf int,
    primary key (id_municipio),
    foreign key (id_uf) references unidades_federativas (id_uf)
    );
    
drop table paises;
drop table unidades_federativas;
drop table municipios;

insert into paises (id_pais, nome, latitude, longitude, idioma_oficial)
values (1, 'Brasil', '100, 200, 300', '400, 500', 'Português');

insert into unidades_federativas (id_uf, nome_uf, abreviacao, id_pais)
values (100, 'Rio de Janeiro', 'RJ', 1),
(101, 'São Paulo', 'SP', 1),
(102, 'Minas Gerais', 'MG', 1);

insert into municipios (id_municipio, nome, id_uf)
values (103, 'Barra do Piraí', 100),
(104, 'Valença', 100),
(105, 'Taubaté', 101),
(106, 'Caçapava', 101),
(107, 'São Lourenço', 102),
(108, 'Belo Horizonte', 102);