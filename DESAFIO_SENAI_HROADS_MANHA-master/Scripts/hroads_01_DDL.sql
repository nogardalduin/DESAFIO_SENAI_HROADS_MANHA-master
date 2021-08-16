CREATE DATABASE SENAI_HROADS_MANHA_GRUPO16;
GO


USE SENAI_HROADS_MANHA_GRUPO16;
GO


CREATE TABLE Classes
(
	IdClasse INT PRIMARY KEY IDENTITY(1,1),
	Nome TEXT NOT NULL,
);
GO


CREATE TABLE Personagens
(
	IdPersonagem	INT PRIMARY KEY IDENTITY(1,1),
	IdClasse		INT FOREIGN KEY REFERENCES Classes (IdClasse),
	Nome			VARCHAR(200) NOT NULL,
	MaxVida			TINYINT NOT NULL,
	MaxMana			TINYINT NOT NULL,
	DataAtualizacao DATE NOT NULL, 
	DataCriacao		DATE NOT NULL
);
GO


CREATE TABLE TiposDeHabilidades
(
	IdTipoHabilidade INT PRIMARY KEY  IDENTITY(1,1),
	Nome			 TEXT NOT NULL,
);
GO


CREATE TABLE Habilidades
(
	IdHabilidade	   INT PRIMARY KEY IDENTITY(1,1),
	IdTipoDeHabilidade INT FOREIGN KEY REFERENCES TiposDeHabilidades (IdTipoHabilidade),
	Nome			   TEXT NOT NULL,
);
GO


CREATE TABLE ClassesHabilidades
(
	IdHabilidade INT FOREIGN KEY REFERENCES Habilidades (IdHabilidade),
	IdClasse INT FOREIGN KEY REFERENCES Classes (IdClasse),
);
GO