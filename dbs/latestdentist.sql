/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.1.28-MariaDB : Database - dentist
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dentist` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dentist`;

/*Table structure for table `den_customers` */

DROP TABLE IF EXISTS `den_customers`;

CREATE TABLE `den_customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dob` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `description` text COLLATE utf8_unicode_ci,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `is_deleted` int(10) unsigned DEFAULT '0',
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `den_customers` */

insert  into `den_customers`(`id`,`name`,`dob`,`description`,`phone`,`address`,`is_deleted`,`image`,`created_at`,`updated_at`) values (1,'Maza (Abou maher zeineddin)','0000-00-00 00:00:00','','81258613','',0,'','2016-11-13 17:43:56','2016-11-13 17:46:06'),(2,'KHADIJA EZZEDIN','2016-11-14 22:59:38','','03475287','',0,'','2016-11-14 20:59:38','2016-11-14 20:59:38'),(3,'zinach maher zeineddin','2016-11-22 13:37:44','normal health','03942375','',0,'','2016-11-19 12:04:57','2016-11-22 11:37:44'),(4,'mariam nasreddin','2016-11-19 14:59:46','allergie a la penicillinne','71640634','',0,'','2016-11-19 12:59:46','2016-11-19 12:59:46'),(5,'Ali mhamad abed ali khalil','0000-00-00 00:00:00','normal health','79123396','',0,'','2016-11-22 11:41:41','2016-11-22 16:00:25'),(6,'mostafa hsein salmen','0000-00-00 00:00:00','normal health','76909398','',0,'','2016-11-23 15:41:18','2016-11-23 15:41:18'),(7,'ali hsein salmen','0000-00-00 00:00:00','normal health','76067144','',0,'','2016-11-23 16:29:34','2016-11-23 16:29:34'),(8,'Ali ahmad sabra','0000-00-00 00:00:00','normal health','70828557','chiah maroon mesek',0,'','2016-11-26 08:11:32','2016-11-26 08:11:32'),(9,'nadin mallah','0000-00-00 00:00:00','allergie cause inconnue','70832421','',0,'','2016-11-26 11:04:58','2016-11-26 11:04:58'),(10,'hsein youssef chebli','0000-00-00 00:00:00','sante normal','71316398','',0,'','2017-01-14 18:35:07','2017-01-14 18:35:07'),(11,'Farah Kheireddin','1994-12-21 00:00:00','','70632797','',0,'','2017-05-24 18:46:25','2017-05-25 07:49:15'),(12,'diana shamas','1989-07-01 00:00:00','sante normal','76477048','shwafet',0,'','2017-05-25 16:07:47','2017-05-25 16:07:47'),(13,'hsein kanj','2000-12-22 00:00:00','nargile 1 fois/j','71556290','shiah',0,'','2017-06-08 19:50:59','2017-06-08 19:50:59'),(14,'fatima ounaysi','1983-10-24 00:00:00','dolormin pour migrain en cas de douleur','70959584','kafaat',0,'','2017-06-28 14:22:28','2017-06-28 14:22:28'),(15,'Lara Shamas','1993-04-05 00:00:00','sante general normale','79130315','Shwayfet',0,'','2017-07-19 16:03:55','2017-07-19 16:03:55'),(16,'Ali mhamad Haidar','2009-02-17 00:00:00','sante normal','03998650','',0,'','2017-08-09 18:09:35','2017-08-09 18:09:35'),(17,'Bahaa Sayegh','1986-08-18 00:00:00','sante normal','71682998','Msharafye',0,'','2017-08-10 10:51:21','2017-08-10 10:51:21'),(18,'Jawad mhamad Haidar','2004-12-13 00:00:00','asthmatique','03998650','',0,'','2017-08-14 18:03:35','2017-08-14 18:03:35'),(19,'Hsein Rammal','1999-11-15 00:00:00','sante normale','76972638','',0,'','2017-08-15 11:10:26','2017-08-15 11:10:26'),(20,'Batoul Awad','2017-09-30 13:31:52','sante normale','76871160','borj l barajne',0,'','2017-09-30 10:31:52','2017-09-30 10:31:52'),(21,'ahmad najib fnesh','1996-10-07 00:00:00','sante normale','76973843','shiah',0,'','2017-10-02 15:21:32','2017-10-02 15:21:32'),(22,'Ali Kamel Shalhoub','2006-06-22 00:00:00','sante normale','70093423','shwayfet',0,'','2017-10-03 10:36:48','2017-10-03 10:36:48'),(23,'Jana Jamil Kanj','1996-11-04 00:00:00','sante normale','70824124','Shyah',0,'','2017-10-13 16:19:26','2017-10-13 16:19:26'),(24,'Liza mrad','1999-11-08 00:00:00','sante normale','78935589','Shwayfet',0,'','2017-10-21 08:40:19','2017-10-21 08:40:19'),(25,'Dina Hasssan Ballout','2000-05-17 00:00:00','sante normmale','03034275','jneh',0,'','2017-10-21 16:46:32','2017-10-21 16:46:32'),(26,'Fadwa Mahmoud Badran','1971-02-20 00:00:00','sante normal','70694701','Ghobeireh',0,'','2017-11-11 09:20:47','2017-11-11 09:20:47'),(27,'Mhamad hsein Chit','1995-01-04 00:00:00','sante normale','78834332','haret hreik',0,'','2017-11-13 16:58:45','2017-11-13 16:58:45'),(28,'Elvira Hassan Karout','1987-05-30 00:00:00','sante normale','03662073','haret hreik',0,'','2018-01-06 15:06:37','2018-01-06 15:06:37'),(29,'Abed Ghazi Ayash','1990-10-01 00:00:00','sante normal','03691647','tarik el matar',0,'','2018-01-13 11:23:10','2018-01-13 11:23:10'),(30,'mhamad ahmad harkous','1993-08-16 00:00:00','sante normal','76847127','hadath',0,'','2018-01-13 13:43:06','2018-01-13 13:43:06'),(31,'sami chkeir','1991-04-26 00:00:00','sante normale respiration buccale','71721935','jbeil',0,'','2018-03-06 19:51:00','2018-03-06 19:51:00'),(32,'mhamad hassan fakhreddin','1990-10-03 00:00:00','sante normale','03758895','haret hreik',0,'','2018-03-07 18:15:52','2018-03-07 18:15:52'),(33,'mhamad hsein fakih','1992-09-09 01:00:00','sante normale','03007920','Rwes',0,'','2018-03-29 18:07:45','2018-03-29 18:07:45'),(34,'Zeinab hassan Hmede','1992-07-05 01:00:00','souffle cardiaque depuis la naissance mais il est fermé (la patiente est normale)','03955851','berj el brajne',0,'','2018-03-31 17:57:43','2018-03-31 17:57:43'),(35,'farah dib alawye','1995-09-06 01:00:00','sante normale','03551674','al gamous',0,'','2018-04-05 16:53:05','2018-04-05 16:53:05'),(36,'wiam adib kheireddin','1990-07-26 01:00:00','appendicectomie','79175857','sfeir',0,'','2018-04-19 10:26:46','2018-04-19 10:26:46'),(37,'Hoda Cheikh Ali','1994-04-16 01:00:00','Sante normale','71168236','Ansar',0,'','2018-04-23 21:01:10','2018-04-23 21:01:10'),(38,'Sama Fadi khalife','2006-03-21 00:00:00','sante normale','70841558','sfeir',0,'','2018-05-12 10:25:59','2018-05-12 10:25:59'),(39,'Mairie Abdallah(family house)','1986-01-28 00:00:00','sante normale','71342851','bir el abed',0,'','2018-05-26 10:11:14','2018-05-26 10:11:14'),(40,'Zeinab Yasser Awada','1996-11-22 00:00:00','Sante normale','70707998','Aitaroun',0,'','2018-05-30 18:12:16','2018-05-30 18:12:16'),(41,'Issam hsein Rhayil','1976-03-13 00:00:00','','71141757','Shayah',0,'','2018-05-30 23:02:28','2018-05-30 23:02:28'),(42,'Walid mhamad abdellatif','0000-00-00 00:00:00','sante normal','03957088','Haret hreik',0,'','2018-07-04 12:26:21','2018-07-04 12:26:21');

