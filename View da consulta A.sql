CREATE VIEW V_Medicos_Especialidades AS
SELECT
    M.Nome AS "Nome_Medico",
    M.CRM AS "Número_CRM",
    EM.DT_Inicio_Especialidade,
    E.Nome_espec AS Especialidade
FROM
    Medico M
JOIN
    Especialidade_Medico EM ON M.Id_Medico = EM.Id_Medico
JOIN
    Especialidade E ON EM.Id_Especialidade = E.Id_Especialidade
ORDER BY
    M.Nome, E.Nome_espec;
