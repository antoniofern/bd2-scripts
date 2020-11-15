delimiter //
CREATE OR REPLACE FUNCTION numero_passageiros(codVoo INT) RETURNS INT
BEGIN
SET @numero_passageiros := (SELECT v.num_passageiros FROM voo v WHERE v.codigo = codVoo);
RETURN @numero_passageiros;
END //
delimiter ;