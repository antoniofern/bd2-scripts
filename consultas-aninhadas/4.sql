SELECT nome, salario, CodDepto FROM funcionario
WHERE codigo NOT IN (
	SELECT CodGerente FROM departamento
) ORDER BY CodDepto;