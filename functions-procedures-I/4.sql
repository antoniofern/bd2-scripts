INSERT into atividade VALUES ('1', 'teste', '2020-01-01', '2020-11-10', 'teste', '2020-11-9');
INSERT into atividade VALUES ('2', 'teste2', '2020-01-01', '2020-11-10', 'teste2', '2020-11-11');
INSERT into atividade VALUES ('3', 'teste3', '2020-01-01', '2020-11-10', 'teste2', '2020-12-10');

DELIMITER //
CREATE OR REPLACE FUNCTION questao4(codigo int) RETURNS INT
BEGIN
	SET @dataConclusao := (SELECT dataConclusao FROM atividade WHERE atividade.codigo = codigo);
	SET @dataFim := (SELECT dataFim FROM atividade WHERE atividade.codigo = codigo);
	SET @diasAtraso := (SELECT TIMESTAMPDIFF(DAY,@dataConclusao,@dataFim));
	RETURN @diasAtraso;
END //
DELIMITER ;

SELECT questao4(1);


