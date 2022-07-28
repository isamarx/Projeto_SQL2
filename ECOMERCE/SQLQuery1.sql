-- DDL
-- CREATE
-- ALTER
-- DROP

CREATE DATABASE db_Ecomerce;

USE db_Ecomerce;

CREATE TABLE tb_usuarios(
      Id INT NOT NULL PRIMARY KEY,
	  Nome VARCHAR (45) NOT NULL,
	  Usuario VARCHAR (45) NOT NULL,
	  Senha VARCHAR (100) NULL,
	  Documento VARCHAR (45) NOT NULL
);

CREATE TABLE tb_produtos(
	Id INT NOT NULL PRIMARY KEY,
	Produto VARCHAR(45) NOT NULL,
	Descricao VARCHAR(100) NOT NULL,
	Valor FLOAT NOT NULL,
	Estoque INT NOT NULL,
	Categoria VARCHAR(255) NOT NULL CHECK(Categoria IN('cat1', 'cat2')),
	Imagem VARCHAR(100) NULL,
);

CREATE TABLE tb_compras(
	FK_Usuario INT NOT NULL,
	FK_Produto INT NOT NULL,
	Datas DATE NOT NULL
	FOREIGN KEY (FK_Usuario) REFERENCES tb_usuarios(Id),
	FOREIGN KEY (FK_Produto) REFERENCES tb_produtos(Id)
);

DROP TABLE td_usuario;

ALTER TABLE tb_usuarios ADD Nome VARCHAR(45) NOT NULL;

ALTER TABLE tb_usuarios DROP COLUMN Documento;

ALTER TABLE tb_usuarios ALTER COLUMN Senha VARCHAR(100) NOT NULL;


