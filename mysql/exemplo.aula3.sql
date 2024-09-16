SHOW DATABASES;
CREATE DATABASE biblioteca_aula3;
USE biblioteca_aula3;

CREATE TABLE tb_autores (
	idautor INT auto_increment PRIMARY KEY,
    nome VARCHAR(60) NOT NULL,
    nacionalidade VARCHAR(30)
);

CREATE TABLE tb_editoras(
	ideditora INT auto_increment primary key,
    nome varchar(60) NOT NULL,
    telefone VARCHAR(15),
    representante VARCHAR(50)
);

INSERT INTO tb_autores (nome, nacionalidade) VALUES
	('William Shakespeare', 'Inglaterra'),
    ('Gabriel Garcia Marquez', 'Colombia'),
    ('Paulo Coelho', 'Brasil');
    
SELECT * FROM tb_autores;
    
