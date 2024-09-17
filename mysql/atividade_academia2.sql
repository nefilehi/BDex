CREATE DATABASE atividade_academia;

USE DATABASE atividade_academia;

CREATE TABLE tb_cliente(
	idcliente INT PRIMARY KEY,
    endereço VARCHAR(50),
    telefone VARCHAR(30)
);

ALTER TABLE tb_cliente ADD COLUMN nome VARCHAR(20);

CREATE TABLE tb_contrato(
	idcontrato INT PRIMARY KEY,
    data_inicio VARCHAR(10),
    data_fim VARCHAR(10),
    valor_total VARCHAR(15),
    forma_pagamento VARCHAR(10),
    idcliente INT, FOREIGN KEY(idcliente) REFERENCES tb_cliente(idcliente)
);

CREATE TABLE tb_professor(
	idprofessor INT PRIMARY KEY,
    nome VARCHAR(30),
    endereço VARCHAR(40),
    telefone VARCHAR(20),
    carteira_trabalho VARCHAR(20),
    salario VARCHAR(20)
);

CREATE TABLE tb_modalidade(
	idmodalidade INT PRIMARY KEY,
    nome VARCHAR(20)
);

CREATE TABLE modalidade_professor(
	idmodalidade INT,
    idprofessor INT,
    FOREIGN KEY(idmodalidade) REFERENCES tb_modalidade(idmodalidade),
    FOREIGN KEY(idprofessor) REFERENCES tb_professor(idprofessor)
);

CREATE TABLE aula(
	idaula INT PRIMARY KEY,
    data_aula VARCHAR(10),
    horario VARCHAR(10),
    descricao VARCHAR(40),
    tempo_duracao VARCHAR(30),
    idmodalidade INT,
    idprofessor INT,
    FOREIGN KEY(idmodalidade) REFERENCES tb_modalidade(idmodalidade),
    FOREIGN KEY(idprofessor) REFERENCES tb_professor(idprofessor)
);