
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
		nombre VARCHAR(150) NOT NULL COMMENT 'nombre de la pelicula',
		estreno DATETIME DEFAULT NULL COMMENT 'fecha de estreno de la pelicula',
		genero VARCHAR(60) DEFAULT 'DESCONOCIDO' COMMENT 'genero de la pelicula',
		id_director INT NOT NULL,
		id_actor INT NOT NULL,
		id_oscar INT COMMENT 'puede tener varios oscars una pelicula',
		id_estudio INT NOT NULL COMMENT 'puede estar producida por varios estudios',
		id_pais INT NOT NULL COMMENT 'supongamos que una pelicula solo se filma en un solo pais'
		);

-- TABLA ESTUDIO
CREATE TABLE 
	ESTUDIO (
		id_estudio INT PRIMARY KEY AUTO_INCREMENT,
		nombre VARCHAR(200) NOT NULL,
		inicio_de_actividades DATETIME DEFAULT NULL COMMENT 'año en que fundo el estudio',
		vigente BOOLEAN DEFAULT TRUE NOT NULL COMMENT 'tenemos en cuenta si el estudio sigue en funcionamiento'
		);

-- TABLA ACTOR/ACTRIZ
CREATE TABLE
	ACTOR_ACTRIZ (
		id_actor INT PRIMARY KEY AUTO_INCREMENT,
		nombre VARCHAR(50) NOT NULL,
		apellido VARCHAR(100) NOT NULL,
		nacimiento DATETIME,
		id_pelicula INT NOT NULL,
		id_oscar INT COMMENT 'un actor o actriz tambien puede tener un oscar de mejor director, pero no de mejor pelicula',
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
		id_pais INT,
		id_oscar INT COMMENT 'un director puede tener un oscar a mejor actor'
	);
	
-- TABLA OSCAR
CREATE TABLE 
	OSCAR(
		id_oscar INT PRIMARY KEY AUTO_INCREMENT,
		edicion DATETIME NOT NULL COMMENT 'año en que se entrego el oscar',
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
	(id_pais) REFERENCES pais (id_pais),
	ADD CONSTRAINT fk_dire_oscar FOREIGN KEY
	(id_oscar) REFERENCES oscar (id_oscar);

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