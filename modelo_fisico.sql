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

create table tbl_email_aluno 
(
	id_email_aluno int not null primary key auto_increment,
    id_aluno int not null,
    email_aluno varchar(320),
    
    constraint fk_tbl_aluno_tbl_email_aluno
    foreign key (id_aluno)
    references tbl_aluno (id_aluno)
    
);

create table tbl_numero_aluno 
(
	id_numero int primary key not null auto_increment,
    id_aluno int not null,
    numero char(11)not null,
    
    constraint fk_tbl_aluno_tbl_numero_aluno
    foreign key (id_aluno)
    references tbl_aluno (id_aluno)
);

create table tbl_email_professor
(
	id_email_professor int not null primary key auto_increment,
    id_professor int not null,
    email_professor varchar(320),
    
    constraint fk_tbl_professor_tbl_email_professor
    foreign key (id_professor)
    references tbl_professor (id_professor)
    
);
