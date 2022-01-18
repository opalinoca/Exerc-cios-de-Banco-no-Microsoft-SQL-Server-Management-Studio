CREATE DATABASE bdEmpresa

USE bdEmpresa

CREATE TABLE tbDepto(
    idDepto INT PRIMARY KEY IDENTITY(1,1)
	, nomeDepto VARCHAR(20) NOT NULL
)

CREATE TABLE tbProjeto(
    idProjeto INT PRIMARY KEY IDENTITY(1,1)
	, nomeProjeto VARCHAR(30) NOT NULL
	, cargaHoraria INT NOT NULL
)

CREATE TABLE tbFuncionario(
    idFuncionario INT PRIMARY KEY IDENTITY(1,1)
	, nomeFuncionario VARCHAR(50) NOT NULL
	, cpfFuncionario CHAR(14) NOT NULL
	, rgFuncionario VARCHAR(14) NOT NULL
	, idDepto INT FOREIGN KEY REFERENCES tbDepto(idDepto)
)

CREATE TABLE tbFoneFuncionario(
    idFoneFuncionario INT PRIMARY KEY IDENTITY(1,1)
	, numFoneFuncionario VARCHAR(14) NOT NULL
	, idFuncionario INT FOREIGN KEY REFERENCES tbFuncionario(idFuncionario)
)

CREATE TABLE tbConjuge(
    idConjuge INT PRIMARY KEY IDENTITY(1,1)
	, nomeConjuge VARCHAR(50) NOT NULL
	, idFuncionario INT FOREIGN KEY REFERENCES tbFuncionario(idFuncionario)
)

CREATE TABLE tbDependente(
    idDependente INT PRIMARY KEY IDENTITY(1,1)
	, nomeDependente VARCHAR(50) NOT NULL
	, dtNascDependente SMALLDATETIME NOT NULL
	, idFuncionario INT FOREIGN KEY REFERENCES tbFuncionario(idFuncionario)
)

CREATE TABLE tbFuncionarioProjeto(
   idFuncionarioProjeto INT PRIMARY KEY IDENTITY(1,1)
   , idFuncionario INT FOREIGN KEY REFERENCES tbFuncionario(idFuncionario)
   , idProjeto INT FOREIGN KEY REFERENCES tbProjeto(idProjeto)
   , qtdHoras INT NOT NULL
)