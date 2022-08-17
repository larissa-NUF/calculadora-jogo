-- Gera��o de Modelo f�sico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Usuario (
Id int PRIMARY KEY,
Tipo varchar(255),
Login varchar(255),
Nome varchar(255),
Senha varchar(255)
)

CREATE TABLE Historico (
Id int PRIMARY KEY,
IdUsuario int,
Data datetime,

FOREIGN KEY(IdUsuario ) REFERENCES Usuario (Id)
)

CREATE TABLE TipoDominio (
Id int PRIMARY KEY,
Valor decimal,
Nome varchar(255)
)

CREATE TABLE HistoricoItens (
Quantidade int,
IdHistorico int,
IdTipo int,
FOREIGN KEY(IdTipo ) REFERENCES TipoDominio (Id),
FOREIGN KEY(IdHistorico ) REFERENCES Historico (Id)
)

