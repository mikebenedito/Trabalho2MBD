CREATE DATABASE biblioteca;

USE biblioteca;




-- usuario \/ 

CREATE TABLE usuario (
	cpf 		varChar(11)		primary key,
    nome		varChar(30)		not null,
    dataNasc	date			not null,
    rua			varChar(40),
    numero		int,
    bairro		varChar(20),
    cidade		varChar(30),
    estado		varChar(2)
);

SELECT * FROM usuario;

INSERT INTO usuario VALUES ('46772304200', 'Michael Nunes', '1997-02-05', 'Rua dos bobos', '0', 'Jardim Brasil', 'Franca', 'SP');
INSERT INTO usuario VALUES ('54599211102', 'Luan Vieira', '1996-06-21', 'Rua das Antas', '1', 'Centro', 'Santa Maria', 'RS');



-- telefone-usuario

CREATE TABLE telefoneUsuario (
	idTelefone 		int 			auto_increment,
	numero 			varchar(11),
	cpf 			varchar(11),
	PRIMARY KEY (idTelefone),
	FOREIGN KEY (cpf) REFERENCES usuario(cpf)
);
 
SELECT * FROM telefoneUsuario;

INSERT INTO telefoneUsuario VALUES (1, '16991959435','46772304200');
INSERT INTO telefoneUsuario VALUES (2, '5581487733','54599211102');



-- email-usuario

CREATE TABLE emailUsuario (
	idEmail 		int 			auto_increment,
	email 			varchar(40),
	cpf 			varchar(11),
	PRIMARY KEY (idEmail),
	FOREIGN KEY (cpf) REFERENCES usuario(cpf)
);

SELECT * FROM emailUsuario;

INSERT INTO emailusuario VALUES (1, 'mike.nunes@outlook.com','46772304200');
INSERT INTO emailusuario VALUES (2, 'luan.general@gmail.com','54599211102');



-- carteirinha 

CREATE TABLE carteirinha (
	idCarteirinha	INT	 		AUTO_INCREMENT,
    validade		DATE		NOT NULL,
    cpf				VARCHAR(11),
    PRIMARY KEY (idCarteirinha),
	FOREIGN KEY (cpf)	REFERENCES usuario(cpf)
);

SELECT * FROM carteirinha;

INSERT INTO carteirinha VALUES (1, '2023-12-31', '46772304200');
INSERT INTO carteirinha VALUES (2, '2024-05-31', '54599211102');