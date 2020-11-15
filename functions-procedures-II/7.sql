delimiter //
CREATE OR replace procedure voo_mais_um(codPiloto int) contains SQL 
BEGIN 
	UPDATE piloto
	SET num_voos = num_voos + 1 WHERE piloto.codigo = codPiloto;
	SELECT piloto.nome, piloto.num_voos FROM piloto WHERE piloto.codigo = codPiloto;
END //
delimiter ;
CALL voo_mais_um(1);