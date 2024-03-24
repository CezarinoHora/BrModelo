-- Geracao de Modelo fisico
-- Sql ANSI 2003 - brModelo.

CREATE TABLE Medico (
Id_Medico SERIAL PRIMARY KEY,
Nome VARCHAR(100),
CRM VARCHAR(20),
Celular varchar(40),
Salario NUMERIC(7,2)
);

CREATE TABLE Especialidade (
Id_Especialidade SERIAL PRIMARY KEY,
Nome_espec varchar(100)
);

CREATE TABLE Rua (
Id_Rua INTEGER PRIMARY KEY,
Descricao VARCHAR(100)
);

CREATE TABLE Bairro (
Id_Bairro INTEGER PRIMARY KEY,
Descricao VARCHAR(100)
);

CREATE TABLE Cidade (
Id_Cidade INTEGER PRIMARY KEY,
Descricao varchar(100),
UF char(2)
);

CREATE TABLE Endereco (
Id_Endereco INTEGER PRIMARY KEY,
CEP CHAR(8),
Id_Medico INTEGER,
Id_Rua INTEGER,
Id_Bairro INTEGER,
Id_Cidade INTEGER,
FOREIGN KEY(Id_Medico) REFERENCES Medico (Id_Medico),
FOREIGN KEY(Id_Rua) REFERENCES Rua (Id_Rua),
FOREIGN KEY(Id_Bairro) REFERENCES Bairro (Id_Bairro),
FOREIGN KEY(Id_Cidade) REFERENCES Cidade (Id_Cidade)
);

CREATE TABLE Especialidade_Medico (
DT_Inicio_Especialidade DATE,
Id_Especialidade integer,
Id_Medico INTEGER,
PRIMARY KEY(Id_Especialidade,Id_Medico),
FOREIGN KEY(Id_Especialidade) REFERENCES Especialidade (Id_Especialidade),
FOREIGN KEY(Id_Medico) REFERENCES Medico (Id_Medico)
);

