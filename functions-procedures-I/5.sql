DELIMITER //
CREATE OR REPLACE FUNCTION questao5(codigo int) RETURNS INT
BEGIN
	SET @dataHoje := (SELECT CURDATE());
	SET @dataFim := (SELECT dataFim FROM projeto WHERE projeto.codigo = codigo);
	SET @diasAtraso := (SELECT TIMESTAMPDIFF(DAY,@dataHoje,@dataFim));
	RETURN @diasAtraso;
END //
DELIMITER ;

SELECT questao5(1);