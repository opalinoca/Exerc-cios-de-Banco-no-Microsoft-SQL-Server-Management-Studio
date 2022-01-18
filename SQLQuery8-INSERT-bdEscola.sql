USE bdEscola

INSERT INTO tbCurso(nomeCurso, cargaHorariaCurso, valorCurso)
VALUES ('Inglês', 2000, 356.00)
     , ('Alemão', 3000, 478.00)
	 SELECT * FROM tbCurso

INSERT INTO tbAluno(nomeAluno, dataNascimentoAluno, rgAluno, naturalidadeAluno)
VALUES ('Paulo Santos', '03/10/2000', '82.292.122-0', 'SP')
     , ('Maria da Glória', '10/03/1999', '45.233.123-0', 'SP')
	 , ('Perla Nogueira Silva', '04/04/1998', '23.533.211-9', 'SP')
	 , ('Gilson Barros Silva', '09/09/1995', '34.221.111-X', 'PE')
	 , ('Mariana Barbosa Santos', '10/10/2001', '54.222.122-9', 'RJ')
	 SELECT * FROM tbAluno

INSERT INTO tbTurma(nomeTurma,codCurso, horarioTurma)
VALUES ('1ºA', 1, '01/01/1900 12:00:00')
     , ('1ºB', 1, '01/01/1900 18:00:00')
	 , ('1ºAA', 2, '01/01/1900 19:00:00')
	 SELECT * FROM tbTurma

INSERT INTO tbMatricula(dataMatricula, codAluno, codTurma)
VALUES ('10/03/2015', 1, 1)
     , ('05/04/2014', 2, 1)
	 , ('05/03/2012', 3, 2)
	 , ('03/03/2016', 1, 3)
	 , ('05/07/2015', 4, 2)
	 , ('07/05/2015', 4, 3)
	 , ('06/06/2015', 5, 1)
	 , ('05/05/2015', 5, 3)
	 SELECT * FROM tbMatricula

