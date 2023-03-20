-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: sales_soln
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `item`
--

DROP DATABASE IF EXISTS sales_soln;
CREATE DATABASE sales_soln;
USE sales_soln;

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `id` int NOT NULL,
  `description` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `category` varchar(45) NOT NULL,
  `year` int NOT NULL,
  `author` varchar(100) DEFAULT NULL,
  `studio` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (0,'A Tale of Two Cities',29.16,'book',1859,'Charles Dickens',NULL),(1,'The Little Prince (Le Petit Prince)',24.83,'book',1943,'Antoine de Saint-Exupéry',NULL),(2,'Harry Potter and the Philosopher\'s Stone',21.2,'book',1997,'J. K. Rowling',NULL),(3,'And Then There Were None',5.93,'book',1939,'Agatha Christie',NULL),(4,'Dream of the Red Chamber (紅樓夢)',29.49,'book',1791,'Cao Xueqin',NULL),(5,'The Hobbit',10.01,'book',1937,'J. R. R. Tolkien',NULL),(6,'The Lion, the Witch and the Wardrobe',9.53,'book',1950,'C. S. Lewis',NULL),(7,'She: A History of Adventure',6.38,'book',1887,'H. Rider Haggard',NULL),(8,'Vardi Wala Gunda',10.19,'book',1992,'Ved Prakash Sharma',NULL),(9,'The Da Vinci Code',29.32,'book',2003,'Dan Brown',NULL),(10,'Harry Potter and the Chamber of Secrets',19.35,'book',1998,'J. K. Rowling',NULL),(11,'Harry Potter and the Prisoner of Azkaban',12.7,'book',1999,'J. K. Rowling',NULL),(12,'Harry Potter and the Goblet of Fire',20.25,'book',2000,'J. K. Rowling',NULL),(13,'Harry Potter and the Order of the Phoenix',19.93,'book',2003,'J. K. Rowling',NULL),(14,'Harry Potter and the Half-Blood Prince',18.3,'book',2005,'J. K. Rowling',NULL),(15,'Harry Potter and the Deathly Hallows',11.67,'book',2007,'J. K. Rowling',NULL),(16,'The Alchemist (O Alquimista)',26.46,'book',1988,'Paulo Coelho',NULL),(17,'The Catcher in the Rye',20.55,'book',1951,'J. D. Salinger',NULL),(18,'The Bridges of Madison County',23.87,'book',1992,'Robert James Waller',NULL),(19,'Ben-Hur: A Tale of the Christ\n',13.92,'book',1880,'Lew Wallace\n',NULL),(20,'You Can Heal Your Life\n',16.35,'book',1984,'Louise Hay\n',NULL),(21,'One Hundred Years of Solitude (Cien años de soledad)',7.89,'book',1967,'Gabriel García Márquez',NULL),(22,'Lolita',14.85,'book',1955,'Vladimir Nabokov',NULL),(23,'Heidi',11.85,'book',1880,'Johanna Spyri',NULL),(24,'The Common Sense Book of Baby and Child Care',8.38,'book',1946,'Benjamin Spock',NULL),(25,'Anne of Green Gables',18.69,'book',1908,'Lucy Maud Montgomery',NULL),(26,'Black Beauty',27.75,'book',1877,'Anna Sewell',NULL),(27,'The Name of the Rose (Il Nome della Rosa)',18.35,'book',1980,'Umberto Eco',NULL),(28,'The Eagle Has Landed',12.83,'book',1975,'Jack Higgins',NULL),(29,'Watership Down',20.81,'book',1972,'Richard Adams',NULL),(30,'The Hite Report',19.2,'book',1976,'Shere Hite',NULL),(31,'Charlotte\'s Web',24.16,'book',1952,'E. B. White; illustrated by Garth Williams',NULL),(32,'The Ginger Man',22.87,'book',1955,'J. P. Donleavy',NULL),(33,'The Lion King',21.21,'movie',1995,NULL,NULL),(34,'Finding Nemo',9.77,'movie',2003,NULL,NULL),(35,'Snow White and the Seven Dwarfs',9.72,'movie',1994,NULL,NULL),(36,'Aladdin',12.67,'movie',1993,NULL,NULL),(37,'Beauty and the Beast',17.55,'movie',1992,NULL,NULL),(38,'Titanic',7.47,'movie',1998,NULL,NULL),(39,'Toy Story',17.93,'movie',1996,NULL,NULL),(40,'Avatar',8.22,'movie',2010,NULL,NULL),(41,'Jurassic Park',28.99,'movie',1994,NULL,NULL),(42,'Spider-Man',6.99,'movie',2002,NULL,NULL),(43,'The Little Mermaid',28.63,'movie',1990,NULL,NULL),(44,'Cinderella',24.18,'movie',1988,NULL,NULL),(45,'Shrek',16.71,'movie',2001,NULL,NULL),(46,'Independence Day',27.51,'movie',1996,NULL,NULL),(47,'Cars',18.78,'movie',2006,NULL,NULL),(48,'Frozen',5.37,'movie',2014,NULL,NULL),(49,'The Dark Knight',15.84,'movie',2008,NULL,NULL),(50,'One Hundred and One Dalmatians',13.73,'movie',1992,NULL,NULL),(51,'How the Grinch Stole Christmas',15.55,'movie',2001,NULL,NULL),(52,'Shrek 2',10.16,'movie',2004,NULL,NULL);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `id` int NOT NULL,
  `date_placed` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (0,'2023-01-04'),(1,'2023-01-04'),(2,'2023-01-05'),(3,'2023-01-06'),(4,'2023-01-06'),(5,'2023-01-06'),(6,'2023-01-07'),(7,'2023-01-08'),(8,'2023-01-09'),(9,'2023-01-09'),(10,'2023-01-09'),(11,'2023-01-10'),(12,'2023-01-11'),(13,'2023-01-12'),(14,'2023-01-13'),(15,'2023-01-14'),(16,'2023-01-14'),(17,'2023-01-15'),(18,'2023-01-16'),(19,'2023-01-16'),(20,'2023-01-17'),(21,'2023-01-17'),(22,'2023-01-18'),(23,'2023-01-19'),(24,'2023-01-19'),(25,'2023-01-20'),(26,'2023-01-20'),(27,'2023-01-20'),(28,'2023-01-20'),(29,'2023-01-21'),(30,'2023-01-22'),(31,'2023-01-23'),(32,'2023-01-24'),(33,'2023-01-25'),(34,'2023-01-25'),(35,'2023-01-26'),(36,'2023-01-27'),(37,'2023-01-28'),(38,'2023-01-29'),(39,'2023-01-30'),(40,'2023-01-30'),(41,'2023-01-31'),(42,'2023-02-01'),(43,'2023-02-01'),(44,'2023-02-02'),(45,'2023-02-03'),(46,'2023-02-03'),(47,'2023-02-03'),(48,'2023-02-03'),(49,'2023-02-03'),(50,'2023-02-04'),(51,'2023-02-04'),(52,'2023-02-05'),(53,'2023-02-06'),(54,'2023-02-07'),(55,'2023-02-07'),(56,'2023-02-07'),(57,'2023-02-08'),(58,'2023-02-09'),(59,'2023-02-09'),(60,'2023-02-10'),(61,'2023-02-11'),(62,'2023-02-12'),(63,'2023-02-13'),(64,'2023-02-13'),(65,'2023-02-14'),(66,'2023-02-15'),(67,'2023-02-16'),(68,'2023-02-17'),(69,'2023-02-18'),(70,'2023-02-18'),(71,'2023-02-18'),(72,'2023-02-19'),(73,'2023-02-19'),(74,'2023-02-20'),(75,'2023-02-21'),(76,'2023-02-21'),(77,'2023-02-22'),(78,'2023-02-23'),(79,'2023-02-24'),(80,'2023-02-25'),(81,'2023-02-25'),(82,'2023-02-26'),(83,'2023-02-27'),(84,'2023-02-28'),(85,'2023-03-01'),(86,'2023-03-02'),(87,'2023-03-02'),(88,'2023-03-03'),(89,'2023-03-04'),(90,'2023-03-05'),(91,'2023-03-05'),(92,'2023-03-05'),(93,'2023-03-06'),(94,'2023-03-07'),(95,'2023-03-08'),(96,'2023-03-09'),(97,'2023-03-09'),(98,'2023-03-10'),(99,'2023-03-10');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_item` (
  `order_id` int NOT NULL,
  `item_id` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`order_id`,`item_id`),
  KEY `id_idx` (`item_id`),
  CONSTRAINT `FK_item_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`),
  CONSTRAINT `FK_order_id` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
INSERT INTO `order_item` VALUES (0,24,1),(0,51,2),(1,36,1),(1,41,1),(2,3,1),(3,46,1),(3,51,1),(4,4,2),(5,9,1),(6,1,1),(7,19,1),(7,46,1),(7,52,1),(8,7,1),(8,9,1),(8,21,1),(9,50,3),(10,22,3),(10,28,2),(11,11,2),(11,17,1),(12,37,1),(12,41,2),(12,42,1),(13,12,1),(13,42,1),(14,22,3),(15,1,1),(15,4,1),(15,10,1),(16,22,2),(16,32,1),(17,2,1),(17,13,3),(18,12,3),(18,16,1),(18,24,1),(19,20,1),(20,8,1),(21,10,1),(22,20,1),(22,44,1),(23,42,1),(23,47,1),(24,36,1),(25,31,1),(26,34,1),(27,49,1),(28,21,3),(29,9,3),(30,35,1),(30,41,2),(31,15,3),(31,19,2),(32,17,1),(32,48,1),(33,23,2),(33,46,1),(34,0,1),(34,21,1),(35,34,3),(35,47,1),(36,6,1),(36,29,3),(36,39,1),(37,8,1),(37,32,2),(37,50,3),(38,3,1),(39,2,1),(40,8,1),(40,20,1),(41,31,1),(42,20,2),(42,28,1),(43,50,1),(44,15,1),(44,28,2),(45,31,1),(45,47,2),(45,50,1),(46,45,3),(47,6,1),(48,40,1),(49,15,1),(49,40,1),(50,18,1),(50,40,1),(51,0,2),(51,10,1),(51,38,1),(52,4,1),(52,17,2),(52,50,3),(53,12,1),(53,27,1),(53,52,1),(54,17,1),(55,16,3),(55,26,1),(56,33,1),(57,1,1),(58,14,1),(59,17,1),(59,37,1),(59,51,1),(60,42,1),(60,48,1),(60,52,1),(61,48,1),(62,27,3),(62,38,1),(63,3,1),(64,6,1),(64,35,3),(65,9,1),(66,19,1),(66,29,1),(66,41,3),(67,15,1),(67,30,1),(68,11,3),(69,25,1),(70,39,1),(71,26,3),(72,16,1),(72,50,3),(72,51,1),(73,49,1),(74,38,1),(74,42,1),(75,35,2),(76,51,3),(77,40,1),(77,42,1),(78,9,1),(79,33,1),(80,24,1),(81,50,1),(82,6,1),(83,13,1),(83,29,1),(84,35,1),(84,41,1),(84,43,2),(85,30,1),(85,40,1),(86,5,1),(87,0,2),(88,26,1),(89,36,1),(90,33,1),(90,37,1),(90,42,3),(91,40,1),(92,37,3),(93,6,1),(94,17,2),(94,38,1),(94,47,2),(95,35,1),(95,39,1),(95,47,2),(96,24,1),(96,42,1),(96,49,2),(97,13,1),(97,40,1),(97,49,1),(98,27,3),(98,41,2),(98,50,3),(99,4,1),(99,7,1),(99,25,1);
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-03 16:30:29
