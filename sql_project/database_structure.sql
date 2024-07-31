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
		id_oscar INT COMMENT 'puede tener varios oscars una pelicula',
		id_estudio INT NOT NULL COMMENT 'puede estar producida por varios estudios',
		cod_pais INT NOT NULL COMMENT 'supongamos que una pelicula solo se filma en un solo pais'
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
		id_oscar INT COMMENT 'un actor o actriz tambien puede tener un oscar de mejor director, pero no de mejor pelicula',
		cod_pais INT
	);
	
-- TABLA DIRECTOR
CREATE TABLE 
	DIRECTOR (
		id_director INT PRIMARY KEY AUTO_INCREMENT,
		nombre VARCHAR (100),
		apellido VARCHAR (100),
		nacimiento DATETIME,
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
		cod_pais VARCHAR (3) PRIMARY KEY NOT NULL,
		nombre VARCHAR (100) NOT NULL,
		name VARCHAR (100),
		continente VARCHAR (50)
	);

-- TABLA DIRECTOR_PELICULA para relacion muchos a muchos entre DIRECTOR y PELICULA
CREATE TABLE DIRECTOR_PELICULA (
    id_director INT,
    id_pelicula INT,
    PRIMARY KEY (id_director, id_pelicula)
);

-- TABLA ACTOR_PELICULA para relacion muchos a muchos entre ACTOR_ACTRIZ y PELICULA
CREATE TABLE ACTOR_PELICULA (
    id_actor INT,
    id_pelicula INT,
    PRIMARY KEY (id_actor, id_pelicula)
);

CREATE TABLE MEJORES_ACTORES (
    id_actor INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    nacimiento DATETIME,
    id_pelicula INT NOT NULL,
    id_oscar INT NOT NULL,
    fecha_de_oscar DATETIME
)

ALTER TABLE PELICULA
	ADD CONSTRAINT fk_pelicula_oscar FOREIGN KEY 
	(id_oscar) REFERENCES oscar (id_oscar),
	ADD CONSTRAINT fk_pelicula_estudio FOREIGN KEY 
	(id_estudio) REFERENCES estudio (id_estudio),
	ADD CONSTRAINT fk_pelicula_pais FOREIGN KEY
	(cod_pais) REFERENCES pais (cod_pais);

ALTER TABLE ACTOR_ACTRIZ 
	ADD CONSTRAINT fk_act_oscar FOREIGN KEY
	(id_oscar) REFERENCES oscar (id_oscar),
	ADD CONSTRAINT fk_act_pais FOREIGN KEY 
	(cod_pais) REFERENCES pais (cod_pais);

ALTER TABLE DIRECTOR 
	ADD CONSTRAINT fk_dire_oscar FOREIGN KEY
	(id_oscar) REFERENCES oscar (id_oscar);

ALTER TABLE director_pelicula 
	ADD CONSTRAINT fk_dir FOREIGN KEY
	(id_director) REFERENCES DIRECTOR (id_director),
	ADD CONSTRAINT fk_pel FOREIGN KEY 
	(id_pelicula) REFERENCES pelicula (id_pelicula);

ALTER TABLE actor_pelicula
	ADD CONSTRAINT fk_act FOREIGN KEY
	(id_actor) REFERENCES ACTOR_ACTRIZ (id_actor),
	ADD CONSTRAINT fk_peli FOREIGN KEY 
	(id_pelicula) REFERENCES pelicula (id_pelicula);
