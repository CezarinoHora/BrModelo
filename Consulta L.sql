UPDATE Medico
SET id_endereco = 4
WHERE medico.id_endereco IN(
		SELECT
		m.id_endereco
	FROM
    	Medico M,
    	Endereco E,
    	Rua R
	WHERE
    	M.Id_Endereco = E.Id_Endereco
    	AND E.Id_Rua = R.Id_Rua
    	AND R.Descricao = 'General Vale'
);

SELECT *
FROM Medico


SELECT
    M.Nome AS Nome_Medico,
	R.descricao AS Nome_Rua
FROM
    Medico M,
    Endereco E,
    Rua R
WHERE
    M.Id_Endereco = E.Id_Endereco
    AND E.Id_Rua = R.Id_Rua
--    AND R.Descricao = 'General Vale';


