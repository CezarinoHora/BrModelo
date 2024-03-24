SELECT
	M.nome,
    M.Celular,
	E.CEP
FROM
    Medico M,
    Endereco E
WHERE
    M.Id_endereco = E.Id_endereco
    AND E.CEP = '78000300';
