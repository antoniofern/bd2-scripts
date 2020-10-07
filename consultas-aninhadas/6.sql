SELECT nome, salario, descricao
FROM funcionario
LEFT JOIN departamento
ON funcionario.CodDepto = departamento.codigo;