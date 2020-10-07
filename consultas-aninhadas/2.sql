SELECT nome FROM funcionario
WHERE DtNasc != (
	SELECT MIN(DtNasc)
	FROM funcionario
);