-- essa consulta foi adaptada, então vamos inserir uma nova rua 
-- e depois cadastrar um novo endereco com o CEP '78000222'
-- passo 1 INSERT nova rua
SELECT * 
FROM rua

INSERT INTO rua (descricao) VALUES 
('Barao de Melgaco');


SELECT * 
FROM rua


SELECT * 
FROM endereco

-- passo 2 INSERT novo endereço com a rua Barão de Melgaço, Centro, Cuiabá e CEP 78000222
-- considerando que o id do bairro centro é 3 e o id_cidade cuiabá é 1
INSERT INTO endereco (Id_rua, Id_bairro, Id_cidade, CEP)
VALUES
(4, 3, 1, '78000222');

SELECT * 
FROM endereco


