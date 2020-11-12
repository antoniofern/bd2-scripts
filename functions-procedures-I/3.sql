CREATE OR REPLACE VIEW nome_idade AS
	SELECT f.nome, TIMESTAMPDIFF(YEAR,f.dataNasc,CURDATE()) AS idade FROM funcionario f;

SET @media_idade := (SELECT AVG(media) from idades);

delimiter ;;
CREATE OR replace procedure idade_maior() contains SQL 
BEGIN 
	SELECT nome, idade FROM nome_idade WHERE idade > @media_idade;
END;;
delimiter ;
call idade_maior();
