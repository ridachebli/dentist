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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `den_customers` */

insert  into `den_customers`(`id`,`name`,`dob`,`description`,`phone`,`address`,`is_deleted`,`image`,`created_at`,`updated_at`) values (2,'kasjnvkl','2016-10-25 21:40:36','qwewqeq','12454','qweqweeqw',0,'','2016-10-25 18:27:32','2016-10-25 18:40:36'),(3,'rida','2016-10-28 21:57:00','','','',0,'',NULL,NULL),(4,'brahim1','2018-07-17 23:15:40','lkjNSDVgklsfdngvlzmfbvlkfdnb','1235468','bjhfklnkjshlkgaszpD;klngalkdng',0,NULL,'2016-11-09 20:38:31','2018-07-17 20:15:40'),(5,'dxfcgvhbjnkml,','2018-06-19 22:33:00',NULL,'gfseg',NULL,1,NULL,'2018-06-18 19:13:48','2018-06-19 19:33:00'),(6,'مريم','2018-06-19 22:32:11',NULL,NULL,NULL,1,NULL,'2018-06-18 19:14:06','2018-06-19 19:32:11'),(7,'ewwef',NULL,NULL,NULL,NULL,0,NULL,'2018-07-01 20:35:23','2018-07-01 20:35:23'),(8,'dsf','2018-06-05 00:00:00',NULL,'456','ss',0,NULL,'2018-07-17 20:15:58','2018-07-17 20:16:43'),(9,'dsf','2018-06-05 00:00:00','123123','123','123',0,NULL,'2018-07-17 20:17:11','2018-07-17 20:17:11'),(10,'ghjghj','2018-07-10 00:00:00',NULL,'234234234',NULL,0,NULL,'2018-07-25 18:45:19','2018-07-25 18:45:19'),(11,'تليبايايايبابيايبايبانبيتلسملنيتبن','2018-07-12 00:00:00','dfgdfgdfgdfgdfgdfg','345345','@outlook.com',0,NULL,'2018-07-25 18:45:49','2018-07-25 18:45:49');

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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `den_schedule` */

insert  into `den_schedule`(`id`,`customer_id`,`schedule_date`,`end_date`,`note`,`created_at`,`updated_at`) values (23,3,'2018-08-01 07:00:00','2018-08-01 07:30:00','','2018-08-03 18:37:56','2018-08-03 18:37:56'),(24,4,'2018-08-04 09:30:00','2018-08-04 10:00:00','sacascascsac','2018-08-03 18:38:05','2018-08-03 19:02:51'),(25,3,'2018-07-25 08:00:00','2018-07-25 08:30:00','ewfwefwef','2018-08-03 18:39:36','2018-08-03 18:39:36'),(26,3,'2018-08-08 08:30:00','2018-08-08 09:00:00','wefwefwef','2018-08-03 18:39:43','2018-08-03 18:39:43'),(27,5,'2018-08-10 10:30:00','2018-08-10 11:00:00','','2018-08-03 18:39:47','2018-08-03 18:39:47'),(28,5,'2018-08-04 10:30:00','2018-08-04 11:00:00','asascasc','2018-08-03 18:41:46','2018-08-03 19:03:48'),(29,2,'2018-08-08 09:30:00','2018-08-08 10:00:00','wef','2018-08-08 19:26:30','2018-08-08 19:26:30'),(30,7,'2018-08-08 12:30:00','2018-08-08 13:00:00','sdfdsf','2018-08-08 19:26:36','2018-08-08 19:26:36'),(31,4,'2018-08-08 15:30:00','2018-08-08 16:00:00','sdff','2018-08-08 19:26:43','2018-08-08 19:26:43');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `den_visit` */

