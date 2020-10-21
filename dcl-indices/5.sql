CREATE USER 'empresa_gerente'@'%' IDENTIFIED BY 'password';
GRANT SELECT ON empresadb.* TO 'empresa_gerente'@'%';
GRANT INSERT, UPDATE ON empresadb.equipe TO 'empresa_gerente'@'%';
GRANT INSERT, UPDATE ON empresadb.membro TO 'empresa_gerente'@'%';
GRANT INSERT, UPDATE ON empresadb.atividade TO 'empresa_gerente'@'%';
GRANT INSERT, UPDATE ON empresadb.atividade_projeto TO 'empresa_gerente'@'%';

SHOW GRANTS FOR 'empresa_gerente'@'%';