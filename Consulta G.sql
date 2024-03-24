-- nome do médico alterado para "PAULO ROBERTO" pois o médico "AUGUSTO JOSÉ" não tem no BD
SELECT
    M.Nome AS Nome_Medico,
    M.Salario
FROM
    Medico M
JOIN
    Especialidade_Medico EM ON M.Id_Medico = EM.Id_Medico
JOIN
    Especialidade E ON EM.Id_Especialidade = E.Id_Especialidade
WHERE
    E.Nome_espec IN (
        SELECT E_Paulo.Nome_espec -- Subconsulta que obtém as especialidades do médico 'PAULO ROBERTO'.
        FROM Medico M_Paulo
        JOIN Especialidade_Medico EM_Paulo ON M_Paulo.Id_Medico = EM_Paulo.Id_Medico
        JOIN Especialidade E_Paulo ON EM_Paulo.Id_Especialidade = E_Paulo.Id_Especialidade
        WHERE M_Paulo.Nome = 'PAULO ROBERTO'
    )
    AND M.Nome != 'PAULO ROBERTO';  -- Exclui o próprio 'PAULO ROBERTO' da lista
