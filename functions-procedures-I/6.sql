delimiter ;;
CREATE OR replace procedure questao06() contains SQL 
BEGIN
	SELECT f.nome, d.sigla
	FROM funcionario f, departamento d
	WHERE f.depto = d.codigo ;
END;;
delimiter ;

CALL questao06();