/*Table structure for table `den_schedule` */

DROP TABLE IF EXISTS `den_schedule`;

CREATE TABLE `den_schedule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `schedule_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `den_schedule_customer_id_foreign` (`customer_id`),
  CONSTRAINT `den_schedule_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `den_customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `den_schedule` */

/*Table structure for table `den_visit` */

DROP TABLE IF EXISTS `den_visit`;

CREATE TABLE `den_visit` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `total` double NOT NULL,
  `date_visit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `note` text COLLATE utf8_unicode_ci,
  `is_deleted` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `den_visit_customer_id_foreign` (`customer_id`),
  KEY `created_at` (`created_at`),
  CONSTRAINT `den_visit_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `den_customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `den_visit` */

insert  into `den_visit`(`id`,`customer_id`,`code`,`status`,`total`,`date_visit`,`note`,`is_deleted`,`created_at`,`updated_at`) values (71,1,'1',0,450000,'2016-12-31 17:31:33','finishing of restoration',0,'2016-11-19 09:19:29','2016-12-31 15:31:33'),(72,3,'4',0,30000,'2016-11-19 14:00:00','extraction de la 28',0,'2016-11-19 12:08:17','2016-11-19 12:08:17'),(73,4,'4',0,0,'2016-11-19 15:05:00','extraction de la 14 racine',0,'2016-11-19 13:01:35','2016-11-19 13:01:35'),(74,1,'2',0,0,'2016-11-22 11:35:00','taille de la 17',0,'2016-11-22 11:38:52','2016-11-22 11:38:52'),(75,5,'5',0,0,'2016-11-22 10:00:00','restauration cl 4 de la 11',0,'2016-11-22 11:42:45','2016-11-22 11:42:45'),(76,6,'6',0,0,'2016-11-23 17:00:00','restauration composite de toute la dent 11 12',0,'2016-11-23 15:42:43','2016-11-23 15:42:43'),(77,7,'7',0,0,'2016-11-23 16:29:00','restauration cl5 sur la 14',0,'2016-11-23 16:30:28','2016-11-23 16:30:28'),(78,8,'8',0,150000,'2016-11-26 10:35:00','restauration comp cl 4 sur la 11 et 21',0,'2016-11-26 10:36:43','2016-11-26 10:36:43'),(79,9,'9',0,50000,'2016-11-26 13:05:00','restauration total de la 15',0,'2016-11-26 11:06:20','2016-11-26 11:06:20'),(80,1,'2',0,125000,'2016-12-31 17:31:10','impression for ccm on 17',0,'2016-12-10 10:02:06','2016-12-31 15:31:10'),(81,10,'10',0,0,'2017-01-14 18:35:00','detartrage+rest comp occ 36',0,'2017-01-14 18:40:20','2017-01-14 18:40:20'),(82,11,'11',0,75000,'2017-03-30 10:45:00','composite 23 cl3 M\n                  24 MOD\n                  25 OM',0,'2017-05-25 07:52:41','2017-05-25 07:52:41'),(83,12,'12',0,20000,'2017-05-25 19:05:00','detartrage',0,'2017-05-25 16:16:01','2017-05-25 16:16:01'),(84,13,'13',0,40000,'2017-06-08 22:50:00','detartrage',0,'2017-06-08 20:01:34','2017-06-08 20:01:34'),(85,11,'11',0,30000,'2017-06-12 22:00:00','cl 3 mesial 13',0,'2017-06-12 19:31:02','2017-06-12 19:31:02'),(86,14,'14',0,20000,'2017-06-28 16:20:00','provisoir sur 45 46 47',0,'2017-06-28 14:26:22','2017-06-28 14:26:22'),(87,15,'16',0,20000,'2017-07-19 18:00:00','detartrage',0,'2017-07-19 16:09:51','2017-07-19 16:09:51'),(88,16,'19',0,40000,'2017-08-09 21:05:00','detartrage',0,'2017-08-09 18:10:36','2017-08-09 18:10:36'),(89,17,'18',0,150000,'2017-08-10 11:50:00','taille 21 12 13 ac provisoir',0,'2017-08-10 11:30:15','2017-08-10 11:30:15'),(90,18,'19',0,30000,'2017-08-14 12:00:00','detartrage',0,'2017-08-14 18:04:31','2017-08-14 18:04:31'),(91,19,'20',0,100000,'2017-08-15 13:00:00','cl 4 distal 21 \ncl 3 mesial 22',0,'2017-08-15 11:11:58','2017-08-15 11:11:58'),(92,20,'23',0,50000,'2017-09-30 13:38:32','detartrage\n47 MOD sans obturation(pas payé)',0,'2017-09-30 10:35:58','2017-09-30 10:38:32'),(93,7,'6',0,0,'2017-10-02 16:05:00','detartrage',0,'2017-10-02 15:20:09','2017-10-02 15:20:09'),(94,21,'20',0,20000,'2017-10-02 17:20:00','detartrage',0,'2017-10-02 15:22:09','2017-10-02 15:22:09'),(95,22,'20',0,70000,'2017-10-03 10:30:00','comp OM 46',0,'2017-10-03 10:49:44','2017-10-03 10:49:44'),(96,21,'22',0,150000,'2017-10-10 16:30:00','detartrage',0,'2017-10-10 14:34:50','2017-10-10 14:34:50'),(97,23,'22',0,40000,'2017-10-13 19:15:00','detartrage',0,'2017-10-13 16:20:08','2017-10-13 16:20:08'),(98,24,'23',0,30000,'2017-10-21 10:25:00','detartrage+25 cl5',0,'2017-10-21 08:42:11','2017-10-21 08:42:11'),(99,25,'25',0,200000,'2017-10-21 19:45:00','detartrage+blanchiment gouttiere+cl 4 11 et cl 4 21',0,'2017-10-21 17:01:56','2017-10-21 17:01:56'),(100,26,'23',0,100000,'2017-11-11 10:00:00','detartrage+extraction de la 38',0,'2017-11-11 09:26:09','2017-11-11 09:26:09'),(101,12,'12',0,50000,'2017-11-11 16:00:00','detartrage+extraction de la 28',0,'2017-11-11 15:23:59','2017-11-11 15:23:59'),(102,27,'24',0,300000,'2017-11-20 21:12:46','couronne zircone sur 46',0,'2017-11-13 16:59:51','2017-11-20 19:12:46'),(103,26,'27',0,50000,'2017-11-22 12:20:00','comp OD sur 26',0,'2017-11-22 21:23:06','2017-11-22 21:23:06'),(104,26,'24',0,50000,'2017-11-25 10:00:00','comp sur 27 om',0,'2017-11-25 11:01:37','2017-11-25 11:01:37'),(105,26,'26',0,100000,'2017-11-30 11:00:00','LT 46\n          ML 17 cm',0,'2017-11-30 10:43:30','2017-11-30 10:43:30'),(106,26,'19',0,0,'2017-12-02 10:00:00','obturation canalaire 46',0,'2017-12-02 09:44:39','2017-12-02 09:44:39'),(107,26,'23',0,100000,'2017-12-07 10:00:00','enlever la couronne+prov sur 35',0,'2017-12-07 17:26:16','2017-12-07 17:26:16'),(108,26,'21',0,100000,'2017-12-23 10:00:00','endo 37',0,'2017-12-23 11:38:13','2017-12-23 11:38:13'),(109,26,'23',0,75000,'2017-12-27 10:00:00','taille 37+bridge prov 37(36)35',0,'2017-12-27 10:54:03','2017-12-27 10:54:03'),(110,26,'1',0,60000,'2017-12-30 10:00:00','endo 34',0,'2018-01-03 15:35:57','2018-01-03 15:35:57'),(111,28,'28',0,0,'2018-01-06 17:00:00','empreinte pour gouttiere',0,'2018-01-06 15:07:29','2018-01-06 15:07:29'),(112,28,'27',0,200000,'2018-01-12 18:00:00','gouttiere blanchiment+detartrage',0,'2018-01-12 18:04:06','2018-01-12 18:04:06'),(113,30,'30',0,75000,'2018-05-16 19:39:43','comp 16 om et 15 d et detartrage',0,'2018-01-13 13:45:32','2018-05-16 17:39:43'),(114,26,'24',0,100000,'2018-02-21 15:30:00','empreinte definitive 37 35 34 46',0,'2018-02-21 16:25:28','2018-02-21 16:25:28'),(115,11,'3',0,100000,'2018-02-09 16:00:00','composite 4 cavites',0,'2018-02-21 17:42:09','2018-02-21 17:42:09'),(116,31,'31',0,75000,'2018-05-30 20:43:21','detartrage parodontite superficielle',0,'2018-03-06 19:56:48','2018-05-30 18:43:21'),(117,32,'31',0,100000,'2018-03-07 18:00:00','mod 36\nm 37',0,'2018-03-07 18:20:21','2018-03-07 18:20:21'),(118,32,'31',0,100000,'2018-03-12 18:00:00','reconstitution composite de la 46',0,'2018-03-12 18:08:08','2018-03-12 18:08:08'),(119,33,'25',0,50000,'2018-03-29 19:00:00','detartrage',0,'2018-03-29 18:10:11','2018-03-29 18:10:11'),(120,34,'33',0,150000,'2018-03-31 18:00:00','detrartrage(free)+comp OM sur 26',0,'2018-03-31 17:58:53','2018-03-31 17:58:53'),(121,34,'34',0,100000,'2018-04-17 20:45:42','endo 46(mise en forme)',0,'2018-04-04 18:44:13','2018-04-17 18:45:42'),(122,33,'33',0,150000,'2018-04-05 11:30:00','comp:35 od \n          36 m\n          47 om',0,'2018-04-05 12:32:56','2018-04-05 12:32:56'),(123,35,'35',0,50000,'2018-04-16 14:22:44','endo 35  lt=20.5mm',0,'2018-04-05 16:59:11','2018-04-16 12:22:44'),(124,34,'33',0,50000,'2018-04-06 18:02:00','comp omd 14',0,'2018-04-06 19:19:28','2018-04-06 19:19:28'),(125,33,'34',0,200000,'2018-04-07 12:09:00','facette comp 22 21 11 12',0,'2018-04-07 13:18:50','2018-04-07 13:18:50'),(126,34,'33',0,100000,'2018-04-17 20:45:55','comp o sur 36 37',0,'2018-04-07 18:02:53','2018-04-17 18:45:55'),(127,34,'33',0,350000,'2018-04-11 19:00:00','blanchiement gouttiere',0,'2018-04-11 21:43:52','2018-04-11 21:43:52'),(128,35,'34',0,0,'2018-04-16 12:06:00','detartrage+obturation endo 35 lt=20.5',0,'2018-04-16 12:25:03','2018-04-16 12:25:03'),(129,35,'33',0,100000,'2018-05-14 21:26:58','composite 47 O\n                 45 OD',0,'2018-04-18 15:55:17','2018-05-14 19:26:58'),(130,37,'36',0,0,'2018-04-23 20:00:00','detartrage',0,'2018-04-23 21:01:53','2018-04-23 21:01:53'),(131,38,'33',0,75000,'2018-05-14 21:34:13','detartrage+comp 26 P',0,'2018-05-12 10:27:12','2018-05-14 19:34:13'),(132,35,'33',0,50000,'2018-05-12 18:00:00','comp od 35',0,'2018-05-12 16:47:47','2018-05-12 16:47:47'),(133,30,'32',0,50000,'2018-05-16 19:40:11','taille de la 16+comp 46 M et 45 OD',0,'2018-05-16 17:39:12','2018-05-16 17:40:11'),(134,34,'34',0,50000,'2018-05-15 19:00:00','empreinte definitive de la 46',0,'2018-05-16 17:55:26','2018-05-16 17:55:26'),(135,39,'40',0,500000,'2018-05-26 12:00:00','CCM 15 16\nblanchiment laser\ncl 4 sur 11',0,'2018-05-26 10:13:04','2018-05-26 10:13:04'),(136,40,'36',0,50000,'2018-05-30 18:00:00','extraction 18',0,'2018-05-30 18:13:27','2018-05-30 18:13:27'),(137,41,'41',0,150000,'2018-05-31 01:00:00','endo 16\ntaille prov 16 13',0,'2018-05-30 23:03:38','2018-05-30 23:03:38'),(138,42,'55',0,60000,'2018-07-04 13:00:00','16 mod comp',0,'2018-07-04 12:28:32','2018-07-04 12:28:32');

/*Table structure for table `factures` */

DROP TABLE IF EXISTS `factures`;

CREATE TABLE `factures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `paid` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=latin1;

