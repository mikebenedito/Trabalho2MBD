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
INSERT INTO usuario VALUES ('76712332155', 'Katiane Gamarra', '2002-11-13', 'Rua Central', '123', 'Centro', 'São Luiz Gonzaga', 'RS');
INSERT INTO usuario VALUES ('8983467721', 'Vinicius Nunes', '2002-03-06', 'Rua dos Bobos', '0', 'Jardim Brasil', 'Franca', 'SP');
INSERT INTO usuario VALUES ('77732317711', 'Mariana Pereira', '2002-03-16', 'Rua Madalena', '4141', 'Centro', 'Santa Maria', 'RS');

INSERT INTO usuario VALUES ('83975748123', 'Esther Nunes', '2004-02-28', 'Avenida João Maluco', '1324', 'Jardim Jesus', 'Franca', 'SP');
INSERT INTO usuario VALUES ('09581723741', 'Vinicius Neves', '2001-07-14', 'Rua do Savegnago', '552', 'Cidade Nova', 'Franca', 'SP');
INSERT INTO usuario VALUES ('58429974221', 'Luiz Baphometro', '2001-04-12', 'Rua da Escola', '1865', 'Vila Maria', 'Franca', 'SP');
INSERT INTO usuario VALUES ('89531223151', 'Emili Treze', '2005-05-12', 'Rua da Porteira', '5001',  null, 'São Luiz Gonzaga', 'RS');
INSERT INTO usuario VALUES ('88572918235', 'Chico Rey', '1963-09-17', 'Avenida dos Passaros', '123', 'Industrial', 'Franca', 'SP');

INSERT INTO usuario VALUES ('75633123412', 'José Rico', '1966-01-30', 'Estrada da Vida', '1', 'Jardim de Deus', 'São Paulo', 'SP');
INSERT INTO usuario VALUES ('99847281231', 'Trio Parada Dura', '1975-05-15', 'Rua do Fuscão Preto', '599', 'Bairro Telefone Mudo', 'Ribeirão Preto', 'SP');
INSERT INTO usuario VALUES ('86647152371', 'Luiz Inacio Lula da Silva', '1959-01-01', 'Avenida Brasil', '13', 'Centro', 'Brasilia','DF');
INSERT INTO usuario VALUES ('12345678901', 'Luis Suarez', '1987-12-05', 'Hotel do Gremio', '1903', 'Centro', 'Porto Alegre', 'RS');
INSERT INTO usuario VALUES ('09876543231', 'Maria Bonita', '1978-07-01', 'Rua Lampião', '132', 'Centro', 'Franca', 'SP');

INSERT INTO usuario VALUES ('00000000001', 'Jesus de Nazaré', '0000-12-25', null, null, null, 'Rio de Janeiro', 'RJ');
INSERT INTO usuario VALUES ('75826122614', 'Kurt Cobain', '1974-12-25', 'Avenida Presidente Vargas', '1994', 'Centro', 'Franca', 'SP');
INSERT INTO usuario VALUES ('18237456712', 'Pantufa Santana', '1997-02-05', 'Rua dos Bobos', '01', 'Jardim Brasil', 'Franca', 'SP');
INSERT INTO usuario VALUES ('45623221233', 'Neto Sobrinho', '1997-02-05', 'Rua Madeira', '2323', 'Jardim Brasil', 'Franca', 'SP');
INSERT INTO usuario VALUES ('42385761221', 'Cassiano Gamarra','1966-11-29','Rua Central', '123', 'Centro', 'São Luiz Gonzaga', 'RS');

UPDATE usuario
SET dataNasc = '2003-11-13'
WHERE nome = 'Katiane Gamarra';

UPDATE usuario
SET dataNasc = '2003-03-06'
WHERE nome = 'Vinicius Nunes';


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
INSERT INTO telefoneusuario							-- fiz dessa forma para testar se dava certo e deu.
VALUES 	(3, 5582371232, 76712332155),
		(4, 5568721331, 77732317711),
        (5, 1677383212, 8983467721),
		(6, 1689321231, 83975748123);
INSERT INTO telefoneusuario VALUES (7, 1882312345, 83975748123); -- Estava dando erro com um usuario então coloquei o id de outro usuario
INSERT INTO telefoneusuario
VALUES 	(8, 1782314571, 58429974221),
		(9, 1581983424, 89531223151),
        (10, 1564625343, 88572918235),
        (11, 5590214322, 75633123412),
        (12, 6790987656, 99847281231);
INSERT INTO telefoneusuario 
VALUES  (13, 1598231471, 86647152371),
        (14, 8812929194, 12345678901);
INSERT INTO telefoneusuario 
VALUES  (15, 1289789291, 12345678901), -- O mesmo caso do ID 7
		(16, 0100000001, 75826122614); -- O mesmo caso do de cima
