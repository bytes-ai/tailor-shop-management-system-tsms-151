-- MariaDB dump 10.17  Distrib 10.5.6-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: xvc_neomtech
-- ------------------------------------------------------
-- Server version	10.5.6-MariaDB-log

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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `per_page` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '10',
  `logo_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateways` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notifications` tinyint(1) DEFAULT NULL,
  `email_enabled` tinyint(1) DEFAULT NULL,
  `sms_enabled` tinyint(1) DEFAULT NULL,
  `default_tax` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stripe` tinyint(1) DEFAULT NULL,
  `payu` tinyint(1) DEFAULT NULL,
  `language` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `direction` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ltr',
  PRIMARY KEY (`id`),
  KEY `accounts_phone_index` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,'Default Tailor Shop','+3381922520894','ycarroll@example.org','87721 Trace Isle Apt. 491, Johnsonstad, Missouri','Minima voluptatem ut asperiores ducimus veritatis tempora voluptates.','Voluptatem qui debitis voluptates error.','NC','10',NULL,'Cash,Cheque,Other',NULL,0,0,NULL,'2020-03-09 19:53:02','2022-11-20 07:36:02',0,0,'vi','ltr');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity_log`
--

DROP TABLE IF EXISTS `activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` bigint(20) unsigned NOT NULL,
  `log_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` bigint(20) unsigned DEFAULT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint(20) unsigned DEFAULT NULL,
  `causer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `batch_uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activity_log_log_name_index` (`log_name`),
  KEY `subject` (`subject_id`,`subject_type`),
  KEY `causer` (`causer_id`,`causer_type`),
  KEY `activity_log_account_id_index` (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_log`
--

LOCK TABLES `activity_log` WRITE;
/*!40000 ALTER TABLE `activity_log` DISABLE KEYS */;
INSERT INTO `activity_log` VALUES (1,1,'default','User has been logged in',1,'App\\Models\\User',NULL,1,'App\\Models\\User','{\"user\":{\"id\":1,\"account_id\":1,\"name\":\"XVC L\\u00ea H\\u01b0\\u01a1ng\",\"phone\":\"0123456789\",\"email\":\"hi@nguyenduchoai.com\",\"username\":\"neomtech\",\"password\":\"$2y$10$gGKNmwAkHEgo9NuXC7JStu47skBziWfSMeyGRb2h2ybyDB0MGnbvu\",\"owner\":true,\"salary\":null,\"photo_path\":null,\"can_sms\":0,\"view_all\":0,\"edit_all\":0,\"remember_token\":\"7z4WcIou8ZivHnUiZriS5lDQv7MeNRECQcgNBNRHVpcIGp8wxhFK5r597DWG\",\"created_at\":\"2022-11-20T13:51:57.000000Z\",\"updated_at\":\"2022-11-20T13:51:57.000000Z\",\"deleted_at\":null,\"active\":true}}',NULL,'2022-11-20 06:52:14','2022-11-20 06:52:14'),(2,1,'Customer','Customer has been created',1,'App\\Models\\Customer','created',1,'App\\Models\\User','[]',NULL,'2022-11-20 06:52:51','2022-11-20 06:52:51'),(3,1,'Service','Service has been created',1,'App\\Models\\Service','created',1,'App\\Models\\User','[]',NULL,'2022-11-20 06:53:15','2022-11-20 06:53:15'),(4,1,'Service','Service has been created',2,'App\\Models\\Service','created',1,'App\\Models\\User','[]',NULL,'2022-11-20 06:53:28','2022-11-20 06:53:28'),(5,1,'Service','Service has been created',3,'App\\Models\\Service','created',1,'App\\Models\\User','[]',NULL,'2022-11-20 06:53:42','2022-11-20 06:53:42'),(6,1,'Service','Service has been created',4,'App\\Models\\Service','created',1,'App\\Models\\User','[]',NULL,'2022-11-20 06:53:57','2022-11-20 06:53:57'),(7,1,'Measurement','Measurement has been created',1,'App\\Models\\Measurement','created',1,'App\\Models\\User','[]',NULL,'2022-11-20 06:54:30','2022-11-20 06:54:30'),(8,1,'Measurement','Measurement has been created',2,'App\\Models\\Measurement','created',1,'App\\Models\\User','[]',NULL,'2022-11-20 06:54:40','2022-11-20 06:54:40'),(9,1,'Order','Order has been created',1,'App\\Models\\Order','created',1,'App\\Models\\User','[]',NULL,'2022-11-20 06:54:45','2022-11-20 06:54:45'),(10,1,'MeasurementField','MeasurementField has been created',1,'App\\Models\\MeasurementField','created',1,'App\\Models\\User','[]',NULL,'2022-11-20 06:55:20','2022-11-20 06:55:20'),(11,1,'MeasurementField','MeasurementField has been created',2,'App\\Models\\MeasurementField','created',1,'App\\Models\\User','[]',NULL,'2022-11-20 06:55:31','2022-11-20 06:55:31'),(12,1,'Measurement','Measurement has been updated',2,'App\\Models\\Measurement','updated',1,'App\\Models\\User','[]',NULL,'2022-11-20 06:55:44','2022-11-20 06:55:44'),(13,1,'Measurement','Measurement has been updated',1,'App\\Models\\Measurement','updated',1,'App\\Models\\User','[]',NULL,'2022-11-20 06:55:53','2022-11-20 06:55:53'),(14,1,'default','  Cài đặt đã được cập nhật thành công.',1,'App\\Models\\Account',NULL,1,'App\\Models\\User','{\"account\":{\"name\":\"Default Tailor Shop\",\"phone\":\"+3381922520894\",\"email\":\"ycarroll@example.org\",\"gateways\":\"Cash,Cheque,Other\",\"default_tax\":null,\"per_page\":\"10\",\"address\":\"87721 Trace Isle Apt. 491, Johnsonstad, Missouri\",\"header\":\"Minima voluptatem ut asperiores ducimus veritatis tempora voluptates.\",\"footer\":\"Voluptatem qui debitis voluptates error.\",\"email_enabled\":0,\"sms_enabled\":0,\"payu\":0,\"stripe\":0,\"direction\":\"ltr\",\"language\":\"vi\"},\"config\":{\"APP_NAME\":\"Default Tailor Shop\",\"MAIL_FROM_NAME\":\"Tailor Shop\",\"MAIL_FROM_ADDRESS\":\"noreply@testmail.com\",\"APP_TIMEZONE\":\"UTC\",\"MAIL_DRIVER\":null,\"MAIL_HOST\":null,\"MAIL_PORT\":null,\"MAIL_ENCRYPTION\":null,\"MAIL_USERNAME\":null,\"MAIL_PASSWORD\":null,\"STRIPE_KEY\":null,\"STRIPE_SECRET\":null,\"STRIPE_CURRENCY\":null,\"PAYU_DEFAULT_GATEWAY\":\"biz\",\"PAYU_MONEY_MODE\":\"live\",\"PAYU_MONEY_KEY\":null,\"PAYU_MONEY_SALT\":null,\"PAYU_MONEY_AUTH\":null,\"PAYU_BIZ_MODE\":\"live\",\"PAYU_BIZ_KEY\":null,\"PAYU_BIZ_SALT\":null,\"SMS_FROM\":null,\"VONAGE_KEY\":null,\"VONAGE_SECRET\":null,\"VONAGE_SIGNATURE_SECRET\":null,\"MAILGUN_DOMAIN\":null,\"MAILGUN_SECRET\":null,\"MAILGUN_ENDPOINT\":null,\"AWS_ACCESS_KEY_ID\":null,\"AWS_SECRET_ACCESS_KEY\":null,\"AWS_DEFAULT_REGION\":null}}',NULL,'2022-11-20 07:36:02','2022-11-20 07:36:02');
/*!40000 ALTER TABLE `activity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` bigint(20) unsigned NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contacts_account_id_index` (`account_id`),
  KEY `contacts_phone_index` (`phone`),
  CONSTRAINT `contacts_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` bigint(20) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opening_balance` decimal(15,5) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customers_account_id_index` (`account_id`),
  KEY `customers_name_index` (`name`),
  KEY `customers_phone_index` (`phone`),
  CONSTRAINT `customers_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,1,'Hoai','hoai@hvm.vn','0888468988',NULL,NULL,NULL,500000.00000,'2022-11-20 06:52:51','2022-11-20 06:52:51',NULL);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expenses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(25,4) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `expenses_account_id_index` (`account_id`),
  KEY `expenses_user_id_index` (`user_id`),
  CONSTRAINT `expenses_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`),
  CONSTRAINT `expenses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenses`
--

LOCK TABLES `expenses` WRITE;
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
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
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journal_transactions`
--

DROP TABLE IF EXISTS `journal_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journal_transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `journal_id` bigint(20) unsigned NOT NULL,
  `debit` bigint(20) DEFAULT NULL,
  `credit` bigint(20) DEFAULT NULL,
  `currency` char(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `memo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint(20) unsigned DEFAULT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `journal_transactions_journal_id_index` (`journal_id`),
  KEY `journal_transactions_subject_id_subject_type_index` (`subject_id`,`subject_type`),
  KEY `journal_transactions_type_index` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journal_transactions`
--

LOCK TABLES `journal_transactions` WRITE;
/*!40000 ALTER TABLE `journal_transactions` DISABLE KEYS */;
INSERT INTO `journal_transactions` VALUES (1,1,NULL,50000000,'USD',NULL,'opening_balance',NULL,NULL,'2022-11-20 06:52:51','2022-11-20 06:52:51','2022-11-20 06:52:51',NULL),(2,1,NULL,45000000,'USD',NULL,'order_created',1,'App\\Models\\Order','2022-11-20 13:54:45','2022-11-20 06:54:45','2022-11-20 06:54:45',NULL);
/*!40000 ALTER TABLE `journal_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journals`
--

DROP TABLE IF EXISTS `journals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journals` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `balance` bigint(20) NOT NULL,
  `currency` char(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `morphed_id` bigint(20) unsigned NOT NULL,
  `morphed_type` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `journals_morphed_id_morphed_type_index` (`morphed_id`,`morphed_type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journals`
--

LOCK TABLES `journals` WRITE;
/*!40000 ALTER TABLE `journals` DISABLE KEYS */;
INSERT INTO `journals` VALUES (1,95000000,'USD',1,'App\\Models\\Customer','2022-11-20 06:52:51','2022-11-20 06:54:45');
/*!40000 ALTER TABLE `journals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `measurement_field_service`
--

DROP TABLE IF EXISTS `measurement_field_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `measurement_field_service` (
  `service_id` bigint(20) unsigned NOT NULL,
  `measurement_field_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`service_id`,`measurement_field_id`),
  UNIQUE KEY `measurement_field_service_sid_mfid_unique` (`service_id`,`measurement_field_id`),
  KEY `measurement_field_service_service_id_index` (`service_id`),
  KEY `measurement_field_service_measurement_field_id_index` (`measurement_field_id`),
  CONSTRAINT `measurement_field_service_measurement_field_id_foreign` FOREIGN KEY (`measurement_field_id`) REFERENCES `measurement_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `measurement_field_service_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measurement_field_service`
--

LOCK TABLES `measurement_field_service` WRITE;
/*!40000 ALTER TABLE `measurement_field_service` DISABLE KEYS */;
INSERT INTO `measurement_field_service` VALUES (1,1),(1,2),(2,1),(2,2),(3,1),(3,2),(4,1),(4,2);
/*!40000 ALTER TABLE `measurement_field_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `measurement_fields`
--