/*Data for the table `factures` */

insert  into `factures`(`id`,`patient_id`,`paid`,`created_at`,`updated_at`) values (1,1,450000,'2016-11-19 09:19:29','0000-00-00 00:00:00'),(2,3,30000,'2016-11-19 12:08:17','0000-00-00 00:00:00'),(8,8,150000,'2016-11-26 10:36:43','0000-00-00 00:00:00'),(9,9,50000,'2016-11-26 11:06:20','0000-00-00 00:00:00'),(10,1,125000,'2016-12-10 10:02:06','0000-00-00 00:00:00'),(12,11,75000,'2017-05-25 07:52:41','0000-00-00 00:00:00'),(13,12,20000,'2017-05-25 16:16:01','0000-00-00 00:00:00'),(14,13,40000,'2017-06-08 20:01:34','0000-00-00 00:00:00'),(15,11,30000,'2017-06-12 19:31:02','0000-00-00 00:00:00'),(16,14,20000,'2017-06-28 14:26:22','0000-00-00 00:00:00'),(17,15,20000,'2017-07-19 16:09:51','0000-00-00 00:00:00'),(18,16,40000,'2017-08-09 18:10:36','0000-00-00 00:00:00'),(19,17,150000,'2017-08-10 11:30:15','0000-00-00 00:00:00'),(20,18,30000,'2017-08-14 18:04:31','0000-00-00 00:00:00'),(21,19,100000,'2017-08-15 11:11:58','0000-00-00 00:00:00'),(22,20,50000,'2017-09-30 10:35:58','0000-00-00 00:00:00'),(24,21,20000,'2017-10-02 15:22:09','0000-00-00 00:00:00'),(25,22,50000,'2017-10-03 10:49:44','0000-00-00 00:00:00'),(26,21,150000,'2017-10-10 14:34:50','0000-00-00 00:00:00'),(27,23,40000,'2017-10-13 16:20:08','0000-00-00 00:00:00'),(28,24,30000,'2017-10-21 08:42:11','0000-00-00 00:00:00'),(30,26,100000,'2017-11-11 09:26:09','0000-00-00 00:00:00'),(31,12,50000,'2017-11-11 15:23:59','0000-00-00 00:00:00'),(32,27,300000,'2017-11-13 16:59:51','0000-00-00 00:00:00'),(33,26,50000,'2017-11-22 21:23:06','0000-00-00 00:00:00'),(34,26,50000,'2017-11-25 11:01:37','0000-00-00 00:00:00'),(35,26,100000,'2017-11-30 10:43:30','0000-00-00 00:00:00'),(37,26,100000,'2017-12-07 17:26:16','0000-00-00 00:00:00'),(38,26,100000,'2017-12-23 11:38:13','0000-00-00 00:00:00'),(39,26,75000,'2017-12-27 10:54:03','0000-00-00 00:00:00'),(40,26,60000,'2018-01-03 15:35:57','0000-00-00 00:00:00'),(42,28,100000,'2018-01-12 18:04:06','0000-00-00 00:00:00'),(43,30,75000,'2018-01-13 13:45:32','0000-00-00 00:00:00'),(44,26,100000,'2018-02-21 16:25:28','0000-00-00 00:00:00'),(45,11,100000,'2018-02-21 17:42:09','0000-00-00 00:00:00'),(46,31,75000,'2018-03-06 19:56:48','0000-00-00 00:00:00'),(47,32,100000,'2018-03-07 18:20:21','0000-00-00 00:00:00'),(48,32,100000,'2018-03-12 18:08:08','0000-00-00 00:00:00'),(49,33,50000,'2018-03-29 18:10:11','0000-00-00 00:00:00'),(50,34,150000,'2018-03-31 17:58:53','0000-00-00 00:00:00'),(51,34,100000,'2018-04-04 18:44:13','0000-00-00 00:00:00'),(52,33,150000,'2018-04-05 12:32:56','0000-00-00 00:00:00'),(53,35,50000,'2018-04-05 16:59:11','0000-00-00 00:00:00'),(54,34,50000,'2018-04-06 19:19:28','0000-00-00 00:00:00'),(55,33,200000,'2018-04-07 13:18:50','0000-00-00 00:00:00'),(56,34,100000,'2018-04-07 18:02:53','0000-00-00 00:00:00'),(57,34,350000,'2018-04-11 21:43:52','0000-00-00 00:00:00'),(59,35,100000,'2018-04-18 15:55:17','0000-00-00 00:00:00'),(61,38,75000,'2018-05-12 10:27:12','0000-00-00 00:00:00'),(63,30,50000,'2018-05-16 17:39:12','0000-00-00 00:00:00'),(64,34,50000,'2018-05-16 17:55:26','0000-00-00 00:00:00'),(65,39,500000,'2018-05-26 10:13:04','0000-00-00 00:00:00'),(66,40,50000,'2018-05-30 18:13:27','0000-00-00 00:00:00'),(67,41,150000,'2018-05-30 23:03:38','0000-00-00 00:00:00'),(68,42,60000,'2018-07-04 12:28:32','0000-00-00 00:00:00');

