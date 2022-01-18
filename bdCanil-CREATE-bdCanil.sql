CREATE DATABASE bdCanil

USE bdCanil

CREATE TABLE tbRaca(
   codRaca INT PRIMARY KEY IDENTITY(1,1)
   , descRaca VARCHAR(40) NOT NULL
)

CREATE TABLE tbVacina(
   codVacina INT PRIMARY KEY IDENTITY(1,1)
   , descVacina VARCHAR (25) NOT NULL
)

   CREATE TABLE tbDoenca(
   codDoenca INT PRIMARY KEY IDENTITY(1,1)
   , descDoenca VARCHAR (45) NOT NULL
)

CREATE TABLE tbCandidato(
   codCandidato INT PRIMARY KEY IDENTITY(1,1)
   , nomeCandidato VARCHAR(60) NOT NULL
   , cpfCandidato VARCHAR(15) NOT NULL UNIQUE
   , logCandidato VARCHAR(70) NOT NULL
   , numCandidato INT
   , complementoCandidato VARCHAR(30)
   , cepCandidato VARCHAR(9)
   , bairroCandidato VARCHAR(35)
   , cidadeCandidato VARCHAR(30)
)

CREATE TABLE tbFoneCandidato(
   codFoneCandidato INT PRIMARY KEY IDENTITY(1,1)
   , descFoneCandidato VARCHAR(14) NOT NULL
   ,codCandidato INT FOREIGN KEY REFERENCES tbCandidato(codCandidato)
)

CREATE TABLE tbDog(
   codDog INT PRIMARY KEY IDENTITY(1,1)
   , nomeDog VARCHAR(30) 
   ,idadeEstimadaDog INT
   ,estadoSaudeDog VARCHAR(25)
   ,codRaca INT FOREIGN KEY REFERENCES tbRaca(codRaca)
)

CREATE TABLE tbProntuario(
   codProntuario INT PRIMARY KEY IDENTITY(1,1)
   , codDoenca INT FOREIGN KEY REFERENCES tbDoenca(codDoenca)
   , codDog INT FOREIGN KEY REFERENCES tbDog(codDog)
)

CREATE TABLE tbCarteiraVacina(
   codCarteiraVacina INT PRIMARY KEY IDENTITY(1,1)
   , codVacina INT FOREIGN KEY REFERENCES tbVacina(codVacina)
   , codDog INT FOREIGN KEY REFERENCES tbDog(codDog)
)

CREATE TABLE tbAdocao(
   codAdocao INT PRIMARY KEY IDENTITY(1,1)
   , identifAdocao INT
   , dataAdocao SMALLDATETIME
   , codCandidato INT FOREIGN KEY REFERENCES tbCandidato(codCandidato)
   ,codDog INT FOREIGN KEY REFERENCES tbDog(codDog)
)

CREATE TABLE tbDoacaoDog(
   codDoacaoDog INT PRIMARY KEY IDENTITY(1,1)
   , descDoacaoDog VARCHAR(20)
   , codDog INT FOREIGN KEY REFERENCES tbDog(codDog)
   , codAdocao INT FOREIGN KEY REFERENCES tbAdocao(codAdocao)
)





