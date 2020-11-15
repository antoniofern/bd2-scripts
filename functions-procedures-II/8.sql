delimiter //
CREATE OR replace procedure nome_milhas(codCliente int) contains SQL 
BEGIN 
	SELECT cl.nome, m.quantidade FROM cliente cl, milhas m WHERE cl.codigo = codCliente AND m.cliente = codCliente;
END //
delimiter ;
CALL nome_milhas(1);