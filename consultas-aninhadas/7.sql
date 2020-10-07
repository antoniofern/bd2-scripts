CREATE VIEW quantidade AS
SELECT COUNT(f.codigo) AS total, d.codigo AS codigo
FROM funcionario f, departamento d
WHERE f.CodDepto = d.codigo
GROUP BY d.codigo;

SELECT d.descricao, f.nome, quantidade.total
FROM departamento d, funcionario f, quantidade
WHERE d.CodGerente = f.codigo AND d.codigo = quantidade.codigo;

