-- ================================
-- UPDATE E DELETE - DML
-- ================================

-- UPDATES --------------------------

-- 1) Atualizar o valor de um plano
UPDATE Plano
SET Valor = 350.00
WHERE PlanoID = 2;

-- 2) Alterar a carga de um exercício específico no treino
UPDATE TreinoExercicio
SET Carga = 55
WHERE TreinoID = 1 AND ExercicioID = 1;

-- 3) Atualizar o status de um equipamento
UPDATE Equipamento
SET Status = 'Operacional'
WHERE EquipID = 3;

-- DELETES --------------------------

-- 1) Remover um aluno específico
DELETE FROM Aluno
WHERE AlunoID = 3;

-- 2) Excluir exercícios de um treino
DELETE FROM TreinoExercicio
WHERE TreinoID = 2;

-- 3) Excluir uma manutenção muito antiga
DELETE FROM Manutencao
WHERE DataManut < '2025-02-21';