insert  into `den_visit`(`id`,`customer_id`,`code`,`status`,`total`,`date_visit`,`note`,`is_deleted`,`created_at`,`updated_at`) values (1,2,'2356',0,200000,'2018-07-13 21:50:08','jkshfngvasjbjjdshar',0,'2018-06-20 23:19:13','2018-07-13 18:50:08'),(2,2,'2356',0,1000,'2018-07-18 22:35:52','',1,'2016-10-28 17:21:46','2018-06-21 18:49:15'),(3,4,'34',0,10000,'2018-08-08 22:05:26',NULL,0,'2018-05-16 20:39:38','2018-07-16 18:42:36'),(4,3,'11',0,11111,'2018-07-18 22:56:20','twse',0,'2018-07-18 19:13:24','2018-07-18 19:14:19'),(5,3,'',0,1111111,'2018-07-16 00:00:00',NULL,0,'2018-07-25 18:44:20','2018-07-25 18:44:20'),(6,7,'34',0,123123,'2018-07-11 00:00:00',NULL,0,'2018-07-25 18:44:59','2018-07-25 18:44:59'),(7,3,'123',0,15000,'2018-08-08 22:04:52','wewefwef',0,'2018-08-07 18:55:35','2018-08-07 18:56:40');

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `factures` */

insert  into `factures`(`id`,`patient_id`,`paid`,`created_at`,`updated_at`) values (1,2,21,'2018-07-18 19:10:27','2018-07-18 19:10:27'),(2,3,3200,'2018-08-08 22:04:28','2018-07-24 19:47:32'),(4,3,123132,'2018-07-18 23:00:41','0000-00-00 00:00:00'),(6,4,15000,'2018-08-08 22:04:20','2018-07-24 20:19:39'),(8,4,7152,'2018-07-25 18:43:09','2018-07-25 18:43:09'),(9,3,2222,'2018-07-25 18:44:20','2018-07-25 18:44:20'),(10,7,124112,'2018-07-25 18:44:59','2018-07-25 18:44:59'),(11,11,564,'2018-07-25 18:46:06','2018-07-25 18:46:06'),(12,3,65000,'2018-08-08 22:04:33','2018-08-07 18:55:35');

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
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=latin1;

/*Data for the table `images` */

insert  into `images`(`id`,`patient_id`,`visit_id`,`url`,`created_at`,`updated_at`) values (108,4,1,'images/21184106911530818104.jpg','2018-07-16 22:03:00','2018-07-05 19:15:05'),(109,2,1,'images/8561216781530818108.jpg','2018-07-16 22:03:22','2018-07-05 19:15:08'),(110,4,1,'images/12595327881530818116.jpg','2018-07-16 22:03:01','2018-07-05 19:15:16'),(111,2,1,'images/17127593081530818116.jpg','2018-07-16 22:03:19','2018-07-05 19:15:16'),(112,2,1,'images/18393297271530818116.jpg','2018-07-16 22:03:21','2018-07-05 19:15:16'),(113,4,1,'images/14595794531530818245.jpg','2018-07-16 22:03:02','2018-07-05 19:17:25'),(114,2,3,'images/8218182491530818271.jpg','2018-07-16 22:03:17','2018-07-05 19:17:51'),(115,4,3,'images/9826712311530818271.jpg','2018-07-16 22:03:03','2018-07-05 19:17:51'),(116,2,3,'images/2047268381530818271.jpg','2018-07-16 22:03:20','2018-07-05 19:17:51'),(117,4,3,'images/7762382441531765130.jpg','2018-07-16 22:03:06','2018-07-16 18:18:50'),(118,4,3,'images/11318750781532112853.jpg','2018-07-20 18:54:14','2018-07-20 18:54:14');

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

insert  into `menu`(`id`,`code`,`url`,`view`,`controller`,`parent_id`,`active`,`icon`,`created_at`,`updated_at`) values (1,'dashboard','#/dashboard','dashboard','DashboardController',0,1,'fa fa-home','2018-04-17 22:42:31','0000-00-00 00:00:00'),(6,'pacients','#!/patients','pacients','PacientsController',0,1,'fa fa-user','2018-04-24 22:52:44','0000-00-00 00:00:00'),(7,'visits','#!/visits','visits','VisitsController',0,1,'fa fa-stethoscope','2018-07-17 21:09:02','0000-00-00 00:00:00'),(8,'operations','#!/operations','operations','OperationsController',0,1,'fa fa-gear','2018-07-10 21:43:02','0000-00-00 00:00:00'),(9,'calendar','#!/calendar','calendar','CalendarController',0,1,'fa fa-calendar','2018-08-03 21:44:15','0000-00-00 00:00:00'),(10,'gallery','#!/gallery','gallery','GalleryController',0,1,'fa fa-file-photo-o','2018-08-09 22:20:58','0000-00-00 00:00:00'),(11,'statement','#statement','statement','StatementController',0,1,'fa fa-file-text-o','2018-08-09 22:43:31','0000-00-00 00:00:00'),(13,'invoice','#!/invoice','invoice','StatementController',11,1,'','2018-08-09 22:48:15','0000-00-00 00:00:00');

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

