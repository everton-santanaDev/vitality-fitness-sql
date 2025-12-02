-- ================================
-- INSERTS - ACADEMIA VITALITY FITNESS
-- ================================

-- Tabela PLANO
INSERT INTO Plano (PlanoID, NomePlano, Valor, DuracaoMeses, Tipo) VALUES
(1, 'Mensal Básico', 120.00, 1, 'Básico'),
(2, 'Trimestral Plus', 330.00, 3, 'Intermediário'),
(3, 'Anual Premium', 1100.00, 12, 'Premium');

-- Tabela ALUNO
INSERT INTO Aluno (AlunoID, Nome, CPF, DataNascimento, Telefone, Email, DataEntrada, PlanoID) VALUES
(1, 'João Silva', '12345678900', '1990-05-10', '11999990000', 'joao@gmail.com', '2024-02-10', 1),
(2, 'Maria Santos', '98765432100', '1995-08-22', '21988880000', 'maria@gmail.com', '2024-03-01', 2),
(3, 'Pedro Rocha', '45678912300', '1988-11-15', '41977770000', 'pedro@gmail.com', '2024-01-20', 3);

-- Tabela INSTRUTOR
INSERT INTO Instrutor (InstrutorID, Nome, CPF, Especialidade, Telefone) VALUES
(1, 'Carlos Mendes', '11122233344', 'Musculação', '11944445555'),
(2, 'Fernanda Lopes', '22233344455', 'Funcional', '11955556666');

-- Tabela EXERCICIO
INSERT INTO Exercicio (ExercicioID, NomeExercicio, Descricao, MusculoAlvo) VALUES
(1, 'Supino Reto', 'Exercício para peitoral', 'Peito'),
(2, 'Agachamento Livre', 'Exercício para membros inferiores', 'Pernas'),
(3, 'Remada Curvada', 'Exercício para costas', 'Costas');

-- Tabela TREINO
INSERT INTO Treino (TreinoID, AlunoID, InstrutorID, DataCriacao, Objetivo) VALUES
(1, 1, 1, '2025-02-01', 'Hipertrofia'),
(2, 2, 2, '2025-02-05', 'Emagrecimento');

-- Tabela TREINOEXERCICIO
INSERT INTO TreinoExercicio (TreinoID, ExercicioID, Series, Repeticoes, Carga, Ordem) VALUES
(1, 1, 4, 12, 50, 1),
(1, 3, 3, 10, 40, 2),
(2, 2, 4, 15, 0, 1);

-- Tabela AULAColetiva
INSERT INTO AulaColetiva (AulaID, NomeAula, InstrutorID, DataHora, Duracao, Capacidade) VALUES
(1, 'Funcional Avançado', 2, '2025-03-10 08:00:00', 45, 20),
(2, 'HIIT Iniciante', 2, '2025-03-12 18:00:00', 30, 25);

-- Tabela EQUIPAMENTO
INSERT INTO Equipamento (EquipID, NomeEquip, Descricao, Status) VALUES
(1, 'Esteira', 'Equipamento de corrida', 'Operacional'),
(2, 'Supino', 'Banco de supino reto', 'Operacional'),
(3, 'Crossover', 'Máquina de cabos', 'Em manutenção');

-- Tabela MANUTENCAO
INSERT INTO Manutencao (ManutID, EquipID, DataManut, Descricao, Custo) VALUES
(1, 3, '2025-02-20', 'Troca de cabos', 250.00),
(2, 1, '2025-02-22', 'Lubrificação completa', 80.00);
