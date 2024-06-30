
-- BORRAMOS DB POR SI EXISTE 
DROP DATABASE IF EXISTS peliculas_coderhouse;

-- CREAMOS DB
CREATE DATABASE peliculas_coderhouse;

-- USAMOS LA DB
USE peliculas_coderhouse;

-- TABLA PELICULA
CREATE TABLE 
	PELICULA (
		id_pelicula INT PRIMARY KEY AUTO_INCREMENT,
		nombre VARCHAR(150) NOT NULL,
		estreno DATETIME DEFAULT NULL,
		genero VARCHAR(60) DEFAULT 'DESCONOCIDO',
		id_director INT NOT NULL,
		id_actor INT NOT NULL,
		id_oscar INT,
		id_estudio INT NOT NULL,
		id_pais INT NOT NULL
		);

-- TABLA ESTUDIO
CREATE TABLE 
	ESTUDIO (
		id_estudio INT PRIMARY KEY AUTO_INCREMENT,
		nombre VARCHAR(200) NOT NULL,
		inicio_de_actividades DATETIME DEFAULT NULL,
		vigente BOOLEAN DEFAULT TRUE NOT NULL
		);

-- TABLA ACTOR/ACTRIZ
CREATE TABLE
	ACTOR_ACTRIZ (
		id_actor INT PRIMARY KEY AUTO_INCREMENT,
		nombre VARCHAR(50) NOT NULL,
		apellido VARCHAR(100) NOT NULL,
		nacimiento DATETIME,
		id_pelicula INT NOT NULL,
		id_oscar INT,
		id_pais INT
	);
	
-- TABLA DIRECTOR
CREATE  TABLE 
	DIRECTOR (
		id_director INT PRIMARY KEY AUTO_INCREMENT,
		nombre VARCHAR (100),
		apellido VARCHAR (100),
		nacimiento DATETIME,
		id_pelicula INT,
		id_estudio INT,
		id_pais INT
	);
	
-- TABLA OSCAR
CREATE TABLE 
	OSCAR(
		id_oscar INT PRIMARY KEY AUTO_INCREMENT,
		edicion DATETIME NOT NULL,
		id_pelicula INT NOT NULL,
		tipo ENUM("mejor_pelicula","mejor_director","mejor_actor","mejor_actriz") NOT NULL
	);

-- TABLA PAIS
CREATE TABLE 
	PAIS (
		id_pais INT PRIMARY KEY AUTO_INCREMENT,
		nombre VARCHAR (100),
		id_pelicula INT,
		id_actor INT,
		id_director INT,
		id_oscar INT
	);
	

-- HACEMOS LAS FOREIGN KEYS
ALTER TABLE PELICULA
	ADD CONSTRAINT fk_pelicula_director FOREIGN KEY 
	(id_director) REFERENCES director (id_director),
	ADD CONSTRAINT fk_pelicula_actor FOREIGN KEY 
	(id_actor) REFERENCES actor_actriz (id_actor),
	ADD CONSTRAINT fk_pelicula_oscar FOREIGN KEY 
	(id_oscar) REFERENCES oscar (id_oscar),
	ADD CONSTRAINT fk_pelicula_estudio FOREIGN KEY 
	(id_estudio) REFERENCES estudio (id_estudio),
	ADD CONSTRAINT fk_pelicula_pais FOREIGN KEY
	(id_pais) REFERENCES pais (id_pais);

ALTER TABLE actor_actriz 
	ADD CONSTRAINT fk_act_pelicula FOREIGN KEY
	(id_pelicula) REFERENCES pelicula (id_pelicula),
	ADD CONSTRAINT fk_act_oscar FOREIGN KEY
	(id_oscar) REFERENCES oscar (id_oscar),
	ADD CONSTRAINT fk_act_pais FOREIGN KEY 
	(id_pais) REFERENCES pais (id_pais);

ALTER TABLE director 
	ADD CONSTRAINT fk_dire_pel FOREIGN KEY 
	(id_pelicula) REFERENCES pelicula (id_pelicula),
	ADD	CONSTRAINT fk_dire_est FOREIGN KEY
	(id_estudio) REFERENCES estudio (id_estudio),
	ADD CONSTRAINT fk_dire_pais FOREIGN KEY
	(id_pais) REFERENCES pais (id_pais);

ALTER TABLE oscar
	ADD CONSTRAINT fk_osc_pel FOREIGN KEY 
	(id_pelicula) REFERENCES pelicula (id_pelicula);

ALTER TABLE pais 
	ADD CONSTRAINT fk_pais_peli FOREIGN KEY 
	(id_pelicula) REFERENCES pelicula(id_pelicula),
	ADD CONSTRAINT fk_pais_act FOREIGN KEY 
	(id_actor) REFERENCES actor_actriz (id_actor),
	ADD CONSTRAINT fk_pais_dir FOREIGN KEY
	(id_director) REFERENCES director (id_director),
	ADD CONSTRAINT fk_pais_osc FOREIGN KEY
	(id_oscar) REFERENCES oscar (id_oscar);


SELECT * FROM pelicula 