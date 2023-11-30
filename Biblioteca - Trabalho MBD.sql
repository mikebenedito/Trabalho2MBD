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
INSERT INTO editora 
VALUES 	(2, 'Editora Paiva'),
		(3, 'Tupi'),
        (4, 'Abril'),
        (5, 'Cultura Brasileira'),
        (6, 'Editora Paulista'),
        (7, 'Sete de Setembro'),
		(8, 'Tatuarana Books'),
        (9, 'Poesia'),
        (10, 'Choque'),
        (11, 'Brasil'),
		(12, 'Belas Artes'),
		(13, 'Pentagrama'),
        (14, 'DSM'),
        (15, 'Tecno Livros'),
        (16, 'Hipopotamo Branco'),
		(17, 'CETAF'),
		(18, 'Noronha'),
        (19, 'Amazonas'),
        (20, 'Primeira Infancia'),
        (21, 'Hermano');




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
INSERT INTO telefoneEditora
VALUES 	(2, '1599008776', 2),
		(3, '5589827632', 3),
		(4, '1593882712', 4),
		(5, '7712342312', 5),
		(6, '6695929301', 6),
        (7, '1503934512', 7),
		(8, '1889843127', 8),
		(9, '2490928381', 9),
		(10, '5190920311', 10),
		(11, '6654489290', 11),
		(12, '5512333321', 12),
		(13, '5189854388', 13),
		(14, '9132909012', 14),
		(15, '1212121212', 15),
		(16, '5167684882', 16),
		(17, '1690933929', 17),
		(18, '1809320932', 18),
		(19, '1189689443', 19),
		(20, '1123233455',20);
        
        
        
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
INSERT INTO emaileditora
VALUES 	(2, '12323@contato.com', 2),
		(3, 'lerfazbem@gmail.com', 3),
		(4, 'alfabetizando@contato.com', 4),
		(5, 'tatupeba@taturana.com', 5),
		(6, 'livros@gov.com.br', 6),
        (7, 'yuji@mamada.com', 7),
		(8, 'prof.molina@contato.com', 8),
		(9, 'email@outlook.com', 9),
		(10, 'outlook@gmail.com', 10),
		(11, 'garrinchapernastortas@contato.com', 11),
		(12, 'chuvalafora@contatos.com', 12),
		(13, 'youtube.com', 13),
		(14, null, 14),
		(15, 'jacintopinto@outlook.com', 15),
		(16, 'mafagafos@gmail.com', 16),
		(17, 'sagradocoracao@contato.com', 17),
		(18, 'hivemind@outlook.com', 18),
		(19, 'flstudio.sucks@hotmail.com', 19),
		(20, 'walterwhite@contact.com',20);



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
INSERT INTO livro VALUES (1235, 'Biblia', '2000', 2);			-- aqui nessa parte dos livros eu tive que dar o insert um por um pois estava dando erro :(
INSERT INTO livro VALUES (1236, 'Manual do Mundo', '2009', 3);  -- descobri porque alguns estavam dando erro. Aparentemente se é muito antigo o formato YEAR nao funciona
INSERT INTO livro VALUES (1237, 'Dom Quixote', '1901', 4); 		-- Tem que ser maior que 1901 pra dar certo
INSERT INTO livro VALUES (1238, 'Aprendendo Python', '2001', 5);
INSERT INTO livro VALUES (1239, 'MySQL for idiots', '2013', 6);
INSERT INTO livro VALUES (1240, 'Como Ficar Rico Vendendo Livros (TUTORIAL)', '2007', 7);
INSERT INTO livro VALUES (1241, 'Matamos Hitler e agora?', '1945', 8);
INSERT INTO livro VALUES (1242, 'Nomes', '1997', 9);
INSERT INTO livro VALUES (1243, 'Aquele do Stephen King', '1990', 10);
INSERT INTO livro VALUES (1244, 'O Outro do Stephen King', '1991', 11);
INSERT INTO livro VALUES (1245, 'Relatos da Vida em 1934', '1934', 12);
INSERT INTO livro VALUES (1246, 'O Fim do Mundo SEGUNDO O CALENDÁRIO MAIA', '2012', 13);
INSERT INTO livro VALUES (1247, 'As Bolas do Dragão', '1989', 14);
INSERT INTO livro VALUES (1248, 'Revoltas Operarias nos Grandes Centros', '1990', 15);
INSERT INTO livro VALUES (1249, 'O Bug do Milenio', '2000', 16);
INSERT INTO livro VALUES (1250, 'Livro Antigo Pacas', '1901', 17); --
INSERT INTO livro VALUES (1251, 'Biblia 2', '2001', 18);
INSERT INTO livro VALUES (1252, 'Manual Fatec en espanhol', '2016', 19);
INSERT INTO livro VALUES (1253, 'Como se Preparar para o Seculo XX', '1901', 20); --
INSERT INTO livro VALUES (1254, 'Copa do Mundo no Brasil', '2014', 20);


-- autor

CREATE TABLE autor (
	idAutor 		INT			PRIMARY KEY			AUTO_INCREMENT,
    nome			VARCHAR(50),
    dataNasc		DATE,
    nacionalidade	VARCHAR(50)
);


SELECT * FROM autor;

INSERT INTO autor VALUES (1, 'Fatec', '2015-01-01','Brasileiro');
INSERT INTO autor 
VALUES 	(2, 'Manuelzinho Braga', '1989-05-02','Brasileiro'),
		(3, 'Fatima Barbie', '2000-11-18','Brasileiro'),
		(4, 'Olga Ximenez', '1975-06-05','Brasileiro'),
		(5, 'Carlos Dias', '1989-11-11','Brasileiro'),
		(6, 'Homem Bicentenario', '1823-11-29','Brasileiro'),
		(7, 'Edgar Alan Poe', '1769-12-31','Brasileiro'),
		(8, 'Julia Juliana', '1997-03-12','Brasileiro'),
		(9, 'Gabriel Bandeiras', '1989-10-11','Brasileiro'),
		(10, 'Hugo Pereira', '1915-04-21','Brasileiro'),
		(11, 'Casemiro Bolinha', '1990-07-01','Brasileiro'),
		(12, 'Cetaf', '2015-01-01','Brasileiro'),
		(13, 'O Coringa', '1928-03-11','Brasileiro'),
		(14, 'Bobonalta', '2001-04-21','Brasileiro'),
		(15, 'Fabio Ervas', '1990-07-12','Brasileiro'),
		(16, 'Bibliotecario', '1999-11-19','Brasileiro'),
		(17, 'Swarza From Gremio', '1987-12-11','Brasileiro'),
		(18, 'Renato Portalupe', '1960-03-21','Brasileiro'),
		(19, 'Robocop III', '2079-02-17','Brasileiro'),
		(20, 'Rita Lee', '2000-11-02','Brasileiro');
        
        
        
-- livro-autor

CREATE TABLE livroAutor (
	isbn			INT,
    idAutor			INT,
    FOREIGN KEY (isbn) 		REFERENCES livro(isbn),
    FOREIGN KEY (idAutor)	REFERENCES autor(idAutor)
);

SELECT * FROM livroAutor;

INSERT INTO livroAutor VALUES (1234, 1);
INSERT INTO livroAutor
VALUES 	(1235, 2),
		(1236, 3),
		(1237, 4),
		(1238, 5),
		(1239, 6),
        (1240, 7),
		(1241, 8),
		(1242, 9),
		(1243, 10),
		(1244, 11),
		(1245, 12),
		(1246, 13),
		(1247, 14),
		(1248, 15),
		(1249, 16),
        (1250, 17),
		(1251, 18),
		(1252, 19),
		(1253, 20),
        (1254, 12);



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

INSERT INTO emprestimo VALUES (1, '2023-05-01', 1, 1234);
INSERT INTO emprestimo 
VALUES 	(2, '2023-05-01', 2, 1235),
		(3, '2023-05-01', 3, 1236),
        (4, '2023-05-01', 4, 1237),
        (5, '2023-05-01', 5, 1238),
        (6, '2023-05-01', 6, 1239),
        (7, '2023-05-01', 7, 1240),
		(8, '2023-05-01', 8, 1241),
        (9, '2023-05-01', 9, 1242),
        (10, '2023-05-01', 10, 1243),
        (11, '2023-05-01', 11, 1244),
        (12, '2023-05-01', 12, 1245),
		(13, '2023-05-01', 13, 1246),
        (14, '2023-05-01', 14, 1247),
        (15, '2023-05-01', 15, 1248),
        (16, '2023-05-01', 16, 1249),
        (17, '2023-05-01', 17, 1250),
		(18, '2023-05-01', 18, 1251),
        (19, '2023-05-01', 19, 1252),
        (20, '2023-05-01', 20, 1253),
        (21, '2023-05-01', 1, 1254);
        
        
	
-- Exemplos de CRUD:

-- CREATE - INSERT:

SELECT * FROM usuario;

INSERT INTO usuario VALUES ('12312312312', 'Mariazinha', '2000-01-01', 'Rua Bonita', '1234', 'Bairro Top', 'Franca', 'SP');


-- READ - SELECT:

SELECT * FROM usuario;

SELECT nome FROM usuario;


-- UPDATE:

SELECT * FROM usuario
WHERE nome = 'Mariazinha';

UPDATE usuario
SET dataNasc = '1999-12-31'
WHERE nome = 'Mariazinha';


-- DELETE:

SELECT * FROM livro;

DELETE FROM usuario
WHERE nome = 'Mariazinha';





-- RELATORIOS (Seleção, filtro e ordenação):

-- 1 Selecione a quantidade de livros publicados por Editora;

SELECT nome, COUNT(titulo) FROM editora e
LEFT JOIN livro l ON l.idEditora = e.idEditora
GROUP BY nome;

-- 2 Selecione a quantidade de livros publicados por Autor;

SELECT nome, COUNT(isbn) FROM autor a
LEFT JOIN livroautor la ON la.idAutor = a.idAutor
GROUP BY nome;

-- 3 Selecione todos os livros que foram publicados depois do ano 2000;

SELECT * FROM livro
WHERE anoPublicacao >= '2000';

-- 4 Selecione todos os usuários cujo o nome comece com M;

SELECT * FROM usuario
WHERE nome LIKE 'M%';

-- 5 Ordene os emails das Editoras em ordem alfabetica;

SELECT * FROM emaileditora
ORDER BY email;

-- 6 Ordene o nome da rua dos usuários em ordem decrescente;

SELECT * FROM usuario
ORDER BY rua DESC; 

-- 7 Selecione apenas o nome e a cidade dos usuários que moram no Rio Grande do Sul;

SELECT nome, cidade FROM usuario
WHERE estado = 'RS';

-- 8 Selecione todos os livros com ISBN maiores que 1255;

SELECT * FROM livro
WHERE isbn > 1255;

-- 9 Selecione todos os usuários com o DDD do Rio Grande do Sul;

SELECT * FROM usuario u
LEFT JOIN telefoneusuario tu ON tu.cpf = u.cpf
WHERE tu.numero LIKE '5%';

-- 10 Selecione a data de nascimento dos Autores Brasileiros;

SELECT dataNasc FROM autor
WHERE nacionalidade = 'Brasileiro';