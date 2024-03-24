SELECT
    R.Descricao AS Nome_Rua,
    B.Descricao AS Nome_Bairro,
    C.Descricao AS Nome_Cidade,
    C.UF,
    E.CEP
FROM
    Endereco E,
    Rua R,
    Bairro B,
    Cidade C
WHERE
    E.Id_Rua = R.Id_Rua
    AND E.Id_Bairro = B.Id_Bairro
    AND E.Id_Cidade = C.Id_Cidade
ORDER BY
    R.Descricao;
