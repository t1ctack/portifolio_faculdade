create database faculdade;
use faculdade;

create table tbl_aluno 
(
	id_aluno int primary key not null auto_increment,
    data_nascimento date not null,
    nome varchar(100) not null
    
);

create table tbl_curso 
(
	id_curso int not null primary key auto_increment,
    nome varchar(70) not null,
    duracao_meses char(60)
);

create table tbl_professor 
(
	id_professor int not null primary key auto_increment,
    nome varchar(100) not null
);
