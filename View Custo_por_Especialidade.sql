-- O objetivo desta View é demonstrar qual o custo de cada especialidade para a clínica médica
-- executando uma soma dos salários do médicos por especialidade
-- ordenando da especialidade mais cara para a mais barata
CREATE VIEW V_Custo_Por_Especialidade AS
SELECT
    SUM(M.Salario) AS Custo_Por_Especialidade,
    E.Nome_espec AS "Especialidade"
FROM
    Especialidade_Medico EM
JOIN
    Especialidade E ON EM.Id_Especialidade = E.Id_Especialidade
JOIN
    Medico M ON EM.Id_Medico = M.Id_Medico
GROUP BY
    EM.Id_Especialidade, E.Nome_espec
ORDER BY
    Custo_Por_Especialidade DESC;

