create database faculdade;
use faculdade;

create table tbl_aluno 
(
	id_aluno int primary key not null auto_increment,
    data_nascimento date not null,
    nome varchar(100) not null
    
);

