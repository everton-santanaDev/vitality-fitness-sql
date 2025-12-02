-- ================================
-- CONSULTAS SQL - SELECT
-- ================================

-- 1) Listar alunos e seus respectivos planos (JOIN)
SELECT Aluno.Nome, Plano.NomePlano, Plano.Valor
FROM Aluno
JOIN Plano ON Aluno.PlanoID = Plano.PlanoID;

-- 2) Buscar exercícios ordenados pelo músculo alvo
SELECT NomeExercicio, MusculoAlvo 
FROM Exercicio
ORDER BY MusculoAlvo ASC;

-- 3) Ver os três primeiros alunos cadastrados (LIMIT)
SELECT AlunoID, Nome, DataEntrada 
FROM Aluno
ORDER BY DataEntrada
LIMIT 3;

-- 4) Listar treinos com nome do aluno e nome do instrutor
SELECT T.TreinoID, A.Nome AS Aluno, I.Nome AS Instrutor, T.DataCriacao
FROM Treino T
JOIN Aluno A ON T.AlunoID = A.AlunoID
JOIN Instrutor I ON T.InstrutorID = I.InstrutorID;

-- 5) Listar equipamentos que estão em manutenção
SELECT NomeEquip, Status
FROM Equipamento
WHERE Status = 'Em manutenção';
