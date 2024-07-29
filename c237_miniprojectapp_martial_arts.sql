CREATE DATABASE  IF NOT EXISTS `c237_miniprojectapp` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `c237_miniprojectapp`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: c237_miniprojectapp
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
-- Table structure for table `martial_arts`
--

DROP TABLE IF EXISTS `martial_arts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `martial_arts` (
  `martial_art_Id` int NOT NULL,
  `category_Id` int NOT NULL,
  `martial_art_name` varchar(45) NOT NULL,
  `description` varchar(500) NOT NULL,
  `image` varchar(500) NOT NULL,
  PRIMARY KEY (`martial_art_Id`),
  KEY `category_Id_idx` (`category_Id`),
  CONSTRAINT `category_Id` FOREIGN KEY (`category_Id`) REFERENCES `martial_art_category` (`category_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `martial_arts`
--

LOCK TABLES `martial_arts` WRITE;
/*!40000 ALTER TABLE `martial_arts` DISABLE KEYS */;
INSERT INTO `martial_arts` VALUES (1,1,'Boxing','A combat sport that involves two participants punching each other while wearing gloves on each hand','https://media.istockphoto.com/id/92148943/photo/boxers-in-action.jpg?s=612x612&w=0&k=20&c=fevkDjGx4LQgQVB0SYSBL_1A63h_wTUXR3sY3beyFsU='),(2,1,'Taekwondo','A Korean martial art known for its emphasis on high, fast kicks and dynamic footwork.','https://media.istockphoto.com/id/1142169135/photo/sporty-caucasian-boys-having-taekwondo-training-in-white-gym-and-kicking-each-other.webp?b=1&s=170667a&w=0&k=20&c=2GUBQBiYuQVuBT5Xuzrp1bcKN63CJbrj_H6KCALxqbQ='),(3,1,'Muay Thai','It is a Thai martial art and full-contact combat sport that uses stand-up striking, sweeps, and various clinching techniques','https://media.istockphoto.com/id/911353384/photo/muay-thai-athletes-training-on-the-boxing-ring.jpg?s=1024x1024&w=is&k=20&c=HiBvSQHEjy9Gf6WeK_-pYWdPronwGBIbhRmnkV2WaRo='),(4,2,'Jiu-Jutsu','Brazilian Jiu-Jitsu is a martial art focusing on grappling and ground fighting. It gained popularity from the Gracie family after a member, Royce Gracie won the first UFC tournament.','https://media.istockphoto.com/id/1465696055/photo/brazilian-jiu-jitsu-bjj-concept-training-martial-arts-combat-sport.webp?b=1&s=170667a&w=0&k=20&c=7JsdOqpdnSMrJVRROERBYdhHlSPxM6FhgP4dVB2KD7U='),(5,2,'Judo','Judo is a Japanese martial art and Olympic sport emphasizing throws, joint locks, and pins.','https://media.istockphoto.com/id/624542628/photo/the-two-judokas-fighters-fighting-men.jpg?s=1024x1024&w=is&k=20&c=3rGGt5YqVBK5-OSamLQfOi_Z1wH1pdSr4kZjK8CcVsk=');
/*!40000 ALTER TABLE `martial_arts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-13 16:49:05
