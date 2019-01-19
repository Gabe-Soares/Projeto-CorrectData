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