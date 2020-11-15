delimiter //
CREATE OR REPLACE FUNCTION conta_voo(codCliente INT) RETURNS INT
BEGIN
SET @total_voos := (SELECT COUNT(*) FROM cliente_voo clv WHERE clv.cliente = codCliente);
RETURN @total_voos;
END //
delimiter ;
