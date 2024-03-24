-- salário dos médicos que moram na cidade de 'SANTO ANTONIO', inclui o nome do médico e cidade
SELECT
    M.Nome AS Nome_Medico,
    M.Salario,
	C.descricao AS Cidade
FROM
    Medico M
JOIN
    Endereco E ON M.Id_endereco = E.Id_endereco
JOIN
    Cidade C ON E.Id_Cidade = C.Id_Cidade
WHERE
    C.Descricao = 'SANTO ANTONIO';
	
