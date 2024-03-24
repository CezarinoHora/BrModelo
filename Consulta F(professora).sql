-- Acrescentado os campos Especialidade para comprovar que a consulta funciona
SELECT
    R.Descricao AS Nome_Rua,
    B.Descricao AS Nome_Bairro,
    C.Descricao AS Nome_Cidade,
	M.nome AS Nome_Medico,
	EP.Nome_espec AS Especialidade_do_Medico
FROM
    Medico M,
    Endereco E,
    Especialidade EP,
    Especialidade_Medico EM,
    Rua R,
    Bairro B,
    Cidade C
WHERE
    M.Id_endereco = E.Id_endereco
    AND M.Id_Medico = EM.Id_Medico
    AND EP.Id_Especialidade = EM.Id_Especialidade
    AND E.Id_Rua = R.Id_Rua
    AND E.Id_Bairro = B.Id_Bairro
    AND E.Id_Cidade = C.Id_Cidade
    AND EP.Nome_espec = 'CARDIOLOGIA'
ORDER BY 1;



