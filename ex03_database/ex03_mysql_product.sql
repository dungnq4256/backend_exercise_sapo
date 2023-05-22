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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL,
  `inventory_id` bigint(20) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 NOT NULL,
  `price` int(11) DEFAULT NULL,
  `image` text,
  `quantity` int(11) DEFAULT NULL,
  `sell` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `inventory_id` (`inventory_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`inventory_id`) REFERENCES `inventory` (`id`),
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'P01',1,1,'Điện thoại iPhone 12 64GB','Mô tả iPhone 12 64GB',15599000,NULL,13,5,'2023-04-12 06:13:29','2023-04-12 06:13:29'),(2,'P01',2,1,'Điện thoại iPhone 12 64GB','Mô tả iPhone 12 64GB',15599000,NULL,17,12,'2023-04-12 06:13:29','2023-04-12 06:13:29'),(3,'P02',1,2,'Điện thoại Samsung Galaxy S23 Ultra 5G 256GB','Mô tả Samsung Galaxy S23 Ultra 5G 256GB',20590000,NULL,21,17,'2023-04-12 06:13:29','2023-04-12 06:13:29'),(4,'P02',3,2,'Điện thoại Samsung Galaxy S23 Ultra 5G 256GB','Mô tả Samsung Galaxy S23 Ultra 5G 256GB',20590000,NULL,14,14,'2023-04-12 06:13:29','2023-04-12 06:13:29'),(5,'P03',1,2,'Điện thoại Samsung Galaxy S22 Bora Purple 5G','Mô tả Samsung Galaxy S22 Bora Purple 5G',15599000,NULL,12,16,'2023-04-12 06:13:29','2023-04-12 06:13:29'),(10,'P08',1,1,'Điện thoại iPhone 13 256GB','Mô tả iPhone 13 256GB',15599000,NULL,13,2,'2023-04-12 06:13:29','2023-04-12 06:13:29'),(11,'P09',2,1,'Điện thoại iPhone 14 Pro Max 128GB','Mô tả iPhone 14 Pro Max 128GB',18599000,NULL,12,14,'2023-04-12 06:13:29','2023-04-12 06:13:29'),(12,'P10',1,1,'Chuột Bluetooth Apple MK2E3','Mô tả Chuột Bluetooth Apple MK2E3',1750000,NULL,13,5,'2023-04-12 06:13:29','2023-04-12 06:13:29'),(13,'P11',2,1,'Đồng hồ Apple Watch Series 7 LTE 45mm','Mô tả Apple Watch Series 7 LTE 45mm',13599000,NULL,13,2,'2023-04-12 06:13:29','2023-04-12 06:13:29'),(14,'P12',3,1,'Đồng hồ Apple Watch Series 7 LTE 41mm','Mô tả Apple Watch Series 7 LTE 41mm',3899000,NULL,5,2,'2023-04-12 06:13:29','2023-04-12 06:13:29'),(16,'P14',3,1,'Laptop MacBook Air 13\" 2020 M1 256GB','Mô tả MacBook Air 13\" 2020 M1 256GB',17599000,NULL,15,5,'2023-04-12 06:13:29','2023-04-12 06:13:29'),(17,'P15',3,1,'Laptop MacBook Pro 16\" 2021 M1 Pro 1TB','Mô tả MacBook Pro 16\" 2021 M1 Pro 1TB',48799000,NULL,7,5,'2023-04-12 06:13:29','2023-04-12 06:13:29'),(20,'P04',2,4,'Laptop Dell Inspiron 10','Mô tả Dell Inspiron 10',12490000,'ádasd',3,2,'2023-05-15 09:17:29','2023-05-15 09:17:29');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-22 15:43:53
