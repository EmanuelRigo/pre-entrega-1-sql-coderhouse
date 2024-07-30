-- USAMOS LA DB
USE peliculas_coderhouse;

SET GLOBAL local_infile = true;

LOAD DATA  LOCAL INFILE '/sql_project/data/paises.csv'
INTO TABLE pais
FIELDS TERMINATED BY ','  ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(nombre,name,cod_pais,continente);
