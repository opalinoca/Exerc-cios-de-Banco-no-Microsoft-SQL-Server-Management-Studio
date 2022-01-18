USE bdEscolaIdiomas

INSERT INTO tbCurso(nomeCurso)
VALUES ('Espanhol')
     , ('Inglês')
	 , ('Alemão')

SELECT * FROM tbCurso

INSERT INTO tbPeriodo(descPeriodo)
VALUES ('Manhã')
     , ('Tarde')
	 , ('Noite')

SELECT * FROM tbPeriodo

INSERT INTO tbDiaSemana(diaSemana)
VALUES ('Segunda-Feira')
     , ('Terça-Feira')
	 , ('Quarta-Feira')
	 , ('Quinta-Feira')
	 , ('Sexta-Feira')
	 , ('Sábado')

SELECT * FROM tbDiaSemana

INSERT INTO tbNivel(descNivel)
VALUES ('Iniciante')
     , ('Intermediário')
	 , ('Avançado')

SELECT * FROM tbNivel

INSERT INTO tbAluno(nomeAluno, rgAluno, enderecoAluno, numEndAluno, compAluno, bairroAluno, cepAluno, cidadeAluno)
VALUES ('Aline Vieira da Silva', '23467890', 'Rua Bosque dos Anjos', '3', 'Casa 4', 'Jardim Andorinha', '08564-200', 'São Paulo')
     , ('Kamila Santana', '19056750', 'Marechal Tito', '323', '', 'Itaim Paulista', '09754-100', 'São Paulo')
	 , ('Kelvyn Mattos Nunes', '96870888', 'Avenida Nordestina', '6574', 'Casa 2','Jardim Aurora', '76541-895', 'São Paulo')
	 , ('Jhenyffer Keyce', '12345678', 'Rua Vicente Aprigio', '544', 'Casa 1', 'Jardim Aurora', '08431-900', 'São Paulo')
	 , ('Julia Giovanna dos Santos', '09876432', 'Rua Rafi Miguel Ackel', '371', 'Casa 1', 'Parque Guaianases', '08431-600', 'São Paulo')
	 , ('Bruna Barbosa', '56746233', 'Rua Oliveira das Andorinhas', '10', '', 'Guaianases', '09865-700', 'São Paulo')

SELECT * FROM tbAluno

INSERT INTO tbFoneAluno(foneAluno, idAluno)
VALUES ('(11) 96745-3998', 1)
     , ('(11) 99534-1209', 1)
	 , ('(11) 90004-4589', 2)
	 , ('(11) 95512-2920', 2)
	 , ('(11) 97865-4444', 3)
	 , ('(11) 96533-0038', 3)
	 , ('(11) 97775-9841', 4)
	 , ('(11) 98643-1818', 4)
	 , ('(11) 94321-3267', 5)
	 , ('(11) 97957-3022', 5)
	 , ('(11) 95432-1559', 6)
	 , ('(11) 95123-0000', 6)

SELECT * FROM tbFoneAluno

INSERT INTO tbTurma(horarioTurma, idCurso, idPeriodo, idNivel, idDiaSemana)
VALUES ('07:30', 1, 1, 1, 2)
     , ('13:30', 2, 2, 1, 1)
	 , ('19:30', 3, 3, 1, 3)
	 , ('13:30', 1, 2, 3, 4)
	 , ('19:30', 2, 3, 2, 5)
	 , ('07:30', 3, 1, 2, 6)

SELECT * FROM tbTurma

INSERT INTO tbMatricula(dataMatricula, idAluno, idTurma)
VALUES ('07/02/2020', 1, 6)
     , ('07/02/2021', 1, 2)
	 , ('05/02/2021', 2, 1)
	 , ('10/03/2021', 2, 4)
	 , ('05/06/2020', 3, 5)
	 , ('07/02/2020', 3, 4)
	 , ('05/02/2020', 4, 3)
	 , ('05/06/2020', 4, 2)
	 , ('10/02/2020', 5, 1)
	 , ('05/06/2021', 5, 2)
	 , ('07/02/2021', 6, 4)
	 , ('10/02/2021', 6, 6)

SELECT * FROM tbMatricula