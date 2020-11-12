DROP INDEX if EXISTS IX_SIGLA ON departamento;
CREATE INDEX IX_SIGLA ON departamento(sigla);

DROP INDEX if EXISTS IX_SITUACAO ON atividade;
CREATE INDEX IX_SITUACAO ON atividade(situacao);