/*Table structure for table `fm_cms_menu` */

DROP TABLE IF EXISTS `fm_cms_menu`;

CREATE TABLE `fm_cms_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `fm_cms_menu` */

insert  into `fm_cms_menu`(`id`,`name`,`is_active`,`order`,`url`,`parent`,`created_at`,`updated_at`) values (1,'Dashboard',1,1,'#/dashboard.html',0,NULL,NULL),(2,'Customers',1,2,'#/customers.html',0,NULL,NULL),(3,'Visits',1,3,'#/visits.html',0,NULL,NULL),(4,'Schedules',1,4,'#/schedules.html',0,NULL,NULL);

/*Table structure for table `fm_userinfo` */

DROP TABLE IF EXISTS `fm_userinfo`;

CREATE TABLE `fm_userinfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `f_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `l_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fm_userinfo_f_name_unique` (`f_name`),
  KEY `fm_userinfo_user_id_foreign` (`user_id`),
  CONSTRAINT `fm_userinfo_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `fm_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `fm_userinfo` */

insert  into `fm_userinfo`(`id`,`user_id`,`f_name`,`l_name`,`phone`,`created_at`,`updated_at`) values (1,1,'Hachem','Chebli',71,NULL,NULL);

/*Table structure for table `fm_users` */

DROP TABLE IF EXISTS `fm_users`;

CREATE TABLE `fm_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isactive` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fm_users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `fm_users` */

insert  into `fm_users`(`id`,`username`,`email`,`password`,`isactive`,`created_at`,`updated_at`,`remember_token`) values (1,'hachem','samichkeir@gmail.com','$2y$10$EJfTjIAIXjOicTFvi3cYsOBC3uN6xKbjahS6w0njYD6XYwwYQYBAS',1,NULL,'2018-05-25 12:16:17','cGV6GknJIMf1nRVAN7dJIFLuuAc6dIa2TBHLTh9KUX9bFvv39irLQGkBR61N');

/*Table structure for table `images` */

DROP TABLE IF EXISTS `images`;

CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `visit_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `images` */

