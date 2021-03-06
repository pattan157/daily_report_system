-- MySQL dump 10.13  Distrib 8.0.25, for macos11 (x86_64)
--
-- Host: localhost    Database: daily_report_system
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id` int NOT NULL AUTO_INCREMENT,
  `admin_flag` int NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `delete_flag` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(64) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_3um79qgwg340lpaw7phtwudtc` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,0,'001','2021-11-05 22:22:29.273393',0,'kotani','D837DAEF3446E556AFB5A5A022F5BF9C1207D1C8878B00130010CC6730EC1C1B','2021-11-09 12:02:32.303143'),(2,0,'002','2021-11-05 22:22:49.598229',0,'小谷','E403F7A0F9BD5580CE62A6A84A0985DCC1481742620557B2CFEC4CFBD8A87233','2021-11-09 12:02:51.181101'),(3,1,'1','2021-11-05 22:31:51.646704',0,'master','21CFD9520D96863E6750DB361FF7166A61C2B2AF860959B18F95949DB7701B5E','2021-11-09 12:07:04.279028'),(4,0,'kou','2021-11-09 09:29:38.681112',1,'abc','2E9C86C595D8FC667AAFC1F001DC8B8ABE72D33D64B2910367CFCD63A82B9941','2021-11-09 10:06:57.859331'),(5,1,'take','2021-11-09 12:09:14.692887',0,'take','66AE6E81780466AAB26C11FBFD7B0E70D9F3425DEACBC3726CB526981E9DA0E6','2021-11-09 12:43:25.246819'),(6,1,'master','2021-11-09 15:05:05.790860',0,'master','396E2D6BE0F403948025477162F61D59191B4A00723779A9B2BF64D4008C0A21','2021-11-09 15:05:05.790860'),(7,1,'a','2021-11-09 15:05:23.429468',0,'a','2E9C86C595D8FC667AAFC1F001DC8B8ABE72D33D64B2910367CFCD63A82B9941','2021-11-09 15:05:23.429468'),(8,1,'max','2021-11-19 22:15:10.814468',0,'max','FAB097E989C83641973794EF198D9073E06237634B9B0F3078A60D79E54EB4A7','2021-11-19 22:15:10.814468'),(9,1,'kanri','2021-11-19 22:15:45.890027',0,'kanri','3F9BC9F550FF141C5E35C8C2D5A3161B274126357BA5EF78853E94B779DBCB2D','2021-11-19 22:15:45.890027');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reports` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `height` double DEFAULT NULL,
  `report_date` date NOT NULL,
  `title` varchar(255) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `weight` double DEFAULT NULL,
  `employee_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7m58c0h3phjcm6bco7aqikfen` (`employee_id`),
  CONSTRAINT `FK7m58c0h3phjcm6bco7aqikfen` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
INSERT INTO `reports` VALUES (1,'aaa','2021-11-25 21:08:47.467089',160,'2021-11-25','aaa','2021-11-27 21:56:41.597258',60,7),(2,'sss','2021-11-25 21:48:29.349671',170,'2021-11-25','ssss','2021-11-26 14:33:57.870062',60.9,7),(3,'saisinn\r\n1\r\n2\r\n3\r\n4\r\n5\r\n6\r\n7\r\n8\r\n9\r\n0\r\n\r\n','2021-11-25 21:53:53.139601',160,'2021-11-25','saisinn22222','2021-12-06 22:11:01.150600',60,7),(4,'bmi2','2021-11-26 14:37:12.421803',200,'2021-11-26','BMI','2021-12-07 22:35:46.846338',100,7),(5,'kannryou!\r\n','2021-12-07 22:36:08.550589',300,'2021-12-07','OK','2021-12-08 12:08:11.915245',150,7),(6,'ab','2021-12-08 11:23:05.731143',500,'2021-12-08','ab','2021-12-08 11:23:05.731143',300,1);
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-12 21:02:30
