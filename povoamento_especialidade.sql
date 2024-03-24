-- Povoando a tabela especialidades 
INSERT INTO Especialidade (Nome_espec) 
VALUES 
('PEDIATRIA'),
('CARDIOLOGIA'),
('NEUROLOGIA');

-- consultando tabela Especialidade
SELECT * 
FROM Especialidade

-- Povoando a tabela cidade
INSERT INTO cidade (descricao, uf) 
VALUES 
('CUIABÁ', 'MT'),
('SANTO ANTONIO', 'MT'),
('SINOP', 'MT');

-- consultando a tabela cidade
SELECT * 
FROM cidade


-- Povoando a tabela rua
INSERT INTO rua (descricao) VALUES 
('Rua das Flores'),
('Rua Comandante Costa'),
('General Vale');

-- consultando a tabela rua
SELECT * 
FROM rua

-- Povoando a tabela bairro
INSERT INTO bairro (descricao) VALUES 
('Jardim Europa'),
('Dom Aquino'),
('Centro');

-- consultando a tabela bairro
SELECT * 
FROM bairro


-- Povoando a tabela endereço
INSERT INTO endereco (Id_rua, Id_bairro, Id_cidade, CEP)
VALUES
(1, 1, 1, '78000300'),
(2, 2, 2, '78065200'),
(3, 3, 3, '78085100');

-- consultando a tabela endereço
SELECT * 
FROM endereco


-- Povoando a tabela medico
INSERT INTO medico (nome, crm, celular, salario, id_endereco) 
VALUES 
('ANA MARIA', '4050', '6599991111', 45000.00, 1),
('PAULO ROBERTO', '4051', '6599992222', 50000.00, 2),
('JOÃO RICARDO', '4053', '6599993333', 60000.00, 3);


-- consultando a tabela medico
SELECT * 
FROM medico

-- Povoando a tabela especialidade_medico
INSERT INTO especialidade_medico (dt_inicio_especialidade, id_especialidade, Id_medico) 
VALUES 
('10/01/2020', 1, 1),
('10/01/2021', 2, 1),
('10/01/2022', 2, 2),
('10/01/2023', 3, 2),
('10/01/2020', 1, 3),
('10/01/2023', 3, 3);

-- consultando a especialidade_medico
SELECT * 
FROM especialidade_medico


--inserindo uma nova rua para testar UPDATE e DELETE
INSERT INTO rua (descricao) VALUES 
('Rua Getulio Vargas');

--exemplo de update
UPDATE rua	
	SET descricao='Isaac Póvoas'
	WHERE id_rua = 5;

--exemplo de DELETE
DELETE 
FROM rua
WHERE id_rua = 6;

-- consultando a tabela rua
SELECT * 
FROM rua

--Resetando a sequência de um campo serial
ALTER SEQUENCE rua_id_rua_seq RESTART WITH 1;

ALTER SEQUENCE Rua_Id_Rua_Seq RESTART WITH 4;
