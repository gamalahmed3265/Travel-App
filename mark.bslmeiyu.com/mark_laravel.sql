-- MySQL dump 10.13  Distrib 8.0.28, for macos11 (x86_64)
--
-- Host: localhost    Database: mark_laravel
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `admin_menu`
--

DROP TABLE IF EXISTS `admin_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_menu` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '0',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_menu`
--

LOCK TABLES `admin_menu` WRITE;
/*!40000 ALTER TABLE `admin_menu` DISABLE KEYS */;
INSERT INTO `admin_menu` VALUES (1,0,1,'Dashboard','fa-bar-chart','/',NULL,NULL,NULL),(2,0,2,'Admin','fa-tasks','',NULL,NULL,NULL),(3,2,3,'Users','fa-users','auth/users',NULL,NULL,NULL),(4,2,4,'Roles','fa-user','auth/roles',NULL,NULL,NULL),(5,2,5,'Permission','fa-ban','auth/permissions',NULL,NULL,NULL),(6,2,6,'Menu','fa-bars','auth/menu',NULL,NULL,NULL),(7,2,7,'Operation log','fa-history','auth/logs',NULL,NULL,NULL),(8,0,0,'Category','fa-certificate','/article-types','*','2021-11-08 04:58:13','2021-11-08 05:38:24'),(9,0,0,'Articles','fa-bars','/articles','*','2021-11-08 04:58:55','2021-11-08 05:38:32'),(10,0,0,'Users','fa-bars','/users','*','2021-11-08 05:38:59','2021-11-08 05:38:59'),(11,0,0,'Places','fa-map-marker','/places','*','2021-11-17 01:37:06','2021-11-17 01:37:06');
/*!40000 ALTER TABLE `admin_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_operation_log`
--

DROP TABLE IF EXISTS `admin_operation_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_operation_log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=276 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_operation_log`
--

LOCK TABLES `admin_operation_log` WRITE;
/*!40000 ALTER TABLE `admin_operation_log` DISABLE KEYS */;
INSERT INTO `admin_operation_log` VALUES (1,1,'admin','GET','180.175.17.235','[]','2021-11-08 03:42:53','2021-11-08 03:42:53'),(2,1,'admin','GET','101.85.201.147','[]','2021-11-08 04:57:07','2021-11-08 04:57:07'),(3,1,'admin/auth/menu','GET','101.85.201.147','{\"_pjax\":\"#pjax-container\"}','2021-11-08 04:57:10','2021-11-08 04:57:10'),(4,1,'admin/auth/menu','POST','101.85.201.147','{\"parent_id\":\"0\",\"title\":\"Category\",\"icon\":\"fa-bars\",\"uri\":\"\\/article-types\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"AMUYbLptKc2cKTgaD72XLJQOd17JLWL6PdTMmW79\"}','2021-11-08 04:58:13','2021-11-08 04:58:13'),(5,1,'admin/auth/menu','GET','101.85.201.147','[]','2021-11-08 04:58:13','2021-11-08 04:58:13'),(6,1,'admin/auth/menu','GET','101.85.201.147','[]','2021-11-08 04:58:18','2021-11-08 04:58:18'),(7,1,'admin/auth/menu','POST','101.85.201.147','{\"parent_id\":\"0\",\"title\":\"Artcles\",\"icon\":\"fa-bars\",\"uri\":\"\\/articles\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"AMUYbLptKc2cKTgaD72XLJQOd17JLWL6PdTMmW79\"}','2021-11-08 04:58:55','2021-11-08 04:58:55'),(8,1,'admin/auth/menu','GET','101.85.201.147','[]','2021-11-08 04:58:55','2021-11-08 04:58:55'),(9,1,'admin/auth/menu','GET','101.85.201.147','[]','2021-11-08 04:58:58','2021-11-08 04:58:58'),(10,1,'admin/articles','GET','101.85.201.147','[]','2021-11-08 05:02:22','2021-11-08 05:02:22'),(11,1,'admin/articles/create','GET','101.85.201.147','{\"_pjax\":\"#pjax-container\"}','2021-11-08 05:02:31','2021-11-08 05:02:31'),(12,1,'admin/articles','GET','101.85.201.147','{\"_pjax\":\"#pjax-container\"}','2021-11-08 05:02:46','2021-11-08 05:02:46'),(13,1,'admin/articles/create','GET','101.85.201.147','{\"_pjax\":\"#pjax-container\"}','2021-11-08 05:02:50','2021-11-08 05:02:50'),(14,1,'admin/articles/create','GET','101.85.201.147','[]','2021-11-08 05:06:27','2021-11-08 05:06:27'),(15,1,'admin/auth/logout','GET','101.85.201.147','{\"_pjax\":\"#pjax-container\"}','2021-11-08 05:06:32','2021-11-08 05:06:32'),(16,1,'admin','GET','101.85.201.147','[]','2021-11-08 05:06:36','2021-11-08 05:06:36'),(17,1,'admin/articles','GET','101.85.201.147','{\"_pjax\":\"#pjax-container\"}','2021-11-08 05:06:38','2021-11-08 05:06:38'),(18,1,'admin/article-types','GET','101.85.201.147','{\"_pjax\":\"#pjax-container\"}','2021-11-08 05:06:40','2021-11-08 05:06:40'),(19,1,'admin/articles','GET','101.85.201.147','{\"_pjax\":\"#pjax-container\"}','2021-11-08 05:06:42','2021-11-08 05:06:42'),(20,1,'admin/articles/create','GET','101.85.201.147','{\"_pjax\":\"#pjax-container\"}','2021-11-08 05:06:43','2021-11-08 05:06:43'),(21,1,'admin/articles/create','GET','101.85.201.147','[]','2021-11-08 05:12:09','2021-11-08 05:12:09'),(22,1,'admin/articles/create','GET','101.85.201.147','[]','2021-11-08 05:13:21','2021-11-08 05:13:21'),(23,1,'admin/articles/create','GET','101.85.201.147','[]','2021-11-08 05:14:03','2021-11-08 05:14:03'),(24,1,'admin/article-types','GET','101.85.201.147','[]','2021-11-08 05:14:10','2021-11-08 05:14:10'),(25,1,'admin/article-types/create','GET','101.85.201.147','{\"_pjax\":\"#pjax-container\"}','2021-11-08 05:14:13','2021-11-08 05:14:13'),(26,1,'admin/articles','GET','101.85.201.147','{\"_pjax\":\"#pjax-container\"}','2021-11-08 05:14:18','2021-11-08 05:14:18'),(27,1,'admin/articles/create','GET','101.85.201.147','{\"_pjax\":\"#pjax-container\"}','2021-11-08 05:14:19','2021-11-08 05:14:19'),(28,1,'admin/article-types','GET','101.85.201.147','{\"_pjax\":\"#pjax-container\"}','2021-11-08 05:15:02','2021-11-08 05:15:02'),(29,1,'admin/articles','GET','101.85.201.147','{\"_pjax\":\"#pjax-container\"}','2021-11-08 05:15:05','2021-11-08 05:15:05'),(30,1,'admin/articles/create','GET','101.85.201.147','{\"_pjax\":\"#pjax-container\"}','2021-11-08 05:15:08','2021-11-08 05:15:08'),(31,1,'admin/articles/create','GET','101.85.201.147','[]','2021-11-08 05:15:45','2021-11-08 05:15:45'),(32,1,'admin/articles/create','GET','101.85.201.147','[]','2021-11-08 05:19:56','2021-11-08 05:19:56'),(33,1,'admin/articles/create','GET','101.85.201.147','[]','2021-11-08 05:22:13','2021-11-08 05:22:13'),(34,1,'admin/auth/menu','GET','101.85.201.147','{\"_pjax\":\"#pjax-container\"}','2021-11-08 05:38:07','2021-11-08 05:38:07'),(35,1,'admin/auth/menu/8/edit','GET','101.85.201.147','{\"_pjax\":\"#pjax-container\"}','2021-11-08 05:38:12','2021-11-08 05:38:12'),(36,1,'admin/auth/menu/8','PUT','101.85.201.147','{\"parent_id\":\"0\",\"title\":\"Category\",\"icon\":\"fa-certificate\",\"uri\":\"\\/article-types\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"1dRL1ZTg9uL9SBUZUkwxouwgJEat9EZqsMHfsdn6\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/auth\\/menu\"}','2021-11-08 05:38:24','2021-11-08 05:38:24'),(37,1,'admin/auth/menu','GET','101.85.201.147','[]','2021-11-08 05:38:24','2021-11-08 05:38:24'),(38,1,'admin/auth/menu/9/edit','GET','101.85.201.147','{\"_pjax\":\"#pjax-container\"}','2021-11-08 05:38:26','2021-11-08 05:38:26'),(39,1,'admin/auth/menu/9','PUT','101.85.201.147','{\"parent_id\":\"0\",\"title\":\"Articles\",\"icon\":\"fa-bars\",\"uri\":\"\\/articles\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"1dRL1ZTg9uL9SBUZUkwxouwgJEat9EZqsMHfsdn6\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/auth\\/menu\"}','2021-11-08 05:38:32','2021-11-08 05:38:32'),(40,1,'admin/auth/menu','GET','101.85.201.147','[]','2021-11-08 05:38:32','2021-11-08 05:38:32'),(41,1,'admin/auth/menu','GET','101.85.201.147','[]','2021-11-08 05:38:35','2021-11-08 05:38:35'),(42,1,'admin/auth/menu','GET','101.85.201.147','{\"_pjax\":\"#pjax-container\"}','2021-11-08 05:38:40','2021-11-08 05:38:40'),(43,1,'admin/auth/menu','POST','101.85.201.147','{\"parent_id\":\"0\",\"title\":\"Users\",\"icon\":\"fa-bars\",\"uri\":\"\\/users\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"1dRL1ZTg9uL9SBUZUkwxouwgJEat9EZqsMHfsdn6\"}','2021-11-08 05:38:59','2021-11-08 05:38:59'),(44,1,'admin/auth/menu','GET','101.85.201.147','[]','2021-11-08 05:38:59','2021-11-08 05:38:59'),(45,1,'admin/articles','GET','180.175.17.235','[]','2021-11-17 01:36:07','2021-11-17 01:36:07'),(46,1,'admin/auth/roles','GET','180.175.17.235','{\"_pjax\":\"#pjax-container\"}','2021-11-17 01:36:12','2021-11-17 01:36:12'),(47,1,'admin/auth/menu','GET','180.175.17.235','{\"_pjax\":\"#pjax-container\"}','2021-11-17 01:36:14','2021-11-17 01:36:14'),(48,1,'admin/auth/menu','POST','180.175.17.235','{\"parent_id\":\"0\",\"title\":\"Places\",\"icon\":\"fa-map-marker\",\"uri\":\"\\/places\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"DVaZyyNmM0y50LLhvlifo9hBnTZkZKN95JmzdkFg\"}','2021-11-17 01:37:06','2021-11-17 01:37:06'),(49,1,'admin/auth/menu','GET','180.175.17.235','[]','2021-11-17 01:37:06','2021-11-17 01:37:06'),(50,1,'admin/auth/menu','GET','180.175.17.235','[]','2021-11-17 01:37:08','2021-11-17 01:37:08'),(51,1,'admin/places','GET','180.175.17.235','{\"_pjax\":\"#pjax-container\"}','2021-11-17 01:37:10','2021-11-17 01:37:10'),(52,1,'admin/places','GET','180.175.17.235','{\"_pjax\":\"#pjax-container\"}','2021-11-17 01:45:32','2021-11-17 01:45:32'),(53,1,'admin/places/create','GET','180.175.17.235','{\"_pjax\":\"#pjax-container\"}','2021-11-17 01:45:35','2021-11-17 01:45:35'),(54,1,'admin/places/create','GET','180.175.17.235','[]','2021-11-17 01:46:48','2021-11-17 01:46:48'),(55,1,'admin/places/create','GET','180.175.17.235','[]','2021-11-17 01:46:50','2021-11-17 01:46:50'),(56,1,'admin/places','POST','180.175.17.235','{\"name\":\"British Columbia\",\"price\":\"1276\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This 134 kilometers Highway 99 trail gives you a taste of the&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Canada<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;mountains, from Horseshoe Bay in the north of Vancouver to Pemberton. The highway takes you via the coast of the Pacific all the way to Howe Sound before arriving at the Turning island. It gives you a mouthwatering opportunity for sightseeing without having the need to walk off road.<\\/span><\\/p>\",\"total_people\":null,\"selected_people\":null,\"_token\":\"DVaZyyNmM0y50LLhvlifo9hBnTZkZKN95JmzdkFg\"}','2021-11-17 02:04:35','2021-11-17 02:04:35'),(57,1,'admin/places/create','GET','180.175.17.235','[]','2021-11-17 02:04:35','2021-11-17 02:04:35'),(58,1,'admin/places','POST','180.175.17.235','{\"name\":\"British Columbia\",\"price\":\"1276\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This 134 kilometers Highway 99 trail gives you a taste of the&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Canada<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;mountains, from Horseshoe Bay in the north of Vancouver to Pemberton. The highway takes you via the coast of the Pacific all the way to Howe Sound before arriving at the Turning island. It gives you a mouthwatering opportunity for sightseeing without having the need to walk off road.<\\/span><\\/p>\",\"total_people\":null,\"selected_people\":null,\"_token\":\"DVaZyyNmM0y50LLhvlifo9hBnTZkZKN95JmzdkFg\"}','2021-11-17 02:05:28','2021-11-17 02:05:28'),(59,1,'admin/places/create','GET','180.175.17.235','[]','2021-11-17 02:05:28','2021-11-17 02:05:28'),(60,1,'admin/places','POST','180.175.17.235','{\"name\":\"British Columbia\",\"price\":\"1276\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This 134 kilometers Highway 99 trail gives you a taste of the&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Canada<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;mountains, from Horseshoe Bay in the north of Vancouver to Pemberton. The highway takes you via the coast of the Pacific all the way to Howe Sound before arriving at the Turning island. It gives you a mouthwatering opportunity for sightseeing without having the need to walk off road.<\\/span><\\/p>\",\"total_people\":null,\"selected_people\":null,\"_token\":\"DVaZyyNmM0y50LLhvlifo9hBnTZkZKN95JmzdkFg\"}','2021-11-17 02:06:38','2021-11-17 02:06:38'),(61,1,'admin/places/create','GET','180.175.17.235','[]','2021-11-17 02:06:38','2021-11-17 02:06:38'),(62,1,'admin/places','POST','180.175.17.235','{\"name\":\"British Columbia\",\"price\":\"1276\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This 134 kilometers Highway 99 trail gives you a taste of the&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Canada<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;mountains, from Horseshoe Bay in the north of Vancouver to Pemberton. The highway takes you via the coast of the Pacific all the way to Howe Sound before arriving at the Turning island. It gives you a mouthwatering opportunity for sightseeing without having the need to walk off road.<\\/span><\\/p>\",\"total_people\":null,\"selected_people\":null,\"_token\":\"DVaZyyNmM0y50LLhvlifo9hBnTZkZKN95JmzdkFg\"}','2021-11-17 02:07:49','2021-11-17 02:07:49'),(63,1,'admin/places/create','GET','180.175.17.235','[]','2021-11-17 02:07:49','2021-11-17 02:07:49'),(64,1,'admin/places','POST','180.175.17.235','{\"name\":\"British Columbia\",\"price\":\"1276\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This 134 kilometers Highway 99 trail gives you a taste of the&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Canada<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;mountains, from Horseshoe Bay in the north of Vancouver to Pemberton. The highway takes you via the coast of the Pacific all the way to Howe Sound before arriving at the Turning island. It gives you a mouthwatering opportunity for sightseeing without having the need to walk off road.<\\/span><\\/p>\",\"total_people\":\"5\",\"selected_people\":null,\"_token\":\"DVaZyyNmM0y50LLhvlifo9hBnTZkZKN95JmzdkFg\"}','2021-11-17 02:08:45','2021-11-17 02:08:45'),(65,1,'admin/places/create','GET','180.175.17.235','[]','2021-11-17 02:08:45','2021-11-17 02:08:45'),(66,1,'admin/places','POST','180.175.17.235','{\"name\":\"British Columbia\",\"price\":\"1276\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This 134 kilometers Highway 99 trail gives you a taste of the&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Canada<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;mountains, from Horseshoe Bay in the north of Vancouver to Pemberton. The highway takes you via the coast of the Pacific all the way to Howe Sound before arriving at the Turning island. It gives you a mouthwatering opportunity for sightseeing without having the need to walk off road.<\\/span><\\/p>\",\"total_people\":\"5\",\"selected_people\":\"5\",\"_token\":\"DVaZyyNmM0y50LLhvlifo9hBnTZkZKN95JmzdkFg\"}','2021-11-17 02:09:08','2021-11-17 02:09:08'),(67,1,'admin/places','GET','180.175.17.235','[]','2021-11-17 02:09:09','2021-11-17 02:09:09'),(68,1,'admin/places/create','GET','180.175.17.235','{\"_pjax\":\"#pjax-container\"}','2021-11-17 02:09:15','2021-11-17 02:09:15'),(69,1,'admin/places','POST','180.175.17.235','{\"name\":\"Icefields Parkway\",\"price\":\"2153\",\"location\":\"Icefields Parkway, Alberta\",\"stars\":\"5\",\"total_people\":\"5\",\"selected_people\":\"3\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This stretches for a straight 234 kilometers from Banff to Jasper. The Icefields Parkway offers you the picturesque panorama of Alberta\\u2019s most talked about mountain vistas. Some of these include Lake Louise, Peyto Lake, and the Columbia Icefields.<\\/span><br style=\\\"box-sizing: border-box; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\\\"\\/><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This region is also frequented by a number of ancient glaciers<\\/span><\\/p>\",\"_token\":\"DVaZyyNmM0y50LLhvlifo9hBnTZkZKN95JmzdkFg\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}','2021-11-17 02:10:43','2021-11-17 02:10:43'),(70,1,'admin/places','GET','180.175.17.235','[]','2021-11-17 02:10:44','2021-11-17 02:10:44'),(71,1,'admin/places','GET','180.175.17.235','[]','2021-11-17 02:10:55','2021-11-17 02:10:55'),(72,1,'admin/places','GET','180.175.17.235','[]','2021-11-17 02:11:20','2021-11-17 02:11:20'),(73,1,'admin/places','GET','180.175.17.235','[]','2021-11-17 02:12:01','2021-11-17 02:12:01'),(74,1,'admin/places/1/edit','GET','180.175.17.235','{\"_pjax\":\"#pjax-container\"}','2021-11-17 02:12:32','2021-11-17 02:12:32'),(75,1,'admin/articles','GET','180.175.17.235','{\"_pjax\":\"#pjax-container\"}','2021-11-17 02:14:06','2021-11-17 02:14:06'),(76,1,'admin/article-types','GET','180.175.17.235','{\"_pjax\":\"#pjax-container\"}','2021-11-17 02:14:08','2021-11-17 02:14:08'),(77,1,'admin/users','GET','180.175.17.235','{\"_pjax\":\"#pjax-container\"}','2021-11-17 02:14:10','2021-11-17 02:14:10'),(78,1,'admin/articles','GET','180.175.17.235','{\"_pjax\":\"#pjax-container\"}','2021-11-17 02:14:11','2021-11-17 02:14:11'),(79,1,'admin/places','GET','180.175.17.235','{\"_pjax\":\"#pjax-container\"}','2021-11-17 02:15:36','2021-11-17 02:15:36'),(80,1,'admin/places/create','GET','180.175.17.235','{\"_pjax\":\"#pjax-container\"}','2021-11-17 02:15:38','2021-11-17 02:15:38'),(81,1,'admin/places','POST','180.175.17.235','{\"name\":\"Moraine Lake\",\"price\":\"3456\",\"location\":\"Moraine Lake, Alberta\",\"stars\":\"3\",\"total_people\":\"5\",\"selected_people\":\"4\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">Moraine Lake is yet another astonishing geographical location that you cannot afford to miss out on if you\\u2019re traveling along the Icefields Parkway. Moraine Lake is located in the Banff and is a promising epitome of ecstatic blue waters. This lake is fed from the glaciers and is gifted its startling blue color from the silicon deposits from the melting glaciers<\\/span><\\/p>\",\"_token\":\"DVaZyyNmM0y50LLhvlifo9hBnTZkZKN95JmzdkFg\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}','2021-11-17 02:16:31','2021-11-17 02:16:31'),(82,1,'admin/places','GET','180.175.17.235','[]','2021-11-17 02:16:31','2021-11-17 02:16:31'),(83,1,'admin/places/create','GET','180.175.17.235','{\"_pjax\":\"#pjax-container\"}','2021-11-17 02:17:49','2021-11-17 02:17:49'),(84,1,'admin/places/create','GET','180.175.17.235','[]','2021-11-17 02:17:52','2021-11-17 02:17:52'),(85,1,'admin/places','POST','180.175.17.235','{\"name\":\"Ontario\",\"price\":\"3312\",\"location\":\"Killarney Provincial Park\",\"stars\":\"4\",\"total_people\":\"5\",\"selected_people\":\"3\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">If you\\u2019re in Canada and if you\\u2019re a sucker for mountains, Killarney Provincial Park in&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\/ontario\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Ontario<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;is your best catch for Canada mountains near Toronto. This region makes the center of the La Cloche Mountain Range.<\\/span><\\/p>\",\"_token\":\"DVaZyyNmM0y50LLhvlifo9hBnTZkZKN95JmzdkFg\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}','2021-11-17 02:18:46','2021-11-17 02:18:46'),(86,1,'admin/places','GET','180.175.17.235','[]','2021-11-17 02:18:46','2021-11-17 02:18:46'),(87,1,'admin/places','GET','180.175.17.235','[]','2021-11-17 02:20:22','2021-11-17 02:20:22'),(88,1,'admin/places','GET','180.175.17.235','[]','2021-11-17 02:22:56','2021-11-17 02:22:56'),(89,1,'admin/places/1/edit','GET','180.175.17.235','{\"_pjax\":\"#pjax-container\"}','2021-11-17 02:23:01','2021-11-17 02:23:01'),(90,1,'admin/places/1','PUT','180.175.17.235','{\"name\":\"British Columbia\",\"price\":\"1276\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"total_people\":\"5\",\"selected_people\":\"5\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This 134 kilometers Highway 99 trail gives you a taste of the&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Canada<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;mountains, from Horseshoe Bay in the north of Vancouver to Pemberton. The highway takes you via the coast of the Pacific all the way to Howe Sound before arriving at the Turning island. It gives you a mouthwatering opportunity for sightseeing without having the need to walk off road.<\\/span><\\/p>\",\"_token\":\"DVaZyyNmM0y50LLhvlifo9hBnTZkZKN95JmzdkFg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}','2021-11-17 02:23:07','2021-11-17 02:23:07'),(91,1,'admin/places','GET','180.175.17.235','[]','2021-11-17 02:23:07','2021-11-17 02:23:07'),(92,1,'admin/places/2/edit','GET','180.175.17.235','{\"_pjax\":\"#pjax-container\"}','2021-11-17 02:23:10','2021-11-17 02:23:10'),(93,1,'admin/places/2','PUT','180.175.17.235','{\"name\":\"Icefields Parkway\",\"price\":\"2153\",\"location\":\"Icefields Parkway, Alberta\",\"stars\":\"5\",\"total_people\":\"5\",\"selected_people\":\"3\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This stretches for a straight 234 kilometers from Banff to Jasper. The Icefields Parkway offers you the picturesque panorama of Alberta\\u2019s most talked about mountain vistas. Some of these include Lake Louise, Peyto Lake, and the Columbia Icefields.<\\/span><br style=\\\"box-sizing: border-box; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\\\"\\/><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This region is also frequented by a number of ancient glaciers<\\/span><\\/p>\",\"_token\":\"DVaZyyNmM0y50LLhvlifo9hBnTZkZKN95JmzdkFg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}','2021-11-17 02:23:18','2021-11-17 02:23:18'),(94,1,'admin/places','GET','180.175.17.235','[]','2021-11-17 02:23:18','2021-11-17 02:23:18'),(95,1,'admin/places','GET','180.175.17.235','[]','2021-11-17 03:12:02','2021-11-17 03:12:02'),(96,1,'admin/articles','GET','116.224.235.15','[]','2021-11-19 05:37:22','2021-11-19 05:37:22'),(97,1,'admin/places','GET','116.224.235.15','{\"_pjax\":\"#pjax-container\"}','2021-11-19 05:37:27','2021-11-19 05:37:27'),(98,1,'admin/places/1/edit','GET','116.224.235.15','{\"_pjax\":\"#pjax-container\"}','2021-11-19 05:37:31','2021-11-19 05:37:31'),(99,1,'admin/places/1','PUT','116.224.235.15','{\"name\":\"British Columbia\",\"price\":\"1276\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"total_people\":null,\"selected_people\":\"5\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This 134 kilometers Highway 99 trail gives you a taste of the&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Canada<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;mountains, from Horseshoe Bay in the north of Vancouver to Pemberton. The highway takes you via the coast of the Pacific all the way to Howe Sound before arriving at the Turning island.&nbsp;<\\/span><\\/p>\",\"_token\":\"csmn0uJipj7DfXFryYJlaz010r03aRaKhuIHVjHu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}','2021-11-19 05:37:37','2021-11-19 05:37:37'),(100,1,'admin/places/1/edit','GET','116.224.235.15','[]','2021-11-19 05:37:37','2021-11-19 05:37:37'),(101,1,'admin/places/1/edit','GET','116.224.235.15','[]','2021-11-19 05:39:12','2021-11-19 05:39:12'),(102,1,'admin/places/1','PUT','116.224.235.15','{\"name\":\"British Columbia\",\"price\":\"1276\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This 134 kilometers Highway 99 trail gives you a taste of the&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Canada<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;mountains, from Horseshoe Bay in the north of Vancouver to Pemberton. The highway takes you via the coast of the Pacific all the way to Howe Sound before arriving at the Turning island.&nbsp;<\\/span><\\/p>\",\"_token\":\"csmn0uJipj7DfXFryYJlaz010r03aRaKhuIHVjHu\",\"_method\":\"PUT\"}','2021-11-19 05:39:17','2021-11-19 05:39:17'),(103,1,'admin/places','GET','116.224.235.15','[]','2021-11-19 05:39:17','2021-11-19 05:39:17'),(104,1,'admin/places/2/edit','GET','116.224.235.15','{\"_pjax\":\"#pjax-container\"}','2021-11-19 05:39:20','2021-11-19 05:39:20'),(105,1,'admin/places/2','PUT','116.224.235.15','{\"name\":\"Icefields Parkway\",\"price\":\"2153\",\"location\":\"Icefields Parkway, Alberta\",\"stars\":\"5\",\"people\":\"5\",\"selected_people\":\"3\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This stretches for a straight 234 kilometers from Banff to Jasper. The Icefields Parkway offers you the picturesque panorama of Alberta\\u2019s most talked about mountain vistas. Some of these include Lake Louise, Peyto Lake, and the Columbia Icefields.<\\/span><br\\/><\\/p>\",\"_token\":\"csmn0uJipj7DfXFryYJlaz010r03aRaKhuIHVjHu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}','2021-11-19 05:39:28','2021-11-19 05:39:28'),(106,1,'admin/places','GET','116.224.235.15','[]','2021-11-19 05:39:28','2021-11-19 05:39:28'),(107,1,'admin/places/3/edit','GET','116.224.235.15','{\"_pjax\":\"#pjax-container\"}','2021-11-19 05:39:31','2021-11-19 05:39:31'),(108,1,'admin/places/3','PUT','116.224.235.15','{\"name\":\"Moraine Lake\",\"price\":\"3456\",\"location\":\"Moraine Lake, Alberta\",\"stars\":\"3\",\"people\":\"5\",\"selected_people\":\"4\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">Moraine Lake is yet another astonishing geographical location that you cannot afford to miss out on if you\\u2019re traveling along the Icefields Parkway. Moraine Lake is located in the Banff and is a promising epitome of ecstatic blue waters.&nbsp;<\\/span><\\/p>\",\"_token\":\"csmn0uJipj7DfXFryYJlaz010r03aRaKhuIHVjHu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}','2021-11-19 05:39:37','2021-11-19 05:39:37'),(109,1,'admin/places','GET','116.224.235.15','[]','2021-11-19 05:39:37','2021-11-19 05:39:37'),(110,1,'admin/places/4/edit','GET','116.224.235.15','{\"_pjax\":\"#pjax-container\"}','2021-11-19 05:39:39','2021-11-19 05:39:39'),(111,1,'admin/places/4','PUT','116.224.235.15','{\"name\":\"Ontario\",\"price\":\"3312\",\"location\":\"Killarney Provincial Park\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"3\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">If you\\u2019re in Canada and if you\\u2019re a sucker for mountains, Killarney Provincial Park in&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\/ontario\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Ontario<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;is your best catch for Canada mountains near Toronto. This region makes the center of the La Cloche Mountain Range.<\\/span><\\/p>\",\"_token\":\"csmn0uJipj7DfXFryYJlaz010r03aRaKhuIHVjHu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}','2021-11-19 05:39:42','2021-11-19 05:39:42'),(112,1,'admin/places','GET','116.224.235.15','[]','2021-11-19 05:39:42','2021-11-19 05:39:42'),(113,1,'admin/places/1/edit','GET','116.224.235.15','{\"_pjax\":\"#pjax-container\"}','2021-11-19 05:39:48','2021-11-19 05:39:48'),(114,1,'admin/places/1','PUT','116.224.235.15','{\"name\":\"British Columbia\",\"price\":\"1276\",\"location\":\"Canada, British Columbia\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"5\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This 134 kilometers Highway 99 trail gives you a taste of the&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Canada<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;mountains, from Horseshoe Bay in the north of Vancouver to Pemberton.&nbsp;<\\/span><\\/p>\",\"_token\":\"csmn0uJipj7DfXFryYJlaz010r03aRaKhuIHVjHu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}','2021-11-19 05:39:55','2021-11-19 05:39:55'),(115,1,'admin/places','GET','116.224.235.15','[]','2021-11-19 05:39:56','2021-11-19 05:39:56'),(116,1,'admin/places/2/edit','GET','116.224.235.15','{\"_pjax\":\"#pjax-container\"}','2021-11-19 05:39:57','2021-11-19 05:39:57'),(117,1,'admin/places/2','PUT','116.224.235.15','{\"name\":\"Icefields Parkway\",\"price\":\"2153\",\"location\":\"Icefields Parkway, Alberta\",\"stars\":\"5\",\"people\":\"5\",\"selected_people\":\"3\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This stretches for a straight 234 kilometers from Banff to Jasper. The Icefields Parkway offers you the picturesque panorama of Alberta\\u2019s most talked about mountain vistas.&nbsp;<\\/span><br\\/><\\/p>\",\"_token\":\"csmn0uJipj7DfXFryYJlaz010r03aRaKhuIHVjHu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}','2021-11-19 05:40:05','2021-11-19 05:40:05'),(118,1,'admin/places','GET','116.224.235.15','[]','2021-11-19 05:40:05','2021-11-19 05:40:05'),(119,1,'admin/places/3/edit','GET','116.224.235.15','{\"_pjax\":\"#pjax-container\"}','2021-11-19 05:40:30','2021-11-19 05:40:30'),(120,1,'admin/places/3','PUT','116.224.235.15','{\"name\":\"Moraine Lake\",\"price\":\"3456\",\"location\":\"Moraine Lake, Alberta\",\"stars\":\"3\",\"people\":\"5\",\"selected_people\":\"4\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">Moraine Lake is yet another astonishing geographical location that you cannot afford to miss out on if you\\u2019re traveling along the Icefields Parkway.&nbsp;<\\/span><\\/p>\",\"_token\":\"csmn0uJipj7DfXFryYJlaz010r03aRaKhuIHVjHu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}','2021-11-19 05:40:36','2021-11-19 05:40:36'),(121,1,'admin/places','GET','116.224.235.15','[]','2021-11-19 05:40:37','2021-11-19 05:40:37'),(122,1,'admin/places/4/edit','GET','116.224.235.15','{\"_pjax\":\"#pjax-container\"}','2021-11-19 05:40:39','2021-11-19 05:40:39'),(123,1,'admin/places/4','PUT','116.224.235.15','{\"name\":\"Ontario\",\"price\":\"3312\",\"location\":\"Killarney Provincial Park\",\"stars\":\"4\",\"people\":\"5\",\"selected_people\":\"3\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">If you\\u2019re in Canada and if you\\u2019re a sucker for mountains, Killarney Provincial Park in&nbsp;<\\/span><a href=\\\"https:\\/\\/traveltriangle.com\\/canada-tourism\\/ontario\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\" style=\\\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\\\">Ontario<\\/a><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">&nbsp;is your best catch for Canada mountains near Toronto.&nbsp;<\\/span><\\/p>\",\"_token\":\"csmn0uJipj7DfXFryYJlaz010r03aRaKhuIHVjHu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}','2021-11-19 05:40:44','2021-11-19 05:40:44'),(124,1,'admin/places','GET','116.224.235.15','[]','2021-11-19 05:40:45','2021-11-19 05:40:45'),(125,1,'admin/articles','GET','116.224.235.15','[]','2021-11-19 06:16:18','2021-11-19 06:16:18'),(126,1,'admin/places','GET','116.224.235.15','{\"_pjax\":\"#pjax-container\"}','2021-11-19 06:16:20','2021-11-19 06:16:20'),(127,1,'admin/places/2/edit','GET','116.224.235.15','{\"_pjax\":\"#pjax-container\"}','2021-11-19 06:16:25','2021-11-19 06:16:25'),(128,1,'admin/places/2','PUT','116.224.235.15','{\"name\":\"Icefields Parkway\",\"price\":\"2153\",\"location\":\"Icefields , Alberta\",\"stars\":\"5\",\"people\":\"5\",\"selected_people\":\"3\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This stretches for a straight 234 kilometers from Banff to Jasper. The Icefields Parkway offers you the picturesque panorama of Alberta\\u2019s most talked about mountain vistas.&nbsp;<\\/span><br\\/><\\/p>\",\"_token\":\"csmn0uJipj7DfXFryYJlaz010r03aRaKhuIHVjHu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}','2021-11-19 06:16:34','2021-11-19 06:16:34'),(129,1,'admin/places','GET','116.224.235.15','[]','2021-11-19 06:16:34','2021-11-19 06:16:34'),(130,1,'admin/places/2/edit','GET','116.224.235.15','{\"_pjax\":\"#pjax-container\"}','2021-11-19 06:17:59','2021-11-19 06:17:59'),(131,1,'admin/places/2','PUT','116.224.235.15','{\"name\":\"Icefields\",\"price\":\"2153\",\"location\":\"Icefields, Alberta\",\"stars\":\"5\",\"people\":\"5\",\"selected_people\":\"3\",\"description\":\"<p><span style=\\\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\\\">This stretches for a straight 234 kilometers from Banff to Jasper. The Icefields Parkway offers you the picturesque panorama of Alberta\\u2019s most talked about mountain vistas.&nbsp;<\\/span><br\\/><\\/p>\",\"_token\":\"csmn0uJipj7DfXFryYJlaz010r03aRaKhuIHVjHu\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}','2021-11-19 06:18:09','2021-11-19 06:18:09'),(132,1,'admin/places','GET','116.224.235.15','[]','2021-11-19 06:18:09','2021-11-19 06:18:09'),(133,1,'admin/places/1/edit','GET','116.224.235.15','[]','2021-11-19 06:59:35','2021-11-19 06:59:35'),(134,1,'admin/places','GET','116.224.235.15','[]','2021-11-19 07:00:24','2021-11-19 07:00:24'),(135,1,'admin/places/2/edit','GET','116.224.235.15','{\"_pjax\":\"#pjax-container\"}','2021-11-19 07:00:27','2021-11-19 07:00:27'),(136,1,'admin/places','GET','116.224.235.15','{\"_pjax\":\"#pjax-container\"}','2021-11-19 07:00:52','2021-11-19 07:00:52'),(137,1,'admin/places/3/edit','GET','116.224.235.15','{\"_pjax\":\"#pjax-container\"}','2021-11-19 07:00:55','2021-11-19 07:00:55'),(138,1,'admin','GET','82.205.1.223','[]','2021-12-08 03:52:01','2021-12-08 03:52:01'),(139,1,'admin/article-types','GET','82.205.1.223','{\"_pjax\":\"#pjax-container\"}','2021-12-08 03:52:15','2021-12-08 03:52:15'),(140,1,'admin/articles','GET','82.205.1.223','{\"_pjax\":\"#pjax-container\"}','2021-12-08 03:52:17','2021-12-08 03:52:17'),(141,1,'admin/places','GET','82.205.1.223','{\"_pjax\":\"#pjax-container\"}','2021-12-08 03:52:26','2021-12-08 03:52:26'),(142,1,'admin/auth/users','GET','82.205.1.223','{\"_pjax\":\"#pjax-container\"}','2021-12-08 03:52:34','2021-12-08 03:52:34'),(143,1,'admin/auth/setting','GET','82.205.1.223','{\"_pjax\":\"#pjax-container\"}','2021-12-08 03:52:50','2021-12-08 03:52:50'),(144,1,'admin/article-types','GET','82.205.1.223','{\"_pjax\":\"#pjax-container\"}','2021-12-08 03:52:58','2021-12-08 03:52:58'),(145,1,'admin/articles','GET','82.205.1.223','{\"_pjax\":\"#pjax-container\"}','2021-12-08 03:53:00','2021-12-08 03:53:00'),(146,1,'admin/articles/create','GET','82.205.1.223','{\"_pjax\":\"#pjax-container\"}','2021-12-08 03:53:03','2021-12-08 03:53:03'),(147,1,'admin/auth/permissions','GET','82.205.1.223','{\"_pjax\":\"#pjax-container\"}','2021-12-08 03:53:08','2021-12-08 03:53:08'),(148,1,'admin/auth/menu','GET','82.205.1.223','{\"_pjax\":\"#pjax-container\"}','2021-12-08 03:53:25','2021-12-08 03:53:25'),(149,1,'admin/auth/roles','GET','82.205.1.223','{\"_pjax\":\"#pjax-container\"}','2021-12-08 03:53:33','2021-12-08 03:53:33'),(150,1,'admin/auth/roles','GET','82.205.1.223','{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}','2021-12-08 04:26:23','2021-12-08 04:26:23'),(151,1,'admin/auth/roles','GET','82.205.1.223','{\"_pjax\":\"#pjax-container\"}','2021-12-08 04:26:29','2021-12-08 04:26:29'),(152,1,'admin/auth/roles','GET','82.205.1.223','{\"_pjax\":\"#pjax-container\"}','2021-12-08 04:26:33','2021-12-08 04:26:33'),(153,1,'admin/article-types','GET','82.205.1.223','{\"_pjax\":\"#pjax-container\"}','2021-12-08 04:26:35','2021-12-08 04:26:35'),(154,1,'admin/places','GET','82.205.1.223','{\"_pjax\":\"#pjax-container\"}','2021-12-08 04:26:39','2021-12-08 04:26:39'),(155,1,'admin/places/create','GET','82.205.1.223','{\"_pjax\":\"#pjax-container\"}','2021-12-08 04:26:44','2021-12-08 04:26:44'),(156,1,'admin/places','POST','82.205.1.223','{\"name\":\"Gaza\",\"price\":\"10\",\"location\":\"Palestine, Gaza\",\"stars\":\"5\",\"people\":\"5\",\"selected_people\":\"4\",\"description\":\"<p>Dome of the rock the beautiful and amazing human made architectural.<\\/p>\",\"_token\":\"jG1U1iWfeEo0sYzdJD2FlJzECW5vTYcBVk4Ka7Zl\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}','2021-12-08 04:29:53','2021-12-08 04:29:53'),(157,1,'admin/places','GET','82.205.1.223','[]','2021-12-08 04:29:54','2021-12-08 04:29:54'),(158,1,'admin/places','GET','82.205.25.170','[]','2021-12-08 15:01:40','2021-12-08 15:01:40'),(159,1,'admin/articles','GET','180.175.17.8','[]','2021-12-11 21:50:22','2021-12-11 21:50:22'),(160,1,'admin/places','GET','180.175.17.8','{\"_pjax\":\"#pjax-container\"}','2021-12-11 21:50:24','2021-12-11 21:50:24'),(161,1,'admin/places/5/edit','GET','180.175.17.8','{\"_pjax\":\"#pjax-container\"}','2021-12-11 21:51:03','2021-12-11 21:51:03'),(162,1,'admin/places/5/edit','GET','180.175.17.8','[]','2021-12-13 23:19:35','2021-12-13 23:19:35'),(163,1,'admin/articles','GET','58.39.14.207','{\"_pjax\":\"#pjax-container\"}','2021-12-14 18:27:40','2021-12-14 18:27:40'),(164,1,'admin/places','GET','58.39.14.207','{\"_pjax\":\"#pjax-container\"}','2021-12-14 18:27:43','2021-12-14 18:27:43'),(165,1,'admin/articles','GET','223.104.212.153','[]','2021-12-17 22:21:45','2021-12-17 22:21:45'),(166,1,'admin/auth/users','GET','223.104.212.153','{\"_pjax\":\"#pjax-container\"}','2021-12-17 22:21:52','2021-12-17 22:21:52'),(167,1,'admin/auth/users/1/edit','GET','223.104.212.153','{\"_pjax\":\"#pjax-container\"}','2021-12-17 22:21:56','2021-12-17 22:21:56'),(168,1,'admin/auth/users/1','PUT','223.104.212.153','{\"username\":\"admin\",\"name\":\"Administrator\",\"password\":\"admin1234\",\"password_confirmation\":\"admin1234\",\"roles\":[\"1\",null],\"permissions\":[null],\"_token\":\"lexAFNMUDD87ySnp2CrCWmWNoLMnqAZFYxRhtFP5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/auth\\/users\"}','2021-12-17 22:22:14','2021-12-17 22:22:14'),(169,1,'admin/auth/users','GET','223.104.212.153','[]','2021-12-17 22:22:14','2021-12-17 22:22:14'),(170,1,'admin/auth/logout','GET','223.104.212.153','{\"_pjax\":\"#pjax-container\"}','2021-12-17 22:25:35','2021-12-17 22:25:35'),(171,1,'admin','GET','223.104.212.153','[]','2021-12-17 22:25:52','2021-12-17 22:25:52'),(172,1,'admin/articles','GET','180.175.17.8','[]','2021-12-22 22:19:39','2021-12-22 22:19:39'),(173,1,'admin/auth/logout','GET','180.175.17.8','{\"_pjax\":\"#pjax-container\"}','2021-12-22 22:19:43','2021-12-22 22:19:43'),(174,1,'admin','GET','180.175.17.8','[]','2021-12-27 23:03:31','2021-12-27 23:03:31'),(175,1,'admin/places','GET','180.175.17.8','{\"_pjax\":\"#pjax-container\"}','2021-12-27 23:03:36','2021-12-27 23:03:36'),(176,1,'admin/articles','GET','180.175.21.130','[]','2022-01-09 00:55:03','2022-01-09 00:55:03'),(177,1,'admin','GET','196.170.61.35','[]','2022-02-24 07:29:59','2022-02-24 07:29:59'),(178,1,'admin/users','GET','196.170.61.35','{\"_pjax\":\"#pjax-container\"}','2022-02-24 07:58:25','2022-02-24 07:58:25'),(179,1,'admin/articles','GET','196.170.61.35','{\"_pjax\":\"#pjax-container\"}','2022-02-24 07:58:59','2022-02-24 07:58:59'),(180,1,'admin/article-types','GET','196.170.61.35','{\"_pjax\":\"#pjax-container\"}','2022-02-24 07:59:16','2022-02-24 07:59:16'),(181,1,'admin/article-types/create','GET','196.170.61.35','{\"_pjax\":\"#pjax-container\"}','2022-02-24 07:59:54','2022-02-24 07:59:54'),(182,1,'admin','GET','196.170.61.35','[]','2022-02-24 08:05:14','2022-02-24 08:05:14'),(183,1,'admin/auth/menu','GET','196.170.61.35','{\"_pjax\":\"#pjax-container\"}','2022-02-24 08:05:34','2022-02-24 08:05:34'),(184,1,'admin','GET','196.170.61.35','[]','2022-02-24 08:16:43','2022-02-24 08:16:43'),(185,1,'admin/articles','GET','102.64.204.224','{\"_pjax\":\"#pjax-container\"}','2022-02-24 11:13:36','2022-02-24 11:13:36'),(186,1,'admin/article-types','GET','102.64.204.224','{\"_pjax\":\"#pjax-container\"}','2022-02-24 11:13:42','2022-02-24 11:13:42'),(187,1,'admin/article-types/create','GET','102.64.204.224','{\"_pjax\":\"#pjax-container\"}','2022-02-24 11:13:48','2022-02-24 11:13:48'),(188,1,'admin/article-types','POST','102.64.204.224','{\"parent_id\":\"0\",\"title\":\"Test\",\"description\":null,\"order\":\"1\",\"_token\":\"F3Xm4Xwu2Lfds1RZkAm8mOnd9xnK4Xo1LlYFbNDc\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/article-types\"}','2022-02-24 11:14:10','2022-02-24 11:14:10'),(189,1,'admin/article-types/create','GET','102.64.204.224','[]','2022-02-24 11:14:12','2022-02-24 11:14:12'),(190,1,'admin/article-types','POST','102.64.204.224','{\"parent_id\":\"0\",\"title\":\"Test\",\"description\":null,\"order\":\"1\",\"_token\":\"F3Xm4Xwu2Lfds1RZkAm8mOnd9xnK4Xo1LlYFbNDc\",\"after-save\":\"1\"}','2022-02-24 11:14:19','2022-02-24 11:14:19'),(191,1,'admin/article-types/create','GET','102.64.204.224','[]','2022-02-24 11:14:19','2022-02-24 11:14:19'),(192,1,'admin/article-types/create','GET','102.64.204.224','[]','2022-02-24 11:14:25','2022-02-24 11:14:25'),(193,1,'admin/article-types','POST','102.64.204.224','{\"parent_id\":\"0\",\"title\":\"test\",\"description\":null,\"order\":\"1\",\"_token\":\"F3Xm4Xwu2Lfds1RZkAm8mOnd9xnK4Xo1LlYFbNDc\",\"after-save\":\"1\"}','2022-02-24 11:14:35','2022-02-24 11:14:35'),(194,1,'admin/article-types/create','GET','102.64.204.224','[]','2022-02-24 11:14:35','2022-02-24 11:14:35'),(195,1,'admin/article-types','GET','102.64.204.224','{\"_pjax\":\"#pjax-container\"}','2022-02-24 11:15:00','2022-02-24 11:15:00'),(196,1,'admin/articles','GET','102.64.204.224','{\"_pjax\":\"#pjax-container\"}','2022-02-24 11:15:04','2022-02-24 11:15:04'),(197,1,'admin/articles/create','GET','102.64.204.224','{\"_pjax\":\"#pjax-container\"}','2022-02-24 11:15:10','2022-02-24 11:15:10'),(198,1,'admin/users','GET','102.64.204.224','{\"_pjax\":\"#pjax-container\"}','2022-02-24 11:15:25','2022-02-24 11:15:25'),(199,1,'admin/places','GET','102.64.204.224','{\"_pjax\":\"#pjax-container\"}','2022-02-24 11:15:29','2022-02-24 11:15:29'),(200,1,'admin/places/4/edit','GET','102.64.204.224','{\"_pjax\":\"#pjax-container\"}','2022-02-24 11:15:55','2022-02-24 11:15:55'),(201,1,'admin/auth/menu','GET','102.64.204.224','{\"_pjax\":\"#pjax-container\"}','2022-02-24 11:17:59','2022-02-24 11:17:59'),(202,1,'admin','GET','124.105.205.120','[]','2022-03-01 02:42:39','2022-03-01 02:42:39'),(203,1,'admin/article-types','GET','124.105.205.120','{\"_pjax\":\"#pjax-container\"}','2022-03-01 02:42:53','2022-03-01 02:42:53'),(204,1,'admin/auth/logout','GET','124.105.205.120','{\"_pjax\":\"#pjax-container\"}','2022-03-01 02:43:03','2022-03-01 02:43:03'),(205,1,'admin','GET','124.105.205.120','[]','2022-03-01 04:39:07','2022-03-01 04:39:07'),(206,1,'admin/auth/logout','GET','124.105.205.120','[]','2022-03-01 04:39:23','2022-03-01 04:39:23'),(207,1,'admin','GET','124.105.205.120','[]','2022-03-02 06:17:17','2022-03-02 06:17:17'),(208,1,'admin/places','GET','124.105.205.120','{\"_pjax\":\"#pjax-container\"}','2022-03-02 09:01:59','2022-03-02 09:01:59'),(209,1,'admin/auth/logout','GET','124.105.205.120','{\"_pjax\":\"#pjax-container\"}','2022-03-02 09:33:43','2022-03-02 09:33:43'),(210,1,'admin','GET','119.93.131.117','[]','2022-03-03 17:36:34','2022-03-03 17:36:34'),(211,1,'admin/places','GET','119.93.131.117','{\"_pjax\":\"#pjax-container\"}','2022-03-03 17:36:39','2022-03-03 17:36:39'),(212,1,'admin/article-types','GET','119.93.131.117','{\"_pjax\":\"#pjax-container\"}','2022-03-03 17:37:04','2022-03-03 17:37:04'),(213,1,'admin/articles','GET','119.93.131.117','{\"_pjax\":\"#pjax-container\"}','2022-03-03 17:37:07','2022-03-03 17:37:07'),(214,1,'admin/users','GET','119.93.131.117','{\"_pjax\":\"#pjax-container\"}','2022-03-03 17:37:09','2022-03-03 17:37:09'),(215,1,'admin/places','GET','119.93.131.117','{\"_pjax\":\"#pjax-container\"}','2022-03-03 17:37:13','2022-03-03 17:37:13'),(216,1,'admin/places/create','GET','119.93.131.117','{\"_pjax\":\"#pjax-container\"}','2022-03-03 17:37:48','2022-03-03 17:37:48'),(217,1,'admin/places','GET','119.93.131.117','{\"_pjax\":\"#pjax-container\"}','2022-03-03 17:37:58','2022-03-03 17:37:58'),(218,1,'admin/places','GET','119.93.131.117','{\"_pjax\":\"#pjax-container\"}','2022-03-03 18:56:24','2022-03-03 18:56:24'),(219,1,'admin','GET','103.21.165.244','[]','2022-03-08 23:28:48','2022-03-08 23:28:48'),(220,1,'admin/places','GET','103.21.165.244','{\"_pjax\":\"#pjax-container\"}','2022-03-08 23:29:12','2022-03-08 23:29:12'),(221,1,'admin/auth/setting','GET','103.21.165.244','{\"_pjax\":\"#pjax-container\"}','2022-03-08 23:29:30','2022-03-08 23:29:30'),(222,1,'admin','GET','103.21.165.244','{\"_pjax\":\"#pjax-container\"}','2022-03-08 23:30:25','2022-03-08 23:30:25'),(223,1,'admin/article-types','GET','103.21.165.244','{\"_pjax\":\"#pjax-container\"}','2022-03-08 23:30:44','2022-03-08 23:30:44'),(224,1,'admin/articles','GET','103.21.165.244','{\"_pjax\":\"#pjax-container\"}','2022-03-08 23:30:46','2022-03-08 23:30:46'),(225,1,'admin/articles','GET','103.21.165.244','{\"_pjax\":\"#pjax-container\"}','2022-03-08 23:30:49','2022-03-08 23:30:49'),(226,1,'admin/users','GET','103.21.165.244','{\"_pjax\":\"#pjax-container\"}','2022-03-08 23:30:50','2022-03-08 23:30:50'),(227,1,'admin/places','GET','103.21.165.244','{\"_pjax\":\"#pjax-container\"}','2022-03-08 23:30:53','2022-03-08 23:30:53'),(228,1,'admin','GET','103.21.165.244','{\"_pjax\":\"#pjax-container\"}','2022-03-08 23:30:54','2022-03-08 23:30:54'),(229,1,'admin/places','GET','103.21.165.244','{\"_pjax\":\"#pjax-container\"}','2022-03-08 23:30:58','2022-03-08 23:30:58'),(230,1,'admin/places/1/edit','GET','103.21.165.244','{\"_pjax\":\"#pjax-container\"}','2022-03-08 23:31:03','2022-03-08 23:31:03'),(231,1,'admin/places','GET','103.21.165.244','{\"_pjax\":\"#pjax-container\"}','2022-03-08 23:34:20','2022-03-08 23:34:20'),(232,1,'admin/places','GET','103.21.165.244','[]','2022-03-08 23:34:30','2022-03-08 23:34:30'),(233,1,'admin/places/create','GET','103.21.165.244','{\"_pjax\":\"#pjax-container\"}','2022-03-08 23:34:36','2022-03-08 23:34:36'),(234,1,'admin/places','POST','103.21.165.244','{\"name\":\"Arshaq Shazly\",\"price\":\"1\",\"location\":\"SRILANKA\",\"stars\":\"1\",\"people\":\"5\",\"selected_people\":\"1\",\"description\":\"<p>df sdfsd rte wd&nbsp;<\\/p>\",\"_token\":\"yGDnESuR2Vz8RKa2P1d9LrZqNBTERn5lVrdPuWT8\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}','2022-03-08 23:35:10','2022-03-08 23:35:10'),(235,1,'admin/places','GET','103.21.165.244','[]','2022-03-08 23:35:10','2022-03-08 23:35:10'),(236,1,'admin/places','GET','103.21.165.244','[]','2022-03-08 23:35:44','2022-03-08 23:35:44'),(237,1,'admin/auth/permissions','GET','103.21.165.244','{\"_pjax\":\"#pjax-container\"}','2022-03-08 23:49:06','2022-03-08 23:49:06'),(238,1,'admin/auth/users','GET','103.21.165.244','{\"_pjax\":\"#pjax-container\"}','2022-03-08 23:49:21','2022-03-08 23:49:21'),(239,1,'admin/auth/setting','GET','103.21.165.244','{\"_pjax\":\"#pjax-container\"}','2022-03-08 23:49:31','2022-03-08 23:49:31'),(240,1,'admin/article-types','GET','103.21.165.244','{\"_pjax\":\"#pjax-container\"}','2022-03-08 23:50:03','2022-03-08 23:50:03'),(241,1,'admin/articles','GET','103.21.165.244','{\"_pjax\":\"#pjax-container\"}','2022-03-08 23:50:07','2022-03-08 23:50:07'),(242,1,'admin/users','GET','103.21.165.244','{\"_pjax\":\"#pjax-container\"}','2022-03-08 23:50:09','2022-03-08 23:50:09'),(243,1,'admin/places','GET','103.21.165.244','{\"_pjax\":\"#pjax-container\"}','2022-03-08 23:50:12','2022-03-08 23:50:12'),(244,1,'admin/places/4/edit','GET','103.21.165.244','{\"_pjax\":\"#pjax-container\"}','2022-03-08 23:50:31','2022-03-08 23:50:31'),(245,1,'admin/places','GET','103.21.165.244','{\"_pjax\":\"#pjax-container\"}','2022-03-08 23:50:45','2022-03-08 23:50:45'),(246,1,'admin','GET','213.166.86.224','[]','2022-03-22 13:56:13','2022-03-22 13:56:13'),(247,1,'admin','GET','5.121.132.186','[]','2022-03-22 13:57:06','2022-03-22 13:57:06'),(248,1,'admin/users','GET','5.121.132.186','{\"_pjax\":\"#pjax-container\"}','2022-03-22 13:57:39','2022-03-22 13:57:39'),(249,1,'admin/places','GET','5.121.132.186','{\"_pjax\":\"#pjax-container\"}','2022-03-22 13:57:51','2022-03-22 13:57:51'),(250,1,'admin/places/5','GET','5.121.132.186','{\"_pjax\":\"#pjax-container\"}','2022-03-22 13:59:25','2022-03-22 13:59:25'),(251,1,'admin','GET','5.121.132.186','{\"_pjax\":\"#pjax-container\"}','2022-03-22 13:59:34','2022-03-22 13:59:34'),(252,1,'admin','GET','213.166.86.224','{\"_pjax\":\"#pjax-container\"}','2022-03-22 14:03:35','2022-03-22 14:03:35'),(253,1,'admin/article-types','GET','213.166.86.224','{\"_pjax\":\"#pjax-container\"}','2022-03-22 14:04:09','2022-03-22 14:04:09'),(254,1,'admin','GET','124.105.205.120','[]','2022-03-25 05:11:28','2022-03-25 05:11:28'),(255,1,'admin/users','GET','124.105.205.120','{\"_pjax\":\"#pjax-container\"}','2022-03-25 05:14:22','2022-03-25 05:14:22'),(256,1,'admin','GET','103.55.63.62','[]','2022-04-03 07:53:08','2022-04-03 07:53:08'),(257,1,'admin/articles','GET','103.55.63.62','[]','2022-04-03 07:53:44','2022-04-03 07:53:44'),(258,1,'admin/places','GET','103.55.63.62','{\"_pjax\":\"#pjax-container\"}','2022-04-03 07:53:57','2022-04-03 07:53:57'),(259,1,'admin/_handle_action_','POST','103.55.63.62','{\"_key\":\"6\",\"_model\":\"App_Models_Place\",\"_token\":\"mvwOJtXXfO40rdptyRK98MvBGrH8CVR7kWI5zF4X\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}','2022-04-03 07:54:18','2022-04-03 07:54:18'),(260,1,'admin/places','GET','103.55.63.62','{\"_pjax\":\"#pjax-container\"}','2022-04-03 07:54:18','2022-04-03 07:54:18'),(261,1,'admin/auth/setting','GET','103.55.63.62','{\"_pjax\":\"#pjax-container\"}','2022-04-03 07:54:27','2022-04-03 07:54:27'),(262,1,'admin/auth/setting','PUT','103.55.63.62','{\"name\":\"Administrator\",\"password\":\"harshit\",\"password_confirmation\":\"harshit\",\"_token\":\"mvwOJtXXfO40rdptyRK98MvBGrH8CVR7kWI5zF4X\",\"after-save\":\"3\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/mark.bslmeiyu.com\\/admin\\/places\"}','2022-04-03 07:55:01','2022-04-03 07:55:01'),(263,1,'admin/auth/setting','GET','103.55.63.62','[]','2022-04-03 07:55:01','2022-04-03 07:55:01'),(264,1,'admin/auth/setting','PUT','103.55.63.62','{\"name\":\"Administrator\",\"password\":\"harshit\",\"password_confirmation\":\"harshit\",\"_token\":\"mvwOJtXXfO40rdptyRK98MvBGrH8CVR7kWI5zF4X\",\"_method\":\"PUT\"}','2022-04-03 07:55:53','2022-04-03 07:55:53'),(265,1,'admin/auth/setting','GET','103.55.63.62','[]','2022-04-03 07:55:53','2022-04-03 07:55:53'),(266,1,'admin/auth/setting','GET','103.55.63.62','[]','2022-04-03 07:56:00','2022-04-03 07:56:00'),(267,1,'admin','GET','103.55.63.62','{\"_pjax\":\"#pjax-container\"}','2022-04-03 07:56:07','2022-04-03 07:56:07'),(268,1,'admin/places','GET','103.55.63.62','{\"_pjax\":\"#pjax-container\"}','2022-04-03 07:56:17','2022-04-03 07:56:17'),(269,1,'admin/places','GET','103.55.63.62','[]','2022-04-03 22:03:33','2022-04-03 22:03:33'),(270,1,'admin','GET','127.0.0.1','[]','2022-10-14 17:41:01','2022-10-14 17:41:01'),(271,1,'admin/places','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2022-10-14 17:41:04','2022-10-14 17:41:04'),(272,1,'admin/places','GET','127.0.0.1','[]','2022-10-14 17:41:29','2022-10-14 17:41:29'),(273,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2022-10-14 17:41:35','2022-10-14 17:41:35'),(274,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2022-10-14 17:41:44','2022-10-14 17:41:44'),(275,1,'admin/auth/users/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2022-10-14 17:41:47','2022-10-14 17:41:47');
/*!40000 ALTER TABLE `admin_operation_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_permissions`
--

DROP TABLE IF EXISTS `admin_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`),
  UNIQUE KEY `admin_permissions_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permissions`
--

LOCK TABLES `admin_permissions` WRITE;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` VALUES (1,'All permission','*','','*',NULL,NULL),(2,'Dashboard','dashboard','GET','/',NULL,NULL),(3,'Login','auth.login','','/auth/login\r\n/auth/logout',NULL,NULL),(4,'User setting','auth.setting','GET,PUT','/auth/setting',NULL,NULL),(5,'Auth management','auth.management','','/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs',NULL,NULL);
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_menu`
--

DROP TABLE IF EXISTS `admin_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_role_menu` (
  `role_id` int NOT NULL,
  `menu_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_menu`
--

LOCK TABLES `admin_role_menu` WRITE;
/*!40000 ALTER TABLE `admin_role_menu` DISABLE KEYS */;
INSERT INTO `admin_role_menu` VALUES (1,2,NULL,NULL),(1,8,NULL,NULL),(1,9,NULL,NULL),(1,10,NULL,NULL),(1,11,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_permissions`
--

