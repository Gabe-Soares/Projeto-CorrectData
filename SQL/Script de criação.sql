/* Definição e estruturação do banco de dados e da tabela. */
CREATE DATABASE CorrectData_Contatos;

USE CorrectData_Contatos;

CREATE TABLE CONTATOS_TB(
	nome_contato VARCHAR(55) PRIMARY KEY,
	nasc_data DATE,
	email_contato VARCHAR(55),
	email_tipo VARCHAR(12),
	tel1_contato VARCHAR(15),
	tel1_tipo VARCHAR(11),
	tel2_contato VARCHAR(15),
	tel2_tipo VARCHAR(11)
);

/* INSERT de população para testes no desenvolvimento da aplicação WEB. */
INSERT INTO dbo.CONTATOS_TB(nome_contato, nasc_data, email_contato, email_tipo, tel1_contato, tel1_tipo) values
('Alexandre Barroso', '20001015', 'ale_barroso@gmail.com', 'Pessoal', '11 99999-9999', 'Celular'),
('Bruno Lopes', '20000823', 'brunolopes@gmail.com', 'Profissional', '41 98888-8888', 'Celular'),
('Ivan Messias', '19990911', 'ivan123@gmail.com', 'Pessoal', '11 97777-7777', 'Celular'),
('Marcos dos Santos', '19980402', 'msantos321@gmail.com', 'Pessoal', '11 96666-6666', 'Celular');

 /* INSERT de registro com campos nulos para teste. */
INSERT INTO dbo.CONTATOS_TB(nome_contato, nasc_data, email_contato, email_tipo, tel1_contato, tel1_tipo) values
('Gabriel Moura', '19950101', 'g1m2@gmail.com', 'Pessoal', NULL, NULL);

/* SELECT para garantir a execução dos INSERTs. */
SELECT * FROM CONTATOS_TB;