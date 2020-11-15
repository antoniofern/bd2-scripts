#10
delimiter //
CREATE OR replace procedure zera_milhagem(codCliente int) contains SQL 
BEGIN
	SELECT cl.nome, m.quantidade FROM cliente cl, milhas m WHERE cl.codigo = codCliente AND m.cliente = codCliente;
	UPDATE milhas
	SET quantidade = 0 WHERE milhas.cliente = codCliente;
	SELECT cl.nome, m.quantidade FROM cliente cl, milhas m WHERE cl.codigo = codCliente AND m.cliente = codCliente;
END //
delimiter ;
CALL zera_milhagem(1);