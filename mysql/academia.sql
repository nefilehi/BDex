CREATE DATABASE academia;
USE DATABASE academia;
CREATE TABLE tb_cliente (idcliente int primary KEY, nome varchar(50), endereço varchar(200), telefone varchar(50);
CREATE TABLE tb_contrato (idcontrato int PRIMARY KEY, datainicio varchar(20) NOTNULL, datafim varchar(20) NOTNULL, 
valortotal float NOTNULL, formapagamento varchar(20), idcliente int, FOREIGN KEY(idcliente) REFERENCES tb_cliente (idcliente);
CREATE TABLE tb_professor (idprofessor int PRIMARY KEY, nome varchar(50), endereço varchar(200), telefone varchar(50), 
carteiratrabalho varchar(50), salario int;
CREATE TABLE tb_modalidade (idmodalidade int PRIMARY KEY, nome varchar(50);
CREATE TABLE tb_modalidadeprofessor (idprofessor int, idmodalidade int, FOREIGN KEY(idprofessor) REFERENCES tb_professor
(idprofessor), FOREIGN KEY(idmodalidade) REFERENCES tb_modalidade(idmodalidade);
CREATE TABLE tb_aula (idaula int PRIMARY KEY, data varchar(20), horario varchar(30), descricao varchar(100), 
tempoduracao varchar(50), idmodalidade int, idprofessor int, FOREIGN KEY(idmodalidade) REFERENCES tb_modalidade(idmodalidade),
FOREIGN KEY(idprofessor) REFERENCES tb_professor(idprofessor);