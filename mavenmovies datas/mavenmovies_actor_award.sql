-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mavenmovies
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `actor_award`
--

DROP TABLE IF EXISTS `actor_award`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actor_award` (
  `actor_award_id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `actor_id` smallint DEFAULT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `awards` varchar(45) NOT NULL,
  `last_update` datetime NOT NULL,
  PRIMARY KEY (`actor_award_id`),
  KEY `idx_actor_last_name` (`last_name`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor_award`
--

LOCK TABLES `actor_award` WRITE;
/*!40000 ALTER TABLE `actor_award` DISABLE KEYS */;
INSERT INTO `actor_award` VALUES (1,12,'KARL','BERRY','Emmy, Oscar, Tony ','2006-02-15 04:34:33'),(2,21,'KIRSTEN','PALTROW','Emmy, Oscar, Tony ','2006-02-15 04:34:33'),(3,51,'GARY','PHOENIX','Emmy, Oscar, Tony ','2006-02-15 04:34:33'),(4,123,'JULIANNE','DENCH','Emmy, Oscar, Tony ','2006-02-15 04:34:33'),(5,NULL,'RODNEY','MINERSON','Emmy, Oscar, Tony ','2006-02-15 04:34:33'),(6,NULL,'BLAKE','SIMON','Emmy, Oscar, Tony ','2006-02-15 04:34:33'),(7,NULL,'KATIE','SUGARPLUM','Emmy, Oscar, Tony ','2006-02-15 04:34:33'),(8,1,'PENELOPE','GUINESS','Emmy, Oscar','2006-02-15 04:34:33'),(9,18,'DAN','TORN','Emmy, Oscar','2006-02-15 04:34:33'),(10,27,'JULIA','MCQUEEN','Emmy, Oscar','2006-02-15 04:34:33'),(11,35,'JUDY','DEAN','Emmy, Oscar','2006-02-15 04:34:33'),(12,37,'VAL','BOLGER','Emmy, Oscar','2006-02-15 04:34:33'),(13,52,'CARMEN','HUNT','Emmy, Oscar','2006-02-15 04:34:33'),(14,57,'JUDE','CRUISE','Emmy, Oscar','2006-02-15 04:34:33'),(15,65,'ANGELA','HUDSON','Emmy, Oscar','2006-02-15 04:34:33'),(16,70,'MICHELLE','MCCONAUGHEY','Emmy, Oscar','2006-02-15 04:34:33'),(17,72,'SEAN','WILLIAMS','Emmy, Oscar','2006-02-15 04:34:33'),(18,75,'BURT','POSEY','Emmy, Oscar','2006-02-15 04:34:33'),(19,83,'BEN','WILLIS','Emmy, Oscar','2006-02-15 04:34:33'),(20,98,'CHRIS','BRIDGES','Emmy, Oscar','2006-02-15 04:34:33'),(21,102,'WALTER','TORN','Emmy, Oscar','2006-02-15 04:34:33'),(22,109,'SYLVESTER','DERN','Emmy, Oscar','2006-02-15 04:34:33'),(23,110,'SUSAN','DAVIS','Emmy, Oscar','2006-02-15 04:34:33'),(24,111,'CAMERON','ZELLWEGER','Emmy, Oscar','2006-02-15 04:34:33'),(25,116,'DAN','STREEP','Emmy, Oscar','2006-02-15 04:34:33'),(26,117,'RENEE','TRACY','Emmy, Oscar','2006-02-15 04:34:33'),(27,119,'WARREN','JACKMAN','Emmy, Oscar','2006-02-15 04:34:33'),(28,129,'DARYL','CRAWFORD','Emmy, Oscar','2006-02-15 04:34:33'),(29,145,'KIM','ALLEN','Emmy, Oscar','2006-02-15 04:34:33'),(30,172,'GROUCHO','WILLIAMS','Emmy, Oscar','2006-02-15 04:34:33'),(31,174,'MICHAEL','BENING','Emmy, Oscar','2006-02-15 04:34:33'),(32,185,'MICHAEL','BOLGER','Emmy, Oscar','2006-02-15 04:34:33'),(33,186,'JULIA','ZELLWEGER','Emmy, Oscar','2006-02-15 04:34:33'),(34,NULL,'SPIKE','THOMPSON','Emmy, Oscar','2006-02-15 04:34:33'),(35,NULL,'ADAM','HOLMVICK','Emmy, Oscar','2006-02-15 04:34:33'),(36,20,'LUCILLE','TRACY','Emmy, Tony','2006-02-15 04:34:33'),(37,23,'SANDRA','KILMER','Emmy, Tony','2006-02-15 04:34:33'),(38,31,'SISSY','SOBIESKI','Emmy, Tony','2006-02-15 04:34:33'),(39,54,'PENELOPE','PINKETT','Emmy, Tony','2006-02-15 04:34:33'),(40,56,'DAN','HARRIS','Emmy, Tony','2006-02-15 04:34:33'),(41,80,'RALPH','CRUZ','Emmy, Tony','2006-02-15 04:34:33'),(42,86,'GREG','CHAPLIN','Emmy, Tony','2006-02-15 04:34:33'),(43,88,'KENNETH','PESCI','Emmy, Tony','2006-02-15 04:34:33'),(44,94,'KENNETH','TORN','Emmy, Tony','2006-02-15 04:34:33'),(45,124,'SCARLETT','BENING','Emmy, Tony','2006-02-15 04:34:33'),(46,146,'ALBERT','JOHANSSON','Emmy, Tony','2006-02-15 04:34:33'),(47,158,'VIVIEN','BASINGER','Emmy, Tony','2006-02-15 04:34:33'),(48,NULL,'ANDERS','ANDERSON','Emmy, Tony','2006-02-15 04:34:33'),(49,NULL,'JILLIAN','DEMAMP','Emmy, Tony','2006-02-15 04:34:33'),(50,NULL,'ALICE','DANGERFIELD','Emmy, Tony','2006-02-15 04:34:33'),(51,19,'BOB','FAWCETT','Oscar, Tony','2006-02-15 04:34:33'),(52,28,'WOODY','HOFFMAN','Oscar, Tony','2006-02-15 04:34:33'),(53,48,'FRANCES','DAY-LEWIS','Oscar, Tony','2006-02-15 04:34:33'),(54,49,'ANNE','CRONYN','Oscar, Tony','2006-02-15 04:34:33'),(55,58,'CHRISTIAN','AKROYD','Oscar, Tony','2006-02-15 04:34:33'),(56,66,'MARY','TANDY','Oscar, Tony','2006-02-15 04:34:33'),(57,68,'RIP','WINSLET','Oscar, Tony','2006-02-15 04:34:33'),(58,69,'KENNETH','PALTROW','Oscar, Tony','2006-02-15 04:34:33'),(59,71,'ADAM','GRANT','Oscar, Tony','2006-02-15 04:34:33'),(60,74,'MILLA','KEITEL','Oscar, Tony','2006-02-15 04:34:33'),(61,78,'GROUCHO','SINATRA','Oscar, Tony','2006-02-15 04:34:33'),(62,112,'RUSSELL','BACALL','Oscar, Tony','2006-02-15 04:34:33'),(63,154,'MERYL','GIBSON','Oscar, Tony','2006-02-15 04:34:33'),(64,159,'LAURA','BRODY','Oscar, Tony','2006-02-15 04:34:33'),(65,162,'OPRAH','KILMER','Oscar, Tony','2006-02-15 04:34:33'),(66,165,'AL','GARLAND','Oscar, Tony','2006-02-15 04:34:33'),(67,173,'ALAN','DREYFUSS','Oscar, Tony','2006-02-15 04:34:33'),(68,175,'WILLIAM','HACKMAN','Oscar, Tony','2006-02-15 04:34:33'),(69,180,'JEFF','SILVERSTONE','Oscar, Tony','2006-02-15 04:34:33'),(70,182,'DEBBIE','AKROYD','Oscar, Tony','2006-02-15 04:34:33'),(71,187,'RENEE','BALL','Oscar, Tony','2006-02-15 04:34:33'),(72,193,'BURT','TEMPLE','Oscar, Tony','2006-02-15 04:34:33'),(73,200,'THORA','TEMPLE','Oscar, Tony','2006-02-15 04:34:33'),(74,2,'NICK','WAHLBERG','Emmy','2006-02-15 04:34:33'),(75,5,'JOHNNY','LOLLOBRIGIDA','Emmy','2006-02-15 04:34:33'),(76,11,'ZERO','CAGE','Emmy','2006-02-15 04:34:33'),(77,14,'VIVIEN','BERGEN','Emmy','2006-02-15 04:34:33'),(78,53,'MENA','TEMPLE','Emmy','2006-02-15 04:34:33'),(79,81,'SCARLETT','DAMON','Emmy','2006-02-15 04:34:33'),(80,91,'CHRISTOPHER','BERRY','Emmy','2006-02-15 04:34:33'),(81,92,'KIRSTEN','AKROYD','Emmy','2006-02-15 04:34:33'),(82,93,'ELLEN','PRESLEY','Emmy','2006-02-15 04:34:33'),(83,100,'SPENCER','DEPP','Emmy','2006-02-15 04:34:33'),(84,115,'HARRISON','BALE','Emmy','2006-02-15 04:34:33'),(85,126,'FRANCES','TOMEI','Emmy','2006-02-15 04:34:33'),(86,128,'CATE','MCQUEEN','Emmy','2006-02-15 04:34:33'),(87,140,'WHOOPI','HURT','Emmy','2006-02-15 04:34:33'),(88,157,'GRETA','MALDEN','Emmy','2006-02-15 04:34:33'),(89,166,'NICK','DEGENERES','Emmy','2006-02-15 04:34:33'),(90,169,'KENNETH','HOFFMAN','Emmy','2006-02-15 04:34:33'),(91,177,'GENE','MCKELLEN','Emmy','2006-02-15 04:34:33'),(92,192,'JOHN','SUVARI','Emmy','2006-02-15 04:34:33'),(93,NULL,'MICHAEL','LIVELY','Emmy','2006-02-15 04:34:33'),(94,NULL,'TIMOTHY','FINIZIO','Emmy','2006-02-15 04:34:33'),(95,NULL,'JONATHAN','FERRIS','Emmy','2006-02-15 04:34:33'),(96,NULL,'COLLEEN','TREIBICK','Emmy','2006-02-15 04:34:33'),(97,6,'BETTE','NICHOLSON','Oscar','2006-02-15 04:34:33'),(98,9,'JOE','SWANK','Oscar','2006-02-15 04:34:33'),(99,29,'ALEC','WAYNE','Oscar','2006-02-15 04:34:33'),(100,32,'TIM','HACKMAN','Oscar','2006-02-15 04:34:33'),(101,36,'BURT','DUKAKIS','Oscar','2006-02-15 04:34:33'),(102,38,'TOM','MCKELLEN','Oscar','2006-02-15 04:34:33'),(103,76,'ANGELINA','ASTAIRE','Oscar','2006-02-15 04:34:33'),(104,84,'JAMES','PITT','Oscar','2006-02-15 04:34:33'),(105,85,'MINNIE','ZELLWEGER','Oscar','2006-02-15 04:34:33'),(106,99,'JIM','MOSTEL','Oscar','2006-02-15 04:34:33'),(107,101,'SUSAN','DAVIS','Oscar','2006-02-15 04:34:33'),(108,120,'PENELOPE','MONROE','Oscar','2006-02-15 04:34:33'),(109,125,'ALBERT','NOLTE','Oscar','2006-02-15 04:34:33'),(110,131,'JANE','JACKMAN','Oscar','2006-02-15 04:34:33'),(111,133,'RICHARD','PENN','Oscar','2006-02-15 04:34:33'),(112,143,'RIVER','DEAN','Oscar','2006-02-15 04:34:33'),(113,148,'EMILY','DEE','Oscar','2006-02-15 04:34:33'),(114,150,'JAYNE','NOLTE','Oscar','2006-02-15 04:34:33'),(115,152,'BEN','HARRIS','Oscar','2006-02-15 04:34:33'),(116,153,'MINNIE','KILMER','Oscar','2006-02-15 04:34:33'),(117,156,'FAY','WOOD','Oscar','2006-02-15 04:34:33'),(118,161,'HARVEY','HOPE','Oscar','2006-02-15 04:34:33'),(119,163,'CHRISTOPHER','WEST','Oscar','2006-02-15 04:34:33'),(120,164,'HUMPHREY','WILLIS','Oscar','2006-02-15 04:34:33'),(121,167,'LAURENCE','BULLOCK','Oscar','2006-02-15 04:34:33'),(122,178,'LISA','MONROE','Oscar','2006-02-15 04:34:33'),(123,181,'MATTHEW','CARREY','Oscar','2006-02-15 04:34:33'),(124,183,'RUSSELL','CLOSE','Oscar','2006-02-15 04:34:33'),(125,NULL,'LARRY','SYKES','Oscar','2006-02-15 04:34:33'),(126,NULL,'GOOCH','MCDANGER','Oscar','2006-02-15 04:34:33'),(127,NULL,'MONTY','WINTER','Oscar','2006-02-15 04:34:33'),(128,10,'CHRISTIAN','GABLE','Tony','2006-02-15 04:34:33'),(129,17,'HELEN','VOIGHT','Tony','2006-02-15 04:34:33'),(130,22,'ELVIS','MARX','Tony','2006-02-15 04:34:33'),(131,33,'MILLA','PECK','Tony','2006-02-15 04:34:33'),(132,42,'TOM','MIRANDA','Tony','2006-02-15 04:34:33'),(133,55,'FAY','KILMER','Tony','2006-02-15 04:34:33'),(134,59,'DUSTIN','TAUTOU','Tony','2006-02-15 04:34:33'),(135,62,'JAYNE','NEESON','Tony','2006-02-15 04:34:33'),(136,63,'CAMERON','WRAY','Tony','2006-02-15 04:34:33'),(137,87,'SPENCER','PECK','Tony','2006-02-15 04:34:33'),(138,90,'SEAN','GUINESS','Tony','2006-02-15 04:34:33'),(139,103,'MATTHEW','LEIGH','Tony','2006-02-15 04:34:33'),(140,107,'GINA','DEGENERES','Tony','2006-02-15 04:34:33'),(141,108,'WARREN','NOLTE','Tony','2006-02-15 04:34:33'),(142,122,'SALMA','NOLTE','Tony','2006-02-15 04:34:33'),(143,130,'GRETA','KEITEL','Tony','2006-02-15 04:34:33'),(144,132,'ADAM','HOPPER','Tony','2006-02-15 04:34:33'),(145,151,'GEOFFREY','HESTON','Tony','2006-02-15 04:34:33'),(146,179,'ED','GUINESS','Tony','2006-02-15 04:34:33'),(147,189,'CUBA','BIRCH','Tony','2006-02-15 04:34:33'),(148,194,'MERYL','ALLEN','Tony','2006-02-15 04:34:33'),(149,195,'JAYNE','SILVERSTONE','Tony','2006-02-15 04:34:33'),(150,196,'BELA','WALKEN','Tony','2006-02-15 04:34:33'),(151,NULL,'CINDY','PYTHON','Tony','2006-02-15 04:34:33'),(152,NULL,'FLORENCE','SANDERS','Tony','2006-02-15 04:34:33'),(153,NULL,'THOMAS','BARLEY','Tony','2006-02-15 04:34:33'),(154,NULL,'MINDY','WANDERS','Tony','2006-02-15 04:34:33'),(155,NULL,'ASHLEY','SLAGEN','Tony','2006-02-15 04:34:33'),(156,NULL,'CAITLIN','HOFFMAN','Tony','2006-02-15 04:34:33'),(157,NULL,'WANDA','DAVID','Tony','2006-02-15 04:34:33');
/*!40000 ALTER TABLE `actor_award` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-20 20:59:33
