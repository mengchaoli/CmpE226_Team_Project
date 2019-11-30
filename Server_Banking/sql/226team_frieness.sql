-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: 226team
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `frieness`
--

DROP TABLE IF EXISTS `frieness`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `frieness` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `user_account` varchar(45) NOT NULL,
  `partner_account` varchar(45) NOT NULL,
  `date` date NOT NULL,
  `amount` decimal(11,0) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frieness`
--

LOCK TABLES `frieness` WRITE;
/*!40000 ALTER TABLE `frieness` DISABLE KEYS */;
INSERT INTO `frieness` VALUES (1,11,'5645054488460159','1196171814607991','2019-11-25',100,'Test for free money'),(2,11,'5645054488460159','1196171814607991','2019-11-25',100,'Test for free money'),(3,11,'5645054488460159','1196171814607991','2019-11-25',100,'Test for free money'),(4,11,'5645054488460159','1196171814607991','2019-11-25',1000,'DOn\'t take my money again. I will give you more'),(5,11,'5645054488460159','1196171814607991','2019-11-25',1000,'How dare you!'),(6,11,'5645054488460159','1196171814607991','2019-11-25',100,'Put');
/*!40000 ALTER TABLE `frieness` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-30 14:59:10
