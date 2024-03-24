
SELECT * 
FROM rua

INSERT INTO rua (descricao) VALUES 
('Barao de Melgaco');

ALTER SEQUENCE rua_id_rua_seq RESTART WITH 4;

DELETE 
FROM Rua
WHERE Id_rua = 5;
