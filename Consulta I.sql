-- na tabela de médico não tem o campo e-mail, então alteramos para ‘CRM’
SELECT
	M.nome AS Nome_Medico,
	M.crm AS CRM

FROM
    Medico M,
    Especialidade EP,
    Especialidade_Medico EM

WHERE
    M.Id_Medico = EM.Id_Medico
    AND EP.Id_Especialidade = EM.Id_Especialidade
    AND EP.Nome_espec = 'NEUROLOGIA';
