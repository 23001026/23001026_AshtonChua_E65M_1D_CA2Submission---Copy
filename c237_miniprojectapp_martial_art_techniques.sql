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
-- Table structure for table `martial_art_techniques`
--

DROP TABLE IF EXISTS `martial_art_techniques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `martial_art_techniques` (
  `technique_Id` int NOT NULL AUTO_INCREMENT,
  `martial_art_Id` int NOT NULL,
  `technique_name` varchar(45) NOT NULL,
  `technique_step` varchar(500) NOT NULL,
  `image` varchar(500) NOT NULL,
  PRIMARY KEY (`technique_Id`),
  KEY `martial_art_Id_idx` (`martial_art_Id`),
  CONSTRAINT `martial_art_id` FOREIGN KEY (`martial_art_Id`) REFERENCES `martial_arts` (`martial_art_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `martial_art_techniques`
--

LOCK TABLES `martial_art_techniques` WRITE;
/*!40000 ALTER TABLE `martial_art_techniques` DISABLE KEYS */;
INSERT INTO `martial_art_techniques` VALUES (1,1,'punch','A quick, straight punch thrown with the lead hand. It extends from the side of the torso and typically does not pass in front of it. It is accompanied by a small, clockwise rotation of the torso and hips, while the fist rotates 90 degrees, becoming horizontal.','https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Jab7.jpg/158px-Jab7.jpg'),(2,1,'hook','A semi-circular punch thrown with the lead hand to the side of the opponent head. From the guard position, the elbow is drawn back with a horizontal fist and the elbow bent.','https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Crochet1.jpg/156px-Crochet1.jpg'),(3,1,'uppercut','A vertical, rising punch thrown with the rear hand. From the guard position, the torso shifts slightly to the right, the rear hand drops below the level of the opponent chest and the knees are bent slightly. From this position, the rear hand is thrust upwards in a rising arc towards the opponent chin or torso.','https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Uppercut2.jpg/158px-Uppercut2.jpg'),(4,1,'stance','The default stance for boxing. Right handed boxers usually lead with their left hand and foot with the rear hand being held next to the chin and the elbow to the body. It will be the opposite for left handed boxers','https://upload.wikimedia.org/wikipedia/commons/thumb/7/7f/Attitude_droite1.jpg/154px-Attitude_droite1.jpg'),(5,2,'front kick','A very linear kick where the practitioner raises the knee to the waist, pulls the toes back and quickly extends the foot at the target.','https://www.wikihow.com/images_en/thumb/7/78/Perform-a-Taekwondo-Front-Kick-Step-5.jpg/v4-728px-Perform-a-Taekwondo-Front-Kick-Step-5.jpg'),(6,2,'side kick','A very powerful kick, in which the practitioner simultaneously raises the knee and rotates the body 90 degrees, while extending their leg.','https://static1.bigstockphoto.com/1/8/7/large2/781053.jpg'),(7,2,'back kick','The practitioner turns the body away from the target and pushes the back leg straight toward the target, hitting it with the heel while watching over the shoulder.','https://img00.deviantart.net/6c22/i/2012/258/c/7/tae_kwon_do__back_kick_by_landonbridge-d5er4kd.jpg'),(8,2,'axe kick','The leg is raised usually from the outside of the body like an outside crescent kick. then the leg is pulled down with the heel pointed downward.','https://www.researchgate.net/publication/283539683/figure/fig1/AS:391450324946958@1470340438899/Axe-kick-execution-during-power-load.png'),(9,3,'roundhouse kick','The roundhouse kick can be used at low, medium and high levels with low roundhouse kicks being used to hit the thigh of the opponent','https://en.m.wikipedia.org/wiki/File:Roundhousekicks.png'),(10,3,'superman punch','The superman punch involves bringing the rear leg forward to feign a kick, then snapping the leg back while throwing a cross,','https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Flying-punch.jpg/300px-Flying-punch.jpg'),(11,3,'horizontal elbow','The horizontal elbow involves throwing a elbow strike horizontally, generally targeting the eyes and nose of the opponent','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Tha%C3%8F_Boxing.jpg/330px-Tha%C3%8F_Boxing.jpg'),(12,3,'straight knee','The straight knee involves thrusting the front of the knee into the head or body of an opponent.','https://upload.wikimedia.org/wikipedia/en/0/0f/Knee_strike.jpg'),(13,4,'single leg takedown','The single leg takedown involves grabbing one of the legs of the opponent, usually with both hands, and using the position to force the opponent to the ground. To do it, the lower part of the leg is pulled in one direction while your body is pressed on the upper part of the leg in the other direction.','https://upload.wikimedia.org/wikipedia/en/8/89/Single_leg_takedown.jpg'),(14,4,'double leg takedown','The double leg takedown involves grabbing the opponent with both arms around the legs of the opponent while keeping the chest close to the opponent, and using this position to force the opponent to the ground. ','https://upload.wikimedia.org/wikipedia/en/a/a1/Double_leg_takedown_leg_trip.jpg'),(15,4,'rear naked choke','To do a rear naked choke, your arm encircles the neck of the opponent and then grabs your own biceps on the other arm and squeezing the two elbows together.','https://upload.wikimedia.org/wikipedia/commons/b/bd/Rear_naked_choke.jpg'),(16,4,'close guard','To do the close guard,  hook your legs behind the back of the opponent, doing this will prevents them from standing up or moving away. ','https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/CLD2009-Jack_Jamil_x_Phillip_Diniz.jpg/225px-CLD2009-Jack_Jamil_x_Phillip_Diniz.jpg'),(17,5,'deashi harai','To do it, have a firm grip on the opponent while facing him or her. The attacker then moves the foot to the opposite side of his opponent, to sweep the opposite leg of the opponent out from underneath him.','https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/De-ashi-barai.jpg/330px-De-ashi-barai.jpg'),(18,5,'hiza guruma','To do it, break the balance of your opponent on his right front corner, then place the sole of your left foot on his right kneecap and use his this as a fulcrum around which to throw him by pulling his upper body.','https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Hiza-guruma.jpg/330px-Hiza-guruma.jpg'),(19,5,'sasae tsurikomi ashi','To do it, you will pull the opponent towards themselves, while blocking the foot to prevent the opponent from stepping, supporting his weight and regaining his balance and sweep his or her legs backwards.','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Sasae-tsuri-komi-ashi.jpg/330px-Sasae-tsuri-komi-ashi.jpg'),(20,5,'koshi guruma','To do it, you will try to force your opponent to bend down a little and thereby be able to hold your right arm around the opponents head, during this, you will wheel your right hip inwards a bit past the opponents right hip. The legs follow in a series of steps during this wheel and in the new position the attacker simply bends over a bit and the last step is to rotate your body clockwise.','https://upload.wikimedia.org/wikipedia/commons/thumb/2/26/Koshi-guruma.jpg/330px-Koshi-guruma.jpg');
/*!40000 ALTER TABLE `martial_art_techniques` ENABLE KEYS */;
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
