USE bdEscola

-- 01
SELECT nomeAluno AS 'Nome do Aluno', rgAluno AS 'RG do Aluno', dataNascimentoAluno AS 'data de Nascimento do Aluno' 
FROM tbAluno
WHERE naturalidadeAluno = 'SP'

-- 02
SELECT nomeAluno AS 'Nome do Aluno', rgAluno AS 'RG do Aluno' 
FROM tbAluno
WHERE nomeAluno LIKE 'P%'

-- 03 
SELECT nomeCurso AS 'Nome do Curso'
FROM tbCurso
WHERE cargaHorariaCurso > 2000

-- 04
SELECT nomeAluno AS 'Nome do Aluno', rgAluno 'RG do Aluno'
FROM tbAluno
WHERE nomeAluno LIKE '%Silva'

-- 05
SELECT nomeAluno AS 'Nome do Aluno', dataNascimentoAluno AS 'Data de Nascimento do Aluno'
FROM tbAluno
WHERE MONTH(dataNascimentoAluno) = 03

-- 06
SELECT codAluno AS 'Código do Aluno', dataMatricula 'Data da Matrícula'
FROM tbMatricula
WHERE MONTH(dataMatricula) = 05

-- 07
SELECT codAluno AS 'Código do Aluno' 
FROM tbMatricula
WHERE codTurma BETWEEN 1 AND 2

-- 08
SELECT codAluno AS 'Código do Aluno'
FROM tbMatricula
WHERE codTurma = 3

-- 09
SELECT nomeAluno AS 'Nome do Aluno', dataNascimentoAluno AS 'Data de Nascimento do Aluno', rgAluno AS 'RG do Aluno', naturalidadeAluno AS 'Naturalidade do Aluno'
FROM tbAluno

-- 10
SELECT nomeTurma AS 'Nome da Turma', codCurso AS 'Código do Curso', horarioTurma AS 'Horário da Turma'
FROM tbTurma