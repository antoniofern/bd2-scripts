CREATE TABLE atividade (
 	codigo INT AUTO_INCREMENT,
 	descricao VARCHAR(50),
 	PRIMARY KEY (codigo)
);

CREATE TABLE departamento (
	codigo INT AUTO_INCREMENT,
	descricao VARCHAR(50),
	CodGerente INT,
	
	PRIMARY KEY (codigo)
);

CREATE TABLE funcionario (
	codigo INT AUTO_INCREMENT,
	nome VARCHAR(50),
	sexo CHAR,
	DtNasc DATE,
	Salario INT,
	CodDepto INT,
	
	PRIMARY KEY (codigo)
);

CREATE TABLE projeto (
	codigo INT AUTO_INCREMENT,
	descricao VARCHAR(50),
	CodDepto INT,
	CodResponsavel INT,
	DataInicio DATE,
	DataFim DATE,
	
	PRIMARY KEY (codigo)
);

CREATE TABLE atividadeProjeto (
	codigo INT AUTO_INCREMENT,
	CodProjeto INT,
	CodAtividade INT,
	CodResponsavel INT,
	DataInicio DATE,
	DataFim DATE,
	
	PRIMARY KEY (codigo)
);

ALTER TABLE funcionario 
ADD FOREIGN KEY (CodDepto) REFERENCES departamento(codigo);

ALTER TABLE departamento 
ADD FOREIGN KEY (CodGerente) REFERENCES funcionario(codigo);

ALTER TABLE projeto 
ADD FOREIGN KEY (CodDepto) REFERENCES departamento(codigo);

ALTER TABLE projeto 
ADD FOREIGN KEY (CodResponsavel) REFERENCES funcionario(codigo);

ALTER TABLE atividadeProjeto  
ADD FOREIGN KEY (CodProjeto) REFERENCES projeto(codigo);

ALTER TABLE atividadeProjeto  
ADD FOREIGN KEY (CodAtividade) REFERENCES atividade(codigo);

ALTER TABLE atividadeProjeto  
ADD FOREIGN KEY (CodResponsavel) REFERENCES funcionario(codigo);