DROP TABLE IF EXISTS `admin_role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_role_permissions` (
  `role_id` int NOT NULL,
  `permission_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_permissions`
--

LOCK TABLES `admin_role_permissions` WRITE;
/*!40000 ALTER TABLE `admin_role_permissions` DISABLE KEYS */;
INSERT INTO `admin_role_permissions` VALUES (1,1,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_users`
--

DROP TABLE IF EXISTS `admin_role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_role_users` (
  `role_id` int NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_users`
--

LOCK TABLES `admin_role_users` WRITE;
/*!40000 ALTER TABLE `admin_role_users` DISABLE KEYS */;
INSERT INTO `admin_role_users` VALUES (1,1,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`),
  UNIQUE KEY `admin_roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_roles`
--

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES (1,'Administrator','administrator','2021-11-08 03:39:48','2021-11-08 03:39:48');
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_user_permissions`
--

DROP TABLE IF EXISTS `admin_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_user_permissions` (
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_user_permissions`
--

LOCK TABLES `admin_user_permissions` WRITE;
/*!40000 ALTER TABLE `admin_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'admin','$2y$10$WzYsl8jyph98Vn9gJ1Mh/usdXhqLsvpRXr5w7xtdBw8qGAL//Mw9W','Administrator',NULL,'3JdCuDKNQUPVU8aOoMGjp04922reT3lM8FcWiKjTAGc4a1emfXGDimJowHQJ','2021-11-08 03:39:48','2022-04-03 07:55:53');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_types`
--

DROP TABLE IF EXISTS `article_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_types`
--

LOCK TABLES `article_types` WRITE;
/*!40000 ALTER TABLE `article_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `article_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` int NOT NULL,
  `keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `article_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2016_01_04_173148_create_admin_tables',2),(6,'2021_11_08_125401_create_article_types_table',3),(7,'2021_11_08_125420_create_articles_table',3),(8,'2021_11_17_092846_create_place_table',4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `places`
--

DROP TABLE IF EXISTS `places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `places` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `stars` int NOT NULL,
  `people` int NOT NULL,
  `selected_people` int NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `places`
--

LOCK TABLES `places` WRITE;
/*!40000 ALTER TABLE `places` DISABLE KEYS */;
INSERT INTO `places` VALUES (1,'British Columbia','<p><span style=\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">This 134 kilometers Highway 99 trail gives you a taste of the&nbsp;</span><a href=\"https://traveltriangle.com/canada-tourism\" target=\"_blank\" rel=\"noopener noreferrer\" style=\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\">Canada</a><span style=\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">&nbsp;mountains, from Horseshoe Bay in the north of Vancouver to Pemberton.&nbsp;</span></p>',1276,4,5,5,'images/f9d4b5e088c7bc70b7bbd51cd89e71b6.jpeg','Canada, British Columbia','2021-11-17 02:09:08','2021-11-19 05:39:55'),(2,'Icefields','<p><span style=\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">This stretches for a straight 234 kilometers from Banff to Jasper. The Icefields Parkway offers you the picturesque panorama of Alberta’s most talked about mountain vistas.&nbsp;</span><br/></p>',2153,5,5,3,'images/1a2d25d3c5ea7912982e37b8005bbebe.jpeg','Icefields, Alberta','2021-11-17 02:10:43','2021-11-19 06:18:09'),(3,'Moraine Lake','<p><span style=\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Moraine Lake is yet another astonishing geographical location that you cannot afford to miss out on if you’re traveling along the Icefields Parkway.&nbsp;</span></p>',3456,3,5,4,'images/9a4079ae9e67ca51b9fdf4670a5795f4.jpeg','Moraine Lake, Alberta','2021-11-17 02:16:31','2021-11-19 05:40:36'),(4,'Ontario','<p><span style=\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">If you’re in Canada and if you’re a sucker for mountains, Killarney Provincial Park in&nbsp;</span><a href=\"https://traveltriangle.com/canada-tourism/ontario\" target=\"_blank\" rel=\"noopener noreferrer\" style=\"box-sizing: border-box; background: rgb(255, 255, 255); color: rgb(0, 153, 255); text-decoration-line: none; outline: none; font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; white-space: normal;\">Ontario</a><span style=\"font-family: Verdana, arial, Geneva, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">&nbsp;is your best catch for Canada mountains near Toronto.&nbsp;</span></p>',3312,4,5,3,'images/24fe838b325456a0ca7fc2249409de3f.jpeg','Killarney Provincial Park','2021-11-17 02:18:46','2021-11-19 05:40:44'),(5,'Gaza','<p>Dome of the rock the beautiful and amazing human made architectural.</p>',10,5,5,4,'images/9aaf2377eb3e0978ecb0e17717579a2b.jpg','Palestine, Gaza','2021-12-08 04:29:53','2021-12-08 04:29:53');
/*!40000 ALTER TABLE `places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-15  9:43:01
