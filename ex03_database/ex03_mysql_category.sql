-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: ex03_mysql
-- ------------------------------------------------------
-- Server version	5.7.41-log

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=406 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'C01','Apple','Danh mục Apple','2023-04-12 03:38:43','2023-04-12 03:38:43'),(2,'C02','Samsung','Danh mục Samsung','2023-04-12 03:38:43','2023-04-12 03:38:43'),(3,'C03','Oppo','Danh mục Oppo','2023-04-12 03:38:43','2023-04-12 03:38:43'),(4,'C04','Dell','Danh mục Dell','2023-04-12 03:38:43','2023-04-12 03:38:43'),(5,'C05','Lenovo','Danh mục Lenovo','2023-04-12 03:38:43','2023-04-12 03:38:43'),(7,'C12','Dell','Danh mục Dell','2023-04-27 03:14:45','2023-04-27 03:14:45'),(16,'C13','Dell','Danh mục Dell','2023-04-27 04:03:52','2023-04-27 04:03:52'),(21,'C17','Dell','Danh mục Dell','2023-04-27 04:20:53','2023-04-27 04:20:53'),(22,'C19','Dell','Danh mục Dell','2023-04-27 04:23:29','2023-04-27 04:23:29'),(25,'C20','Xiaomi','Danh mục Xiaomi','2023-05-10 16:19:06','2023-05-10 16:19:06'),(27,'C21','Xiaomi','Danh mục Xiaomi','2023-05-10 16:20:15','2023-05-10 16:20:15'),(29,'C22','Xiaomi','Danh mục Xiaomi','2023-05-11 04:46:48','2023-05-11 04:46:48'),(401,'C07','Dell','Danh mục Dell','2023-05-12 02:11:28','2023-05-12 02:11:28'),(405,'a','â','a','2023-05-17 03:37:01','2023-05-17 03:37:01');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-22 15:43:54
