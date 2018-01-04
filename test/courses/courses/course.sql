-- MySQL dump 10.13  Distrib 5.5.54, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: course
-- ------------------------------------------------------
-- Server version	5.5.54-0ubuntu0.14.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add group',4,'add_group'),(11,'Can change group',4,'change_group'),(12,'Can delete group',4,'delete_group'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add question',7,'add_question'),(20,'Can change question',7,'change_question'),(21,'Can delete question',7,'delete_question'),(22,'Can add neuron',8,'add_neuron'),(23,'Can change neuron',8,'change_neuron'),(24,'Can delete neuron',8,'delete_neuron');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$30000$lbfapWLcfK5b$E1u8uJLHbwBiiv2AA8wPlsahJxpvXctJ2Sz3IXhhw2w=','2017-03-15 10:04:57',1,'cobbb11','','','',1,1,'2017-03-09 09:00:13'),(2,'pbkdf2_sha256$30000$f4RWpPbFhHsp$s1i2ekxiedS0kWP1vWiE5HbgZxzO0BETSYO09PPWd0I=','2017-03-15 07:30:40',1,'cloudray','','','240078316@qq.com',1,1,'2017-03-09 09:01:06'),(3,'pbkdf2_sha256$30000$K8OZ51SJP3pk$UdZQxHd7a6Khe0H4nv8ypGrBkHI4uW/pKqj6yy9ro4I=','2017-03-13 02:32:32',1,'qweasd','','','',1,1,'2017-03-09 09:01:42');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-03-09 09:07:08','2','Question object',1,'[{\"added\": {}}]',7,1),(2,'2017-03-09 09:07:30','1.1.1','Question object',1,'[{\"added\": {}}]',7,3),(3,'2017-03-09 11:55:40','Prob3.4.5','Question object',1,'[{\"added\": {}}]',7,3),(4,'2017-03-11 02:43:05','3.1','Question object',1,'[{\"added\": {}}]',7,3),(5,'2017-03-11 02:48:25','3.1.1','Question object',2,'[{\"changed\": {\"fields\": [\"code\", \"linkability\", \"linkpersonaility\", \"gussingparameter\"]}}]',7,3),(6,'2017-03-11 02:54:33','3.1','Question object',3,'',7,3),(7,'2017-03-11 03:36:31','3.1.3','Question object',1,'[{\"added\": {}}]',7,3),(8,'2017-03-11 03:37:13','3.1.3','Question object',2,'[]',7,3),(9,'2017-03-11 04:02:46','3.4.1','Question object',1,'[{\"added\": {}}]',7,3),(10,'2017-03-11 04:18:42','3.4.3','Question object',1,'[{\"added\": {}}]',7,3),(11,'2017-03-13 14:25:25','3.2.8','Expl3.2.8',1,'[{\"added\": {}}]',7,3),(12,'2017-03-13 14:28:57','3.2.9','Expl3.2.9',1,'[{\"added\": {}}]',7,3),(13,'2017-03-13 14:37:55','3.3.12','Expl3.3.12',1,'[{\"added\": {}}]',7,3),(14,'2017-03-13 14:42:37','3.2.8','Expl3.2.8',2,'[{\"changed\": {\"fields\": [\"difficulty\"]}}]',7,3),(15,'2017-03-15 09:16:45','2','Expl2',2,'[{\"changed\": {\"fields\": [\"problempicture2\", \"difficulty\"]}}]',7,1),(16,'2017-03-15 10:04:51','3.4.3','DIY3.4.3',2,'[{\"changed\": {\"fields\": [\"category\", \"difficulty\"]}}]',7,3),(17,'2017-03-15 10:06:40','3.4.5','DIY3.4.5',2,'[{\"changed\": {\"fields\": [\"code\", \"category\", \"difficulty\"]}}]',7,1),(18,'2017-03-15 10:06:51','3.4.5','Expl3.4.5',2,'[{\"changed\": {\"fields\": [\"code\", \"difficulty\"]}}]',7,1),(19,'2017-03-15 10:11:20','3.2.8','Expl3.2.8',2,'[{\"changed\": {\"fields\": [\"problem\", \"difficulty\"]}}]',7,1),(20,'2017-03-15 10:12:05','3.2.8','Expl3.2.8',2,'[{\"changed\": {\"fields\": [\"problem\"]}}]',7,1),(21,'2017-03-15 10:12:55','3.2.8','Expl3.2.8',2,'[{\"changed\": {\"fields\": [\"problem\"]}}]',7,1),(22,'2017-03-15 10:13:23','3.2.8','Expl3.2.8',2,'[{\"changed\": {\"fields\": [\"problem\"]}}]',7,1),(23,'2017-03-15 10:14:55','3.2.8','Expl3.2.8',2,'[{\"changed\": {\"fields\": [\"problem\"]}}]',7,1),(24,'2017-03-15 10:15:36','3.2.8','Expl3.2.8',2,'[{\"changed\": {\"fields\": [\"problem\"]}}]',7,1),(25,'2017-03-15 10:15:54','3.2.8','Expl3.2.8',2,'[{\"changed\": {\"fields\": [\"problem\"]}}]',7,1),(26,'2017-03-15 10:43:21','3.4.3','DIY3.4.3',2,'[{\"changed\": {\"fields\": [\"problem\"]}}]',7,1),(27,'2017-03-15 10:44:12','3.4.3','DIY3.4.3',2,'[{\"changed\": {\"fields\": [\"problem\"]}}]',7,1),(28,'2017-03-15 10:45:52','3.1.1','DIY3.1.1',2,'[{\"changed\": {\"fields\": [\"category\"]}}]',7,3);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(4,'auth','group'),(2,'auth','permission'),(3,'auth','user'),(5,'contenttypes','contenttype'),(8,'mathematics','neuron'),(7,'mathematics','question'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-03-09 08:51:11'),(2,'auth','0001_initial','2017-03-09 08:51:11'),(3,'admin','0001_initial','2017-03-09 08:51:11'),(4,'admin','0002_logentry_remove_auto_add','2017-03-09 08:51:11'),(5,'contenttypes','0002_remove_content_type_name','2017-03-09 08:51:11'),(6,'auth','0002_alter_permission_name_max_length','2017-03-09 08:51:12'),(7,'auth','0003_alter_user_email_max_length','2017-03-09 08:51:12'),(8,'auth','0004_alter_user_username_opts','2017-03-09 08:51:12'),(9,'auth','0005_alter_user_last_login_null','2017-03-09 08:51:12'),(10,'auth','0006_require_contenttypes_0002','2017-03-09 08:51:12'),(11,'auth','0007_alter_validators_add_error_messages','2017-03-09 08:51:12'),(12,'auth','0008_alter_user_username_max_length','2017-03-09 08:51:12'),(13,'sessions','0001_initial','2017-03-09 08:51:12'),(14,'mathematics','0001_initial','2017-03-09 09:06:13');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('02vtnp9m96usgdyhkdayljs1ane63rs9','Zjc0YmI2YTMzNWNlMDk4YWRkM2I4NzU4Yzg0NTRiZjhmMzBmZGZjNDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0MzUwZDg5MmM2YjRiMDBjNjIxNTY5YmVkZDVkYTIzN2IwMTc3MzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=','2017-03-25 01:57:25'),('135tcwarra80cna9dsy2fi4j2j6skzu9','Zjc0YmI2YTMzNWNlMDk4YWRkM2I4NzU4Yzg0NTRiZjhmMzBmZGZjNDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0MzUwZDg5MmM2YjRiMDBjNjIxNTY5YmVkZDVkYTIzN2IwMTc3MzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=','2017-03-27 02:32:32'),('5ayb8uhjponh68a953vgngvtfe6epzsj','NGM3MTEzNmQ3YTE0MWVmY2NkMzBiMTNiNzBiMzEwODQ1ZjkzNzkzZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImZhMTIxYWUyNzg0NWU0NTQwZThlN2I1OTkzMDIzNDZkMGM2YzA3NjYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=','2017-03-25 06:59:12'),('b8og8encpchdhupekvb71dbgshzxfrsr','N2E3YjczNzE0N2I2YmJmMzRhOTk0ZGI0ZTkzY2M1ZDVjYjhkOTg4YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1NzY1MDk0ZGFhOTA2YTBmMzkwMDllOTkzNDdmOGU2OTljY2M3MTUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-25 09:00:59'),('dem7l033h1nyfepub1750j6haasxhz17','NGM3MTEzNmQ3YTE0MWVmY2NkMzBiMTNiNzBiMzEwODQ1ZjkzNzkzZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImZhMTIxYWUyNzg0NWU0NTQwZThlN2I1OTkzMDIzNDZkMGM2YzA3NjYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=','2017-03-29 07:30:40'),('eegu0vcf83qj1s33lgfdz3gqv20jnhot','N2E3YjczNzE0N2I2YmJmMzRhOTk0ZGI0ZTkzY2M1ZDVjYjhkOTg4YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1NzY1MDk0ZGFhOTA2YTBmMzkwMDllOTkzNDdmOGU2OTljY2M3MTUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-29 10:04:57'),('fd43i30qj5hrzc2xbaszpb2m1yy7jrrg','Zjc0YmI2YTMzNWNlMDk4YWRkM2I4NzU4Yzg0NTRiZjhmMzBmZGZjNDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0MzUwZDg5MmM2YjRiMDBjNjIxNTY5YmVkZDVkYTIzN2IwMTc3MzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=','2017-03-23 11:36:01'),('kbe75jh439icz9xynez2hkgl43q1wmq8','N2E3YjczNzE0N2I2YmJmMzRhOTk0ZGI0ZTkzY2M1ZDVjYjhkOTg4YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1NzY1MDk0ZGFhOTA2YTBmMzkwMDllOTkzNDdmOGU2OTljY2M3MTUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-23 09:04:36'),('kbvel3c7s7i02dfqke6lgqcthotyqgc3','Zjc0YmI2YTMzNWNlMDk4YWRkM2I4NzU4Yzg0NTRiZjhmMzBmZGZjNDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0MzUwZDg5MmM2YjRiMDBjNjIxNTY5YmVkZDVkYTIzN2IwMTc3MzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=','2017-03-25 04:26:52'),('qq42jf1pjcmicr2je4hnih8n6quufkba','Zjc0YmI2YTMzNWNlMDk4YWRkM2I4NzU4Yzg0NTRiZjhmMzBmZGZjNDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0MzUwZDg5MmM2YjRiMDBjNjIxNTY5YmVkZDVkYTIzN2IwMTc3MzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=','2017-03-23 09:06:51'),('qti70u1ubbc4wqyfd6udya1fvfx5l05p','Zjc0YmI2YTMzNWNlMDk4YWRkM2I4NzU4Yzg0NTRiZjhmMzBmZGZjNDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0MzUwZDg5MmM2YjRiMDBjNjIxNTY5YmVkZDVkYTIzN2IwMTc3MzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=','2017-03-24 15:25:33'),('ydjbs9irwfk6pfqicrxcvxcafq7tdrag','N2E3YjczNzE0N2I2YmJmMzRhOTk0ZGI0ZTkzY2M1ZDVjYjhkOTg4YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1NzY1MDk0ZGFhOTA2YTBmMzkwMDllOTkzNDdmOGU2OTljY2M3MTUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-23 09:09:35');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mathematics_question`
--

DROP TABLE IF EXISTS `mathematics_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mathematics_question` (
  `code` varchar(100) NOT NULL,
  `category` int(11) NOT NULL,
  `problem` longtext NOT NULL,
  `problempicture1` varchar(100) DEFAULT NULL,
  `problempicture2` varchar(100) DEFAULT NULL,
  `problempicture3` varchar(100) DEFAULT NULL,
  `problempicture4` varchar(100) DEFAULT NULL,
  `problempicture5` varchar(100) DEFAULT NULL,
  `problempicture6` varchar(100) DEFAULT NULL,
  `choicesa` longtext,
  `choicesb` longtext,
  `choicesc` longtext,
  `choicesd` longtext,
  `choicese` longtext,
  `choicesf` longtext,
  `choicepicturea` varchar(100) DEFAULT NULL,
  `choicepictureb` varchar(100) DEFAULT NULL,
  `choicepicturec` varchar(100) DEFAULT NULL,
  `choicepictured` varchar(100) DEFAULT NULL,
  `choicepicturee` varchar(100) DEFAULT NULL,
  `choicepicturef` varchar(100) DEFAULT NULL,
  `answer` varchar(200) NOT NULL,
  `solutionspicture1` varchar(100) DEFAULT NULL,
  `solutionspicture2` varchar(100) DEFAULT NULL,
  `solutionspicture3` varchar(100) DEFAULT NULL,
  `solutions` longtext NOT NULL,
  `linkneuron` double DEFAULT NULL,
  `linkability` double DEFAULT NULL,
  `linkpersonaility` double DEFAULT NULL,
  `errors` longtext,
  `alternativesolutions` longtext,
  `messagefailure` longtext,
  `messagesuccess` longtext,
  `sensitivity` double DEFAULT NULL,
  `gussingparameter` double DEFAULT NULL,
  `difficulty` double NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mathematics_question`
--

LOCK TABLES `mathematics_question` WRITE;
/*!40000 ALTER TABLE `mathematics_question` DISABLE KEYS */;
INSERT INTO `mathematics_question` VALUES ('1.1.1',1,'aaaaaa','','','','','','','','','','','','','','','','','','','A','','','','aaaa',NULL,NULL,NULL,'','','','',NULL,NULL,1),('2',1,'2','theall/image/Chrysanthemum.jpg','theall/image/zwe.png','','','','','','','','','','','','','','','','','B','','','','1',NULL,NULL,NULL,'','','','',NULL,NULL,1),('3.1.1',4,'Bunny rabbit has three dens A, B and C. It likes A better than B and\r\nC. If it\'s in B or C on any night, it will always take chance 0.9 to go to A\r\n and chance $0.1$ to go to the other den for the following night. Once it reaches\r\n A, it will stay there for two nights and the third night will be in B or C\r\n with equal chance 1/2. Let $X_n$ be the den Bunny stays for night $n$.\r\n What is the state space of the $\\{X_n\\}$?\r\n Is $\\{X_n\\}$ a $MC$?','','','','','','','The state space of $\\{X_n\\}$ is $\\{\\hbox{Den A, Den B, Den C}\\}$.\r\n$\\{X_n\\}$ is a $MC$.','The state space of $\\{X_n\\}$ is $\\{\\hbox{Den A, Den B, Den C}\\}$.\r\n$\\{X_n\\}$ is not a $MC$.','None of the above is correct.','','','','','','','','','','B','','','','The state space of $\\{X_n\\}$ is $\\{\\hbox{Den A, Den B, Den C}\\}$.\r\n$\\{X_n\\}$ is not a $MC$,\r\nbecause, for example,\r\n $$P(X_{n+1}=A|X_{n}=A, X_{n-1}=B)=1 \\not=0=P(X_{n+1}=A|X_n=A, X_{n-1}=A).$$\r\n$$\\qquad {\\textcolor[rgb]{1,0,0}{\\hbox{  (MC definition)}} }$$',NULL,302200,0,'','','Alas! Please check the definition of Markov chain.','Congratulations! You have mastered the definition of Markov chains.',1,0.333,1),('3.1.3',3,'Suppose $X_n, n= 0, 1, 2, ...$ is\r\na discrete time $MC$. Let\r\n$0 \\leq n_0< n_1< n_2<   ...$ be a subsequence of the nonnegative integers\r\nand $Y_k = X_{n_k}$. Is $\\{Y_k: k =0,1, 2,...,\\}$\r\na $MC$?','','','','','','','$\\{Y_k: k =0,1, 2,...,\\}$ is a $MC$.','$\\{Y_k: k =0,1, 2,...,\\}$ is not a $MC$.','None of the above is correct.','','','','','','','','','','A','','','','The definition of MC $\\{X_n\\}$, namely the past and future are\r\n independent given any fixed state of the present,   can be expressed as\r\n \\begin{eqnarray*}\r\n 	&& P(X_{n+1}\\in A_1, X_{n+2} \\in A_2, ..., X_{n-1} \\in B_{n-1},   ..., X_0\r\n 	\\in B_0 | X_n = i)\r\n 	\\\\\r\n 	&=&  P(X_{n+1}\\in A_1, X_{n+2} \\in A_2, ...,|X_n=i)\r\n   \\times\r\n 	P(X_{n-1} \\in B_{n-1},  ..., X_0\r\n 	\\in B_0 | X_n = i)   \\qquad  (1)\r\n 		\\\\\r\n 		&& \r\n 	\\qquad {\\textcolor[rgb]{1,0,0}{\\hbox{  (MC definition and Conditional independence)}} }   	  \r\n \\end{eqnarray*}\r\n for any time $n$,\r\n any state $i$ and $any$ subsets of the state space, $A_1, A_2, ....,B_0, B_1, B_2, ...$; see the remark.\r\n Then,\r\n \\begin{eqnarray*}\r\n 	&& P(Y_{k+1}\\in A_1, Y_{k+2} \\in A_2, ..., \\,\\,\\, Y_{k-1} \\in B_{k-1},  ..., Y_0\r\n 	\\in B_0 | Y_k=i  )\r\n 	\\\\\r\n 	&=&\r\n 	P(X_{n_{k+1}}\\in A_1, X_{n_{k+2}} \\in A_2, ...,\\,\\,\\, X_{n_{k-1}} \\in B_{k-1},   ..., X_{n_0}\r\n 	\\in B_0 | X_{n_k}=i  )\r\n 	\\\\\r\n 	&& \\qquad \\hbox{(by definition of $Y_n$)}\r\n 	\\\\\r\n 	&=&\r\n 	P(X_{n_{k+1}}\\in A_1, X_{n_{k+2}} \\in A_2, ..., |X_{n_k}=i)\r\n  \\times P(X_{n_{k-1}} \\in B_{k-1},   ..., X_{n_0}\r\n 	\\in B_0 | X_{n_k}=i  )\r\n 		\\\\\r\n 		&& \\qquad \\hbox{(by applying (1))}\r\n 	\\\\\r\n 	&=&\r\n 	P(Y_{k+1}\\in A_1, Y_{k+2} \\in A_2, ...,|Y_k=i)\r\n 	P(Y_{k-1} \\in B_{n-1}, Y_{k-2} \\in B_{n-2}, ..., Y_0\r\n 	\\in B_0 | Y_k = i).\r\n 		\\\\\r\n 		&& \\qquad \\hbox{(by definition of $Y_n$)}\r\n \\end{eqnarray*}\r\n \r\n Remark. The mathematical expression that we often use as definition of $MC$ is\r\n $$P(X_{n+1}=j_1|X_n=i, X_{n-1}=i_{n-1}, ..., X_0=i_0)=P(X_{n+1}=j_1|X_n=i),\\qquad(2)$$\r\n for all time $n$, states $j_1,i, i_0,i_1,...,$\r\n which is a relatively simple version, but is actually equivalent to\r\n the seemingly more\r\n general version in (1). The following is to show the equivalency.\r\n Observe that (2) implies\r\n \\begin{eqnarray*}\r\n 	&&\r\n 	P(X_{n+k}=j_k, ..., X_{n+1}=j_1 | X_n=i,  X_{n-1}=i_{n-1}, ..., X_0=i_0)\r\n 	\\\\\r\n 	&=& P_{i, j_1} P_{j_1, j_2} \\cdots P_{j_{k-1}, j_k}\r\n 	\\\\\r\n 	&=&\r\n 	P(X_{n+k}=j_k, ..., X_{n+1}=j_1 | X_n=i),\r\n \\end{eqnarray*}\r\n which, by $DIY 3.1.2$, is equivalent to\r\n \\begin{eqnarray*}\r\n 	&& P(X_{n+k}=j_k, ..., X_{n+1}=j_1,\r\n 	\\,\\,   X_{n-1}=i_{n-1}, ..., X_0=i_0 |X_n=i)\r\n 	\\\\\r\n 	&=&\r\n 	P(\\{X_{n+k}=j_k, ..., X_{n+1}=j_1\\} \\cap \\{   X_{n-1}=i_{n-1}, ..., X_0=i_0\\} |X_n=i)\r\n 	\\\\\r\n 	&=&\r\n 	P(X_{n+k}=j_k, ..., X_{n+1}=j_1 | X_n=i)\r\n 	P(X_{n-1}=i_{n-1}, ..., X_0=i_0 |X_n=i).\r\n \\end{eqnarray*}\r\n Then,\r\n \\begin{eqnarray*}\r\n 	&&\r\n 	P(X_{n+k}\\in A_k, ..., X_{n+1}\\in A_1,\r\n 	\\,\\,   X_{n-1}\\in B_{n-1}, ..., X_0\\in B_0 |X_n=i)\r\n 	\\\\\r\n 	&=&\r\n 	\\sum_{j_k \\in A_k} \\cdots \\sum_{j_1 \\in A_1} \\sum_{i_{n-1}\\in B_{n-1}} \\cdots\r\n 	\\sum_{i_0 \\in B_0}\r\n 	P(X_{n+k}=j_k, ..., X_{n+1}=j_1, \\,\\,\\,   X_{n-1}=i_{n-1}, ..., X_0=i_0|X_n=i)\r\n 	\\\\\r\n 	&=&\r\n 	\\sum_{j_k \\in A_k} \\cdots \\sum_{j_1 \\in A_1} \\sum_{i_{n-1}\\in B_{n-1}} \\cdots\r\n 	\\sum_{i_0 \\in B_0}\r\n 	\\\\\r\n 	&& \\qquad\r\n 	P(X_{n+k}=j_k, ..., X_{n+1}=j_1 | X_n=i)\r\n 	P(X_{n-1}=i_{n-1}, ..., X_0=i_0 |X_n=i)\r\n 	\\\\\r\n 	&=&\r\n 	P(X_{n+k}\\in A_k, ..., X_{n+1}\\in A_1 |X_n=i)\r\n 	P(  X_{n-1}=B_{n-1}, ..., X_0=B_0 |X_n=i)\r\n 	.\r\n \\end{eqnarray*}\r\n This equality fits precisely the statement of the conditional independence of\r\n the future and the past given a fixed state of the present.',NULL,312000,0,'','','Alas! Please check the definition of Markov chain and conditional independence.','Congratulations! You have mastered the definition of Markov chains\r\nand conditional independence.',1,0.333,3),('3.2.8',1,'(Mickey in Maze} continued from Example 3.2). \r\n(i) Compute the probability Mickey goes to cell 2 before it reaches cell 6, beginning\r\nfrom cell 1.\r\n(ii). Compute the mean number of steps to reach cells 2 or 6, beginning\r\nfrom cell 4.\r\n(iii). Compute the mean number of times Mickey visits cell 2 before reaching cell\r\n6, starting from cell 4.','','','','','','','','','','','','','','','','','','','A','','','','(i) Set\r\n$$p_i = P(\\hbox{Mickey reaches cell 2 before reaching 6 } | \\hbox{ starting from i}).\r\n$$\r\nThen, for example,\r\n\\begin{eqnarray*}\r\np_0 &=& P_{01}p_1 + P_{03} p_3 = 1/2 p_1 + 1/2 p_3  \\\\\r\np_1 &=& 1/3p_0  + 1/3 p_4 + 1/3 p_2 = 1/3(p_0 +p_4) + 1/3 \\\\\r\np_2 &=& 1  \\\\\r\np_3 &=& 1/3 p_0 + 1/3 p_4 + 1/3p_6 = 1/3(p_0 +p_4) \\\\\r\np_4 &=& 1/4 p_1 + 1/4 p_3 + 1/4p_5 + 1/3p_7 \\\\\r\np_5 &=& 1/3 p_2 + 1/3 p_4 + 1/3p_8 = 1/3(p_0 +p_8) +1/3 \\\\\r\np_6 &=& 0 \\\\\r\np_7 &=& 1/3 p_4 + 1/3 p_6 + 1/3p_8 = 1/3(p_4 +p_8) \\\\\r\np_8 &=& 1/2 p_5 + 1/2 p_7\r\n\\end{eqnarray*}\r\nThe above linear equations can be solved for the answer\r\n$$ p_0=p_8=1/2, \\quad p_1=p_5 = 2/3, \\quad p_3=p_7=1/3 \\quad\r\np_4=1/2.$$\r\n\r\nIn fact, a short-cut to solving the eight equations is, by the\r\nsymmetry of the maze, to realize that $p_0=p_8$, $p_1=p_5$, $p_3=p_7$.\r\nTogether with the fact that $p_2=1$ and $p_6=0$, the number of\r\nequations can be immediately reduced to four about $p_0, p_1, p_3$\r\nand $p_4$.\r\n\r\n(ii). Set $w_i$ the mean number of steps to reach 2 or 6, starting from\r\ncell $i$. Then, obviously, $w_2=w_6=0$. By symmetry,\r\n$w_0=w_8$, $w_1=w_3=w_5=w_7$.\r\nMoreover,\r\n\\begin{eqnarray*}\r\nw_0 &=& 1 + 1/2(w_1 + w_3) = 1 + w_1 \\\\\r\nw_1 &=& 1+ 1/3(w_0+w_2+w_4)= 1 + 1/3(w_0 + w_4) \\\\\r\nw_4 &=& 1+ 1/4(w_1+w_3+w_5+w_7) = 1+w_1\r\n\\end{eqnarray*}\r\nSolving the three equations,\r\n$$w_0=w_4=w_8=6\\quad \\hbox{and} \\quad w_1=w_3=w_5=w_7=5.$$\r\n\r\n(iii).\r\nSet $w_i$ the mean number of visits of cell 2 before reaching cell 6, starting\r\nfrom cell $i$ (including the starting state).\r\n  Then, obviously, $w_6=0$. By symmetry,\r\n$w_0=w_8$, $w_1=w_5$ and $w_3= w_7$.\r\nMoreover,\r\n\\begin{eqnarray*}\r\nw_0 &=&  1/2(w_1 + w_3)   \\\\\r\nw_1 &=&  1/3(w_0+w_2+w_4)  \\\\\r\nw_2 &=& 1 + 1/2(w_1 + w_5) = 1+ w_1 \\\\\r\nw_3 &=& 1/3(w_0 + w_4 + w_6) = 1/3(w_0 +w_4) \\\\\r\nw_4 &=&  1/4(w_1+w_3+w_5+w_7) = 1/2(w_1+w_3)\r\n\\end{eqnarray*}\r\nSolving the three equations,\r\n$$w_0=w_4=w_8=3/2\\quad w_1=w_5= 2 \\quad w_2= 3 \\quad \\hbox{and} \\quad  w_3=w_7=1.$$\r\nStarting from cell 4,  Mickey\'s  mean number of visits of cell 2 before reaching cell 6\r\nis $w_4=3/2$.',NULL,NULL,NULL,'','','Alas! Please return to the graph and review related knowledge.','Congratulations! You have mastered the First Step Analysis method.',1,NULL,1),('3.2.9',1,'( A Fecundity Model) \r\nThe life span of  women is divided into\r\nfive-year periods. In each period, a woman assumes\r\none of the following six states:\r\n$E_0$: prepuberty; $E_1$: single; $E_2$: married;\r\n$E_3$: divorced; $E_4$: widowed; $E_5$: out-of-population.\r\nAssume the transit process is a {MC}  with transition matrix\r\n\\begin{eqnarray*}\r\n && \\quad \\quad \\,\\,\\,\\, E_0 \\quad E_1 \\quad E_2\\quad E_3\\quad E_4\\quad E_5\\\\\r\n {\\bf P}&=& \\matrix{E_0 \\cr E_1 \\cr E_2 \\cr E_3 \\cr E_4\\cr E_5 }\r\n  \\pmatrix{\r\n \\,\\,\\,\\,\\, &  0.9  &     &       &    & 0.1        \\cr\r\n &  0.5   &  0.4  &      &    &   0.1      \\cr\r\n  &       &  0.6   & 0.2 & 0.1  &   0.1    \\cr\r\n &    & 0.4   &  0.5  &     &     0.1     \\cr\r\n &     & 0.4  &      &  0.5   &  0.1     \\cr\r\n  &     &     &      &     &    1\r\n}\r\n\\end{eqnarray*}\r\nWhat is the mean marriage periods of a woman in her life time?','','','','','','','','','','','','','','','','','','','A','','','','Set $w_i$ the mean periods in marriage in the remaining life time,\r\nstarting from state $E_i$ for the current period (including\r\nthe current period.)\r\nThen,\r\n\\begin{eqnarray*}\r\nw_0 &=& 0.9 w_1 +0.1 w_5 \\\\\r\nw_1 &=& 0.5w_1 + 0.4 w_2 + 0.1w_5 \\\\\r\nw_2 &=& 0.6w_2 + 0.2 w_3 + 0.1 w_4 + 0.1w_5 + 1 \\\\\r\nw_3 &=& 0.4 w_2  + 0.5 w_3 + 0.1 w_5\\\\\r\nw_4 &=& 0.4 w_2  + 0.5 w_4 + 0.1 w_5\\\\\r\nw_5 &=& 0\r\n\\end{eqnarray*}\r\nSolving the equations, we have\r\n$$w_0 = 4.5, \\quad w_1=5 \\quad w_2=5.25 \\quad \\hbox{and} \\quad w_3=w_4=5.$$\r\nThe mean marriage periods of a woman in her life time is $w_0 = 4.5$.\r\nIn other words, the mean marriage time of a woman in her life time\r\nis $4.5\\times 5 =22.5$ years.',NULL,NULL,NULL,'','','Alas! Please return to the graph and review related knowledge.','Congratulations! You have mastered the First Step Analysis method.',1,NULL,2),('3.3.12',1,'( The family tree of Confucius ) \r\n The following diagram shows the first few generations of the family tree\r\n of Confucius.','theall/image/Expl3.3.12-1.png','','','','','','','','','','','','','','','','','','A','','','','Note that $\\xi_i^{(n)} $ denotes the number of sons fathered by\r\nthe $i$-th member of the $n$-generation of Kong Zi(Confucius),\r\nand $X_n$ is the number of (male) descendants of Kong Zi at\r\nthe $n$-th generation.\r\n\r\nAllegedly, the 80-th generation of Kong Zi  is around\r\n1,300,000. If the process is indeed a branching process. Then\r\na reasonable estimate of $\\mu$, the mean number of sons produced by\r\nany male descendent of Kong Zi, can be obtained by\r\n$$ \\hat \\mu^{80} = 1,300,000,$$\r\nbased on the formula that $E(X_n) = \\mu^n$, to be shown in\r\nthe following Proposition 3.1.\r\nIt turns out $\\hat \\mu = 1.1924$, meaning that\r\nthe average number of sons produced by any  Kong father  is about\r\n1.2. Taking one step further, if the process is indeed\r\na branching process,  the data is trustworthy and\r\nthe male Kongs can be regarded as typical of\r\nChinese males, the one might claim, on average, each Chinese\r\nmale produces about 1.2 sons.\r\nIt is quite clear that the process cannot be really or even\r\napproximately a branching process---$\\xi^{(n)}_i$ cannot be\r\niid, not over good/bad historical periods, and at least\r\nnot over periods with/without birth control policies.',NULL,NULL,NULL,'','','Alas! Please return to the graph and review related knowledge.','Congratulations! You have mastered the concept and fundamental characteristics of Branching Process.',NULL,NULL,2),('3.4.1',3,'For coin tossing, is there a similar phenomenon for pattern of length 2 to\r\nthat for pattern of length 3 shown Example 3.7?','','','','','','','Yes.','No.','I am not sure.','','','','','','','','','','B','','','','No. Only four patterns of length 2: HH, HT, TH and TT.\r\nTH occurs before HH with chance 3/4, before HT and TT with 1/2 each.\r\n(Also by symmetry),  HT occurs before TT with chance 3/4, before\r\nTH and HH with 1/2 each. There is no loop of three or four patterns\r\nin which one occurs before another with larger\r\nthan 1/2 chance, unlike patterns of length 3.',NULL,322200,0,'','','Oops, try again. Or you may review Example 3.7.','Great! You know the application of first step analysis.',1,0.333,3),('3.4.3',4,'Based on the fact that the mean number of tosses till\r\n first HH is 6, can you calculate the mean number of tosses till the first\r\n HHH occur (by using one equation)?\r\naaaaa<br>bbbbb\r\naaaaa<br>bbbbb\r\naaaaa<br>bbbbb','','','','','','','14.','12.','10.','9.','None of the above is correct.','','','','','','','','A','','','','(This is a little tricky but still based only on the idea of first step analysis.)\r\nLet $w$ be the mean number till first  HHH  occur. Suppose  HH  occurs the first time\r\n at $n$-th toss. With 1/2 chance the $n+1$-th toss is H and it takes one addtional\r\n toss to have the first\r\n time HHH at $n+1$-th toss (remember, with 1/2 chance). The other 1/2 chance\r\n is for $n+1$-th toss being T. In this case, counting from $n+2$-th toss, it will take averagely\r\n w additional tosses to reach HHH. Hence,\r\n $$ w= 6 + 1/2 \\times 1 + 1/2 \\times (1+ w).$$\r\n Solve the equation, we have $w=14$.',NULL,311300,0,'','','Oops, try again. Here is a hint: apply first step analysis.','Perfect! You have mastered the concept of first step analysis!',1,0.2,1),('3.4.5',1,'A white rat is put into compartment 4 of the maze shown below.\r\nHe moves through the compartments at random; i.e., if there are k ways to\r\nleave a compartment, he chooses each of these with probability 1/k. What\r\nis the probability that the rat finds the food in compartment 3 before feeling\r\nthe electric shock in compartment 7?','','','','','','','\\frac{7}{12}','\\frac{1}{4}','\\frac{5}{12}','\\frac{1}{3}','\\frac{1}{6}','','','','','','','','C','','','','The question ask about some probability, probability $p_i$ have to be defined for each state.\\\\\r\nNote: This probability is different from transition probability $P_{ij}$.Here $P_{ij}$ is $\\frac{1}{k}$.\\\\\r\nSince the mouse have to reach 3 before 7, set\r\n\\begin{equation*}\r\n	p_3=1 \\qquad p_7=0\r\n\\end{equation*}\r\nThen, consider the probability of other states, now you need the transition probabilities\r\n\\begin{align*}\r\n	p_1&=\\frac{1}{2}p_2+\\frac{1}{2}p_4\\\\\r\n	p_2&=\\frac{1}{3}p_1+\\frac{1}{3}p_3+\\frac{1}{3}p_5\\\\\r\n	p_4&=\\frac{1}{3}p_1+\\frac{1}{3}p_5+\\frac{1}{3}p_7\\\\\r\n	p_5&=\\frac{1}{3}p_2+\\frac{1}{3}p_4+\\frac{1}{3}p_6\\\\\r\n	p_6&=\\frac{1}{2}p_3+\\frac{1}{2}p_5\\\\\r\n\\end{align*}\r\nThen do Gaussian elimination\r\n\\[\\left(\\begin{array}{ccccccc|c}\r\n1&-1/2&0&-1/2&0&0&0&0\\\\\r\n-1/3&1&-1/3&0&-1/3&0&0&0\\\\\r\n0&0&1&0&0&0&0&1\\\\\r\n-1/3&0&0&1&-1/3&0&-1/3&0\\\\\r\n0&-1/3&0&-1/3&1&-1/3&0&0\\\\\r\n0&0&-1/2&0&-1/2&1&0&0\\\\\r\n0&0&0&0&0&0&1&0\r\n\\end{array}\\right)\\]\r\n\r\nAfter tedious calculation, we have\r\n\\begin{align*}\r\np_1&=7/12\\\\\r\np_2&=3/4\\\\\r\np_4&=5/12\\\\\r\np_5&=2/3\\\\\r\np_6&=5/6\\\\\r\n\\end{align*}\r\n\r\nThe answer is 5/12.',NULL,0,NULL,'','','','',NULL,NULL,1),('Prob3.4.5',1,'A white rat is put into compartment 4 of the maze shown below.\r\nHe moves through the compartments at random; i.e., if there are k ways to\r\nleave a compartment, he chooses each of these with probability 1/k. What\r\nis the probability that the rat finds the food in compartment 3 before feeling\r\nthe electric shock in compartment 7?','','','','','','','\\frac{7}{12}','\\frac{1}{4}','\\frac{5}{12}','\\frac{1}{3}','\\frac{1}{6}','','','','','','','','C','','','','The question ask about some probability, probability $p_i$ have to be defined for each state.\\\\\r\nNote: This probability is different from transition probability $P_{ij}$.Here $P_{ij}$ is $\\frac{1}{k}$.\\\\\r\nSince the mouse have to reach 3 before 7, set\r\n\\begin{equation*}\r\n	p_3=1 \\qquad p_7=0\r\n\\end{equation*}\r\nThen, consider the probability of other states, now you need the transition probabilities\r\n\\begin{align*}\r\n	p_1&=\\frac{1}{2}p_2+\\frac{1}{2}p_4\\\\\r\n	p_2&=\\frac{1}{3}p_1+\\frac{1}{3}p_3+\\frac{1}{3}p_5\\\\\r\n	p_4&=\\frac{1}{3}p_1+\\frac{1}{3}p_5+\\frac{1}{3}p_7\\\\\r\n	p_5&=\\frac{1}{3}p_2+\\frac{1}{3}p_4+\\frac{1}{3}p_6\\\\\r\n	p_6&=\\frac{1}{2}p_3+\\frac{1}{2}p_5\\\\\r\n\\end{align*}\r\nThen do Gaussian elimination\r\n\\[\\left(\\begin{array}{ccccccc|c}\r\n1&-1/2&0&-1/2&0&0&0&0\\\\\r\n-1/3&1&-1/3&0&-1/3&0&0&0\\\\\r\n0&0&1&0&0&0&0&1\\\\\r\n-1/3&0&0&1&-1/3&0&-1/3&0\\\\\r\n0&-1/3&0&-1/3&1&-1/3&0&0\\\\\r\n0&0&-1/2&0&-1/2&1&0&0\\\\\r\n0&0&0&0&0&0&1&0\r\n\\end{array}\\right)\\]\r\n\r\nAfter tedious calculation, we have\r\n\\begin{align*}\r\np_1&=7/12\\\\\r\np_2&=3/4\\\\\r\np_4&=5/12\\\\\r\np_5&=2/3\\\\\r\np_6&=5/6\\\\\r\n\\end{align*}\r\n\r\nThe answer is 5/12.',NULL,0,NULL,'','','','',NULL,NULL,2);
/*!40000 ALTER TABLE `mathematics_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mathematics_question_twinproblems`
--

DROP TABLE IF EXISTS `mathematics_question_twinproblems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mathematics_question_twinproblems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_question_id` varchar(100) NOT NULL,
  `to_question_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mathematics_question_twinproblems_from_question_id_e90c9b3c_uniq` (`from_question_id`,`to_question_id`),
  KEY `mathematics_to_question_id_ecb9db4e_fk_mathematics_question_code` (`to_question_id`),
  CONSTRAINT `mathematics_to_question_id_ecb9db4e_fk_mathematics_question_code` FOREIGN KEY (`to_question_id`) REFERENCES `mathematics_question` (`code`),
  CONSTRAINT `mathemati_from_question_id_5d8cc6fd_fk_mathematics_question_code` FOREIGN KEY (`from_question_id`) REFERENCES `mathematics_question` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mathematics_question_twinproblems`
--

LOCK TABLES `mathematics_question_twinproblems` WRITE;
/*!40000 ALTER TABLE `mathematics_question_twinproblems` DISABLE KEYS */;
INSERT INTO `mathematics_question_twinproblems` VALUES (4,'3.1.1','3.1.3'),(3,'3.1.3','3.1.1');
/*!40000 ALTER TABLE `mathematics_question_twinproblems` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-15 20:55:38
