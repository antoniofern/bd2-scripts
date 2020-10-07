SELECT nome FROM funcionario
WHERE salario > (
	SELECT MAX(f.salario)
	FROM funcionario f
	WHERE f.CodDepto = 5
);