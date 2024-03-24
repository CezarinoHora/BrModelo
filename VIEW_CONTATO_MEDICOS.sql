-- O objetivo desta View é facilitar o acesso rápido aos dados de contato dos médicos como telefone e endereço
CREATE VIEW V_Contato_Medicos AS
SELECT
    M.Nome AS "MEDICO",
    M.CRM AS "CRM",
	M.celular AS "FONE",
    R.Descricao AS "RUA",
	B.descricao AS "BAIRRO",
    C.Descricao AS "CIDADE",
    E.CEP AS "CEP"
FROM
    Medico M
JOIN
    Endereco E ON M.Id_Endereco = E.Id_Endereco
JOIN
    Rua R ON E.Id_Rua = R.Id_Rua
JOIN
	Bairro B ON B.id_bairro = E.Id_Bairro
JOIN
    Cidade C ON E.Id_Cidade = C.Id_Cidade
ORDER BY
	M.NOME;