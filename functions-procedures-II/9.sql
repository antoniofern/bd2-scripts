delimiter //
CREATE OR replace procedure piloto_voos(codPiloto int) contains SQL 
BEGIN 
	SELECT nome, num_voos FROM piloto WHERE piloto.codigo = codPiloto;
END //
delimiter ;
CALL piloto_voos(1);