DROP TABLE IF EXISTS `measurement_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `measurement_fields` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` smallint(6) DEFAULT NULL,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`options`)),
  `required` tinyint(1) DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `measurement_fields_name_unique` (`name`),
  KEY `measurement_fields_account_id_index` (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measurement_fields`
--

LOCK TABLES `measurement_fields` WRITE;
/*!40000 ALTER TABLE `measurement_fields` DISABLE KEYS */;
INSERT INTO `measurement_fields` VALUES (1,'Text','Dai',NULL,'[{\"value\":null}]',1,NULL,1,'2022-11-20 06:55:20','2022-11-20 06:55:20',NULL),(2,'Text','Rong',NULL,'[{\"value\":null}]',0,NULL,1,'2022-11-20 06:55:31','2022-11-20 06:55:31',NULL);
/*!40000 ALTER TABLE `measurement_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `measurements`
--

DROP TABLE IF EXISTS `measurements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `measurements` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_id` bigint(20) unsigned NOT NULL,
  `customer_id` bigint(20) unsigned DEFAULT NULL,
  `measurement` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `extra_attributes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`extra_attributes`)),
  `user_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `measurements_account_id_index` (`account_id`),
  KEY `measurements_service_id_index` (`service_id`),
  KEY `measurements_customer_id_index` (`customer_id`),
  KEY `measurements_user_id_index` (`user_id`),
  CONSTRAINT `measurements_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`),
  CONSTRAINT `measurements_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `measurements_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measurements`
--

LOCK TABLES `measurements` WRITE;
/*!40000 ALTER TABLE `measurements` DISABLE KEYS */;
INSERT INTO `measurements` VALUES (1,1,'Hoai\'s Vest',1,1,NULL,'2022-11-20 06:54:30','2022-11-20 06:55:53',NULL,'[{\"Dai\":\"56\"},{\"Rong\":\"45\"}]',1),(2,1,'Hoai\'s Quần',2,1,'đ','2022-11-20 06:54:40','2022-11-20 06:55:44',NULL,'[{\"Dai\":\"35\"},{\"Rong\":\"33\"}]',1);
/*!40000 ALTER TABLE `measurements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2019_03_05_000000_create_accounts_table',1),(2,'2019_03_05_010000_create_contacts_table',1),(3,'2019_03_05_020000_create_customers_table',1),(4,'2019_03_05_030000_create_users_table',1),(5,'2019_03_05_040000_create_password_resets_table',1),(6,'2019_03_05_050000_create_journals_table',1),(7,'2019_03_05_060000_create_journal_transactions_table',1),(8,'2019_12_14_000001_create_personal_access_tokens_table',1),(9,'2020_02_06_000000_create_taxes_table',1),(10,'2020_02_06_010000_create_services_table',1),(11,'2020_02_06_020000_create_measurements_table',1),(12,'2020_02_06_120000_create_expenses_table',1),(13,'2020_02_07_120000_create_salaries_table',1),(14,'2020_02_08_120000_create_orders_table',1),(15,'2020_02_08_130000_create_payments_table',1),(16,'2020_02_21_080329_create_activity_log_table',1),(17,'2020_02_23_095011_create_jobs_table',1),(18,'2020_02_23_095132_create_failed_jobs_table',1),(19,'2020_04_10_042917_add_stripe_to_accounts_table',1),(20,'2020_04_12_070656_create_measurement_fields_table',1),(21,'2020_04_12_081636_add_custom_arrtibutes_to_measurements_table',1),(22,'2020_04_12_101636_add_user_id_to_measurements_table',1),(23,'2020_04_22_164649_add_active_to_users_table',1),(24,'2020_05_07_200908_add_payu_to_accounts_table',1),(25,'2020_05_08_200908_add_direction_to_accounts_table',1),(26,'2020_10_15_061248_create_payu_transactions_table',1),(27,'2020_10_15_082257_create_sessions_table',1),(28,'2022_03_22_063356_add_event_column_to_activity_log_table',1),(29,'2022_03_22_063357_add_batch_uuid_column_to_activity_log_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_payment`
--

DROP TABLE IF EXISTS `order_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_payment` (
  `amount` decimal(25,4) NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL,
  `payment_id` bigint(20) unsigned NOT NULL,
  UNIQUE KEY `order_payment_order_id_payment_id_unique` (`order_id`,`payment_id`),
  KEY `order_payment_order_id_payment_id_index` (`order_id`,`payment_id`),
  KEY `order_payment_order_id_index` (`order_id`),
  KEY `order_payment_payment_id_index` (`payment_id`),
  CONSTRAINT `order_payment_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `order_payment_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_payment`
