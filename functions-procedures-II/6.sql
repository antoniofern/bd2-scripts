delimiter //
CREATE OR replace procedure ao_quadrado(valor int) contains SQL 
BEGIN 
	SELECT POWER(valor,2);
END //
delimiter ;
CALL ao_quadrado(4);