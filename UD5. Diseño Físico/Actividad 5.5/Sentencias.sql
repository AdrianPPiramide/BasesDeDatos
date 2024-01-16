CREATE DATABASE Instituto;

USE Instituto;

CREATE TABLE Departamento(
	codigo int (9),
	nombre varchar (50) NOT NULL,
	CONSTRAINT pk_Departamento PRIMARY KEY (codigo),
	CONSTRAINT ck_codigo_Departamento CHECK (codigo > 0)
	);

CREATE TABLE Ciclo(
	codigo int (9),
	nombre varchar (50) NOT NULL,
	numero_de_creditos int (3) NOT NULL,
	CONSTRAINT pk_Ciclo PRIMARY KEY (codigo),
	CONSTRAINT ck_codigo_Ciclo CHECK (codigo > 0),
	CONSTRAINT ck_numero_de_creditos_Ciclo CHECK (numero_de_creditos >= 0)
	);
	
CREATE TABLE Departamento_Ciclo(
	id int (9) AUTO_INCREMENT,
	codigo_Ciclo int (9) NOT NULL,
	codigo_Departamento int (9) NOT NULL,
	CONSTRAINT pk_Departamento_Ciclo PRIMARY KEY (codigo),
	CONSTRAINT fk_Departamento_Ciclo FOREIGN KEY (codigo_Ciclo) REFERENCES Ciclo (codigo) ON DELETE CASCADE,
	CONSTRAINT fk_Departamento_Ciclo FOREIGN KEY (codigo_Departamento) REFERENCES Departamento (codigo) ON DELETE CASCADE,
	);
	
CREATE TABLE 
