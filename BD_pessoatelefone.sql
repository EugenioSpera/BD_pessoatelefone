CREATE DATABASE pessoatelefone

CREATE TABLE pessoa ( 

idPessoa INT AUTO_INCREMENT, 
nome VARCHAR(50) NOT NULL, 
tipoEndereco VARCHAR(10) NOT NULL,
logradouro VARCHAR(100) NOT NULL,
numero VARCHAR(6) NOT NULL,
complemento varchar(10),
cidade VARCHAR(50) NOT NULL,
estado CHAR(2) NOT NULL,
cep CHAR(8) NOT NULL,
bairro VARCHAR(30) NOT NULL,
CONSTRAINT PRIMARY KEY(idPessoa)
);

SELECT * FROM pessoa

CREATE TABLE telefone (
idTelefone INT AUTO_INCREMENT NOT NULL,
DDI VARCHAR(5) NOT NULL,
DDD CHAR(2) NOT NULL,
numero CHAR(9) NOT NULL,
idPessoa INT NOT NULL,
CONSTRAINT PRIMARY KEY (idTelefone),
CONSTRAINT fk_telefone_pessoa FOREIGN KEY (idpessoa) REFERENCES pessoa (idPessoa)

);

SELECT * FROM telefone