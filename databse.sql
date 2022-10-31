-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce_db
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banners` (
  `id` int NOT NULL AUTO_INCREMENT,
  `caption` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `link` varchar(100) NOT NULL,
  `created` date NOT NULL,
  `creater_id` int NOT NULL,
  `updated` date DEFAULT NULL,
  `updater_id` int DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `creater_id` (`creater_id`),
  KEY `updater_id` (`updater_id`),
  CONSTRAINT `banners_ibfk_1` FOREIGN KEY (`creater_id`) REFERENCES `users` (`id`),
  CONSTRAINT `banners_ibfk_2` FOREIGN KEY (`updater_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` VALUES (12,'There are many new laptop models','very cheap price','https://adminlte.io/docs/3.1//javascript/toasts.html','2021-12-01',1,'2022-10-31',1,1);
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branchs`
--

DROP TABLE IF EXISTS `branchs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branchs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branchs`
--

LOCK TABLES `branchs` WRITE;
/*!40000 ALTER TABLE `branchs` DISABLE KEYS */;
INSERT INTO `branchs` VALUES (1,'Dellxx','e37fd860db1b453caf0e4d20e321391c.png'),(2,'Apple','thumb1.gif'),(3,'Acer','thumb1.gif'),(4,'Samsung','thumb1.gif'),(5,'eidteeasddd','16c60c2957f04dabbd671fff6067e083.png');
/*!40000 ALTER TABLE `branchs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_product`
--

DROP TABLE IF EXISTS `cart_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cart_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_id` (`cart_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `cart_product_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `cart_product_ibfk_2` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_product`
--

LOCK TABLES `cart_product` WRITE;
/*!40000 ALTER TABLE `cart_product` DISABLE KEYS */;
INSERT INTO `cart_product` VALUES (83,25,5,1),(84,26,7,1),(85,27,3,1),(86,29,14,1),(87,31,12,1),(98,58,7,1),(100,60,7,6),(101,62,16,1),(102,72,5,1),(103,72,3,1),(104,72,7,1),(105,74,2,1),(106,74,3,1),(107,75,5,1),(108,75,7,1),(109,75,12,1),(110,79,15,1),(111,79,3,1),(113,91,15,1),(114,91,19,1),(115,91,21,1),(117,93,18,4),(119,97,18,1);
/*!40000 ALTER TABLE `cart_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `created` date NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `carts_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (25,10,'2021-12-06','done'),(26,10,'2021-12-06','done'),(27,10,'2021-12-06','done'),(29,10,'2021-12-06','done'),(31,10,'2021-12-06','done'),(57,10,'2021-12-07','pending'),(58,10,'2021-12-07','done'),(59,10,'2021-12-07','pending'),(60,10,'2021-12-08','done'),(61,10,'2021-12-08','pending'),(62,1,'2021-12-08','pending'),(63,12,'2021-12-08','pending'),(64,12,'2021-12-08','pending'),(65,12,'2021-12-08','pending'),(66,12,'2021-12-08','pending'),(67,1,'2021-12-08','pending'),(68,1,'2021-12-08','pending'),(69,1,'2021-12-08','pending'),(70,1,'2021-12-08','pending'),(71,1,'2021-12-08','pending'),(72,1,'2021-12-08','pending'),(73,1,'2021-12-08','pending'),(74,14,'2021-12-08','done'),(75,14,'2021-12-08','done'),(76,14,'2021-12-08','pending'),(78,16,'2022-10-29','pending'),(79,16,'2022-10-29','pending'),(80,1,'2022-10-29','pending'),(81,1,'2022-10-29','pending'),(82,1,'2022-10-29','pending'),(83,1,'2022-10-29','pending'),(84,16,'2022-10-29','pending'),(85,1,'2022-10-29','pending'),(86,1,'2022-10-30','pending'),(87,16,'2022-10-30','pending'),(88,1,'2022-10-30','pending'),(89,1,'2022-10-30','pending'),(90,1,'2022-10-31','pending'),(91,16,'2022-10-31','pending'),(92,1,'2022-10-31','pending'),(93,16,'2022-10-31','done'),(94,16,'2022-10-31','pending'),(95,16,'2022-10-31','pending'),(96,1,'2022-10-31','pending'),(97,16,'2022-10-31','done'),(98,16,'2022-10-31','pending');
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `discount_percent` double NOT NULL,
  `status` tinyint(1) NOT NULL,
  `parent_id` int DEFAULT NULL,
  `level` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Laptop MSI',5,1,NULL,1),(2,'Laptop MSI i7 8800H',0,1,1,2),(3,'Laptop Lenovo',15,1,NULL,1),(4,'Laptop Lenovo Black I7',0,1,3,2),(5,'Laptop Acer',15,1,NULL,1),(6,'Laptop Acer I7',15,1,5,2),(12,'Laptop Asus',15,1,13,1),(13,'Laptop Asus I5',15,1,12,2),(14,'Laptop Asus Pink',15,1,13,3),(15,'Laptop MSI I5',15,1,1,2),(16,'Laptop Acer Yellow',15,1,6,3),(17,'Laptop MSI Pink',15,1,15,3),(18,'Laptop MSI Blue',15,1,2,3),(19,'Laptop MSI Black',15,1,15,3),(20,'Laptop Asus Black',15,1,13,3),(21,'Laptop Acer FT',15,1,6,3),(22,'Laptop Asus Black',15,1,13,3),(23,'Laptop Acer Pink',15,1,6,3),(24,'Laptop HP',15,1,NULL,2),(25,'Laptop DELL',15,1,NULL,1),(28,'Laptop Gigabyte',15,1,NULL,1),(29,'Laptop ASUS',15,1,NULL,1),(30,'Laptop DELL I5',0,1,25,2),(31,'Laptop DELL Black',0,1,25,2),(32,' Laptop ASUS I5',15,1,29,2),(33,'Laptop ASUS Gaming',15,1,32,3),(34,'Laptop HP I9',15,1,24,2),(35,'Laptop Gigabyte',15,1,28,2),(36,'Laptop Lenovo blue',0,1,4,3);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_chanels`
--

DROP TABLE IF EXISTS `chat_chanels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat_chanels` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `store_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `store_id` (`store_id`),
  CONSTRAINT `chat_chanels_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `chat_chanels_ibfk_2` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_chanels`
--

LOCK TABLES `chat_chanels` WRITE;
/*!40000 ALTER TABLE `chat_chanels` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat_chanels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_messages`
--

DROP TABLE IF EXISTS `chat_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat_messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `store_id` int NOT NULL,
  `isUser_sender` tinyint(1) NOT NULL,
  `time_sent` date NOT NULL,
  `content` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `author_user_id` (`user_id`,`store_id`),
  KEY `store_id` (`store_id`),
  CONSTRAINT `chat_messages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `chat_messages_ibfk_2` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_messages`
--

LOCK TABLES `chat_messages` WRITE;
/*!40000 ALTER TABLE `chat_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `content` varchar(500) NOT NULL,
  `rating` int NOT NULL,
  `created` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`product_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `comments_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'MAN Store','abc@gmail.com','01234568874','address',0);
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `content` varchar(300) NOT NULL,
  `created` date NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,1,'content 1','2021-11-01',1),(2,1,'content 2','2021-11-01',0),(3,1,'content 3','2021-11-01',1);
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `product_id` int DEFAULT NULL,
  `banner_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`,`banner_id`),
  KEY `banner_id` (`banner_id`),
  CONSTRAINT `images_ibfk_1` FOREIGN KEY (`banner_id`) REFERENCES `banners` (`id`),
  CONSTRAINT `images_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (30,'banner2.jpg',NULL,12),(31,'banner1.png',NULL,12);
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `store_id` int DEFAULT NULL,
  `content` varchar(200) NOT NULL,
  `created` date NOT NULL,
  `is_read` tinyint(1) NOT NULL,
  `is_all_user` tinyint(1) NOT NULL DEFAULT '0',
  `is_all_store` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`store_id`),
  KEY `store_id` (`store_id`),
  CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`),
  CONSTRAINT `notifications_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (6,3,NULL,'adfasdfasdfeeee','2021-11-25',0,0,0),(7,NULL,NULL,'new notification for all user','2021-11-25',0,1,0);
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `description_detail` text NOT NULL,
  `original_price` double NOT NULL,
  `sale_off_percent` double DEFAULT '0',
  `price` double NOT NULL,
  `quantity` int NOT NULL,
  `inventory` int NOT NULL,
  `branch_id` int NOT NULL,
  `category_id` int NOT NULL,
  `created` date NOT NULL,
  `updated` date DEFAULT NULL,
  `is_outstanding` tinyint(1) DEFAULT '0',
  `is_best_selling` tinyint(1) DEFAULT '0',
  `is_new` tinyint(1) DEFAULT '0',
  `store_id` int NOT NULL,
  `discount_percent` double NOT NULL,
  `discount_amount` double NOT NULL,
  `rating_count` int NOT NULL,
  `rating_average` double NOT NULL,
  `status` tinyint(1) NOT NULL,
  `ban_reason` text,
  `is_locked` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `store_id` (`store_id`),
  KEY `branch_id` (`branch_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`),
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`branch_id`) REFERENCES `branchs` (`id`),
  CONSTRAINT `products_ibfk_3` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Laptop Aspire Black','aspire1.jpg','Laptop 1 description','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.',100,0,100,12,12,2,18,'2021-11-18','2021-12-08',0,0,1,1,25,25,2,4,1,NULL,0),(2,'Laptop Aspire Red','aspire2.jpg','Product 2 description','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.\r\n',100,0,70,11,12,5,18,'2021-11-18','2021-11-19',0,1,1,1,25,25,1,5,1,'true',0),(3,'Laptop ASPIRE','aspire4.jpg','fffttttt','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.',100,0,55,10,12,1,18,'2021-11-18','2021-11-30',1,0,1,1,25,25,3,4,1,NULL,0),(4,'Product 4','hp.jpg','Product 4 description','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.',100,0,40,12,12,1,18,'2021-11-18','2021-11-27',0,0,1,1,25,25,3,3,1,'',0),(5,'Laptop Asprice','aspire2.jpg','Product 5 description','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.',100,0,80,10,12,1,18,'2021-11-01','2021-11-18',1,0,1,1,25,25,2,1,1,'',0),(7,'Laptop MSI','msige2.jpg','Product 6 description','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.',100,0,25,1,12,1,18,'2021-11-18','2021-12-08',1,0,1,1,25,25,1,5,1,NULL,0),(10,'Laptop MSI GE','msige3.jpg','Laptop 2 description','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.',100,0,60,12,12,2,18,'2021-11-18','2021-12-08',0,0,1,1,25,25,2,4,1,NULL,0),(11,'Laptop MSI','msige4.jpg','','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.',100,0,70,12,12,5,18,'2021-11-18','2021-11-19',0,1,1,1,25,25,1,5,1,'true',0),(12,'Laptop Yoga','yoga2.jpg','fffttttt','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.',100,0,55,10,12,1,18,'2021-11-18','2021-11-30',1,0,1,1,25,25,3,4,1,NULL,0),(13,'Laptop Lenovo','dell.jpg','Product 11 description','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.',100,0,40,12,12,1,18,'2021-11-18','2021-11-27',0,0,1,1,25,25,3,3,1,'',0),(14,'Laptop MSI ','msipule3.jpg','Product 9 description','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.',100,0,80,11,12,1,18,'2021-11-01','2021-11-18',1,0,1,1,25,25,2,1,1,'',0),(15,'Laptop MSI Pule','msipule4.jpg','Product 10 description','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.',100,0,25,12,12,1,18,'2021-11-18','2021-11-18',1,0,1,1,25,25,1,5,1,'',0),(16,'Laptop Nitro','nitro2.jpg','Laptop asus detail','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.',15,0,15,0,0,1,1,'2021-12-07','2021-12-07',0,0,1,1,0,0,0,0,1,NULL,NULL),(17,'Laptop Nitro','nitro1.jpg','asdfasdfasdfas','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.',50,0,50,0,0,1,1,'2021-12-08',NULL,0,0,1,1,0,0,0,0,1,NULL,NULL),(18,'Laptop Lenovo','8cd8619370094e4897d5a3437a3def00.jpg','Laptop Lenovo','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.',12.3,0,23.5,1,0,1,36,'2021-12-08',NULL,1,1,1,1,0,0,0,0,1,NULL,NULL),(19,'Laptop Acer','6df7f4d3fa3d45a1bedba68b1fd82e61.jpg','Acer Aspire 7 A715-42G-R4XX gaming laptop with powerful performance and stylish design, promises to give users a smooth working and gaming experience.','Graphics card type\r\n\r\nGeforce GTX 1650 4GB\r\nAmount of RAM 8GB\r\nType of RAM DDR4 3200MHz, 2 slots up to 32GB\r\nHard Drive 256GB SSD NVMe M.2 PCIe Gen 3 x 4\r\nScreen size 15.6 inches\r\nScreen resolution 1920 x 1080 pixels (FullHD)\r\nThe web of communication 2x USB 2.0; 1x USB 3.0; 1x USB 3.1 Type C; 1x HDMI\r\nOperating system Windows 11 Home SL\r\nPin 3 Cell , 48 Whr\r\nWeight 2.1 kg',900,0,700,200,0,1,5,'2022-10-29',NULL,1,1,1,1,0,0,0,0,1,NULL,NULL),(21,'Laptop DELL INSP','935f40216efd44299a10d58b77d4bd75.jpg','i7 \r\nram 16GB\r\n','so many tabbar',300,0,200,50,0,1,25,'2022-10-31',NULL,0,1,1,1,0,0,0,0,1,NULL,NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ROLE_USER',1),(2,'ROLE_ADMIN',1);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` varchar(500) NOT NULL,
  `original_price` double NOT NULL,
  `price` double NOT NULL,
  `duration` int NOT NULL,
  `created` date NOT NULL,
  `created_id` int NOT NULL,
  `updated` date DEFAULT NULL,
  `updated_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `created_id` (`created_id`,`updated_id`),
  KEY `updated_id` (`updated_id`),
  CONSTRAINT `services_ibfk_1` FOREIGN KEY (`created_id`) REFERENCES `users` (`id`),
  CONSTRAINT `services_ibfk_2` FOREIGN KEY (`updated_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'service 1','description 1',1000,1000,5,'2021-11-01',1,NULL,NULL),(2,'service 2','description 2',1500,1400,10,'2021-11-01',1,NULL,NULL),(3,'service 3','description 3',2500,2000,15,'2021-11-01',1,NULL,NULL),(5,'service 4','description 4',999,1111,2,'2021-11-29',1,NULL,NULL);
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_services`
--

DROP TABLE IF EXISTS `store_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_services` (
  `store_id` int NOT NULL,
  `service_id` int NOT NULL,
  `created` date NOT NULL,
  `duration` int NOT NULL,
  `price` double NOT NULL,
  KEY `store_id` (`store_id`,`service_id`),
  KEY `store_id_2` (`store_id`,`service_id`),
  KEY `service_id` (`service_id`),
  CONSTRAINT `store_services_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`),
  CONSTRAINT `store_services_ibfk_2` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_services`
--

LOCK TABLES `store_services` WRITE;
/*!40000 ALTER TABLE `store_services` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `logo` varchar(200) NOT NULL,
  `user_id` int NOT NULL,
  `created` date NOT NULL,
  `expiry` date DEFAULT NULL,
  `updated` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `ban_term` date DEFAULT NULL,
  `paypal_account` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `stores_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` VALUES (1,'MAN Store','0347557353','nghia181032@gmail.com','4/1 street 10, Thu Duc City','9674acab45344ff08b7423b6dd584adb.jpg',5,'2021-11-18','2021-11-30','2022-10-31',1,NULL,'');
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system`
--

DROP TABLE IF EXISTS `system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `banner_img_amount` int NOT NULL,
  `max_banner_photo_size` int NOT NULL,
  `default_ban_email_content` text NOT NULL,
  `default_ban_email_subject` varchar(200) NOT NULL,
  `default_password_email_content` text NOT NULL,
  `default_password_email_subject` text NOT NULL,
  `paypal_account` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `email_password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system`
--

LOCK TABLES `system` WRITE;
/*!40000 ALTER TABLE `system` DISABLE KEYS */;
INSERT INTO `system` VALUES (1,'MAN Store',5,2,'<b>Default ban email content</b>','Default ban email subject','<b>Default password email content</b> :','Default password email subject','sb-89nsw5547823@business.example.com','testsemester4@gmail.com','TestSemester4@1234');
/*!40000 ALTER TABLE `system` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag_products`
--

DROP TABLE IF EXISTS `tag_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag_products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tag_id` int NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tag_id` (`tag_id`,`product_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `tag_products_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`),
  CONSTRAINT `tag_products_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag_products`
--

LOCK TABLES `tag_products` WRITE;
/*!40000 ALTER TABLE `tag_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'tag 1',1),(2,'tag 2',1),(3,'tag 3',1),(4,'tag 4',1);
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_details`
--

DROP TABLE IF EXISTS `transaction_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT 'Transaciton details',
  `payment` varchar(100) DEFAULT 'paypal',
  `address` varchar(500) DEFAULT NULL,
  `quantity` int NOT NULL,
  `discount` double DEFAULT '0',
  `vat` double DEFAULT '0',
  `created` date NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `transaction_details_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_details`
--

LOCK TABLES `transaction_details` WRITE;
/*!40000 ALTER TABLE `transaction_details` DISABLE KEYS */;
INSERT INTO `transaction_details` VALUES (1,'transaction detail 1','paypal','address 1',2,0,0,'2021-11-01',3),(2,'Transaction details Mon Dec 06 18:30:39 ICT 2021',NULL,'tmp address',1,0,0,'2021-12-06',10),(3,'Transaction details Mon Dec 06 18:31:16 ICT 2021',NULL,'tmp address',1,0,0,'2021-12-06',10),(4,'Transaction details Mon Dec 06 18:33:27 ICT 2021',NULL,'tmp address',2,0,0,'2021-12-06',10),(5,'Transaction details Mon Dec 06 18:36:08 ICT 2021',NULL,'tmp address',1,0,0,'2021-12-06',10),(6,'Transaction details Mon Dec 06 18:40:56 ICT 2021',NULL,'tmp address',1,0,0,'2021-12-06',10),(7,'Transaction details Mon Dec 06 18:46:49 ICT 2021',NULL,'tmp address',1,0,0,'2021-12-06',10),(8,'Transaction details Mon Dec 06 18:50:06 ICT 2021',NULL,'tmp address',1,0,0,'2021-12-06',10),(9,'Transaction details Mon Dec 06 18:52:47 ICT 2021',NULL,'tmp address',1,0,0,'2021-12-06',10),(10,'Transaction details Mon Dec 06 18:59:26 ICT 2021',NULL,'tmp address',1,0,0,'2021-12-06',10),(11,'Transaction details Mon Dec 06 19:00:40 ICT 2021',NULL,'tmp address',1,0,0,'2021-12-06',10),(12,'Transaction details Mon Dec 06 19:02:34 ICT 2021',NULL,'tmp address',1,0,0,'2021-12-06',10),(13,'Transaction details Tue Dec 07 19:37:01 ICT 2021',NULL,'tmp address',1,0,0,'2021-12-07',10),(14,'Transaction details Wed Dec 08 09:45:01 ICT 2021',NULL,'tmp address',1,0,0,'2021-12-08',10),(15,'Transaction details Wed Dec 08 15:22:28 ICT 2021',NULL,'tmp address',2,0,0,'2021-12-08',14),(16,'Transaction details Wed Dec 08 15:32:56 ICT 2021',NULL,'tmp address',3,0,0,'2021-12-08',14),(17,'Transaction details Mon Oct 31 16:15:20 GMT+07:00 2022',NULL,'tmp address',1,0,0,'2022-10-31',16),(18,'Transaction details Mon Oct 31 16:40:06 GMT+07:00 2022',NULL,'tmp address',1,0,0,'2022-10-31',16);
/*!40000 ALTER TABLE `transaction_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `price` double NOT NULL,
  `service_id` int DEFAULT NULL,
  `store_id` int DEFAULT '1',
  `quantity` int NOT NULL,
  `tax` double DEFAULT '0',
  `total` double NOT NULL,
  `note` varchar(500) DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `transaction_detail_id` int NOT NULL,
  `status` varchar(50) NOT NULL,
  `cancel_reason` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `service_id` (`service_id`),
  KEY `store_id` (`store_id`),
  KEY `transaction_detail_id` (`transaction_detail_id`),
  CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`),
  CONSTRAINT `transactions_ibfk_3` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`),
  CONSTRAINT `transactions_ibfk_4` FOREIGN KEY (`transaction_detail_id`) REFERENCES `transaction_details` (`id`),
  CONSTRAINT `transactions_ibfk_5` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (7,500,NULL,1,1,100,600,NULL,1,1,'done',''),(8,600,NULL,1,1,100,700,NULL,5,1,'done',''),(9,500,NULL,1,1,100,600,NULL,2,1,'done',''),(10,600,NULL,1,1,100,700,NULL,1,1,'done',NULL),(11,600,NULL,1,1,100,700,NULL,5,1,'done',NULL),(12,500,NULL,1,1,100,600,NULL,3,1,'done',NULL),(13,25,NULL,1,1,0,25,NULL,7,7,'done',''),(16,55,NULL,1,1,0,55,NULL,3,10,'done',''),(17,80,NULL,1,1,0,80,NULL,14,11,'done',''),(18,55,NULL,1,1,0,55,NULL,12,12,'done',''),(19,25,NULL,1,1,0,25,NULL,7,13,'done',''),(20,25,NULL,1,6,0,150,NULL,7,14,'pending',NULL),(21,70,NULL,1,1,0,70,NULL,2,15,'pending',NULL),(22,55,NULL,1,1,0,55,NULL,3,15,'pending',NULL),(23,80,NULL,1,1,0,80,NULL,5,16,'pending',NULL),(24,25,NULL,1,1,0,25,NULL,7,16,'pending',NULL),(25,55,NULL,1,1,0,55,NULL,12,16,'pending',NULL),(26,23.5,NULL,1,1,0,23.5,NULL,18,18,'done','');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `password` varchar(200) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `birthday` date NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created` date NOT NULL,
  `updated` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `role_id` int NOT NULL,
  `ban_term` date DEFAULT NULL,
  `address` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','$2a$12$4lInDnkm9A2XIpFQ2k64H.RIOLZhIbiDvz9idBaSIovca8Vxl/5aG','admin','2021-11-10','123','nghia181032@gmail.com','2022-10-01','2022-10-01',0,2,NULL,''),(3,'username1Ok','123','user 1','2001-07-12','123225544688','nghia181032@gmail.com','2022-10-01','2022-10-01',1,1,NULL,''),(4,'user2','$2a$10$MZ1PI0cvgy.EQhgFs.ceCOemQ2ZLCURJHPZkF0sfkWnxt3rWT2xDe','user 2','2021-11-01','123','nghia181032@gmail.com','2022-10-01','2022-10-01',1,1,NULL,''),(5,'user3','$2a$10$MZ1PI0cvgy.EQhgFs.ceCOemQ2ZLCURJHPZkF0sfkWnxt3rWT2xDe','user 3','2021-11-01','123','nghia181032@gmail.com','2022-10-01','2022-10-01',1,1,NULL,''),(6,'user4','$2a$10$MZ1PI0cvgy.EQhgFs.ceCOemQ2ZLCURJHPZkF0sfkWnxt3rWT2xDe','user 4','2021-11-01','123','nghia181032@gmail.com','2022-10-01','2022-10-01',1,1,NULL,''),(10,'usernamey1','$2a$10$MZ1PI0cvgy.EQhgFs.ceCOemQ2ZLCURJHPZkF0sfkWnxt3rWT2xDe','full name 1','2001-01-26','0123456789','nghia181032@gmail.com','2022-10-01','2022-10-01',1,1,NULL,'sdasda'),(12,'usernameU','$2a$10$MZ1PI0cvgy.EQhgFs.ceCOemQ2ZLCURJHPZkF0sfkWnxt3rWT2xDe','fullname y','2000-12-31','0123456789','nghia181032@gmail.com','2022-10-01','2022-10-01',1,1,NULL,'sssssssssssssssssss'),(13,'Meomeo1','$2a$10$MZ1PI0cvgy.EQhgFs.ceCOemQ2ZLCURJHPZkF0sfkWnxt3rWT2xDe','meo','2000-12-31','0919801182','nghia181032@gmail.com','2022-10-01','2022-10-01',1,1,NULL,'sadasdaa'),(14,'Meocon1','$2a$10$MZ1PI0cvgy.EQhgFs.ceCOemQ2ZLCURJHPZkF0sfkWnxt3rWT2xDe','meo','2000-12-31','0338477509','nghia181032@gmail.com','2022-10-01','2022-10-01',1,1,NULL,'sdasdad'),(15,'Meow02','$2a$10$MZ1PI0cvgy.EQhgFs.ceCOemQ2ZLCURJHPZkF0sfkWnxt3rWT2xDe','ddddddddddddddddddddddd','2000-12-31','0123456789','nghia181032@gmail.com','2022-10-01','2022-10-01',1,1,NULL,'sdfasdfaeeeeadsd'),(16,'nghiameow3','$2a$10$MZ1PI0cvgy.EQhgFs.ceCOemQ2ZLCURJHPZkF0sfkWnxt3rWT2xDe','nghia','2000-12-30','0339941057','nghia6063@gmail.com','2022-10-29','2022-10-29',1,1,NULL,'d?dadd');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'ecommerce_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-31 17:07:00