insert  into `menu_i18`(`id`,`menu_id`,`lang`,`name`,`created_at`,`updated_at`) values (1,1,'en','Dashboard','2018-04-13 23:23:24','0000-00-00 00:00:00'),(6,6,'en','Patients','2018-06-20 22:11:18','0000-00-00 00:00:00'),(7,7,'en','Visits','2018-06-20 22:11:11','0000-00-00 00:00:00'),(8,8,'en','Operations','2018-07-10 21:43:34','0000-00-00 00:00:00'),(9,9,'en','Apointment','2018-08-03 21:44:39','0000-00-00 00:00:00'),(10,10,'en','Gallery','2018-08-09 22:19:48','0000-00-00 00:00:00'),(11,11,'en','Statement','2018-08-09 22:48:43','0000-00-00 00:00:00'),(12,12,'en','Summary','2018-08-09 22:48:46','0000-00-00 00:00:00'),(13,13,'en','Invoice','2018-08-09 22:48:50','0000-00-00 00:00:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=latin1;

/*Data for the table `operation_visit` */

insert  into `operation_visit`(`id`,`patient_id`,`visit_id`,`operation_id`,`created_at`,`updated_at`) values (3,4,2,2,'2018-07-17 22:17:09','0000-00-00 00:00:00'),(137,4,1,1,'2018-07-17 22:17:12','2018-07-13 18:50:08'),(138,4,1,2,'2018-07-17 22:17:14','2018-07-13 18:50:08'),(139,4,1,3,'2018-07-17 22:17:16','2018-07-13 18:50:08'),(147,3,4,2,'2018-07-18 19:14:19','2018-07-18 19:14:19'),(148,3,4,3,'2018-07-18 19:14:19','2018-07-18 19:14:19'),(150,4,3,3,'2018-07-20 18:54:14','2018-07-20 18:54:14'),(151,3,5,3,'2018-07-25 18:44:20','2018-07-25 18:44:20'),(152,3,5,4,'2018-07-25 18:44:20','2018-07-25 18:44:20'),(153,7,6,4,'2018-07-25 18:44:59','2018-07-25 18:44:59'),(154,7,6,6,'2018-07-25 18:44:59','2018-07-25 18:44:59'),(157,3,7,4,'2018-08-07 18:56:40','2018-08-07 18:56:40'),(158,3,7,6,'2018-08-07 18:56:40','2018-08-07 18:56:40');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `operations` */

insert  into `operations`(`id`,`name`,`color`,`is_deleted`,`created_at`,`updated_at`) values (1,'op1','#00ff00',1,'2018-08-09 22:17:03','2018-07-25 18:34:10'),(2,'op2','#0000bb',1,'2018-07-25 21:34:11','2018-07-25 18:34:11'),(3,'op3','#cccccc',0,'2018-07-13 23:24:45','0000-00-00 00:00:00'),(4,'op4','#000000',0,'2018-07-13 23:24:41','0000-00-00 00:00:00'),(5,'ddddddd','#09779f',1,'2018-07-25 21:33:31','2018-07-25 18:33:31'),(6,'fds','#860f8d',0,'2018-07-25 18:36:45','2018-07-25 18:36:45');

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `tooth_note` */

insert  into `tooth_note`(`id`,`patient_id`,`visit_id`,`title`,`operations_id`,`note`,`created_at`,`updated_at`) values (17,4,3,'17','1,3','','2018-07-20 18:54:14','2018-07-20 18:54:14'),(18,4,3,'16','4,1','','2018-07-20 18:54:14','2018-07-20 18:54:14'),(19,4,3,'27','2','','2018-07-20 18:54:14','2018-07-20 18:54:14'),(20,3,5,'16','4','','2018-07-25 18:44:20','2018-07-25 18:44:20'),(21,3,5,'36','3','sfsdfsdf','2018-07-25 18:44:20','2018-07-25 18:44:20');

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