--

LOCK TABLES `order_payment` WRITE;
/*!40000 ALTER TABLE `order_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_services`
--

DROP TABLE IF EXISTS `order_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_services` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` decimal(15,4) NOT NULL,
  `price` decimal(25,4) NOT NULL,
  `amount` decimal(25,4) NOT NULL,
  `measurement_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL,
  `service_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_services_measurement_id_foreign` (`measurement_id`),
  KEY `order_services_order_id_index` (`order_id`),
  KEY `order_services_service_id_index` (`service_id`),
  CONSTRAINT `order_services_measurement_id_foreign` FOREIGN KEY (`measurement_id`) REFERENCES `measurements` (`id`),
  CONSTRAINT `order_services_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `order_services_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_services`
--

LOCK TABLES `order_services` WRITE;
/*!40000 ALTER TABLE `order_services` DISABLE KEYS */;
INSERT INTO `order_services` VALUES (1,'23','Vest',1.0000,250000.0000,250000.0000,1,1,1,'2022-11-20 06:54:45','2022-11-20 06:54:45'),(2,'22','Quần',1.0000,200000.0000,200000.0000,2,1,2,'2022-11-20 06:54:45','2022-11-20 06:54:45');
/*!40000 ALTER TABLE `order_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_tax`
--

DROP TABLE IF EXISTS `order_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_tax` (
  `tax_id` int(10) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL,
  `amount` decimal(15,4) DEFAULT NULL,
  `total_amount` decimal(15,4) DEFAULT NULL,
  `calculated_on` decimal(15,4) DEFAULT NULL,
  KEY `order_tax_tax_id_order_id_index` (`tax_id`,`order_id`),
  KEY `order_tax_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_tax`
--

LOCK TABLES `order_tax` WRITE;
/*!40000 ALTER TABLE `order_tax` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` bigint(20) unsigned NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_date` date NOT NULL,
  `total` decimal(25,4) NOT NULL,
  `discount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(25,4) DEFAULT NULL,
  `tax_amount` decimal(25,4) DEFAULT NULL,
  `grand_total` decimal(25,4) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Received',
  `priority` tinyint(4) DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hash` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid` tinyint(1) DEFAULT 0,
  `photo_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `customer_id` bigint(20) unsigned NOT NULL,
  `assigned_to` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_account_id_index` (`account_id`),
  KEY `orders_hash_index` (`hash`),
  KEY `orders_user_id_index` (`user_id`),
  KEY `orders_customer_id_index` (`customer_id`),
  KEY `orders_assigned_to_index` (`assigned_to`),
  CONSTRAINT `orders_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`),
  CONSTRAINT `orders_assigned_to_foreign` FOREIGN KEY (`assigned_to`) REFERENCES `users` (`id`),
  CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,'BNI','2022-11-24',450000.0000,NULL,NULL,0.0000,450000.0000,'Received',2,NULL,'bc70b0a34c41e46a175dc260445dd80559710d80',0,NULL,NULL,1,1,NULL,'2022-11-20 06:54:45','2022-11-20 06:54:45',NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` bigint(20) unsigned NOT NULL,
  `date` date NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(25,4) NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `received` tinyint(1) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hash` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `customer_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payments_account_id_index` (`account_id`),
  KEY `payments_hash_index` (`hash`),
  KEY `payments_user_id_index` (`user_id`),
  KEY `payments_customer_id_index` (`customer_id`),
  KEY `payments_order_id_index` (`order_id`),
  CONSTRAINT `payments_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`),
  CONSTRAINT `payments_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payu_transactions`
--

DROP TABLE IF EXISTS `payu_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payu_transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `paid_for_id` bigint(20) unsigned DEFAULT NULL,
  `paid_for_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gateway` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hash` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `response` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','failed','successful','invalid') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `verified_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `payu_transactions_transaction_id_unique` (`transaction_id`),
  KEY `payu_transactions_status_index` (`status`),
  KEY `payu_transactions_verified_at_index` (`verified_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payu_transactions`
--

LOCK TABLES `payu_transactions` WRITE;
/*!40000 ALTER TABLE `payu_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `payu_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
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
-- Table structure for table `salaries`
--

DROP TABLE IF EXISTS `salaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salaries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` bigint(20) unsigned NOT NULL,
  `date` date NOT NULL,
  `amount` decimal(25,4) NOT NULL,
  `staff_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `advance` tinyint(1) DEFAULT NULL,
  `settled_on` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `salaries_account_id_index` (`account_id`),
  KEY `salaries_staff_id_index` (`staff_id`),
  KEY `salaries_user_id_index` (`user_id`),
  CONSTRAINT `salaries_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`),
  CONSTRAINT `salaries_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `users` (`id`),
  CONSTRAINT `salaries_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salaries`
--

LOCK TABLES `salaries` WRITE;
/*!40000 ALTER TABLE `salaries` DISABLE KEYS */;
/*!40000 ALTER TABLE `salaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` bigint(20) unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(25,4) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `services_account_id_index` (`account_id`),
  CONSTRAINT `services_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,1,'23','Vest',250000.0000,'cc',1,'2022-11-20 06:53:15','2022-11-20 06:53:15',NULL),(2,1,'22','Quần',200000.0000,NULL,1,'2022-11-20 06:53:28','2022-11-20 06:53:28',NULL),(3,1,'20','Vớ',25000.0000,NULL,1,'2022-11-20 06:53:42','2022-11-20 06:53:42',NULL),(4,1,'12','Ao',25000.0000,NULL,1,'2022-11-20 06:53:57','2022-11-20 06:53:57',NULL);
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('0E47P9P25w9YbanSUfs2iEZxTjBEnSZw6Q3pl4v6',NULL,'45.151.122.50','python-requests/2.27.1','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYjUyWVBvem1XRmp6SWhsSE8wT1dlOEtVN3Q2aFFaaGpORkt6aVV6SCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8veHZjLm5lb210ZWNoLnZuL2NvcmUvLmVudiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1673064222),('0LfZqJbCw85PXeBtEO4iZ3abrW0EzD1O3iuhJtMZ',NULL,'35.92.222.63','Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMzI0WGZPdGxKTGhZTFBhS2lJbllwMUpSdWsxbGpmT1FZU3J1djF3aCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMzoiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4iO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMzoiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1673802709),('0sIcmqsj2BfYukoAlaUF1Fm1Rs1GspuOcAKLQ6h7',NULL,'162.142.125.219','Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoia1ZZeDZCUnVNZWxNbkNpbDQ3d0hjOHRvSHpPSW5neVdTbzFySXZwNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8veHZjLm5lb210ZWNoLnZuL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1672258237),('7K8aAPijZYyuY0z4ACg84fBq6GXsMCYXxhEyf3n0',NULL,'128.1.164.230','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoib2NNZEJXY0xkaU9wVmtTc1BWRFhEU0hyR0o2UmhiRTI4dUJ5MGxQYiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMzoiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4iO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyOToiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4vbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1674321019),('8gUdXJNs7lHHKK6JyEB2qioL0pTqhiIF4Utjp0Zh',NULL,'18.118.100.104','Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSmVXNXdqRkFHTTI0ZUIzTlNsRkcxYmZaeUFTVEJoRkZPc2NKOGVjeSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMzoiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4iO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMzoiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1674061846),('9UKdnB7JcECYJWGv60Dtb0xiCQvIchYOWYpAwJrl',NULL,'35.92.222.63','Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMDM4dHV3Q1h6UkpVZU5qdEp1OXZqTHdJdFduUXVSb3p6eVBNbTJPcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8veHZjLm5lb210ZWNoLnZuL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1673802710),('ap2H7eypqzP7NW9nSYH9CQVnUeP04VTCwy41ug61',NULL,'138.197.100.32','Mozilla/5.0 (compatible; NetcraftSurveyAgent/1.0; +info@netcraft.com)','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWHNXMGU4NHVCWDV0ajB3VWI2UWlaRVVTM1prc2NEMlJOWEplaHZVaSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMzoiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4iO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMzoiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1673235173),('BJaVnz6n7QB2vJN20Ii3WZAX68He4Gb5IXy4kGIm',NULL,'212.47.251.118','','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWThMQkthcTBqOGJhWVhyYzVLejc3eUhNNWpoeUh5VXhLa0liMkg2UyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMzoiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4iO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMzoiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1672203280),('CQJjlC9ao5Dx7dVzaLYrjbvU5YeIu844oiUBguV2',NULL,'205.210.31.156','Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scans, please send IP addresses/domains to: scaninfo@paloaltonetworks.com','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVUdwT3o1b0o4ZW9HTTU3a255NXRKSk9HZDZZSTM5ZlZTaldaOUdBZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8veHZjLm5lb210ZWNoLnZuL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1671936855),('CUMm0IAbuawnygdphpGOtRubPkGkGweevaCwKbqd',NULL,'205.210.31.183','Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scans, please send IP addresses/domains to: scaninfo@paloaltonetworks.com','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUU9UMGhsZDdpZ0lzb3lzbG11OE5hakh1VUl2Y3FaakdNU09pUUJrTSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMzoiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4iO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMzoiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1672357149),('DayG1OBwqyIOBSHj6UFKND6RwdhKBEVrJb9TVV9D',NULL,'205.210.31.156','Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scans, please send IP addresses/domains to: scaninfo@paloaltonetworks.com','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiV1FDNTZ1N1dyZTg1R1dzWWdZeVFQcEh5N2UwR3d4ZGFZTkhibnJ6SSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMzoiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4iO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMzoiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1671936854),('ebs791LjxxxbdaWhrWcbjnpJBJ1lnE1HpjCSzFSA',NULL,'35.92.222.63','Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTngxb1JLcXZKTnl0VTdodXlYSGJIZ0xwbnVRMVVYTXlUNUMwR2ZTMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6OTQ6Imh0dHBzOi8veHZjLm5lb210ZWNoLnZuLy53ZWxsLWtub3duL2FjbWUtY2hhbGxlbmdlL196Vm9nWWtJSGxZVXRhRkhCeGtFdlJORFVXZU9EbWpVTXNkbTRkWVRTakEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1673802709),('eldfAoO7jm9B3QWmIonZ7ckU8q4IF9BMgg41Y1cH',NULL,'128.1.164.230','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiU005c0tucXdNdXdTZDdqMEQ4R3YyODg5WlRiNTJHV2t4b2x1OFBPOCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMzoiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4iO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyOToiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4vbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1674061822),('EUjL9ueNCSBzhFBFes8SqgOMMD7mUeLOX7GlSKpd',NULL,'54.191.253.226','Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMW43V2t0TDJEMVpDVGJKdWVuMlprVm43aFZuZFBNQXNUdXNyNVpUZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8veHZjLm5lb210ZWNoLnZuL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1674061848),('Fv3v1MgcdRAILDf4efmoW1FwfqYGMokI6coavIDK',1,'14.176.146.114','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.2 Safari/605.1.15','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRm9qcVF3bUw4SVZ4T0FHRVRnRmRxMldBT3BrVnpGdlM1YmF1am5JQiI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMzoiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1674386112),('gVsKO0NKb6FkWP4Qme7lJqRLuSWk6NzsZ4S5S82n',NULL,'162.142.125.219','Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOXVEZmhPd1NmRXlLd3hVZFpvS0hYVTZ2NEFDOU92OWQ3elFISGlmSSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMzoiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4iO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMzoiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1672258236),('h4OFtHHJ55v4pOOFt3vsnVcKUAqbuwzyv0AwUQM6',NULL,'87.236.176.238','Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiN3oyZzcyT0hMSUVhakMwcFFxY1JFOHVqRGJXOGVqeWlKMmJ6WVNHbiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMzoiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4iO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyOToiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4vbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1673964322),('HG7hrZqKFHNeALkpI9CcBkSlJOtD7VSb8AJltaRB',NULL,'18.223.117.148','Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTldlMEhkQkRJMHNpOFpLcUpHbGE2aGFodjR1U084U3M3NEZCM3lXVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6OTQ6Imh0dHBzOi8veHZjLm5lb210ZWNoLnZuLy53ZWxsLWtub3duL2FjbWUtY2hhbGxlbmdlL0tFTzVabkdjMUlpaTZ4ZEhGcnM1UHpVOVlNWTVMMFFobU1mYzFWeFlQQWciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1674321044),('hjPuiJjPnGYrauw82zvdezIjD9tIbpJX6rwZGzJz',NULL,'3.252.227.119','Mozilla/5.0 (compatible; NetcraftSurveyAgent/1.0; +info@netcraft.com)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTXNZWDI3aEFGNzZwa1dadWlyaVNVVWJ6OU1oZk5RRG5TZEZXa3VpZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8veHZjLm5lb210ZWNoLnZuL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1672880840),('HZ6GEoLfhG69nEIisfzcxEkVRiXgXGGyxbw5X9OO',NULL,'18.223.117.148','Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOFJ5TU5YMTg4QWYxQXUxdG1PbHVlN3U4eEk4cDRCTVBKZzNvaU9qaCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMzoiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4iO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMzoiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1674321045),('IQKgenOsO1fDnehmrQOowPam0axE03pZP8Tl90PW',NULL,'54.191.253.226','Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)','YTo0OntzOjY6Il90b2tlbiI7czo0MDoibnYwREQ5N2FWT3hkRHl4Mng5YVRSZ0tXY0lvR1pxUVhua2R6ZEhEUCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMzoiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4iO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMzoiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1674061847),('JyP2282EoLIlEFID5g26SdHOimFwkSvddcoU1D4y',NULL,'23.178.112.208','Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTks0RnQ5NFBjd2ZkQ0RNUGV3RWxGTWd6WGVNZlJCeVFhZkNocTA4MyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6OTQ6Imh0dHBzOi8veHZjLm5lb210ZWNoLnZuLy53ZWxsLWtub3duL2FjbWUtY2hhbGxlbmdlLzNTLWQ5SWdGR3lReFREa2t0d0dEOVZLbE1GcDlnMjFGRU9fQ1BzcmlfZDQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1674061846),('KOdd7M61PJeYBXQZcGXm8Wbaq9JA7LpiApFX0JFw',1,'203.210.222.48','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.2 Safari/605.1.15','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSVlBbUozd0QyNjR0UlVvWnhJU0ZQUHBOdXJEMTFoSTNMSzB2Ym9tQiI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozMToiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4vb2ZmbGluZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1674121957),('kOW2V7KrIpyBPmpyC4yG3T7AWY3jWkBn1yugyCcF',NULL,'162.142.125.219','Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiV0kzREZ3d0JIdlExaEFBZVR0Q3hnTU93TzFHMmYxT3kydVFJMnVxYSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMzoiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4iO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMzoiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1672258235),('LCsirsjU72GrbCixIzKSI0wfob5R2Zw6250eNT09',NULL,'23.178.112.203','Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)','YTo0OntzOjY6Il90b2tlbiI7czo0MDoidWJzWHRsSDZQSjB4VlVLajRUdmhiR2hhMXZxR2NuR08wbEpVdXJPcyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMzoiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4iO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMzoiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1674321046),('lS3h3opYrMXkUGy3NGz0kQHo0LXc4tGmL9FtmKGo',NULL,'18.118.100.104','Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRTJQdkdUdTJlMVd3cjNkQ1Y1YW13dVVPamgwcno3SVBJSHk5cW96TSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6OTQ6Imh0dHBzOi8veHZjLm5lb210ZWNoLnZuLy53ZWxsLWtub3duL2FjbWUtY2hhbGxlbmdlLzNTLWQ5SWdGR3lReFREa2t0d0dEOVZLbE1GcDlnMjFGRU9fQ1BzcmlfZDQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1674061845),('lzC7Wu1z9T9RWZCnciar2lQpxPqxCbtFx6hR3y7k',NULL,'23.178.112.208','Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTlRVVDB0dUp4UHRsMWZhTVBOYUgxNm9hNFlqbm5tVWxuT3FvOElPZiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMzoiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4iO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMzoiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1674061847),('MebqS6bPXpuL5lCKhrLOhKxvQtd0g33Qdf75aSH1',NULL,'54.190.129.167','Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUjlQdUpLQ3VkVVdyQzIzY2F6bXE2cFE1cEZmQW8xSkZMaUhJRE9DbiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMzoiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4iO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMzoiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1674321045),('Mil5TmAaBKCwxNya5Ji3CkjWzOeaMG475DlLsKp4',NULL,'54.190.129.167','Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiY3I1SlVSeUQxMWJXcENrUTJGeU1VRkV4ekg2SmI0VHlMdDRJRWVyYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8veHZjLm5lb210ZWNoLnZuL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1674321046),('mnores6fSEqmUTaemwoLF47TtVJIEQoMdZudHJBl',NULL,'3.252.227.119','Mozilla/5.0 (compatible; NetcraftSurveyAgent/1.0; +info@netcraft.com)','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOGVtZGhYczloZGdRcDR5RjNOeXpDUDlBNEE0OGswUlZYQnhDRUNCNiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMzoiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4iO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMzoiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1672880837),('NEgcdlzhWxNESeVTusu7luuAMX0qJIvg1O5h5pYl',NULL,'18.118.100.104','Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMDhBVVI1SDZSSFVOc1VMOUlEc0w1OVpheWhoQk5aMENPYlR1V0NqTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8veHZjLm5lb210ZWNoLnZuL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1674061847),('NZYf7dTNWnQFXOp2hHsuACNfKwLjdjxOvxvi73cB',NULL,'54.190.129.167','Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)','YTozOntzOjY6Il90b2tlbiI7czo0MDoic3VNbGJZcWlDdU1RNGVJNzZiTUREUHFvSnhOTjY1VFJjZzZnNnlYeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6OTQ6Imh0dHBzOi8veHZjLm5lb210ZWNoLnZuLy53ZWxsLWtub3duL2FjbWUtY2hhbGxlbmdlL0tFTzVabkdjMUlpaTZ4ZEhGcnM1UHpVOVlNWTVMMFFobU1mYzFWeFlQQWciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1674321044),('PEJMiXTgN01HOK0inXO1rBr3IJP13dE6heT8szYR',NULL,'198.235.24.170','Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scans, please send IP addresses/domains to: scaninfo@paloaltonetworks.com','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiV3Q1NXA5dDVPM0MwZnNzR0o0U0JmejZubGRIcjk5bDAxWkRKTk5idCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMzoiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4iO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMzoiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1672131697),('PtmEAh8iTzxEkHzBRvh6E4fZ7h1kJsuLQlXVe6z2',NULL,'18.217.64.139','Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZXpPNTZsSXNmTVhBQ1hza05ENWdTNVZMakxwUXgwRDE0RU05dXhScSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6OTQ6Imh0dHBzOi8veHZjLm5lb210ZWNoLnZuLy53ZWxsLWtub3duL2FjbWUtY2hhbGxlbmdlL196Vm9nWWtJSGxZVXRhRkhCeGtFdlJORFVXZU9EbWpVTXNkbTRkWVRTakEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1673802708),('q5lDJjqOc7ag1u3WOCmFugWDCcpTkR9lrFrscB2a',NULL,'18.217.64.139','Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)','YTozOntzOjY6Il90b2tlbiI7czo0MDoid2c0c1lKY1ByeHo2QUxtdjRvOVlUQlBEaFluc1pwNFVqSU4wbEtidiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8veHZjLm5lb210ZWNoLnZuL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1673802710),('QhR7z62GNCKkQdGFaaUFH4NeiFKOAoGMMoRGO5bp',NULL,'18.223.117.148','Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSmo0MFdwVUFYdmVodm9MdHUyTGtrWllFajI2YnN5SWM5TzZ5OHZ2NSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8veHZjLm5lb210ZWNoLnZuL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1674321046),('qiGh0DfnYI1ntJidldadZcfNL4McULE5JShV97B4',NULL,'23.178.112.107','Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQVVuU3ZPTmJHUVJ4QzhEc0ZCNVBjdDRYUzZGUXZoOGZ0SlJ4QjVqMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8veHZjLm5lb210ZWNoLnZuL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1673802712),('QPSTIUErqCHH850Fgb0ZeSMOfOMZFYsreJQQdMgK',NULL,'198.235.24.29','Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scans, please send IP addresses/domains to: scaninfo@paloaltonetworks.com','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSm1OV2Z0WFE3R0VIRzFUMXVKcXcweHVjbTRrQ3laOWRNSUFMcDRFSSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMzoiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4iO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMzoiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1672481611),('R83n3tGncczl3miraqglULG5HZFpTrO8r4yawhGH',NULL,'162.142.125.219','Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWGxENGYyUTF0cDhnaUpoQUNKMnFnU0hLSk1EV1duRzlxcGRlT3RyZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8veHZjLm5lb210ZWNoLnZuL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1672258239),('rZwzE04w1TJ9X5oDmedBauc2PlXloF91zRWMoRhy',NULL,'18.217.64.139','Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWlpuSGk3bmNQWm9LdFltWW05MjlhOHpJcHF0S2ZYamlac05ieUo3byI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMzoiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4iO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMzoiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1673802709),('SYoxHUWzSur0NExC6LPc9agn3vZFwi1wPvsWW9kw',NULL,'23.178.112.107','Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNHlNMTEwNjN5YXBaSmMwYmxtdmxGWncwdWx3eDIwMkpWR2dwcXhuVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6OTQ6Imh0dHBzOi8veHZjLm5lb210ZWNoLnZuLy53ZWxsLWtub3duL2FjbWUtY2hhbGxlbmdlL196Vm9nWWtJSGxZVXRhRkhCeGtFdlJORFVXZU9EbWpVTXNkbTRkWVRTakEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1673802709),('SZiIhxMtoDFewQRuU1zTWbe1baMpMtPpV3mHhLFs',NULL,'23.178.112.203','Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMXo2b1k5Q1YwTEFlTU9aWmtNWEN6VmExOFUyUlVJOTBrOWNLQlhKNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6OTQ6Imh0dHBzOi8veHZjLm5lb210ZWNoLnZuLy53ZWxsLWtub3duL2FjbWUtY2hhbGxlbmdlL0tFTzVabkdjMUlpaTZ4ZEhGcnM1UHpVOVlNWTVMMFFobU1mYzFWeFlQQWciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1674321044),('tCEZ7RcCVgTEeOEUvPHU9MquJcR3mkkoaHnWVWCv',NULL,'54.191.253.226','Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSm5qa3RGZGdNOTYyZE50ZW12U1J4VDdoT3pNcWlnb2I1ZDhWZHE3SCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6OTQ6Imh0dHBzOi8veHZjLm5lb210ZWNoLnZuLy53ZWxsLWtub3duL2FjbWUtY2hhbGxlbmdlLzNTLWQ5SWdGR3lReFREa2t0d0dEOVZLbE1GcDlnMjFGRU9fQ1BzcmlfZDQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1674061845),('tWrR1Z2eMkUnQoA9Em6ghwS6lMfWhfMaNbtyKd56',NULL,'198.235.24.130','Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scans, please send IP addresses/domains to: scaninfo@paloaltonetworks.com','YTozOntzOjY6Il90b2tlbiI7czo0MDoibDFMTUhlQkJ6NzI4NVA1TWtMSVdHTlhINGRiRlA5dVlwS25vZEdHRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8veHZjLm5lb210ZWNoLnZuL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1672591113),('USTeRcziVj0LJxqCP3MFwX82WbODs5JS3LKMykxk',NULL,'45.151.122.50','python-requests/2.27.1','YTozOntzOjY6Il90b2tlbiI7czo0MDoid3pVRXBxYktKRTZRVllvQUJwcnBBeHRLaWt3WUt1cHlGQ2F6R2JWSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8veHZjLm5lb210ZWNoLnZuLy5lbnYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1673064215),('uTrZnHEqP87uZeYtpC08D8XiYDyMUljdRbIxnwwC',NULL,'198.235.24.130','Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scans, please send IP addresses/domains to: scaninfo@paloaltonetworks.com','YTo0OntzOjY6Il90b2tlbiI7czo0MDoieWZPM3E5cVp4TXB2bEtlbkllQThGWVlKOGxFTkwya3U4MGlhbU5uaSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMzoiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4iO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMzoiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1672591112),('Vtr2PGfi1MnRhrEN7ADKhXvEWWWW6FNhPQ3cG4es',NULL,'23.178.112.203','Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYVB0Q3JKRTJ5T01icTFtd0R3bVB2UjhxVklzRnVuS0pXZWx2Qlh0cSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8veHZjLm5lb210ZWNoLnZuL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1674321047),('VUqSkRm4i8vBH6K01Q39FMMroBn1oiEMuorUYw9F',NULL,'87.236.176.141','Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSlc4TVE0RjllOHVzdkowb01zUEJWcG1sNEVYTkRIUzJVYVE2Vjg4TiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMzoiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4iO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyOToiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4vbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1673818548),('vyWel4EEHHfm6HWKYbAp8TZa53W2ZCmzvPATcwpQ',NULL,'23.178.112.107','Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTjA2MnkyajlkcVhZeEtQZk0yQVJiZHRtM3pQV0tqcjVpdFhxWjA4USI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMzoiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4iO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMzoiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1673802710),('XyAeOVPaVy5SCTyRLXgJzShsjhqspktZuRdnOip4',NULL,'198.235.24.29','Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scans, please send IP addresses/domains to: scaninfo@paloaltonetworks.com','YTozOntzOjY6Il90b2tlbiI7czo0MDoidjZrdUZPRlFwZ3ZHVVdKcURnRllBWnFleFlvZmdOcmhoVFZqUGtEVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8veHZjLm5lb210ZWNoLnZuL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1672481612),('z5ZvTlwArzk2sTMHEl5TT8Vwv9piMbQcSFiShLFa',NULL,'23.178.112.208','Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZTR0dnBNZ21NU3h2Z2J2MkdTR2wzQmdGQkNBUFUzNk01cUsyWGNpVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8veHZjLm5lb210ZWNoLnZuL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1674061849),('zp8DBeZ6gnTrfGSMjonxMdXwTqGeN96vQIUBvTNp',NULL,'128.1.164.230','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoibnhuRHBTZTAyTFo3emJBMUVLcGFRaUVmTUswazB5SHVyWFRVN0tWTCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMzoiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4iO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyOToiaHR0cHM6Ly94dmMubmVvbXRlY2gudm4vbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1673802703);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxes`
--

DROP TABLE IF EXISTS `taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taxes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(8,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` tinyint(1) DEFAULT NULL,
  `same` tinyint(1) DEFAULT NULL,
  `compound` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taxes_code_unique` (`code`),
  KEY `taxes_account_id_index` (`account_id`),
  CONSTRAINT `taxes_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxes`
--

LOCK TABLES `taxes` WRITE;
/*!40000 ALTER TABLE `taxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` bigint(20) unsigned NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` tinyint(1) NOT NULL DEFAULT 0,
  `salary` decimal(25,4) DEFAULT NULL,
  `photo_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `can_sms` tinyint(1) DEFAULT 0,
  `view_all` tinyint(1) DEFAULT 0,
  `edit_all` tinyint(1) DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`),
  KEY `users_account_id_index` (`account_id`),
  KEY `users_phone_index` (`phone`),
  CONSTRAINT `users_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'XVC Lê Hương','0123456789','hi@nguyenduchoai.com','neomtech','$2y$10$gGKNmwAkHEgo9NuXC7JStu47skBziWfSMeyGRb2h2ybyDB0MGnbvu',1,NULL,NULL,0,0,0,'7z4WcIou8ZivHnUiZriS5lDQv7MeNRECQcgNBNRHVpcIGp8wxhFK5r597DWG','2022-11-20 06:51:57','2022-11-20 06:51:57',NULL,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'xvc_neomtech'
--

--
-- Dumping routines for database 'xvc_neomtech'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-24  9:04:00
