USE peliculas_coderhouse;

-- Funciones 

-- funcion para saber el saber el genero donde mas trabaja un actor

DROP FUNCTION IF EXISTS actor_genero;

DELIMITER //

CREATE FUNCTION actor_genero(actor_id INT) 
RETURNS VARCHAR(60)
DETERMINISTIC
BEGIN
    DECLARE genero_frecuente VARCHAR(60);
    DECLARE contador INT;

    SELECT p.genero, COUNT(*) AS contador_genero
    INTO genero_frecuente, contador
    FROM PELICULA p
    JOIN ACTOR_PELICULA ap ON p.id_pelicula = ap.id_pelicula
    WHERE ap.id_actor = actor_id
    GROUP BY p.genero
    ORDER BY contador_genero DESC
    LIMIT 1;

    RETURN genero_frecuente;
END //

DELIMITER ;



-- funcion para saber el actor que mas peliculas hiso en un año
DROP FUNCTION IF EXISTS actor_mas_peliculas;

-- funcion para saber cual es el estudio con mejores peliculas de un año
DROP FUNCTION IF EXISTS mejor_estudio;


