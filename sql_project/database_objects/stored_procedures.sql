USE peliculas_coderhouse;

-- Stored_procedures

-- actualizar un actor cuando gana un oscar

DROP PROCEDURE IF EXISTS actualizar_actor_oscar

DELIMITER //

CREATE PROCEDURE actualizar_actor_oscar(
    IN p_id_actor INT,
    IN p_id_oscar INT
)
BEGIN
    UPDATE ACTOR_ACTRIZ
    SET id_oscar = p_id_oscar
    WHERE id_actor = p_id_actor;
END //

DELIMITER ;

-- crear un pelicula

DROP PROCEUDRE IF EXISTS crear_pelicula

-- crear un actor

DROP PROCEDURE IF EXISTS crear_actor
