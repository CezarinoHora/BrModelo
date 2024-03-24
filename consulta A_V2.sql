SELECT 
	M.Nome AS "Nome do Médico",
    M.CRM AS "Número do CRM",
    E.Nome_espec AS "Especialidade"
FROM
    Medico M, Especialidade_Medico EM, Especialidade E
WHERE
	M.Id_medico = EM.Id_medico
AND
	EM.Id_especialidade = E.Id_especialidade
ORDER BY
    M.Nome, E.Nome_espec;

	