DELIMITER //
CREATE or replace FUNCTION calcula_idade (codigo INT) RETURNs int
BEGIN
SET @emp_idade := (SELECT dataNasc FROM funcionario WHERE funcionario.codigo = codigo);
RETURN (SELECT TIMESTAMPDIFF(YEAR, @emp_idade, CURDATE()));
END //
DELIMITER ;

SELECT calcula_idade(1);