/*Table structure for table `menu` */

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `url` varchar(50) DEFAULT NULL,
  `view` varchar(50) DEFAULT NULL,
  `controller` varchar(50) DEFAULT NULL,
  `parent_id` int(11) DEFAULT '0',
  `active` int(11) DEFAULT '1',
  `icon` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `menu` */

/*Table structure for table `menu_i18` */

DROP TABLE IF EXISTS `menu_i18`;

CREATE TABLE `menu_i18` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `lang` varchar(3) DEFAULT 'en',
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `menu_i18` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`migration`,`batch`) values ('2016_10_06_185617_user_table',1),('2016_10_06_190525_userinformation_table',1),('2016_10_06_185617_create_customer_table',2),('2016_10_06_191108_create_visit_table',2),('2016_10_17_173817_create_menu_cms_table',3),('2016_10_21_165628_create_schedule_Table',3),('2016_10_22_073350_create_items_table',3),('2016_10_23_193703_create_company_table',3),('2016_10_23_195425_create_fees_table',3),('2016_10_27_210455_add_schedule_end_date_to_schedule_Table',4),('2016_11_08_183914_create_track_table',4);

/*Table structure for table `operation_visit` */

DROP TABLE IF EXISTS `operation_visit`;

CREATE TABLE `operation_visit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `visit_id` int(11) NOT NULL,
  `operation_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `operation_visit` */

