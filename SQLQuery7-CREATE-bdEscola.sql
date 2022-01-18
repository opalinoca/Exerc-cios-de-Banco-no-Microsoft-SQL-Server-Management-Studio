CREATE DATABASE bdEscola

USE bdEscola

CREATE TABLE tbCurso(
   codCurso INT NOT NULL PRIMARY KEY IDENTITY(1,1)
   , nomeCurso VARCHAR (50) NOT NULL
   , cargaHorariaCurso INT NOT NULL
   , valorCurso SMALLMONEY NOT NULL
)

CREATE TABLE tbAluno(
   codAluno INT NOT NULL PRIMARY KEY IDENTITY(1,1)
   , nomeAluno VARCHAR (70) NOT NULL
   , dataNascimentoAluno SMALLDATETIME NOT NULL
   , rgAluno VARCHAR (15) NOT NULL
   , naturalidadeAluno VARCHAR (50) NOT NULL
)

CREATE TABLE tbTurma(
   codTurma INT NOT NULL PRIMARY KEY IDENTITY(1,1)
   , nomeTurma VARCHAR (50) NOT NULL
   , codCurso INT FOREIGN KEY REFERENCES tbCurso (codCurso)
   , horarioTurma SMALLDATETIME NOT NULL
)

CREATE TABLE tbMatricula(
   codMatricula INT NOT NULL PRIMARY KEY IDENTITY(1,1)
   , dataMatricula SMALLDATETIME NOT NULL
   , codAluno INT FOREIGN KEY REFERENCES tbAluno (codAluno)
   , codTurma INT FOREIGN KEY REFERENCES tbTurma (codTurma)
)