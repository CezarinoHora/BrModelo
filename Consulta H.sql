-- salário dos médicos que moram na cidade de 'SANTO ANTONIO', inclui o nome do médico e cidade
SELECT
    M.Nome AS Nome_Medico,
    M.Salario,
	C.descricao Cidade
FROM
    Medico M,
    Endereco E,
    Cidade C
WHERE
    M.Id_Endereco = E.Id_Endereco
    AND E.Id_Cidade = C.Id_Cidade
    AND C.Descricao = 'SANTO ANTONIO';
