delimiter //
CREATE OR REPLACE FUNCTION classe_cliente(codCliente INT, codVoo int) RETURNS VARCHAR(50)
BEGIN
SET @classe_voo := (SELECT clv.classe FROM cliente_voo clv WHERE clv.cliente = codCliente AND clv.voo = codVoo);
RETURN @classe_voo;
END //
delimiter ;
