SELECT E.nome_espec, SUM(salario)
FROM medico M, especialidade_medico EM, especialidade E
WHERE M.id_medico = EM.id_medico
	AND em.id_especialidade = E.id_especialidade
GROUP BY E.nome_espec
ORDER BY 1,2