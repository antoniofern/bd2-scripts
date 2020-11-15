delimiter //
CREATE OR REPLACE FUNCTION mais_500() RETURNS INT
BEGIN
SET @total_clientes := (SELECT count(*) FROM milhas m WHERE m.quantidade > 500);
RETURN @total_clientes;
END //
delimiter ;