/*Table structure for table `operations` */

DROP TABLE IF EXISTS `operations`;

CREATE TABLE `operations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `color` varchar(50) DEFAULT NULL,
  `is_deleted` int(11) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `operations` */

/*Table structure for table `st_companies` */

DROP TABLE IF EXISTS `st_companies`;

CREATE TABLE `st_companies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `st_companies` */

/*Table structure for table `st_fees` */

DROP TABLE IF EXISTS `st_fees`;

CREATE TABLE `st_fees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `companies_id` int(10) unsigned DEFAULT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fees_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `price` double NOT NULL,
  `paid` double NOT NULL,
  `rest` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `st_fees_companies_id_foreign` (`companies_id`),
  CONSTRAINT `st_fees_companies_id_foreign` FOREIGN KEY (`companies_id`) REFERENCES `st_companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `st_fees` */

/*Table structure for table `st_items` */

DROP TABLE IF EXISTS `st_items`;

CREATE TABLE `st_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `barcode` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `buy_price` double NOT NULL,
  `sell_price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `st_items` */

/*Table structure for table `tooth_note` */

DROP TABLE IF EXISTS `tooth_note`;

CREATE TABLE `tooth_note` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `visit_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `operations_id` varchar(200) DEFAULT NULL,
  `note` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tooth_note` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`email`,`type`,`password`,`remember_token`,`created_at`,`updated_at`) values (1,'admin','',NULL,'$2y$10$xl74v0.ThP6rRdGqwPe/7.Iuy2vhOOwQHSqFLdy3kkl2/Q/RPY.T2','Qv3WamkfbRaHgjNi83yjVbvwipD54KlCCXbOWt7utFslNjTRLxCHnxKPWV9P',NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
