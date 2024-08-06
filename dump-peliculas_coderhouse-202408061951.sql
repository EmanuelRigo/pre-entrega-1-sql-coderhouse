-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: peliculas_coderhouse
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `actor_actriz`
--

DROP TABLE IF EXISTS `actor_actriz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actor_actriz` (
  `id_actor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `nacimiento` datetime DEFAULT NULL,
  `id_oscar` int DEFAULT NULL COMMENT 'un actor o actriz tambien puede tener un oscar de mejor director, pero no de mejor pelicula',
  `cod_pais` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id_actor`),
  KEY `fk_act_oscar` (`id_oscar`),
  KEY `fk_act_pais` (`cod_pais`),
  CONSTRAINT `fk_act_oscar` FOREIGN KEY (`id_oscar`) REFERENCES `oscar` (`id_oscar`),
  CONSTRAINT `fk_act_pais` FOREIGN KEY (`cod_pais`) REFERENCES `pais` (`cod_pais`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor_actriz`
--

LOCK TABLES `actor_actriz` WRITE;
/*!40000 ALTER TABLE `actor_actriz` DISABLE KEYS */;
INSERT INTO `actor_actriz` VALUES (1,'Meryl','Streep','1949-06-22 00:00:00',NULL,'USA'),(2,'Leonardo','DiCaprio','1974-11-11 00:00:00',NULL,'USA'),(3,'Natalie','Portman','1981-06-09 00:00:00',NULL,'ISR'),(4,'Brad','Pitt','1963-12-18 00:00:00',NULL,'USA'),(5,'Cate','Blanchett','1969-05-14 00:00:00',NULL,'AUS'),(6,'Tom','Hanks','1956-07-09 00:00:00',NULL,'USA'),(7,'Penélope','Cruz','1974-04-28 00:00:00',NULL,'ESP'),(8,'Denzel','Washington','1954-12-28 00:00:00',NULL,'USA'),(9,'Jodie','Foster','1962-11-19 00:00:00',NULL,'USA'),(10,'Michael','Keaton','1951-09-05 00:00:00',NULL,'USA'),(11,'Harrison','Ford','1942-07-13 00:00:00',NULL,'USA'),(12,'Charlize','Teron','1975-08-07 00:00:00',NULL,'ZAF'),(13,'Joaquin','Phoenix','1974-10-28 00:00:00',NULL,'USA'),(14,'Viola','Davis','1965-08-11 00:00:00',NULL,'USA'),(15,'Matthew','McConaughey','1969-11-04 00:00:00',NULL,'USA'),(16,'Saoirse','Ronan','1994-04-12 00:00:00',NULL,'IRL'),(17,'Julia','Roberts','1967-10-28 00:00:00',NULL,'USA'),(18,'Will','Smith','1968-09-25 00:00:00',NULL,'USA'),(19,'Alicia','Vikander','1988-10-03 00:00:00',NULL,'SWE'),(20,'Daniel','Day-Lewis','1957-04-29 00:00:00',NULL,'GBR'),(21,'Emma','Stone','1988-11-06 00:00:00',NULL,'USA'),(22,'Ryan','Reynolds','1976-10-23 00:00:00',NULL,'USA'),(23,'Margot','Robbie','1990-07-02 00:00:00',NULL,'AUS'),(24,'Christian','Bale','1974-01-30 00:00:00',NULL,'GBR'),(25,'Nicole','Kidman','1967-06-20 00:00:00',NULL,'AUS'),(26,'Jake','Gyllenhaal','1980-12-19 00:00:00',NULL,'USA'),(27,'Jessica','Chastain','1977-03-24 00:00:00',NULL,'USA'),(28,'Ethan','Hawke','1970-11-06 00:00:00',NULL,'USA'),(29,'Tilda','Swinton','1960-11-05 00:00:00',NULL,'GBR'),(30,'Robert','Redford','1936-08-18 00:00:00',NULL,'USA'),(31,'Emma','Watson','1990-04-15 00:00:00',NULL,'GBR'),(32,'Javier','Bardem','1969-03-01 00:00:00',NULL,'ESP'),(33,'Michelle','Willliams','1980-09-09 00:00:00',NULL,'USA'),(34,'Ben','Affleck','1972-08-15 00:00:00',NULL,'USA'),(35,'Julianne','Moore','1960-12-03 00:00:00',NULL,'USA'),(36,'Bradley','Cooper','1975-01-05 00:00:00',NULL,'USA'),(37,'Reese','Witherspoon','1976-03-22 00:00:00',NULL,'USA'),(38,'Hugh','Jackman','1968-10-12 00:00:00',NULL,'AUS'),(39,'Kate','Winslet','1975-10-05 00:00:00',NULL,'GBR'),(40,'Maggie','Smith','1934-12-28 00:00:00',NULL,'GBR'),(41,'Richard','Gere','1949-08-31 00:00:00',NULL,'USA'),(42,'Clive','Owen','1964-10-03 00:00:00',NULL,'GBR'),(43,'Jeremy','Renner','1971-01-07 00:00:00',NULL,'USA'),(44,'Scarlett','Johansson','1984-11-22 00:00:00',NULL,'USA'),(45,'Mila','Kunis','1983-08-14 00:00:00',NULL,'USA'),(46,'Naomi','Watts','1968-09-28 00:00:00',NULL,'AUS'),(47,'Janelle','Monáe','1985-12-01 00:00:00',NULL,'USA'),(48,'Timothée','Chalamet','1995-12-27 00:00:00',NULL,'USA'),(49,'Sarah','Paulson','1974-12-17 00:00:00',NULL,'USA'),(50,'Daniel','Kaluuya','1989-02-24 00:00:00',NULL,'GBR'),(51,'Paul','Rudd','1969-04-06 00:00:00',NULL,'USA'),(52,'Frances','McDormand','1957-06-23 00:00:00',NULL,'USA');
/*!40000 ALTER TABLE `actor_actriz` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_mejor_actor` AFTER UPDATE ON `actor_actriz` FOR EACH ROW BEGIN
    DECLARE id_pelicula INT;
    DECLARE fecha_oscar DATETIME;

    SELECT ap.id_pelicula INTO id_pelicula 
    FROM ACTOR_PELICULA ap
    WHERE ap.id_actor = NEW.id_actor
    ORDER BY ap.id_pelicula DESC LIMIT 1;

    SELECT o.edicion INTO fecha_oscar
    FROM OSCAR o
    WHERE o.id_oscar = NEW.id_oscar;

    IF NEW.id_oscar IS NOT NULL AND OLD.id_oscar IS NULL THEN
        IF NOT EXISTS (SELECT 1 FROM MEJORES_ACTORES WHERE id_actor = NEW.id_actor) THEN
            INSERT INTO MEJORES_ACTORES (id_actor, nombre, apellido, nacimiento, id_pelicula, id_oscar, fecha_de_oscar)
            VALUES (NEW.id_actor, NEW.nombre, NEW.apellido, NEW.nacimiento, id_pelicula, NEW.id_oscar, fecha_oscar);
        END IF;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `actor_pelicula`
--

DROP TABLE IF EXISTS `actor_pelicula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actor_pelicula` (
  `id_actor` int NOT NULL,
  `id_pelicula` int NOT NULL,
  PRIMARY KEY (`id_actor`,`id_pelicula`),
  KEY `id_pelicula` (`id_pelicula`),
  CONSTRAINT `actor_pelicula_ibfk_1` FOREIGN KEY (`id_actor`) REFERENCES `actor_actriz` (`id_actor`),
  CONSTRAINT `actor_pelicula_ibfk_2` FOREIGN KEY (`id_pelicula`) REFERENCES `pelicula` (`id_pelicula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor_pelicula`
--

LOCK TABLES `actor_pelicula` WRITE;
/*!40000 ALTER TABLE `actor_pelicula` DISABLE KEYS */;
INSERT INTO `actor_pelicula` VALUES (1,1),(2,5),(7,6),(8,11),(3,16),(4,18),(5,21),(6,22),(9,30),(10,45);
/*!40000 ALTER TABLE `actor_pelicula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `director` (
  `id_director` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `nacimiento` datetime DEFAULT NULL,
  `id_oscar` int DEFAULT NULL COMMENT 'un director puede tener un oscar a mejor actor',
  PRIMARY KEY (`id_director`),
  KEY `fk_dire_oscar` (`id_oscar`),
  CONSTRAINT `fk_dire_oscar` FOREIGN KEY (`id_oscar`) REFERENCES `oscar` (`id_oscar`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
INSERT INTO `director` VALUES (1,'Christopher','Nolan','1970-07-30 00:00:00',NULL),(2,'Quentin','Tarantino','1963-03-27 00:00:00',NULL),(3,'Bong','Joon-ho','1969-09-14 00:00:00',NULL),(4,'Martin','Scorsese','1942-11-17 00:00:00',NULL),(5,'James','Cameron','1954-08-16 00:00:00',NULL),(6,'David','Fincher','1962-08-28 00:00:00',NULL),(7,'Damien','Chazelle','1985-01-19 00:00:00',NULL),(8,'Frank','Darabont','1959-01-28 00:00:00',NULL),(9,'Hayao','Miyazaki','1941-01-05 00:00:00',NULL),(10,'David','O.Russell','1958-08-20 00:00:00',NULL),(11,'Ridley','Scott','1937-11-30 00:00:00',NULL),(12,'Wes','Anderson','1969-05-01 00:00:00',NULL),(13,'Steve','McQueen','1969-10-09 00:00:00',NULL),(14,'George','Lucas','1944-05-14 00:00:00',NULL),(15,'Sidney','Poitier','1927-02-20 00:00:00',NULL),(16,'M. Night','Shyamalan','1970-08-06 00:00:00',NULL),(17,'Michael','Haneke','1942-03-23 00:00:00',NULL),(18,'Pedro','Almodóvar','1949-09-25 00:00:00',NULL),(19,'Tim','Burton','1958-08-25 00:00:00',NULL),(20,'Robert','Zemeckis','1952-05-14 00:00:00',NULL),(21,'Sofia','Coppola','1971-05-14 00:00:00',NULL),(22,'Kathryn','Bigelow','1951-11-27 00:00:00',NULL),(23,'John','Carpenter','1948-01-16 00:00:00',NULL),(24,'Denis','Villeneuve','1967-10-03 00:00:00',NULL),(25,'P.T.','Anderson','1970-06-26 00:00:00',NULL);
/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director_pelicula`
--

DROP TABLE IF EXISTS `director_pelicula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `director_pelicula` (
  `id_director` int NOT NULL,
  `id_pelicula` int NOT NULL,
  PRIMARY KEY (`id_director`,`id_pelicula`),
  KEY `id_pelicula` (`id_pelicula`),
  CONSTRAINT `director_pelicula_ibfk_1` FOREIGN KEY (`id_director`) REFERENCES `director` (`id_director`),
  CONSTRAINT `director_pelicula_ibfk_2` FOREIGN KEY (`id_pelicula`) REFERENCES `pelicula` (`id_pelicula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director_pelicula`
--

LOCK TABLES `director_pelicula` WRITE;
/*!40000 ALTER TABLE `director_pelicula` DISABLE KEYS */;
/*!40000 ALTER TABLE `director_pelicula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudio`
--

DROP TABLE IF EXISTS `estudio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudio` (
  `id_estudio` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `inicio_de_actividades` datetime DEFAULT NULL COMMENT 'año en que fundo el estudio',
  `vigente` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'tenemos en cuenta si el estudio sigue en funcionamiento',
  PRIMARY KEY (`id_estudio`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudio`
--

LOCK TABLES `estudio` WRITE;
/*!40000 ALTER TABLE `estudio` DISABLE KEYS */;
INSERT INTO `estudio` VALUES (1,'Universal Pictures','1912-08-08 00:00:00',1),(2,'Columbia Pictures','1924-01-01 00:00:00',1),(3,'Paramount Pictures','1912-05-08 00:00:00',1),(4,'Walt Disney Pictures','1923-10-16 00:00:00',1),(5,'Warner Bros. Pictures','1923-04-04 00:00:00',1),(6,'20th Century Studios','1935-05-31 00:00:00',1),(7,'DreamWorks Pictures','1994-10-12 00:00:00',1),(8,'MGM Studios','1924-04-17 00:00:00',1),(9,'Lionsgate Films','1997-07-10 00:00:00',1),(10,'New Line Cinema','1967-03-17 00:00:00',1),(11,'Miramax Films','1979-10-01 00:00:00',1),(12,'Focus Features','2002-09-19 00:00:00',1),(13,'Studio Ghibli','1985-06-15 00:00:00',1),(14,'Sony Pictures','1987-08-07 00:00:00',1),(15,'Fox Searchlight Pictures','1994-08-01 00:00:00',1),(16,'A24 Films','2012-08-20 00:00:00',1),(17,'BBC Films','1990-06-18 00:00:00',1),(18,'Pathé','1896-09-28 00:00:00',1),(19,'Amblin Entertainment','1981-12-01 00:00:00',1),(20,'Orion Pictures','1978-12-25 00:00:00',1);
/*!40000 ALTER TABLE `estudio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fact_premios`
--

DROP TABLE IF EXISTS `fact_premios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fact_premios` (
  `id_fact_premio` int NOT NULL AUTO_INCREMENT,
  `id_pelicula` int DEFAULT NULL,
  `id_premio` int DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `tipo_premio` enum('mejor_pelicula','mejor_director','mejor_actor','mejor_actriz') DEFAULT NULL,
  PRIMARY KEY (`id_fact_premio`),
  KEY `id_pelicula` (`id_pelicula`),
  KEY `id_premio` (`id_premio`),
  CONSTRAINT `fact_premios_ibfk_1` FOREIGN KEY (`id_pelicula`) REFERENCES `pelicula` (`id_pelicula`),
  CONSTRAINT `fact_premios_ibfk_2` FOREIGN KEY (`id_premio`) REFERENCES `oscar` (`id_oscar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fact_premios`
--

LOCK TABLES `fact_premios` WRITE;
/*!40000 ALTER TABLE `fact_premios` DISABLE KEYS */;
/*!40000 ALTER TABLE `fact_premios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oscar`
--

DROP TABLE IF EXISTS `oscar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oscar` (
  `id_oscar` int NOT NULL AUTO_INCREMENT,
  `edicion` datetime NOT NULL COMMENT 'año en que se entrego el oscar',
  `id_pelicula` int NOT NULL,
  `tipo` enum('mejor_pelicula','mejor_director','mejor_actor','mejor_actriz') NOT NULL,
  PRIMARY KEY (`id_oscar`),
  KEY `id_pelicula` (`id_pelicula`),
  CONSTRAINT `oscar_ibfk_1` FOREIGN KEY (`id_pelicula`) REFERENCES `pelicula` (`id_pelicula`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oscar`
--

LOCK TABLES `oscar` WRITE;
/*!40000 ALTER TABLE `oscar` DISABLE KEYS */;
INSERT INTO `oscar` VALUES (1,'2011-02-27 00:00:00',1,'mejor_pelicula'),(2,'2011-02-27 00:00:00',1,'mejor_actor'),(3,'2011-02-27 00:00:00',1,'mejor_director'),(4,'1973-03-27 00:00:00',2,'mejor_pelicula'),(5,'1973-03-27 00:00:00',2,'mejor_actor'),(6,'1973-03-27 00:00:00',2,'mejor_director'),(7,'2020-02-09 00:00:00',3,'mejor_pelicula'),(8,'2020-02-09 00:00:00',3,'mejor_actor'),(9,'2020-02-09 00:00:00',3,'mejor_director'),(10,'1995-03-27 00:00:00',4,'mejor_pelicula'),(11,'1995-03-27 00:00:00',4,'mejor_actor'),(12,'1995-03-27 00:00:00',4,'mejor_director'),(13,'2000-03-26 00:00:00',5,'mejor_pelicula'),(14,'2000-03-26 00:00:00',5,'mejor_actor'),(15,'2000-03-26 00:00:00',5,'mejor_director'),(16,'2020-02-09 00:00:00',6,'mejor_pelicula'),(17,'2020-02-09 00:00:00',6,'mejor_actor'),(18,'2020-02-09 00:00:00',6,'mejor_director'),(19,'2017-02-26 00:00:00',7,'mejor_pelicula'),(20,'2017-02-26 00:00:00',7,'mejor_actor'),(21,'2017-02-26 00:00:00',7,'mejor_director'),(22,'1995-03-27 00:00:00',8,'mejor_pelicula'),(23,'1995-03-27 00:00:00',8,'mejor_actor'),(24,'1995-03-27 00:00:00',8,'mejor_director'),(25,'2003-03-23 00:00:00',9,'mejor_pelicula'),(26,'2003-03-23 00:00:00',9,'mejor_actor'),(27,'2003-03-23 00:00:00',9,'mejor_director'),(28,'2000-03-26 00:00:00',10,'mejor_pelicula'),(29,'2000-03-26 00:00:00',10,'mejor_actor'),(30,'2000-03-26 00:00:00',10,'mejor_director'),(31,'2001-03-25 00:00:00',11,'mejor_pelicula'),(32,'2001-03-25 00:00:00',11,'mejor_actor'),(33,'2001-03-25 00:00:00',11,'mejor_director'),(34,'2009-02-22 00:00:00',12,'mejor_pelicula'),(35,'2009-02-22 00:00:00',12,'mejor_actor'),(36,'2009-02-22 00:00:00',12,'mejor_director'),(37,'1995-03-27 00:00:00',13,'mejor_pelicula'),(38,'1995-03-27 00:00:00',13,'mejor_actor'),(39,'1995-03-27 00:00:00',13,'mejor_director'),(40,'2010-03-07 00:00:00',14,'mejor_pelicula'),(41,'2010-03-07 00:00:00',14,'mejor_actor'),(42,'2010-03-07 00:00:00',14,'mejor_director'),(43,'2015-02-22 00:00:00',15,'mejor_pelicula'),(44,'2015-02-22 00:00:00',15,'mejor_actor'),(45,'2015-02-22 00:00:00',15,'mejor_director'),(46,'2014-02-02 00:00:00',16,'mejor_pelicula'),(47,'2014-02-02 00:00:00',16,'mejor_actor'),(48,'2014-02-02 00:00:00',16,'mejor_director'),(49,'2015-02-22 00:00:00',17,'mejor_pelicula'),(50,'2015-02-22 00:00:00',17,'mejor_actor'),(51,'2016-02-28 00:00:00',18,'mejor_pelicula'),(52,'2016-02-28 00:00:00',18,'mejor_actor'),(53,'2016-02-28 00:00:00',18,'mejor_director'),(54,'2019-02-24 00:00:00',19,'mejor_pelicula'),(55,'2019-02-24 00:00:00',19,'mejor_actor'),(56,'2019-02-24 00:00:00',19,'mejor_director'),(57,'2011-02-27 00:00:00',20,'mejor_pelicula'),(58,'2011-02-27 00:00:00',20,'mejor_actor'),(59,'2011-02-27 00:00:00',20,'mejor_director'),(60,'2017-02-26 00:00:00',21,'mejor_pelicula'),(61,'2017-02-26 00:00:00',21,'mejor_actor'),(62,'2017-02-26 00:00:00',21,'mejor_director'),(63,'2016-02-28 00:00:00',22,'mejor_pelicula'),(64,'2016-02-28 00:00:00',22,'mejor_actor'),(65,'2016-02-28 00:00:00',22,'mejor_director'),(66,'2014-02-02 00:00:00',23,'mejor_pelicula'),(67,'2014-02-02 00:00:00',23,'mejor_actor'),(68,'2014-02-02 00:00:00',23,'mejor_director'),(69,'2020-02-09 00:00:00',24,'mejor_pelicula'),(70,'2020-02-09 00:00:00',24,'mejor_actor'),(71,'2020-02-09 00:00:00',24,'mejor_director'),(72,'2002-02-24 00:00:00',25,'mejor_pelicula'),(73,'2002-02-24 00:00:00',25,'mejor_actor'),(74,'2002-02-24 00:00:00',25,'mejor_director'),(75,'2020-02-09 00:00:00',26,'mejor_pelicula'),(76,'2020-02-09 00:00:00',26,'mejor_actor'),(77,'2020-02-09 00:00:00',26,'mejor_director'),(78,'1996-03-25 00:00:00',27,'mejor_pelicula'),(79,'1996-03-25 00:00:00',27,'mejor_actor'),(80,'1996-03-25 00:00:00',27,'mejor_director'),(81,'2001-03-25 00:00:00',28,'mejor_pelicula'),(82,'2001-03-25 00:00:00',28,'mejor_actor'),(83,'2001-03-25 00:00:00',28,'mejor_director'),(84,'2002-02-24 00:00:00',29,'mejor_pelicula'),(85,'2002-02-24 00:00:00',29,'mejor_actor'),(86,'2002-02-24 00:00:00',29,'mejor_director'),(87,'1992-03-30 00:00:00',30,'mejor_pelicula'),(88,'1992-03-30 00:00:00',30,'mejor_actor'),(89,'1992-03-30 00:00:00',30,'mejor_director'),(90,'2014-02-02 00:00:00',31,'mejor_pelicula'),(91,'2014-02-02 00:00:00',31,'mejor_actor'),(92,'2014-02-02 00:00:00',31,'mejor_director'),(93,'2000-03-26 00:00:00',32,'mejor_pelicula'),(94,'2000-03-26 00:00:00',32,'mejor_actor'),(95,'2000-03-26 00:00:00',32,'mejor_director'),(96,'2000-03-26 00:00:00',33,'mejor_pelicula'),(97,'2000-03-26 00:00:00',33,'mejor_actor'),(98,'2000-03-26 00:00:00',33,'mejor_director'),(99,'1953-03-19 00:00:00',34,'mejor_pelicula'),(100,'1953-03-19 00:00:00',34,'mejor_actor'),(101,'1953-03-19 00:00:00',34,'mejor_director'),(102,'2010-03-07 00:00:00',35,'mejor_pelicula'),(103,'2010-03-07 00:00:00',35,'mejor_actor'),(104,'2010-03-07 00:00:00',35,'mejor_director'),(105,'2017-02-26 00:00:00',36,'mejor_pelicula'),(106,'2017-02-26 00:00:00',36,'mejor_actor'),(107,'2017-02-26 00:00:00',36,'mejor_director'),(108,'2018-03-04 00:00:00',37,'mejor_pelicula'),(109,'2018-03-04 00:00:00',37,'mejor_actor'),(110,'2018-03-04 00:00:00',37,'mejor_director'),(111,'2007-02-25 00:00:00',38,'mejor_pelicula'),(112,'2007-02-25 00:00:00',38,'mejor_actor'),(113,'2007-02-25 00:00:00',38,'mejor_director'),(114,'2013-02-24 00:00:00',39,'mejor_pelicula'),(115,'2013-02-24 00:00:00',39,'mejor_actor'),(116,'2013-02-24 00:00:00',39,'mejor_director'),(117,'2011-02-27 00:00:00',40,'mejor_pelicula'),(118,'2011-02-27 00:00:00',40,'mejor_actor'),(119,'2011-02-27 00:00:00',40,'mejor_director'),(120,'2014-02-02 00:00:00',41,'mejor_pelicula'),(121,'2014-02-02 00:00:00',41,'mejor_actor'),(122,'2014-02-02 00:00:00',41,'mejor_director'),(123,'2014-02-02 00:00:00',42,'mejor_pelicula'),(124,'2014-02-02 00:00:00',42,'mejor_actor'),(125,'2014-02-02 00:00:00',42,'mejor_director'),(126,'2012-02-26 00:00:00',43,'mejor_pelicula'),(127,'2012-02-26 00:00:00',43,'mejor_actor'),(128,'2012-02-26 00:00:00',43,'mejor_director'),(129,'1991-02-25 00:00:00',44,'mejor_pelicula'),(130,'1991-02-25 00:00:00',44,'mejor_actor'),(131,'1991-02-25 00:00:00',44,'mejor_director'),(132,'2007-02-25 00:00:00',45,'mejor_pelicula'),(133,'2007-02-25 00:00:00',45,'mejor_actor'),(134,'2007-02-25 00:00:00',45,'mejor_director'),(135,'2011-02-27 00:00:00',46,'mejor_pelicula'),(136,'2011-02-27 00:00:00',46,'mejor_actor'),(137,'2011-02-27 00:00:00',46,'mejor_director'),(138,'2002-02-24 00:00:00',47,'mejor_pelicula'),(139,'2002-02-24 00:00:00',47,'mejor_actor'),(140,'2002-02-24 00:00:00',47,'mejor_director'),(141,'2012-02-26 00:00:00',48,'mejor_pelicula'),(142,'2012-02-26 00:00:00',48,'mejor_actor'),(143,'2012-02-26 00:00:00',48,'mejor_director'),(144,'2016-02-28 00:00:00',49,'mejor_pelicula'),(145,'2016-02-28 00:00:00',49,'mejor_actor'),(146,'2016-02-28 00:00:00',49,'mejor_director'),(147,'2000-03-26 00:00:00',50,'mejor_pelicula'),(148,'2000-03-26 00:00:00',50,'mejor_actor'),(149,'2000-03-26 00:00:00',50,'mejor_director');
/*!40000 ALTER TABLE `oscar` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_oscar_insert` AFTER INSERT ON `oscar` FOR EACH ROW BEGIN
   
    DELETE FROM TOP_5_PELICULAS;
    INSERT INTO TOP_5_PELICULAS (id_pelicula, nombre_pelicula, total_premios)
    SELECT o.id_pelicula, p.nombre, COUNT(*) AS total_premios
    FROM OSCAR o
    JOIN PELICULA p ON o.id_pelicula = p.id_pelicula
    GROUP BY o.id_pelicula
    ORDER BY total_premios DESC
    LIMIT 5;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pais` (
  `cod_pais` varchar(3) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `continente` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cod_pais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES ('ABW','Aruba','Aruba','América'),('AFG','Afganistán','Afghanistan','Asia'),('AGO','Angola','Angola','África'),('AIA','Anguila','Anguilla','América'),('ALA','Islas de Åland','Åland Islands','Europa'),('ALB','Albania','Albania','Europa'),('AND','Andorra','Andorra','Europa'),('ANT','Antillas Neerlandesas','Netherlands Antilles','América'),('ARE','Emiratos Árabes Unidos','United Arab Emirates','Asia'),('ARG','Argentina','Argentina','América'),('ARM','Armenia','Armenia','Asia'),('ASM','Samoa Americana','American Samoa','Australia y Oceanía'),('ATA','Antártida','Antarctica','Antártida'),('ATF','Territorios Australes y Antárticas Franceses','French Southern Territories',''),('ATG','Antigua y Barbuda','Antigua and Barbuda','América'),('AUS','Australia','Australia','Australia y Oceanía'),('AUT','Austria','Austria','Europa'),('AZE','Azerbayán','Azerbaijan','Asia'),('BDI','Burundi','Burundi','África'),('BEL','Bélgica','Belgium','Europa'),('BEN','Benín','Benin','África'),('BFA','Burkina Faso','Burkina Faso','África'),('BGD','Bangladesh','Bangladesh','Asia'),('BGR','Bulgaria','Bulgaria','Europa'),('BHR','Bahrein','Bahrain','Asia'),('BHS','Bahamas','Bahamas','América'),('BIH','Bosnia y Herzegovina','Bosnia and Herzegovina','Europa'),('BLM','San Bartolomé','Saint Barthélemy','América'),('BLR','Bielorrusia','Belarus','Europa'),('BLZ','Belice','Belize','América'),('BMU','Islas Bermudas','Bermuda Islands','América'),('BOL','Bolivia','Bolivia','América'),('BRA','Brasil','Brazil','América'),('BRB','Barbados','Barbados','América'),('BRN','Brunéi','Brunei','Asia'),('BTN','Bhután','Bhutan','Asia'),('BVT','Isla Bouvet','Bouvet Island','Antártida'),('BWA','Botsuana','Botswana','África'),('CAF','República Centroafricana','Central African Republic','África'),('CAN','Canadá','Canada','América'),('CCK','Islas Cocos (Keeling)','Cocos (Keeling) Islands','Asia'),('CHE','Suiza','Switzerland','Europa'),('CHL','Chile','Chile','América'),('CHN','China','China','Asia'),('CIV','Costa de Marfil','Ivory Coast','África'),('CMR','Camerún','Cameroon','África'),('COD','Congo','Congo','África'),('COG','Congo','Congo','África'),('COK','Islas Cook','Cook Islands','Australia y Oceanía'),('COL','Colombia','Colombia','América'),('COM','Comoras','Comoros','África'),('CPV','Cabo Verde','Cape Verde','África'),('CRI','Costa Rica','Costa Rica','América'),('CUB','Cuba','Cuba','América'),('CXR','Isla de Navidad','Christmas Island','Asia'),('CYM','Islas Caimán','Cayman Islands','América'),('CYP','Chipre','Cyprus','Asia'),('CZE','República Checa','Czech Republic','Europa'),('DEU','Alemania','Germany','Europa'),('DJI','Yibuti','Djibouti','África'),('DMA','Dominica','Dominica','América'),('DNK','Dinamarca','Denmark','Europa'),('DOM','República Dominicana','Dominican Republic','América'),('DZA','Algeria','Algeria','África'),('ECU','Ecuador','Ecuador','América'),('EGY','Egipto','Egypt','África'),('ERI','Eritrea','Eritrea','África'),('ESH','Sahara Occidental','Western Sahara','África'),('ESP','España','Spain','Europa'),('EST','Estonia','Estonia','Europa'),('ETH','Etiopía','Ethiopia','África'),('FIN','Finlandia','Finland','Europa'),('FJI','Fiyi','Fiji','Australia y Oceanía'),('FLK','Islas Malvinas','Falkland Islands (Malvinas)','América'),('FRA','Francia','France','Europa'),('FRO','Islas Feroe','Faroe Islands','Europa'),('FSM','Micronesia','Estados Federados de','Australia y Oceanía'),('GAB','Gabón','Gabon','África'),('GBR','Reino Unido','United Kingdom','Europa'),('GEO','Georgia','Georgia','Asia'),('GGY','Guernsey','Guernsey','Europa'),('GHA','Ghana','Ghana','África'),('GIB','Gibraltar','Gibraltar','Europa'),('GIN','Guinea','Guinea','África'),('GLP','Guadalupe','Guadeloupe','América'),('GMB','Gambia','Gambia','África'),('GNB','Guinea-Bissau','Guinea-Bissau','África'),('GNQ','Guinea Ecuatorial','Equatorial Guinea','África'),('GRC','Grecia','Greece','Europa'),('GRD','Granada','Grenada','América'),('GRL','Groenlandia','Greenland','América'),('GTM','Guatemala','Guatemala','América'),('GUF','Guayana Francesa','French Guiana','América'),('GUM','Guam','Guam','Australia y Oceanía'),('GUY','Guyana','Guyana','América'),('HKG','Hong kong','Hong Kong','Asia'),('HMD','Islas Heard y McDonald','Heard Island and McDonald Islands','Antártida'),('HND','Honduras','Honduras','América'),('HRV','Croacia','Croatia','Europa'),('HTI','Haití','Haiti','América'),('HUN','Hungría','Hungary','Europa'),('IDN','Indonesia','Indonesia','Asia'),('IMN','Isla de Man','Isle of Man','Europa'),('IND','India','India','Asia'),('IOT','Territorio Británico del Océano Índico','British Indian Ocean Territory',''),('IRL','Irlanda','Ireland','Europa'),('IRN','Irán','Iran','Asia'),('IRQ','Irak','Iraq','Asia'),('ISL','Islandia','Iceland','Europa'),('ISR','Israel','Israel','Asia'),('ITA','Italia','Italy','Europa'),('JAM','Jamaica','Jamaica','América'),('JEY','Jersey','Jersey','Europa'),('JOR','Jordania','Jordan','Asia'),('JPN','Japón','Japan','Asia'),('KAZ','Kazajistán','Kazakhstan','Asia'),('KEN','Kenia','Kenya','África'),('KGZ','Kirgizstán','Kyrgyzstan','Asia'),('KHM','Camboya','Cambodia','Asia'),('KIR','Kiribati','Kiribati','Australia y Oceanía'),('KNA','San Cristóbal y Nieves','Saint Kitts and Nevis','América'),('KOR','Corea del Sur','South Korea','Asia'),('KWT','Kuwait','Kuwait','Asia'),('LAO','Laos','Laos','Asia'),('LBN','Líbano','Lebanon','Asia'),('LBR','Liberia','Liberia','África'),('LBY','Libia','Libya','África'),('LCA','Santa Lucía','Saint Lucia','América'),('LIE','Liechtenstein','Liechtenstein','Europa'),('LKA','Sri lanka','Sri Lanka','Asia'),('LSO','Lesoto','Lesotho','África'),('LTU','Lituania','Lithuania','Europa'),('LUX','Luxemburgo','Luxembourg','Europa'),('LVA','Letonia','Latvia','Europa'),('MAC','Macao','Macao','Asia'),('MAF','San Martín (Francia)','Saint Martin (French part)','América'),('MAR','Marruecos','Morocco','África'),('MCO','Mónaco','Monaco','Europa'),('MDA','Moldavia','Moldova','Europa'),('MDG','Madagascar','Madagascar','África'),('MDV','Islas Maldivas','Maldives','Asia'),('MEX','México','Mexico','América'),('MHL','Islas Marshall','Marshall Islands','Australia y Oceanía'),('MKD','Macedônia','Macedonia','Europa'),('MLI','Mali','Mali','África'),('MLT','Malta','Malta','Europa'),('MMR','Birmania','Myanmar','Asia'),('MNE','Montenegro','Montenegro','Europa'),('MNG','Mongolia','Mongolia','Asia'),('MNP','Islas Marianas del Norte','Northern Mariana Islands','Australia y Oceanía'),('MOZ','Mozambique','Mozambique','África'),('MRT','Mauritania','Mauritania','África'),('MSR','Montserrat','Montserrat','América'),('MTQ','Martinica','Martinique','América'),('MUS','Mauricio','Mauritius','África'),('MWI','Malawi','Malawi','África'),('MYS','Malasia','Malaysia','Asia'),('MYT','Mayotte','Mayotte','África'),('NAM','Namibia','Namibia','África'),('NCL','Nueva Caledonia','New Caledonia','Australia y Oceanía'),('NER','Niger','Niger','África'),('NFK','Isla Norfolk','Norfolk Island','Australia y Oceanía'),('NGA','Nigeria','Nigeria','África'),('NIC','Nicaragua','Nicaragua','América'),('NIU','Niue','Niue','Australia y Oceanía'),('NLD','Países Bajos','Netherlands','Europa'),('NOR','Noruega','Norway','Europa'),('NPL','Nepal','Nepal','Asia'),('NRU','Nauru','Nauru','Australia y Oceanía'),('NZL','Nueva Zelanda','New Zealand','Australia y Oceanía'),('OMN','Omán','Oman','Asia'),('PAK','Pakistán','Pakistan','Asia'),('PAN','Panamá','Panama','América'),('PCN','Islas Pitcairn','Pitcairn Islands','Australia y Oceanía'),('PER','Perú','Peru','América'),('PHL','Filipinas','Philippines','Asia'),('PLW','Palau','Palau','Australia y Oceanía'),('PNG','Papúa Nueva Guinea','Papua New Guinea','Australia y Oceanía'),('POL','Polonia','Poland','Europa'),('PRI','Puerto Rico','Puerto Rico','América'),('PRK','Corea del Norte','North Korea','Asia'),('PRT','Portugal','Portugal','Europa'),('PRY','Paraguay','Paraguay','América'),('PSE','Palestina','Palestine','Asia'),('PYF','Polinesia Francesa','French Polynesia','Australia y Oceanía'),('QAT','Qatar','Qatar','Asia'),('REU','Reunión','Réunion','África'),('ROU','Rumanía','Romania','Europa'),('RUS','Rusia','Russia','Europa'),('RWA','Ruanda','Rwanda','África'),('SAU','Arabia Saudita','Saudi Arabia','Asia'),('SDN','Sudán','Sudan','África'),('SEN','Senegal','Senegal','África'),('SGP','Singapur','Singapore','Asia'),('SGS','Islas Georgias del Sur y Sandwich del Sur','South Georgia and the South Sandwich Islands','América'),('SHN','Santa Elena','Ascensión y Tristán de Acuña','África'),('SJM','Svalbard y Jan Mayen','Svalbard and Jan Mayen','Europa'),('SLB','Islas Salomón','Solomon Islands','Australia y Oceanía'),('SLE','Sierra Leona','Sierra Leone','África'),('SLV','El Salvador','El Salvador','América'),('SMR','San Marino','San Marino','Europa'),('SOM','Somalia','Somalia','África'),('SPM','San Pedro y Miquelón','Saint Pierre and Miquelon','América'),('SRB','Serbia','Serbia','Europa'),('STP','Santo Tomé y Príncipe','Sao Tome and Principe','África'),('SUR','Surinám','Suriname','América'),('SVK','Eslovaquia','Slovakia','Europa'),('SVN','Eslovenia','Slovenia','Europa'),('SWE','Suecia','Sweden','Europa'),('SWZ','Swazilandia','Swaziland','África'),('SYC','Seychelles','Seychelles','África'),('SYR','Siria','Syria','Asia'),('TCA','Islas Turcas y Caicos','Turks and Caicos Islands','América'),('TCD','Chad','Chad','África'),('TGO','Togo','Togo','África'),('THA','Tailandia','Thailand','Asia'),('TJK','Tadjikistán','Tajikistan','Asia'),('TKL','Tokelau','Tokelau','Australia y Oceanía'),('TKM','Turkmenistán','Turkmenistan','Asia'),('TLS','Timor Oriental','East Timor','Asia'),('TON','Tonga','Tonga','Australia y Oceanía'),('TTO','Trinidad y Tobago','Trinidad and Tobago','América'),('TUN','Tunez','Tunisia','África'),('TUR','Turquía','Turkey','Asia'),('TUV','Tuvalu','Tuvalu','Australia y Oceanía'),('TWN','Taiwán','Taiwan','Asia'),('TZA','Tanzania','Tanzania','África'),('UGA','Uganda','Uganda','África'),('UKR','Ucrania','Ukraine','Europa'),('UMI','Islas Ultramarinas Menores de Estados Unidos','United States Minor Outlying Islands',''),('URY','Uruguay','Uruguay','América'),('USA','Estados Unidos de América','United States of America','América'),('UZB','Uzbekistán','Uzbekistan','Asia'),('VAT','Ciudad del Vaticano','Vatican City State','Europa'),('VCT','San Vicente y las Granadinas','Saint Vincent and the Grenadines','América'),('VEN','Venezuela','Venezuela','América'),('VG','Islas Vírgenes Británicas','Virgin Islands','América'),('VIR','Islas Vírgenes de los Estados Unidos','United States Virgin Islands','América'),('VNM','Vietnam','Vietnam','Asia'),('VUT','Vanuatu','Vanuatu','Australia y Oceanía'),('WLF','Wallis y Futuna','Wallis and Futuna','Australia y Oceanía'),('WSM','Samoa','Samoa','Australia y Oceanía'),('YEM','Yemen','Yemen','Asia'),('ZAF','Sudáfrica','South Africa','África'),('ZMB','Zambia','Zambia','África'),('ZWE','Zimbabue','Zimbabwe','África');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pelicula`
--

DROP TABLE IF EXISTS `pelicula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pelicula` (
  `id_pelicula` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL COMMENT 'nombre de la pelicula',
  `estreno` datetime DEFAULT NULL COMMENT 'fecha de estreno de la pelicula',
  `genero` varchar(60) DEFAULT 'DESCONOCIDO' COMMENT 'genero de la pelicula',
  `id_oscar` int DEFAULT NULL COMMENT 'puede tener varios oscars una pelicula',
  `id_estudio` int NOT NULL COMMENT 'puede estar producida por varios estudios',
  `cod_pais` varchar(3) NOT NULL COMMENT 'supongamos que una pelicula solo se filma en un solo pais',
  PRIMARY KEY (`id_pelicula`),
  KEY `fk_pelicula_oscar` (`id_oscar`),
  KEY `fk_pelicula_estudio` (`id_estudio`),
  KEY `cod_pais` (`cod_pais`),
  CONSTRAINT `cod_pais` FOREIGN KEY (`cod_pais`) REFERENCES `pais` (`cod_pais`),
  CONSTRAINT `fk_pelicula_estudio` FOREIGN KEY (`id_estudio`) REFERENCES `estudio` (`id_estudio`),
  CONSTRAINT `fk_pelicula_oscar` FOREIGN KEY (`id_oscar`) REFERENCES `oscar` (`id_oscar`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelicula`
--

LOCK TABLES `pelicula` WRITE;
/*!40000 ALTER TABLE `pelicula` DISABLE KEYS */;
INSERT INTO `pelicula` VALUES (1,'Inception','2010-07-16 00:00:00','Sci-Fi',NULL,1,'USA'),(2,'The Godfather','1972-03-24 00:00:00','Crime',NULL,3,'USA'),(3,'Parasite','2019-05-30 00:00:00','Thriller',NULL,18,'KOR'),(4,'Pulp Fiction','1994-10-14 00:00:00','Crime',NULL,11,'USA'),(5,'The Matrix','1999-03-31 00:00:00','Sci-Fi',NULL,1,'USA'),(6,'Avengers: Endgame','2019-04-26 00:00:00','Action',NULL,4,'USA'),(7,'La La Land','2016-12-09 00:00:00','Musical',NULL,12,'USA'),(8,'The Shawshank Redemption','1994-09-23 00:00:00','Drama',NULL,3,'USA'),(9,'Spirited Away','2001-07-20 00:00:00','Animation',NULL,13,'JPN'),(10,'Fight Club','1999-10-15 00:00:00','Drama',NULL,20,'USA'),(11,'Gladiator','2000-05-05 00:00:00','Action',NULL,6,'USA'),(12,'The Dark Knight','2008-07-18 00:00:00','Action',NULL,1,'USA'),(13,'Forrest Gump','1994-07-06 00:00:00','Drama',NULL,3,'USA'),(14,'Avatar','2009-12-18 00:00:00','Sci-Fi',NULL,6,'USA'),(15,'The Grand Budapest Hotel','2014-03-28 00:00:00','Comedy',NULL,15,'USA'),(16,'Interstellar','2014-11-07 00:00:00','Sci-Fi',NULL,1,'USA'),(17,'Whiplash','2014-10-10 00:00:00','Drama',NULL,16,'USA'),(18,'Mad Max: Fury Road','2015-05-15 00:00:00','Action',NULL,1,'USA'),(19,'Joker','2019-10-04 00:00:00','Drama',NULL,1,'USA'),(20,'The Social Network','2010-10-01 00:00:00','Drama',NULL,2,'USA'),(21,'Moonlight','2016-10-21 00:00:00','Drama',NULL,16,'USA'),(22,'The Revenant','2015-12-25 00:00:00','Drama',NULL,6,'USA'),(23,'Her','2013-12-18 00:00:00','Sci-Fi',NULL,2,'USA'),(24,'The Irishman','2019-11-27 00:00:00','Crime',NULL,12,'USA'),(25,'Your Name','2016-08-26 00:00:00','Animation',NULL,13,'JPN'),(26,'Once Upon a Time in Hollywood','2019-07-26 00:00:00','Drama',NULL,2,'USA'),(27,'The Usual Suspects','1995-08-16 00:00:00','Crime',NULL,9,'USA'),(28,'Crouching Tiger, Hidden Dragon','2000-01-12 00:00:00','Action',NULL,7,'CHN'),(29,'A Beautiful Mind','2001-12-21 00:00:00','Biography',NULL,6,'USA'),(30,'The Silence of the Lambs','1991-02-14 00:00:00','Thriller',NULL,6,'USA'),(31,'The Wolf of Wall Street','2013-12-25 00:00:00','Comedy',NULL,2,'USA'),(32,'Knives Out','2019-11-27 00:00:00','Mystery',NULL,9,'USA'),(33,'The Big Lebowski','1998-03-06 00:00:00','Comedy',NULL,2,'USA'),(34,'Singin in the Rain','1952-04-11 00:00:00','Musical',NULL,1,'USA'),(35,'Inglourious Basterds','2009-08-21 00:00:00','War',NULL,2,'USA'),(36,'Arrival','2016-11-11 00:00:00','Sci-Fi',NULL,2,'USA'),(37,'The Shape of Water','2017-12-08 00:00:00','Fantasy',NULL,15,'USA'),(38,'The Departed','2006-10-06 00:00:00','Crime',NULL,2,'USA'),(39,'Django Unchained','2012-12-25 00:00:00','Western',NULL,2,'USA'),(40,'The Kings Speech','2010-01-07 00:00:00','Drama',NULL,15,'GBR'),(41,'Gravity','2013-10-04 00:00:00','Sci-Fi',NULL,1,'USA'),(42,'12 Years a Slave','2013-10-18 00:00:00','Drama',NULL,15,'USA'),(43,'The Intouchables','2011-11-02 00:00:00','Comedy',NULL,18,'FRA'),(44,'The Hunt for Red October','1990-03-02 00:00:00','Thriller',NULL,3,'USA'),(45,'The Prestige','2006-10-20 00:00:00','Drama',NULL,1,'USA'),(46,'Black Swan','2010-12-03 00:00:00','Drama',NULL,15,'USA'),(47,'Moulin Rouge!','2001-06-01 00:00:00','Musical',NULL,6,'USA'),(48,'The Artist','2011-11-23 00:00:00','Drama',NULL,15,'FRA'),(49,'The Revenant','2015-12-25 00:00:00','Adventure',NULL,6,'USA'),(50,'The Truman Show','1998-06-05 00:00:00','Drama',NULL,1,'USA');
/*!40000 ALTER TABLE `pelicula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `peliculas_por_pais`
--

DROP TABLE IF EXISTS `peliculas_por_pais`;
/*!50001 DROP VIEW IF EXISTS `peliculas_por_pais`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `peliculas_por_pais` AS SELECT 
 1 AS `cod_pais`,
 1 AS `total_peliculas`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `top_5_peliculas`
--

DROP TABLE IF EXISTS `top_5_peliculas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `top_5_peliculas` (
  `id_pelicula` int NOT NULL,
  `total_premios` int DEFAULT NULL,
  `nombre_pelicula` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_pelicula`),
  CONSTRAINT `id_pelicula` FOREIGN KEY (`id_pelicula`) REFERENCES `pelicula` (`id_pelicula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `top_5_peliculas`
--

LOCK TABLES `top_5_peliculas` WRITE;
/*!40000 ALTER TABLE `top_5_peliculas` DISABLE KEYS */;
INSERT INTO `top_5_peliculas` VALUES (1,3,'Inception'),(2,3,'The Godfather'),(3,3,'Parasite'),(4,3,'Pulp Fiction'),(5,3,'The Matrix');
/*!40000 ALTER TABLE `top_5_peliculas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view_actores_90`
--

DROP TABLE IF EXISTS `view_actores_90`;
/*!50001 DROP VIEW IF EXISTS `view_actores_90`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_actores_90` AS SELECT 
 1 AS `id_actor`,
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `nacimiento`,
 1 AS `cod_pais`,
 1 AS `nombre_pelicula`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_peliculas_con_mas_oscars`
--

DROP TABLE IF EXISTS `view_peliculas_con_mas_oscars`;
/*!50001 DROP VIEW IF EXISTS `view_peliculas_con_mas_oscars`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_peliculas_con_mas_oscars` AS SELECT 
 1 AS `id_pelicula`,
 1 AS `nombre`,
 1 AS `total_oscars`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'peliculas_coderhouse'
--

--
-- Dumping routines for database 'peliculas_coderhouse'
--
/*!50003 DROP FUNCTION IF EXISTS `actor_genero` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `actor_genero`(actor_id INT) RETURNS varchar(60) CHARSET utf8mb4
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `actor_mas_peliculas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `actor_mas_peliculas`(year INT) RETURNS varchar(200) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE actor_nombre VARCHAR(100);
    DECLARE actor_apellido VARCHAR(100);
    DECLARE max_count INT;

    SELECT a.nombre, a.apellido, COUNT(*) AS cantidad_peliculas
    INTO actor_nombre, actor_apellido, max_count
    FROM ACTOR_ACTRIZ a
    JOIN ACTOR_PELICULA ap ON a.id_actor = ap.id_actor
    JOIN PELICULA p ON ap.id_pelicula = p.id_pelicula
    WHERE YEAR(p.estreno) = year
    GROUP BY a.id_actor
    ORDER BY cantidad_peliculas DESC
    LIMIT 1;

    IF max_count IS NULL THEN
        RETURN 'No hay peliculas este año.';
    ELSE
        RETURN CONCAT(actor_nombre, ' ', actor_apellido);
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `mejor_estudio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `mejor_estudio`() RETURNS varchar(200) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE estudio_nombre VARCHAR(200);
    DECLARE conteo_maximo INT;

    SELECT e.nombre, COUNT(*) AS cantidad_oscars
    INTO estudio_nombre, conteo_maximo
    FROM ESTUDIO e
    JOIN PELICULA p ON e.id_estudio = p.id_estudio
    WHERE p.id_oscar IS NOT NULL
    GROUP BY e.id_estudio
    ORDER BY cantidad_oscars DESC
    LIMIT 1;

    IF conteo_maximo IS NULL THEN
        RETURN 'No hay estudios con Oscars a mejor pelicula.';
    ELSE 
        RETURN estudio_nombre;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizar_actor_oscar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_actor_oscar`(
    IN p_id_actor INT,
    IN p_id_oscar INT
)
BEGIN
    UPDATE ACTOR_ACTRIZ
    SET id_oscar = p_id_oscar
    WHERE id_actor = p_id_actor;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `crear_actor_con_pelicula` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `crear_actor_con_pelicula`(
    IN p_nombre VARCHAR(50),
    IN p_apellido VARCHAR(100),
    IN p_nacimiento DATETIME,
    IN p_cod_pais INT,
    IN p_id_pelicula INT
)
BEGIN
    DECLARE last_actor_id INT;
    
    INSERT INTO ACTOR_ACTRIZ (nombre, apellido, nacimiento, cod_pais)
    VALUES (p_nombre, p_apellido, p_nacimiento, p_cod_pais);
    
    SET last_actor_id = LAST_INSERT_ID();
    
    INSERT INTO ACTOR_PELICULA (id_actor, id_pelicula)
    VALUES (last_actor_id, p_id_pelicula);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `crear_pelicula` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `crear_pelicula`(
    IN p_nombre VARCHAR(150),
    IN p_estreno DATETIME,
    IN p_genero VARCHAR(60),
    IN p_id_estudio INT,
    IN p_cod_pais INT
)
BEGIN
    INSERT INTO PELICULA (nombre, estreno, genero, id_estudio, cod_pais)
    VALUES (p_nombre, p_estreno, p_genero, p_id_estudio, p_cod_pais);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `peliculas_por_pais`
--

/*!50001 DROP VIEW IF EXISTS `peliculas_por_pais`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `peliculas_por_pais` AS select `p`.`cod_pais` AS `cod_pais`,count(`p`.`id_pelicula`) AS `total_peliculas` from `pelicula` `p` group by `p`.`cod_pais` order by `total_peliculas` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_actores_90`
--

/*!50001 DROP VIEW IF EXISTS `view_actores_90`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_actores_90` AS select distinct `aa`.`id_actor` AS `id_actor`,`aa`.`nombre` AS `nombre`,`aa`.`apellido` AS `apellido`,`aa`.`nacimiento` AS `nacimiento`,`aa`.`cod_pais` AS `cod_pais`,`p`.`nombre` AS `nombre_pelicula` from ((`actor_actriz` `aa` join `actor_pelicula` `ap` on((`aa`.`id_actor` = `ap`.`id_actor`))) join `pelicula` `p` on((`ap`.`id_pelicula` = `p`.`id_pelicula`))) where (`p`.`estreno` between '1990-01-01' and '1999-12-31') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_peliculas_con_mas_oscars`
--

/*!50001 DROP VIEW IF EXISTS `view_peliculas_con_mas_oscars`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_peliculas_con_mas_oscars` AS select `p`.`id_pelicula` AS `id_pelicula`,`p`.`nombre` AS `nombre`,count(`o`.`id_oscar`) AS `total_oscars` from (`pelicula` `p` join `oscar` `o` on((`p`.`id_pelicula` = `o`.`id_pelicula`))) group by `p`.`id_pelicula`,`p`.`nombre` order by `total_oscars` desc limit 10 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-06 19:51:09
