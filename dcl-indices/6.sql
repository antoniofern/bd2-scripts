CREATE VIEW funcSemSalario AS
SELECT f.codigo, f.nome, f.sexo, f.dataNasc, f.supervisor, f.depto 
FROM funcionario f;

CREATE USER 'empresa_supervisor'@'%' IDENTIFIED BY 'password';
GRANT SELECT ON empresadb.funcsemsalario TO 'empresa_supervisor'@'%';
GRANT SELECT ON empresadb.atividade TO 'empresa_supervisor'@'%';
GRANT SELECT ON empresadb.atividade_membro TO 'empresa_supervisor'@'%';
GRANT SELECT ON empresadb.projeto TO 'empresa_supervisor'@'%';
