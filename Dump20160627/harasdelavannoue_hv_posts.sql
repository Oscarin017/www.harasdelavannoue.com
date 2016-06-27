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
-- Table structure for table `hv_posts`
--

DROP TABLE IF EXISTS `hv_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hv_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hv_posts`
--

LOCK TABLES `hv_posts` WRITE;
/*!40000 ALTER TABLE `hv_posts` DISABLE KEYS */;
INSERT INTO `hv_posts` VALUES (1,1,'2016-06-26 11:32:25','2016-06-26 11:32:25','Welcome to WordPress. This is your first post. Edit or delete it, then start writing!','Hello world!','','publish','open','open','','hello-world','','','2016-06-26 11:32:25','2016-06-26 11:32:25','',0,'http://localhost:8080/www.harasdelavannoue.com/?p=1',0,'post','',1),(2,1,'2016-06-26 11:32:25','2016-06-26 11:32:25','This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost:8080/www.harasdelavannoue.com/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!','Sample Page','','trash','closed','open','','sample-page__trashed','','','2016-06-26 12:17:53','2016-06-26 12:17:53','',0,'http://localhost:8080/www.harasdelavannoue.com/?page_id=2',0,'page','',0),(3,1,'2016-06-26 11:32:38','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2016-06-26 11:32:38','0000-00-00 00:00:00','',0,'http://localhost:8080/www.harasdelavannoue.com/?p=3',0,'post','',0),(4,2,'2016-06-26 11:40:22','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2016-06-26 11:40:22','0000-00-00 00:00:00','',0,'http://localhost:8080/www.harasdelavannoue.com/?p=4',0,'post','',0),(5,2,'2016-06-26 11:51:48','2016-06-26 11:51:48','','Chevaux','','publish','closed','closed','','cheval','','','2016-06-26 11:57:54','2016-06-26 11:57:54','',0,'http://localhost:8080/www.harasdelavannoue.com/?post_type=_pods_pod&#038;p=5',0,'_pods_pod','',0),(6,2,'2016-06-26 11:57:54','2016-06-26 11:57:54','','Image Principale','','publish','closed','closed','','image_principale','','','2016-06-26 11:57:54','2016-06-26 11:57:54','',5,'http://localhost:8080/www.harasdelavannoue.com/?post_type=_pods_field&p=6',0,'_pods_field','',0),(7,2,'2016-06-26 11:57:55','2016-06-26 11:57:55','','Age','','publish','closed','closed','','age','','','2016-06-26 11:57:55','2016-06-26 11:57:55','',5,'http://localhost:8080/www.harasdelavannoue.com/?post_type=_pods_field&p=7',1,'_pods_field','',0),(8,2,'2016-06-26 11:57:56','2016-06-26 11:57:56','','SIRE','','publish','closed','closed','','sire','','','2016-06-26 11:57:56','2016-06-26 11:57:56','',5,'http://localhost:8080/www.harasdelavannoue.com/?post_type=_pods_field&p=8',2,'_pods_field','',0),(9,2,'2016-06-26 11:57:56','2016-06-26 11:57:56','','Naissance','','publish','closed','closed','','naissance','','','2016-06-26 11:57:56','2016-06-26 11:57:56','',5,'http://localhost:8080/www.harasdelavannoue.com/?post_type=_pods_field&p=9',3,'_pods_field','',0),(10,2,'2016-06-26 11:57:57','2016-06-26 11:57:57','','Sexe','','publish','closed','closed','','sexe','','','2016-06-26 11:57:57','2016-06-26 11:57:57','',5,'http://localhost:8080/www.harasdelavannoue.com/?post_type=_pods_field&p=10',4,'_pods_field','',0),(11,2,'2016-06-26 11:57:57','2016-06-26 11:57:57','','Race','','publish','closed','closed','','race','','','2016-06-26 11:57:57','2016-06-26 11:57:57','',5,'http://localhost:8080/www.harasdelavannoue.com/?post_type=_pods_field&p=11',5,'_pods_field','',0),(12,2,'2016-06-26 11:57:58','2016-06-26 11:57:58','','Taille','','publish','closed','closed','','taille','','','2016-06-26 11:57:58','2016-06-26 11:57:58','',5,'http://localhost:8080/www.harasdelavannoue.com/?post_type=_pods_field&p=12',6,'_pods_field','',0),(13,2,'2016-06-26 11:57:58','2016-06-26 11:57:58','','Père','','publish','closed','closed','','pere','','','2016-06-26 11:57:58','2016-06-26 11:57:58','',5,'http://localhost:8080/www.harasdelavannoue.com/?post_type=_pods_field&p=13',7,'_pods_field','',0),(14,2,'2016-06-26 11:57:59','2016-06-26 11:57:59','','Mère','','publish','closed','closed','','mere','','','2016-06-26 11:57:59','2016-06-26 11:57:59','',5,'http://localhost:8080/www.harasdelavannoue.com/?post_type=_pods_field&p=14',8,'_pods_field','',0),(15,2,'2016-06-26 11:57:59','2016-06-26 11:57:59','','Père de mère','','publish','closed','closed','','pere_de_mere','','','2016-06-26 11:57:59','2016-06-26 11:57:59','',5,'http://localhost:8080/www.harasdelavannoue.com/?post_type=_pods_field&p=15',9,'_pods_field','',0),(16,2,'2016-06-26 11:58:00','2016-06-26 11:58:00','','Priorité','','publish','closed','closed','','priorite','','','2016-06-26 11:58:00','2016-06-26 11:58:00','',5,'http://localhost:8080/www.harasdelavannoue.com/?post_type=_pods_field&p=16',10,'_pods_field','',0),(17,2,'2016-06-26 11:58:00','2016-06-26 11:58:00','','Video','','publish','closed','closed','','video','','','2016-06-26 11:58:00','2016-06-26 11:58:00','',5,'http://localhost:8080/www.harasdelavannoue.com/?post_type=_pods_field&p=17',11,'_pods_field','',0),(18,2,'2016-06-26 11:58:01','2016-06-26 11:58:01','','Images','','publish','closed','closed','','images','','','2016-06-26 11:58:01','2016-06-26 11:58:01','',5,'http://localhost:8080/www.harasdelavannoue.com/?post_type=_pods_field&p=18',12,'_pods_field','',0),(19,2,'2016-06-26 11:59:00','2016-06-26 11:59:00','','Contenus','','publish','closed','closed','','contenu','','','2016-06-26 12:02:36','2016-06-26 12:02:36','',0,'http://localhost:8080/www.harasdelavannoue.com/?post_type=_pods_pod&#038;p=19',0,'_pods_pod','',0),(20,2,'2016-06-26 12:02:36','2016-06-26 12:02:36','','Libellé','','publish','closed','closed','','libelle','','','2016-06-26 12:02:36','2016-06-26 12:02:36','',19,'http://localhost:8080/www.harasdelavannoue.com/?post_type=_pods_field&p=20',0,'_pods_field','',0),(21,2,'2016-06-26 12:02:36','2016-06-26 12:02:36','','Poids','','publish','closed','closed','','poids','','','2016-06-26 12:02:36','2016-06-26 12:02:36','',19,'http://localhost:8080/www.harasdelavannoue.com/?post_type=_pods_field&p=21',1,'_pods_field','',0),(22,2,'2016-06-26 12:03:59','2016-06-26 12:03:59','','Événements','','publish','closed','closed','','vnement','','','2016-06-26 12:08:43','2016-06-26 12:08:43','',0,'http://localhost:8080/www.harasdelavannoue.com/?post_type=_pods_pod&#038;p=22',0,'_pods_pod','',0),(23,2,'2016-06-26 12:08:43','2016-06-26 12:08:43','','Titre','','publish','closed','closed','','titre','','','2016-06-26 12:08:43','2016-06-26 12:08:43','',22,'http://localhost:8080/www.harasdelavannoue.com/?post_type=_pods_field&p=23',0,'_pods_field','',0),(24,2,'2016-06-26 12:08:44','2016-06-26 12:08:44','','Image Principale','','publish','closed','closed','','image_principale','','','2016-06-26 12:08:44','2016-06-26 12:08:44','',22,'http://localhost:8080/www.harasdelavannoue.com/?post_type=_pods_field&p=24',1,'_pods_field','',0),(25,2,'2016-06-26 12:08:44','2016-06-26 12:08:44','','Description Courte','','publish','closed','closed','','description_courte','','','2016-06-26 12:08:44','2016-06-26 12:08:44','',22,'http://localhost:8080/www.harasdelavannoue.com/?post_type=_pods_field&p=25',2,'_pods_field','',0),(26,2,'2016-06-26 12:08:45','2016-06-26 12:08:45','','Niveau','','publish','closed','closed','','niveau','','','2016-06-26 12:08:45','2016-06-26 12:08:45','',22,'http://localhost:8080/www.harasdelavannoue.com/?post_type=_pods_field&p=26',3,'_pods_field','',0),(27,2,'2016-06-26 12:08:45','2016-06-26 12:08:45','','Date Départe','','publish','closed','closed','','date_departe','','','2016-06-26 12:08:45','2016-06-26 12:08:45','',22,'http://localhost:8080/www.harasdelavannoue.com/?post_type=_pods_field&p=27',4,'_pods_field','',0),(28,2,'2016-06-26 12:08:46','2016-06-26 12:08:46','','Date de la fin','','publish','closed','closed','','date_de_la_fin','','','2016-06-26 12:08:46','2016-06-26 12:08:46','',22,'http://localhost:8080/www.harasdelavannoue.com/?post_type=_pods_field&p=28',5,'_pods_field','',0),(29,2,'2016-06-26 12:08:46','2016-06-26 12:08:46','','Description_longue','','publish','closed','closed','','description_longue','','','2016-06-26 12:08:46','2016-06-26 12:08:46','',22,'http://localhost:8080/www.harasdelavannoue.com/?post_type=_pods_field&p=29',6,'_pods_field','',0),(30,2,'2016-06-26 12:08:47','2016-06-26 12:08:47','','Images','','publish','closed','closed','','images','','','2016-06-26 12:08:47','2016-06-26 12:08:47','',22,'http://localhost:8080/www.harasdelavannoue.com/?post_type=_pods_field&p=30',7,'_pods_field','',0),(31,2,'2016-06-26 12:08:47','2016-06-26 12:08:47','','Video','','publish','closed','closed','','video','','','2016-06-26 12:08:47','2016-06-26 12:08:47','',22,'http://localhost:8080/www.harasdelavannoue.com/?post_type=_pods_field&p=31',8,'_pods_field','',0),(32,2,'2016-06-26 12:08:48','2016-06-26 12:08:48','','Catégorie','','publish','closed','closed','','categorie','','','2016-06-26 12:08:48','2016-06-26 12:08:48','',22,'http://localhost:8080/www.harasdelavannoue.com/?post_type=_pods_field&p=32',9,'_pods_field','',0),(33,2,'2016-06-26 12:08:49','2016-06-26 12:08:49','','Subcatégorie','','publish','closed','closed','','subcategorie','','','2016-06-26 12:08:49','2016-06-26 12:08:49','',22,'http://localhost:8080/www.harasdelavannoue.com/?post_type=_pods_field&p=33',10,'_pods_field','',0),(34,2,'2016-06-26 12:09:33','2016-06-26 12:09:33','','Installations','','publish','closed','closed','','installation','','','2016-06-26 12:12:30','2016-06-26 12:12:30','',0,'http://localhost:8080/www.harasdelavannoue.com/?post_type=_pods_pod&#038;p=34',0,'_pods_pod','',0),(35,2,'2016-06-26 12:11:41','2016-06-26 12:11:41','','Image Principale','','publish','closed','closed','','image_principale','','','2016-06-26 12:12:30','2016-06-26 12:12:30','',34,'http://localhost:8080/www.harasdelavannoue.com/?post_type=_pods_field&#038;p=35',0,'_pods_field','',0),(36,2,'2016-06-26 12:11:41','2016-06-26 12:11:41','','Description courte','','publish','closed','closed','','description_courte','','','2016-06-26 12:12:30','2016-06-26 12:12:30','',34,'http://localhost:8080/www.harasdelavannoue.com/?post_type=_pods_field&#038;p=36',1,'_pods_field','',0),(37,2,'2016-06-26 12:11:42','2016-06-26 12:11:42','','Description','','publish','closed','closed','','description','','','2016-06-26 12:12:30','2016-06-26 12:12:30','',34,'http://localhost:8080/www.harasdelavannoue.com/?post_type=_pods_field&#038;p=37',2,'_pods_field','',0),(38,2,'2016-06-26 12:11:42','2016-06-26 12:11:42','','Images','','publish','closed','closed','','images','','','2016-06-26 12:12:30','2016-06-26 12:12:30','',34,'http://localhost:8080/www.harasdelavannoue.com/?post_type=_pods_field&#038;p=38',3,'_pods_field','',0),(39,2,'2016-06-26 12:11:43','2016-06-26 12:11:43','','Video','','publish','closed','closed','','video','','','2016-06-26 12:12:30','2016-06-26 12:12:30','',34,'http://localhost:8080/www.harasdelavannoue.com/?post_type=_pods_field&#038;p=39',4,'_pods_field','',0),(40,2,'2016-06-26 12:11:43','2016-06-26 12:11:43','','Position','','publish','closed','closed','','position','','','2016-06-26 12:12:30','2016-06-26 12:12:30','',34,'http://localhost:8080/www.harasdelavannoue.com/?post_type=_pods_field&#038;p=40',5,'_pods_field','',0),(41,2,'2016-06-26 12:11:44','2016-06-26 12:11:44','','Forme','','publish','closed','closed','','forme','','','2016-06-26 12:12:30','2016-06-26 12:12:30','',34,'http://localhost:8080/www.harasdelavannoue.com/?post_type=_pods_field&#038;p=41',6,'_pods_field','',0),(42,2,'2016-06-26 12:12:51','2016-06-26 12:12:51','','Liens','','publish','closed','closed','','lien','','','2016-06-26 12:16:00','2016-06-26 12:16:00','',0,'http://localhost:8080/www.harasdelavannoue.com/?post_type=_pods_pod&#038;p=42',0,'_pods_pod','',0),(43,2,'2016-06-26 12:16:00','2016-06-26 12:16:00','','Image Principale','','publish','closed','closed','','image_principale','','','2016-06-26 12:16:00','2016-06-26 12:16:00','',42,'http://localhost:8080/www.harasdelavannoue.com/?post_type=_pods_field&p=43',0,'_pods_field','',0),(44,2,'2016-06-26 12:16:00','2016-06-26 12:16:00','','Lien','','publish','closed','closed','','lien','','','2016-06-26 12:16:00','2016-06-26 12:16:00','',42,'http://localhost:8080/www.harasdelavannoue.com/?post_type=_pods_field&p=44',1,'_pods_field','',0),(45,2,'2016-06-26 12:16:01','2016-06-26 12:16:01','','Description','','publish','closed','closed','','description','','','2016-06-26 12:16:01','2016-06-26 12:16:01','',42,'http://localhost:8080/www.harasdelavannoue.com/?post_type=_pods_field&p=45',2,'_pods_field','',0),(46,2,'2016-06-26 12:16:02','2016-06-26 12:16:02','','Poids','','publish','closed','closed','','poids','','','2016-06-26 12:16:02','2016-06-26 12:16:02','',42,'http://localhost:8080/www.harasdelavannoue.com/?post_type=_pods_field&p=46',3,'_pods_field','',0),(47,2,'2016-06-26 12:16:02','2016-06-26 12:16:02','','Service','','publish','closed','closed','','service','','','2016-06-26 12:16:02','2016-06-26 12:16:02','',42,'http://localhost:8080/www.harasdelavannoue.com/?post_type=_pods_field&p=47',4,'_pods_field','',0),(48,2,'2016-06-26 12:17:25','2016-06-26 12:17:25','','Couverture5','','inherit','open','closed','','couverture5','','','2016-06-26 12:17:25','2016-06-26 12:17:25','',0,'http://localhost:8080/www.harasdelavannoue.com/wp-content/uploads/2016/06/Couverture5.png',0,'attachment','image/png',0),(49,2,'2016-06-26 12:17:53','2016-06-26 12:17:53','This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost:8080/www.harasdelavannoue.com/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2016-06-26 12:17:53','2016-06-26 12:17:53','',2,'http://localhost:8080/www.harasdelavannoue.com/2016/06/26/2-revision-v1/',0,'revision','',0),(50,2,'2016-06-26 12:58:01','2016-06-26 12:58:01','<div id=\"divPresentation\">\r\n	<img id=\"imgPresentation\" class=\"center-block\" src=\"http://localhost:8080/www.harasdelavannoue.com/wp-content/uploads/2016/06/Couverture5.png\"/>\r\n</div>\r\n<map id=\"mapCouverture\" name=\"mapCouverture\">\r\n	[pods name=\"installation\" template=\"carte\"]\r\n</map>\r\n[pods name=\"contenu\" limit=\"-1\" orderby=\"poids asc\" template=\"Contenu\"]\r\n[pods name=\"installation\" limit=\"-1\" template=\"Installation Modal\"]','Accueil','','publish','closed','closed','','accueil','','','2016-06-26 12:58:01','2016-06-26 12:58:01','',0,'http://localhost:8080/www.harasdelavannoue.com/?page_id=50',0,'page','',0),(51,2,'2016-06-26 12:58:01','2016-06-26 12:58:01','<div id=\"divPresentation\">\r\n	<img id=\"imgPresentation\" class=\"center-block\" src=\"http://localhost:8080/www.harasdelavannoue.com/wp-content/uploads/2016/06/Couverture5.png\"/>\r\n</div>\r\n<map id=\"mapCouverture\" name=\"mapCouverture\">\r\n	[pods name=\"installation\" template=\"carte\"]\r\n</map>\r\n[pods name=\"contenu\" limit=\"-1\" orderby=\"poids asc\" template=\"Contenu\"]\r\n[pods name=\"installation\" limit=\"-1\" template=\"Installation Modal\"]','Accueil','','inherit','closed','closed','','50-revision-v1','','','2016-06-26 12:58:01','2016-06-26 12:58:01','',50,'http://localhost:8080/www.harasdelavannoue.com/2016/06/26/50-revision-v1/',0,'revision','',0),(52,2,'2016-06-26 13:00:59','2016-06-26 13:00:59','','L\'Environement','','publish','closed','closed','','lenvironement','','','2016-06-26 13:04:08','2016-06-26 13:04:08','',0,'http://localhost:8080/www.harasdelavannoue.com/2016/06/26/lenvironement/',1,'nav_menu_item','',0),(53,2,'2016-06-26 13:04:08','2016-06-26 13:04:08','','L\'Elevage','','publish','closed','closed','','lelevage','','','2016-06-26 13:04:08','2016-06-26 13:04:08','',0,'http://localhost:8080/www.harasdelavannoue.com/2016/06/26/lelevage/',2,'nav_menu_item','',0),(54,2,'2016-06-26 13:04:08','2016-06-26 13:04:08','','Activités Équestres','','publish','closed','closed','','activites-equestres','','','2016-06-26 13:04:08','2016-06-26 13:04:08','',0,'http://localhost:8080/www.harasdelavannoue.com/2016/06/26/activites-equestres/',3,'nav_menu_item','',0),(55,2,'2016-06-26 13:04:08','2016-06-26 13:04:08','','Les Services','','publish','closed','closed','','les-services','','','2016-06-26 13:04:08','2016-06-26 13:04:08','',0,'http://localhost:8080/www.harasdelavannoue.com/2016/06/26/les-services/',4,'nav_menu_item','',0),(56,2,'2016-06-26 13:04:08','2016-06-26 13:04:08','','Nos Chevaux','','publish','closed','closed','','nos-chevaux','','','2016-06-26 13:04:08','2016-06-26 13:04:08','',0,'http://localhost:8080/www.harasdelavannoue.com/2016/06/26/nos-chevaux/',5,'nav_menu_item','',0),(57,2,'2016-06-26 13:04:08','2016-06-26 13:04:08','','Les Liens','','publish','closed','closed','','les-liens','','','2016-06-26 13:04:08','2016-06-26 13:04:08','',0,'http://localhost:8080/www.harasdelavannoue.com/2016/06/26/les-liens/',6,'nav_menu_item','',0),(58,2,'2016-06-26 13:04:08','2016-06-26 13:04:08','','Contact','','publish','closed','closed','','contact','','','2016-06-26 13:04:08','2016-06-26 13:04:08','',0,'http://localhost:8080/www.harasdelavannoue.com/2016/06/26/contact/',7,'nav_menu_item','',0);
/*!40000 ALTER TABLE `hv_posts` ENABLE KEYS */;
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
