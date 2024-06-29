DROP DATABASE IF EXISTS peliculas_coderhouse;

CREATE DATABASE peliculas_coderhouse;

USE peliculas_coderhouse;

DROP TABLE peliculas 

CREATE TABLE 
	PELICULAS (
		id_pelicula INT PRIMARY KEY AUTO_INCREMENT,
		nombre VARCHAR(150) NOT NULL,
		estreno DATETIME DEFAULT NULL,
		genero VARCHAR(60) DEFAULT 'DESCONOCIDO',
		id_director INT NOT NULL,
		id_actor INT NOT NULL,
		id_oscar INT,
		id_estudio INT NOT NULL,
		id_pais INT NOT NULL,
		)
		
CREATE TABLE 
	ESTUDIO (
		id_estudio INT PRIMARY KEY AUTO_INCREMENT,
		nombre VARCHAR(200) NOT NULL,
		id_pelicula INT,
		inicio_de_actividades DATETIME DEFAULT NULL,
		vigente BOOLEAN
		)
		
CREATE TABLE
	ACTOR_ACTRIZ (
		id_actor INT PRIMARY KEY AUTO_INCREMENT,
		nombre VARCHAR(50) NOT NULL,
		apellido VARCHAR(100) NOT NULL,
		nacimiento DATETIME,
		id_pelicula INT NOT NULL,
		id_oscar INT,
		id_director INT,
		pais INT,
		FOREIGN KEY (id_pais) REFERENCES PAIS(id_pais)
	)
		
CREATE TABLE 
	PAIS (
		id_pais INT PRIMARY KEY AUTO_INCREMENT,
		nombre VARCHAR (100),
		id_pelicula INT,
		id_actor INT,
		id_director INT,
		id_oscar INT
	)	
		
		
SELECT * FROM peliculas 