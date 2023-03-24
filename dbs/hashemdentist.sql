-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2018 at 10:38 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dentist`
--

-- --------------------------------------------------------

--
-- Table structure for table `den_customers`
--

CREATE TABLE `den_customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `fname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dob` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `den_customers`
--

INSERT INTO `den_customers` (`id`, `fname`, `lname`, `dob`, `description`, `phone`, `address`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Maza', '(Abou maher zeineddin)', '0000-00-00 00:00:00', '', '81258613', '', '', '2016-11-13 15:43:56', '2016-11-13 15:46:06'),
(2, 'KHADIJA', 'EZZEDIN', '2016-11-14 20:59:38', '', '03475287', '', '', '2016-11-14 18:59:38', '2016-11-14 18:59:38'),
(3, 'zinach', 'maher zeineddin', '2016-11-22 11:37:44', 'normal health', '03942375', '', '', '2016-11-19 10:04:57', '2016-11-22 09:37:44'),
(4, 'mariam', 'nasreddin', '2016-11-19 12:59:46', 'allergie a la penicillinne', '71640634', '', '', '2016-11-19 10:59:46', '2016-11-19 10:59:46'),
(5, 'Ali', 'mhamad abed ali khalil', '0000-00-00 00:00:00', 'normal health', '79123396', '', '', '2016-11-22 09:41:41', '2016-11-22 14:00:25'),
(6, 'mostafa', 'hsein salmen', '0000-00-00 00:00:00', 'normal health', '76909398', '', '', '2016-11-23 13:41:18', '2016-11-23 13:41:18'),
(7, 'ali', 'hsein salmen', '0000-00-00 00:00:00', 'normal health', '76067144', '', '', '2016-11-23 14:29:34', '2016-11-23 14:29:34'),
(8, 'Ali', 'ahmad sabra', '0000-00-00 00:00:00', 'normal health', '70828557', 'chiah maroon mesek', '', '2016-11-26 06:11:32', '2016-11-26 06:11:32'),
(9, 'nadin', 'mallah', '0000-00-00 00:00:00', 'allergie cause inconnue', '70832421', '', '', '2016-11-26 09:04:58', '2016-11-26 09:04:58'),
(10, 'hsein', 'youssef chebli', '0000-00-00 00:00:00', 'sante normal', '71316398', '', '', '2017-01-14 16:35:07', '2017-01-14 16:35:07'),
(11, 'Farah', 'Kheireddin', '1994-12-20 22:00:00', '', '70632797', '', '', '2017-05-24 15:46:25', '2017-05-25 04:49:15'),
(12, 'diana', 'shamas', '1989-06-30 21:00:00', 'sante normal', '76477048', 'shwafet', '', '2017-05-25 13:07:47', '2017-05-25 13:07:47'),
(13, 'hsein', 'kanj', '2000-12-21 22:00:00', 'nargile 1 fois/j', '71556290', 'shiah', '', '2017-06-08 16:50:59', '2017-06-08 16:50:59'),
(14, 'fatima', 'ounaysi', '1983-10-23 21:00:00', 'dolormin pour migrain en cas de douleur', '70959584', 'kafaat', '', '2017-06-28 11:22:28', '2017-06-28 11:22:28'),
(15, 'Lara', 'Shamas', '1993-04-04 21:00:00', 'sante general normale', '79130315', 'Shwayfet', '', '2017-07-19 13:03:55', '2017-07-19 13:03:55'),
(16, 'Ali mhamad', 'Haidar', '2009-02-16 22:00:00', 'sante normal', '03998650', '', '', '2017-08-09 15:09:35', '2017-08-09 15:09:35'),
(17, 'Bahaa', 'Sayegh', '1986-08-17 21:00:00', 'sante normal', '71682998', 'Msharafye', '', '2017-08-10 07:51:21', '2017-08-10 07:51:21'),
(18, 'Jawad mhamad', 'Haidar', '2004-12-12 22:00:00', 'asthmatique', '03998650', '', '', '2017-08-14 15:03:35', '2017-08-14 15:03:35'),
(19, 'Hsein', 'Rammal', '1999-11-14 22:00:00', 'sante normale', '76972638', '', '', '2017-08-15 08:10:26', '2017-08-15 08:10:26'),
(20, 'Batoul', 'Awad', '2017-09-30 10:31:52', 'sante normale', '76871160', 'borj l barajne', '', '2017-09-30 07:31:52', '2017-09-30 07:31:52'),
(21, 'ahmad najib', 'fnesh', '1996-10-06 21:00:00', 'sante normale', '76973843', 'shiah', '', '2017-10-02 12:21:32', '2017-10-02 12:21:32'),
(22, 'Ali Kamel', 'Shalhoub', '2006-06-21 21:00:00', 'sante normale', '70093423', 'shwayfet', '', '2017-10-03 07:36:48', '2017-10-03 07:36:48'),
(23, 'Jana Jamil', 'Kanj', '1996-11-03 22:00:00', 'sante normale', '70824124', 'Shyah', '', '2017-10-13 13:19:26', '2017-10-13 13:19:26'),
(24, 'Liza', 'mrad', '1999-11-07 22:00:00', 'sante normale', '78935589', 'Shwayfet', '', '2017-10-21 05:40:19', '2017-10-21 05:40:19'),
(25, 'Dina Hasssan', 'Ballout', '2000-05-16 21:00:00', 'sante normmale', '03034275', 'jneh', '', '2017-10-21 13:46:32', '2017-10-21 13:46:32'),
(26, 'Fadwa Mahmoud', 'Badran', '1971-02-19 22:00:00', 'sante normal', '70694701', 'Ghobeireh', '', '2017-11-11 07:20:47', '2017-11-11 07:20:47'),
(27, 'Mhamad hsein', 'Chit', '1995-01-03 22:00:00', 'sante normale', '78834332', 'haret hreik', '', '2017-11-13 14:58:45', '2017-11-13 14:58:45'),
(28, 'Elvira', 'Hassan Karout', '1987-05-29 21:00:00', 'sante normale', '03662073', 'haret hreik', '', '2018-01-06 13:06:37', '2018-01-06 13:06:37'),
(29, 'Abed Ghazi', 'Ayash', '1990-09-30 21:00:00', 'sante normal', '03691647', 'tarik el matar', '', '2018-01-13 09:23:10', '2018-01-13 09:23:10'),
(30, 'mhamad ahmad', 'harkous', '1993-08-15 21:00:00', 'sante normal', '76847127', 'hadath', '', '2018-01-13 11:43:06', '2018-01-13 11:43:06'),
(31, 'sami', 'chkeir', '1991-04-25 21:00:00', 'sante normale respiration buccale', '71721935', 'jbeil', '', '2018-03-06 17:51:00', '2018-03-06 17:51:00'),
(32, 'mhamad hassan', 'fakhreddin', '1990-10-02 21:00:00', 'sante normale', '03758895', 'haret hreik', '', '2018-03-07 16:15:52', '2018-03-07 16:15:52'),
(33, 'mhamad hsein', 'fakih', '1992-09-08 22:00:00', 'sante normale', '03007920', 'Rwes', '', '2018-03-29 15:07:45', '2018-03-29 15:07:45'),
(34, 'Zeinab hassan', 'Hmede', '1992-07-04 22:00:00', 'souffle cardiaque depuis la naissance mais il est fermé (la patiente est normale)', '03955851', 'berj el brajne', '', '2018-03-31 14:57:43', '2018-03-31 14:57:43'),
(35, 'farah dib', 'alawye', '1995-09-05 22:00:00', 'sante normale', '03551674', 'al gamous', '', '2018-04-05 13:53:05', '2018-04-05 13:53:05'),
(36, 'wiam adib', 'kheireddin', '1990-07-25 22:00:00', 'appendicectomie', '79175857', 'sfeir', '', '2018-04-19 07:26:46', '2018-04-19 07:26:46'),
(37, 'Hoda', 'Cheikh Ali', '1994-04-15 22:00:00', 'Sante normale', '71168236', 'Ansar', '', '2018-04-23 18:01:10', '2018-04-23 18:01:10'),
(38, 'Sama Fadi', 'khalife', '2006-03-20 22:00:00', 'sante normale', '70841558', 'sfeir', '', '2018-05-12 07:25:59', '2018-05-12 07:25:59'),
(39, 'Mairie', 'Abdallah(family house)', '1986-01-27 22:00:00', 'sante normale', '71342851', 'bir el abed', '', '2018-05-26 07:11:14', '2018-05-26 07:11:14'),
(40, 'Zeinab Yasser', 'Awada', '1996-11-21 22:00:00', 'Sante normale', '70707998', 'Aitaroun', '', '2018-05-30 15:12:16', '2018-05-30 15:12:16'),
(41, 'Issam hsein', 'Rhayil', '1976-03-12 22:00:00', '', '71141757', 'Shayah', '', '2018-05-30 20:02:28', '2018-05-30 20:02:28'),
(42, 'Walid mhamad', 'abdellatif', '0000-00-00 00:00:00', 'sante normal', '03957088', 'Haret hreik', '', '2018-07-04 09:26:21', '2018-07-04 09:26:21');

-- --------------------------------------------------------

--
-- Table structure for table `den_schedule`
--

CREATE TABLE `den_schedule` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `schedule_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `den_schedule`
--

INSERT INTO `den_schedule` (`id`, `customer_id`, `schedule_date`, `end_date`, `note`, `created_at`, `updated_at`) VALUES
(1, 11, '2017-05-27 07:00:00', '2017-05-27 08:00:00', 'detartrage', '2017-05-24 15:47:57', '2017-05-25 04:54:05'),
(3, 31, '2018-03-13 19:00:00', '2018-03-13 19:30:00', 'continuer le detartrage', '2018-03-06 18:08:38', '2018-03-06 18:08:38');

-- --------------------------------------------------------

--
-- Table structure for table `den_visit`
--

CREATE TABLE `den_visit` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `total` double NOT NULL,
  `payment` double NOT NULL,
  `rest` double NOT NULL,
  `date_visit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `den_visit`
--

INSERT INTO `den_visit` (`id`, `customer_id`, `code`, `status`, `total`, `payment`, `rest`, `date_visit`, `note`, `created_at`, `updated_at`) VALUES
(3, 1, '1', 0, 450000, 450000, 0, '2016-12-31 15:31:33', 'finishing of restoration', '2016-11-19 07:19:29', '2016-12-31 13:31:33'),
(4, 3, '4', 0, 30000, 30000, 0, '2016-11-19 12:00:00', 'extraction de la 28', '2016-11-19 10:08:17', '2016-11-19 10:08:17'),
(5, 4, '4', 0, 0, 0, 0, '2016-11-19 13:05:00', 'extraction de la 14 racine', '2016-11-19 11:01:35', '2016-11-19 11:01:35'),
(6, 1, '2', 0, 0, 0, 0, '2016-11-22 09:35:00', 'taille de la 17', '2016-11-22 09:38:52', '2016-11-22 09:38:52'),
(7, 5, '5', 0, 0, 0, 0, '2016-11-22 08:00:00', 'restauration cl 4 de la 11', '2016-11-22 09:42:45', '2016-11-22 09:42:45'),
(8, 6, '6', 0, 0, 0, 0, '2016-11-23 15:00:00', 'restauration composite de toute la dent 11 12', '2016-11-23 13:42:43', '2016-11-23 13:42:43'),
(9, 7, '7', 0, 0, 0, 0, '2016-11-23 14:29:00', 'restauration cl5 sur la 14', '2016-11-23 14:30:28', '2016-11-23 14:30:28'),
(10, 8, '8', 0, 150000, 150000, 0, '2016-11-26 08:35:00', 'restauration comp cl 4 sur la 11 et 21', '2016-11-26 08:36:43', '2016-11-26 08:36:43'),
(11, 9, '9', 0, 50000, 50000, 0, '2016-11-26 11:05:00', 'restauration total de la 15', '2016-11-26 09:06:20', '2016-11-26 09:06:20'),
(12, 1, '2', 0, 125000, 125000, 0, '2016-12-31 15:31:10', 'impression for ccm on 17', '2016-12-10 08:02:06', '2016-12-31 13:31:10'),
(13, 10, '10', 0, 0, 0, 0, '2017-01-14 16:35:00', 'detartrage+rest comp occ 36', '2017-01-14 16:40:20', '2017-01-14 16:40:20'),
(14, 11, '11', 0, 75000, 75000, 0, '2017-03-30 07:45:00', 'composite 23 cl3 M\n                  24 MOD\n                  25 OM', '2017-05-25 04:52:41', '2017-05-25 04:52:41'),
(15, 12, '12', 0, 20000, 20000, 0, '2017-05-25 16:05:00', 'detartrage', '2017-05-25 13:16:01', '2017-05-25 13:16:01'),
(16, 13, '13', 0, 40000, 40000, 0, '2017-06-08 19:50:00', 'detartrage', '2017-06-08 17:01:34', '2017-06-08 17:01:34'),
(17, 11, '11', 0, 30000, 30000, 0, '2017-06-12 19:00:00', 'cl 3 mesial 13', '2017-06-12 16:31:02', '2017-06-12 16:31:02'),
(18, 14, '14', 0, 20000, 20000, 0, '2017-06-28 13:20:00', 'provisoir sur 45 46 47', '2017-06-28 11:26:22', '2017-06-28 11:26:22'),
(19, 15, '16', 0, 20000, 20000, 0, '2017-07-19 15:00:00', 'detartrage', '2017-07-19 13:09:51', '2017-07-19 13:09:51'),
(20, 16, '19', 0, 40000, 40000, 0, '2017-08-09 18:05:00', 'detartrage', '2017-08-09 15:10:36', '2017-08-09 15:10:36'),
(21, 17, '18', 0, 150000, 150000, 0, '2017-08-10 08:50:00', 'taille 21 12 13 ac provisoir', '2017-08-10 08:30:15', '2017-08-10 08:30:15'),
(22, 18, '19', 0, 30000, 30000, 0, '2017-08-14 09:00:00', 'detartrage', '2017-08-14 15:04:31', '2017-08-14 15:04:31'),
(23, 19, '20', 0, 100000, 100000, 0, '2017-08-15 10:00:00', 'cl 4 distal 21 \ncl 3 mesial 22', '2017-08-15 08:11:58', '2017-08-15 08:11:58'),
(24, 20, '23', 0, 50000, 50000, 0, '2017-09-30 10:38:32', 'detartrage\n47 MOD sans obturation(pas payé)', '2017-09-30 07:35:58', '2017-09-30 07:38:32'),
(25, 7, '6', 0, 0, 0, 0, '2017-10-02 13:05:00', 'detartrage', '2017-10-02 12:20:09', '2017-10-02 12:20:09'),
(26, 21, '20', 0, 20000, 20000, 0, '2017-10-02 14:20:00', 'detartrage', '2017-10-02 12:22:09', '2017-10-02 12:22:09'),
(27, 22, '20', 0, 70000, 50000, 20000, '2017-10-03 07:30:00', 'comp OM 46', '2017-10-03 07:49:44', '2017-10-03 07:49:44'),
(28, 21, '22', 0, 150000, 150000, 0, '2017-10-10 13:30:00', 'detartrage', '2017-10-10 11:34:50', '2017-10-10 11:34:50'),
(29, 23, '22', 0, 40000, 40000, 0, '2017-10-13 16:15:00', 'detartrage', '2017-10-13 13:20:08', '2017-10-13 13:20:08'),
(30, 24, '23', 0, 30000, 30000, 0, '2017-10-21 07:25:00', 'detartrage+25 cl5', '2017-10-21 05:42:11', '2017-10-21 05:42:11'),
(31, 25, '25', 0, 200000, 0, 200000, '2017-10-21 16:45:00', 'detartrage+blanchiment gouttiere+cl 4 11 et cl 4 21', '2017-10-21 14:01:56', '2017-10-21 14:01:56'),
(32, 26, '23', 0, 100000, 100000, 0, '2017-11-11 08:00:00', 'detartrage+extraction de la 38', '2017-11-11 07:26:09', '2017-11-11 07:26:09'),
(33, 12, '12', 0, 50000, 50000, 0, '2017-11-11 14:00:00', 'detartrage+extraction de la 28', '2017-11-11 13:23:59', '2017-11-11 13:23:59'),
(34, 27, '24', 0, 300000, 300000, 0, '2017-11-20 19:12:46', 'couronne zircone sur 46', '2017-11-13 14:59:51', '2017-11-20 17:12:46'),
(35, 26, '27', 0, 50000, 50000, 0, '2017-11-22 10:20:00', 'comp OD sur 26', '2017-11-22 19:23:06', '2017-11-22 19:23:06'),
(36, 26, '24', 0, 50000, 50000, 0, '2017-11-25 08:00:00', 'comp sur 27 om', '2017-11-25 09:01:37', '2017-11-25 09:01:37'),
(37, 26, '26', 0, 100000, 100000, 0, '2017-11-30 09:00:00', 'LT 46\n          ML 17 cm', '2017-11-30 08:43:30', '2017-11-30 08:43:30'),
(38, 26, '19', 0, 0, 0, 0, '2017-12-02 08:00:00', 'obturation canalaire 46', '2017-12-02 07:44:39', '2017-12-02 07:44:39'),
(39, 26, '23', 0, 100000, 100000, 0, '2017-12-07 08:00:00', 'enlever la couronne+prov sur 35', '2017-12-07 15:26:16', '2017-12-07 15:26:16'),
(40, 26, '21', 0, 100000, 100000, 0, '2017-12-23 08:00:00', 'endo 37', '2017-12-23 09:38:13', '2017-12-23 09:38:13'),
(41, 26, '23', 0, 75000, 75000, 0, '2017-12-27 08:00:00', 'taille 37+bridge prov 37(36)35', '2017-12-27 08:54:03', '2017-12-27 08:54:03'),
(42, 26, '1', 0, 60000, 60000, 0, '2017-12-30 08:00:00', 'endo 34', '2018-01-03 13:35:57', '2018-01-03 13:35:57'),
(43, 28, '28', 0, 0, 0, 0, '2018-01-06 15:00:00', 'empreinte pour gouttiere', '2018-01-06 13:07:29', '2018-01-06 13:07:29'),
(44, 28, '27', 0, 200000, 100000, 100000, '2018-01-12 16:00:00', 'gouttiere blanchiment+detartrage', '2018-01-12 16:04:06', '2018-01-12 16:04:06'),
(45, 30, '30', 0, 75000, 75000, 0, '2018-05-16 16:39:43', 'comp 16 om et 15 d et detartrage', '2018-01-13 11:45:32', '2018-05-16 14:39:43'),
(46, 26, '24', 0, 100000, 100000, 0, '2018-02-21 13:30:00', 'empreinte definitive 37 35 34 46', '2018-02-21 14:25:28', '2018-02-21 14:25:28'),
(47, 11, '3', 0, 100000, 100000, 0, '2018-02-09 14:00:00', 'composite 4 cavites', '2018-02-21 15:42:09', '2018-02-21 15:42:09'),
(48, 31, '31', 0, 75000, 75000, 0, '2018-05-30 17:43:21', 'detartrage parodontite superficielle', '2018-03-06 17:56:48', '2018-05-30 15:43:21'),
(49, 32, '31', 0, 100000, 100000, 0, '2018-03-07 16:00:00', 'mod 36\nm 37', '2018-03-07 16:20:21', '2018-03-07 16:20:21'),
(50, 32, '31', 0, 100000, 100000, 0, '2018-03-12 16:00:00', 'reconstitution composite de la 46', '2018-03-12 16:08:08', '2018-03-12 16:08:08'),
(51, 33, '25', 0, 50000, 50000, 0, '2018-03-29 16:00:00', 'detartrage', '2018-03-29 15:10:11', '2018-03-29 15:10:11'),
(52, 34, '33', 0, 150000, 150000, 0, '2018-03-31 15:00:00', 'detrartrage(free)+comp OM sur 26', '2018-03-31 14:58:53', '2018-03-31 14:58:53'),
(53, 34, '34', 0, 100000, 100000, 0, '2018-04-17 17:45:42', 'endo 46(mise en forme)', '2018-04-04 15:44:13', '2018-04-17 15:45:42'),
(54, 33, '33', 0, 150000, 150000, 0, '2018-04-05 08:30:00', 'comp:35 od \n          36 m\n          47 om', '2018-04-05 09:32:56', '2018-04-05 09:32:56'),
(55, 35, '35', 0, 50000, 50000, 0, '2018-04-16 11:22:44', 'endo 35  lt=20.5mm', '2018-04-05 13:59:11', '2018-04-16 09:22:44'),
(56, 34, '33', 0, 50000, 50000, 0, '2018-04-06 15:02:00', 'comp omd 14', '2018-04-06 16:19:28', '2018-04-06 16:19:28'),
(57, 33, '34', 0, 200000, 200000, 0, '2018-04-07 09:09:00', 'facette comp 22 21 11 12', '2018-04-07 10:18:50', '2018-04-07 10:18:50'),
(58, 34, '33', 0, 100000, 100000, 0, '2018-04-17 17:45:55', 'comp o sur 36 37', '2018-04-07 15:02:53', '2018-04-17 15:45:55'),
(59, 34, '33', 0, 350000, 350000, 0, '2018-04-11 16:00:00', 'blanchiement gouttiere', '2018-04-11 18:43:52', '2018-04-11 18:43:52'),
(60, 35, '34', 0, 0, 0, 0, '2018-04-16 09:06:00', 'detartrage+obturation endo 35 lt=20.5', '2018-04-16 09:25:03', '2018-04-16 09:25:03'),
(61, 35, '33', 0, 100000, 100000, 0, '2018-05-14 18:26:58', 'composite 47 O\n                 45 OD', '2018-04-18 12:55:17', '2018-05-14 16:26:58'),
(62, 37, '36', 0, 0, 0, 0, '2018-04-23 17:00:00', 'detartrage', '2018-04-23 18:01:53', '2018-04-23 18:01:53'),
(63, 38, '33', 0, 75000, 75000, 0, '2018-05-14 18:34:13', 'detartrage+comp 26 P', '2018-05-12 07:27:12', '2018-05-14 16:34:13'),
(64, 35, '33', 0, 50000, 0, 50000, '2018-05-12 15:00:00', 'comp od 35', '2018-05-12 13:47:47', '2018-05-12 13:47:47'),
(65, 30, '32', 0, 50000, 50000, 0, '2018-05-16 16:40:11', 'taille de la 16+comp 46 M et 45 OD', '2018-05-16 14:39:12', '2018-05-16 14:40:11'),
(66, 34, '34', 0, 50000, 50000, 0, '2018-05-15 16:00:00', 'empreinte definitive de la 46', '2018-05-16 14:55:26', '2018-05-16 14:55:26'),
(67, 39, '40', 0, 500000, 500000, 0, '2018-05-26 09:00:00', 'CCM 15 16\nblanchiment laser\ncl 4 sur 11', '2018-05-26 07:13:04', '2018-05-26 07:13:04'),
(68, 40, '36', 0, 50000, 50000, 0, '2018-05-30 15:00:00', 'extraction 18', '2018-05-30 15:13:27', '2018-05-30 15:13:27'),
(69, 41, '41', 0, 150000, 150000, 0, '2018-05-30 22:00:00', 'endo 16\ntaille prov 16 13', '2018-05-30 20:03:38', '2018-05-30 20:03:38'),
(70, 42, '55', 0, 60000, 60000, 0, '2018-07-04 10:00:00', '16 mod comp', '2018-07-04 09:28:32', '2018-07-04 09:28:32');

-- --------------------------------------------------------

--
-- Table structure for table `fm_cms_menu`
--

CREATE TABLE `fm_cms_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fm_cms_menu`
--

INSERT INTO `fm_cms_menu` (`id`, `name`, `is_active`, `order`, `url`, `parent`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', 1, 1, '#/dashboard.html', 0, NULL, NULL),
(2, 'Customers', 1, 2, '#/customers.html', 0, NULL, NULL),
(3, 'Visits', 1, 3, '#/visits.html', 0, NULL, NULL),
(4, 'Schedules', 1, 4, '#/schedules.html', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fm_userinfo`
--

CREATE TABLE `fm_userinfo` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `f_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `l_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fm_userinfo`
--

INSERT INTO `fm_userinfo` (`id`, `user_id`, `f_name`, `l_name`, `phone`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hachem', 'Chebli', 71, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fm_users`
--

CREATE TABLE `fm_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isactive` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fm_users`
--

INSERT INTO `fm_users` (`id`, `username`, `email`, `password`, `isactive`, `created_at`, `updated_at`, `remember_token`) VALUES
(1, 'hachem', 'samichkeir@gmail.com', '$2y$10$EJfTjIAIXjOicTFvi3cYsOBC3uN6xKbjahS6w0njYD6XYwwYQYBAS', 1, NULL, '2018-05-25 12:16:17', 'cGV6GknJIMf1nRVAN7dJIFLuuAc6dIa2TBHLTh9KUX9bFvv39irLQGkBR61N');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2016_10_06_185617_user_table', 1),
('2016_10_06_190525_userinformation_table', 1),
('2016_10_06_185617_create_customer_table', 2),
('2016_10_06_191108_create_visit_table', 2),
('2016_10_17_173817_create_menu_cms_table', 3),
('2016_10_21_165628_create_schedule_Table', 3),
('2016_10_22_073350_create_items_table', 3),
('2016_10_23_193703_create_company_table', 3),
('2016_10_23_195425_create_fees_table', 3),
('2016_10_27_210455_add_schedule_end_date_to_schedule_Table', 4),
('2016_11_08_183914_create_track_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `st_companies`
--

CREATE TABLE `st_companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `st_fees`
--

CREATE TABLE `st_fees` (
  `id` int(10) UNSIGNED NOT NULL,
  `companies_id` int(10) UNSIGNED DEFAULT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fees_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `price` double NOT NULL,
  `paid` double NOT NULL,
  `rest` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `st_items`
--

CREATE TABLE `st_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `barcode` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `buy_price` double NOT NULL,
  `sell_price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `den_customers`
--
ALTER TABLE `den_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `den_schedule`
--
ALTER TABLE `den_schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `den_schedule_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `den_visit`
--
ALTER TABLE `den_visit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `den_visit_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `fm_cms_menu`
--
ALTER TABLE `fm_cms_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fm_userinfo`
--
ALTER TABLE `fm_userinfo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fm_userinfo_f_name_unique` (`f_name`),
  ADD KEY `fm_userinfo_user_id_foreign` (`user_id`);

--
-- Indexes for table `fm_users`
--
ALTER TABLE `fm_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fm_users_email_unique` (`email`);

--
-- Indexes for table `st_companies`
--
ALTER TABLE `st_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `st_fees`
--
ALTER TABLE `st_fees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `st_fees_companies_id_foreign` (`companies_id`);

--
-- Indexes for table `st_items`
--
ALTER TABLE `st_items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `den_customers`
--
ALTER TABLE `den_customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `den_schedule`
--
ALTER TABLE `den_schedule`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `den_visit`
--
ALTER TABLE `den_visit`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `fm_cms_menu`
--
ALTER TABLE `fm_cms_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `fm_userinfo`
--
ALTER TABLE `fm_userinfo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `fm_users`
--
ALTER TABLE `fm_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `st_companies`
--
ALTER TABLE `st_companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `st_fees`
--
ALTER TABLE `st_fees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `st_items`
--
ALTER TABLE `st_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `den_schedule`
--
ALTER TABLE `den_schedule`
  ADD CONSTRAINT `den_schedule_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `den_customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `den_visit`
--
ALTER TABLE `den_visit`
  ADD CONSTRAINT `den_visit_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `den_customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fm_userinfo`
--
ALTER TABLE `fm_userinfo`
  ADD CONSTRAINT `fm_userinfo_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `fm_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `st_fees`
--
ALTER TABLE `st_fees`
  ADD CONSTRAINT `st_fees_companies_id_foreign` FOREIGN KEY (`companies_id`) REFERENCES `st_companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
