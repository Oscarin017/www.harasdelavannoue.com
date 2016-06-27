CREATE DATABASE  IF NOT EXISTS `harasdelavannoue` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `harasdelavannoue`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: harasdelavannoue
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.10-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `hv_usermeta`
--

DROP TABLE IF EXISTS `hv_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hv_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hv_usermeta`
--

LOCK TABLES `hv_usermeta` WRITE;
/*!40000 ALTER TABLE `hv_usermeta` DISABLE KEYS */;
INSERT INTO `hv_usermeta` VALUES (1,1,'nickname','admin'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'comment_shortcuts','false'),(7,1,'admin_color','fresh'),(8,1,'use_ssl','0'),(9,1,'show_admin_bar_front','true'),(10,1,'hv_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(11,1,'hv_user_level','10'),(12,1,'dismissed_wp_pointers',''),(13,1,'show_welcome_panel','1'),(15,1,'hv_dashboard_quick_press_last_post_id','3'),(16,2,'nickname','OscarGonzalez'),(17,2,'first_name','Oscar Jacobo'),(18,2,'last_name','Gonzalez Hernandez'),(19,2,'description',''),(20,2,'rich_editing','true'),(21,2,'comment_shortcuts','false'),(22,2,'admin_color','fresh'),(23,2,'use_ssl','0'),(24,2,'show_admin_bar_front','true'),(25,2,'hv_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(26,2,'hv_user_level','10'),(27,2,'dismissed_wp_pointers',''),(28,3,'nickname','LuisNavarrete'),(29,3,'first_name','Luis Arturo'),(30,3,'last_name','Navarrete Salgado'),(31,3,'description',''),(32,3,'rich_editing','true'),(33,3,'comment_shortcuts','false'),(34,3,'admin_color','fresh'),(35,3,'use_ssl','0'),(36,3,'show_admin_bar_front','true'),(37,3,'hv_capabilities','a:1:{s:10:\"subscriber\";b:1;}'),(38,3,'hv_user_level','0'),(39,3,'dismissed_wp_pointers',''),(40,2,'session_tokens','a:1:{s:64:\"f07fe9724d798ea93c7246b2f8f789490785623d30b31637bbbd6daf4e3eb8ab\";a:4:{s:10:\"expiration\";i:1467114022;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:110:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36\";s:5:\"login\";i:1466941222;}}'),(41,2,'hv_dashboard_quick_press_last_post_id','4'),(42,2,'manageedit-shop_ordercolumnshidden','a:1:{i:0;s:15:\"billing_address\";}'),(43,2,'show_per_page','25'),(44,2,'orderby',''),(45,2,'hv_user-settings','editor=html'),(46,2,'hv_user-settings-time','1466945877');
/*!40000 ALTER TABLE `hv_usermeta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-27  9:12:51