INSERT INTO telefoneusuario
VALUES  (17, 9876457712, 75826122614),
        (18, 1687921212, 18237456712),
        (19, 1678894433, 45623221233),
        (20, 1767752334, 42385761221);

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
INSERT INTO emailusuario							-- fiz da mesma forma que fiz no telefone-usuario
VALUES 	(3, 'katiaugames@outlook.com', 76712332155),
		(4, 'mariana.com', 77732317711),
        (5, 'bolachaben10@hotmail.com', 8983467721),
		(6, 'contato.esther@fatec.com', 83975748123),
		(7, 'dog@email.com', 83975748123),
		(8, 'luizera@outlook.com', 58429974221),
		(9, 'banbino55@hotmail.com', 89531223151),
        (10, 'zika6@gmail.com', 88572918235),
        (11, 'meuemail.com', 75633123412),
        (12, 'cabeleleileilei@outlook.com', 99847281231),
		(13, 'manu898@outlook.com', 86647152371),
        (14, 'riodejaneiro@prefeitura.com.br', 12345678901),
		(15, 'diamantesaiaiai@email.com', 12345678901),
		(16, 'www.com.br', 75826122614),
		(17, 'raimundosrock@contato.com', 75826122614),
        (18, 'quedornopescoço@naoaguentomais.com', 18237456712),
        (19, '666satanas@contato.com', 45623221233),
        (20, 'manuelzinho66@internet', 42385761221);



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
INSERT INTO carteirinha							
VALUES 	(3, '2026-01-01', 76712332155),
		(4, '2023-12-31', 77732317711),
        (5, '2025-01-05', 8983467721),
		(6, '2023-10-19', 83975748123),
		(7, '2050-01-01', 83975748123),
		(8, '2024-06-12', 58429974221),
		(9, '2023-11-28', 89531223151),
        (10, '2026-06-06', 88572918235),
        (11, '2024-03-12', 75633123412),
        (12, '2023-12-01', 99847281231),
		(13, '2024-09-12', 86647152371),
        (14, '2023-12-25', 12345678901),
		(15, '2024-05-04', 12345678901),
		(16, '3000-12-25', 75826122614),
		(17, '2025-09-10', 75826122614),
        (18, '2024-11-01', 18237456712),
        (19, '2040-10-10', 45623221233),
        (20, '2024-10-11', 42385761221);



-- editora

CREATE TABLE editora (
	idEditora		INT				PRIMARY KEY		AUTO_INCREMENT,
    nome			VARCHAR(30)		NOT NULL
);

SELECT * FROM editora;

INSERT INTO editora VALUES (1, 'FATEC');



-- telefone-editora

CREATE TABLE telefoneEditora (
	idTelefone 		INT 			AUTO_INCREMENT,
	numero 			VARCHAR(11),
	idEditora 		INT,
	PRIMARY KEY (idTelefone),
	FOREIGN KEY (idEditora) REFERENCES editora(idEditora)
);

SELECT * FROM telefoneEditora;

INSERT INTO telefoneEditora VALUES (1, '1155667788', 1);

-- email-editora

CREATE TABLE emailEditora(
	idEmail			INT			AUTO_INCREMENT,
    email			VARCHAR(40),
    idEditora		INT,
    PRIMARY KEY (idEmail),
    FOREIGN KEY (idEditora) REFERENCES editora(idEditora)
);

SELECT * FROM emailEditora;

INSERT INTO emailEditora VALUES (1, 'editora.fatec@gov.com.br', 1);



-- livro

CREATE TABLE livro (
	isbn			INT,
    titulo			VARCHAR(50),
    anoPublicacao	YEAR,
    idEditora		INT,
    PRIMARY KEY (isbn),
    FOREIGN KEY (idEditora) REFERENCES editora(idEditora)
);

SELECT * FROM livro;

INSERT INTO livro VALUES (1234, 'Manual Fatec', '2015', 1);



-- autor

CREATE TABLE autor (
	idAutor 		INT			PRIMARY KEY			AUTO_INCREMENT,
    nome			VARCHAR(50),
    dataNasc		DATE,
    nacionalidade	VARCHAR(50)
);


SELECT * FROM autor;

INSERT INTO autor VALUES (1, 'Fatec', '2015-01-01','Brasileiro');



-- livro-autor

CREATE TABLE livroAutor (
	isbn			INT,
    idAutor			INT,
    FOREIGN KEY (isbn) 		REFERENCES livro(isbn),
    FOREIGN KEY (idAutor)	REFERENCES autor(idAutor)
);

SELECT * FROM livroAutor;

INSERT INTO livroAutor VALUES (1234, 1);


-- emprestimo

CREATE TABLE emprestimo (
	idEmprestimo	INT			PRIMARY KEY			AUTO_INCREMENT,
    dataEmprestimo	DATE,
    idCarteirinha	INT,
    isbn			INT,
    FOREIGN KEY (idCarteirinha)		REFERENCES carteirinha(idCarteirinha),
    FOREIGN KEY (isbn)				REFERENCES livro(isbn)
);

SELECT * FROM emprestimo;

