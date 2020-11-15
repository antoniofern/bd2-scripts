delimiter //
CREATE OR REPLACE FUNCTION soma_milha() RETURNS INT
BEGIN
SET @total_milhas := (SELECT SUM(m.quantidade) FROM milhas m);
RETURN @total_milhas;
END //
delimiter ;