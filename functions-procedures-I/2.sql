CREATE OR REPLACE VIEW idades AS
SELECT TIMESTAMPDIFF(YEAR,f.dataNasc,CURDATE()) AS media FROM funcionario f;

SELECT AVG(media) from idades;