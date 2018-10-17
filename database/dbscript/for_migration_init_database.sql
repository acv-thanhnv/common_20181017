-- MySQL dump 10.13  Distrib 5.7.23, for Win64 (x86_64)
--
-- Host: localhost    Database: laravel_sample
-- ------------------------------------------------------
-- Server version	5.7.23-log

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
-- Table structure for table `catelory`
--

DROP TABLE IF EXISTS `catelory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catelory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_value` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catelory`
--

LOCK TABLES `catelory` WRITE;
/*!40000 ALTER TABLE `catelory` DISABLE KEYS */;
INSERT INTO `catelory` (`id`, `name`, `lft`, `rgt`, `url`, `order_value`) VALUES (1,'Root',1,16,'https://root.com',NULL);
/*!40000 ALTER TABLE `catelory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_languages`
--

DROP TABLE IF EXISTS `sys_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_languages` (
  `id` int(11) NOT NULL,
  `code` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_languages`
--

LOCK TABLES `sys_languages` WRITE;
/*!40000 ALTER TABLE `sys_languages` DISABLE KEYS */;
INSERT INTO `sys_languages` (`id`, `code`, `name`, `order`) VALUES (1,'jp','Japanese',NULL),(2,'en','English',NULL);
/*!40000 ALTER TABLE `sys_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_modules`
--

DROP TABLE IF EXISTS `sys_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_code` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `module_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_value` int(11) DEFAULT NULL,
  `is_skip_acl` tinyint(4) DEFAULT NULL COMMENT 'skips show acl in form, but not affect to action check acl',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_modules`
--

LOCK TABLES `sys_modules` WRITE;
/*!40000 ALTER TABLE `sys_modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_map_screen`
--

DROP TABLE IF EXISTS `sys_role_map_screen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_map_screen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_value` int(11) DEFAULT NULL,
  `screen_id` int(11) DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_map_screen`
--

LOCK TABLES `sys_role_map_screen` WRITE;
/*!40000 ALTER TABLE `sys_role_map_screen` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_role_map_screen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_roles`
--

DROP TABLE IF EXISTS `sys_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `role_value` int(11) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `value_UNIQUE` (`role_value`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_roles`
--

LOCK TABLES `sys_roles` WRITE;
/*!40000 ALTER TABLE `sys_roles` DISABLE KEYS */;
INSERT INTO `sys_roles` (`id`, `name`, `role_value`, `description`) VALUES (1,'System Administrator',1,'Full access'),(2,'Mananger',2,NULL),(3,'User',3,NULL),(4,'Guess',0,NULL),(5,'OtherParty',10,NULL);
/*!40000 ALTER TABLE `sys_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_screens`
--

DROP TABLE IF EXISTS `sys_screens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_screens` (
  `id` int(11) NOT NULL,
  `module` varchar(45) DEFAULT NULL,
  `controller` varchar(45) DEFAULT NULL,
  `action` varchar(45) DEFAULT NULL,
  `screen_code` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_screens`
--

LOCK TABLES `sys_screens` WRITE;
/*!40000 ALTER TABLE `sys_screens` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_screens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_translate_type`
--

DROP TABLE IF EXISTS `sys_translate_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_translate_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text CHARACTER SET latin1,
  `order_value` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_translate_type`
--

LOCK TABLES `sys_translate_type` WRITE;
/*!40000 ALTER TABLE `sys_translate_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_translate_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_translation`
--

DROP TABLE IF EXISTS `sys_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_code` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT 'en',
  `translate_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_translation`
--

LOCK TABLES `sys_translation` WRITE;
/*!40000 ALTER TABLE `sys_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_translation_back`
--

DROP TABLE IF EXISTS `sys_translation_back`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_translation_back` (
  `id_back` int(11) NOT NULL AUTO_INCREMENT,
  `date_back` datetime DEFAULT NULL,
  `lang_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `translate_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_back`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_translation_back`
--

LOCK TABLES `sys_translation_back` WRITE;
/*!40000 ALTER TABLE `sys_translation_back` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_translation_back` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_value` int(11) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_detail`
--

DROP TABLE IF EXISTS `users_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_detail` (
  `user_id` int(11) NOT NULL,
  `gender` int(11) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_detail`
--

LOCK TABLES `users_detail` WRITE;
/*!40000 ALTER TABLE `users_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `view_category_item_level`
--

DROP TABLE IF EXISTS `view_category_item_level`;
/*!50001 DROP VIEW IF EXISTS `view_category_item_level`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_category_item_level` AS SELECT
 1 AS `id`,
 1 AS `name`,
 1 AS `lft`,
 1 AS `rgt`,
 1 AS `url`,
 1 AS `order_value`,
 1 AS `level_value`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'laravel_sample'
--
/*!50003 DROP FUNCTION IF EXISTS `get_error_code` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;

CREATE DEFINER=`root`@`localhost` FUNCTION `get_error_code`() RETURNS int(11)
BEGIN



	RETURN -1;



END ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `get_error_message` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;

CREATE DEFINER=`root`@`localhost` FUNCTION `get_error_message`(code INT, message_code VARCHAR(255)) RETURNS varchar(255) CHARSET latin1
BEGIN



	RETURN '';



END ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `get_success_code` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;

CREATE DEFINER=`root`@`localhost` FUNCTION `get_success_code`() RETURNS int(11)
BEGIN



	RETURN 0;



END ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `SPLIT_STRING` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;

CREATE DEFINER=`root`@`localhost` FUNCTION `SPLIT_STRING`(



	str LONGTEXT CHARSET utf8,



	delim VARCHAR(10) ,



	pos INT



) RETURNS longtext CHARSET utf8
RETURN REPLACE(



	SUBSTRING(



		SUBSTRING_INDEX(str , delim , pos) ,



		CHAR_LENGTH(



			SUBSTRING_INDEX(str , delim , pos - 1)



		) + 1



	) ,



	delim ,



	''



) ; 

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ACL_GET_MODULES_LST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;

CREATE DEFINER=`root`@`localhost` PROCEDURE `ACL_GET_MODULES_LST`()
BEGIN



	SELECT * FROM sys_modules ORDER BY order_value;







END ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ACL_GET_ROLES_LST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;

CREATE DEFINER=`root`@`localhost` PROCEDURE `ACL_GET_ROLES_LST`()
BEGIN



	SELECT * FROM sys_roles



    ORDER BY role_value;



END ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ACL_GET_ROLES_MAP_ACTION_LST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;

CREATE DEFINER=`root`@`localhost` PROCEDURE `ACL_GET_ROLES_MAP_ACTION_LST`()
BEGIN







	SELECT



		SR.id AS role_id



	,	SR.name AS role_name



    ,	SR.role_value AS role_value



    ,	SR.description AS role_description



    FROM sys_roles AS SR



    ORDER BY SR.role_value;







	SELECT



		SR.id AS role_id



	,	RMS.id AS role_map_id



	,	SR.name AS role_name



    ,	SR.role_value AS role_value



    ,	SR.description AS role_description



    ,	SS.module



    ,	SS.controller



    ,	SS.action



    ,	RMS.is_active AS is_active



    ,	SS.screen_code AS screen_code



    FROM sys_roles AS SR



    LEFT JOIN sys_role_map_screen AS RMS ON



			SR.role_value = RMS.role_value



	LEFT JOIN sys_screens AS SS ON



			RMS.screen_id = SS.id



	INNER JOIN sys_modules AS DM ON



			DM.module_code = SS.module



		AND DM.is_skip_acl <> 1



	ORDER BY



		SR.role_value



	,	RMS.screen_id;







END ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ACL_ROLE_UPDATE_ACTIVE_ACT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;

CREATE DEFINER=`root`@`localhost` PROCEDURE `ACL_ROLE_UPDATE_ACTIVE_ACT`(roleMapId INT,isActive INT)
BEGIN



	UPDATE sys_role_map_screen



    SET



		is_active = isActive



	WHERE



		id = roleMapId;







    CALL sys_show_result(get_success_code(), '{"message_code":"success_code"}');



END ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ACL_ROLE_UPDATE_ACTIVE_ALL_ACT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;

CREATE DEFINER=`root`@`localhost` PROCEDURE `ACL_ROLE_UPDATE_ACTIVE_ALL_ACT`(isActive INT)
BEGIN



	UPDATE sys_role_map_screen



    SET



		is_active = isActive;







    CALL sys_show_result(get_success_code(), '{"message_code":"success_code"}');



END ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEBUG_ADD_TRANSLATE_COMBO_LST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;

CREATE DEFINER=`root`@`localhost` PROCEDURE `DEBUG_ADD_TRANSLATE_COMBO_LST`()
BEGIN







	SELECT



		id



	,	code



    ,	comment



    FROM sys_translate_type



    ORDER BY order_value;



END ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEBUG_BACKUP_TRANSLATE_ACT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;

CREATE DEFINER=`root`@`localhost` PROCEDURE `DEBUG_BACKUP_TRANSLATE_ACT`()
BEGIN







    TRUNCATE TABLE sys_translate_backup;



	INSERT INTO sys_translate_backup(



		id



	,	lang_code



    ,	translate_type



    ,	code



    ,	text



    ,	input_type



    ,	created_At



    ,	updated_at



    ,	is_deleted







    )



    SELECT



    	id



	,	lang_code



    ,	translate_type



    ,	code



    ,	text



    ,	input_type



    ,	created_At



    ,	updated_at



    ,	is_deleted



    FROM sys_translation;







    CALL sys_show_result(get_success_code(), '{"message_code":"success_code"}');



END ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEBUG_CATELORY_ADD_CHILD_IN_LEFT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;

CREATE DEFINER=`root`@`localhost` PROCEDURE `DEBUG_CATELORY_ADD_CHILD_IN_LEFT`(parentNodeId INT, newNodeName VARCHAR(100),newUrl VARCHAR(100))
BEGIN



	DECLARE lft_tmp INT default 0;



    DECLARE newId INT default 0;



    SET lft_tmp = (



		SELECT lft FROM catelory



		WHERE id = parentNodeId



        LIMIT 1



	);







    SET SQL_SAFE_UPDATES = 0;



    UPDATE catelory



	SET



		lft = lft+2



    WHERE



		lft > lft_tmp;







	UPDATE catelory



	SET



		rgt = rgt+2



    WHERE



		rgt > lft_tmp;







    INSERT INTO catelory(name, lft, rgt,url) VALUES(newNodeName, lft_tmp + 1, lft_tmp + 2,newUrl);



    SET newId = LAST_INSERT_ID();



    CALL sys_show_result(get_success_code(), CONCAT('{"message_code":"success_code","newid":',newId,'}'));







END ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEBUG_CATELORY_ADD_SIBLING` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;

CREATE DEFINER=`root`@`localhost` PROCEDURE `DEBUG_CATELORY_ADD_SIBLING`(currentNodeId INT, newNodeName VARCHAR(100),newUrl VARCHAR(100))
BEGIN



	DECLARE rgt_tmp INT default 0;



    DECLARE newId INT default 0;



    SET rgt_tmp = (



		SELECT  rgt FROM catelory



		WHERE id = currentNodeId



        LIMIT 1);







    UPDATE catelory



	SET



		lft = lft+2



    WHERE



		lft > rgt_tmp;



	 UPDATE catelory



	SET



		rgt = rgt+2



    WHERE



		rgt > rgt_tmp;







    INSERT INTO catelory(name, lft, rgt,url) VALUES(newNodeName, rgt_tmp + 1, rgt_tmp + 2,newUrl);



    SET newId = LAST_INSERT_ID();



    CALL sys_show_result(get_success_code(), CONCAT('{"message_code":"success_code","newid":',newId,'}'));



END ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEBUG_CATELORY_DELETE_NODE_AND_CHILD` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;

CREATE DEFINER=`root`@`localhost` PROCEDURE `DEBUG_CATELORY_DELETE_NODE_AND_CHILD`(nodeId INT)
BEGIN



	DECLARE myLeft INT default 0;



    DECLARE myRight INT default 0;



	DECLARE myWidth INT default 0;







	SELECT lft, rgt,(rgt - lft + 1) INTO myLeft , myRight , myWidth



	FROM catelory



	WHERE id = nodeId;



	START TRANSACTION;



    /** Delete not root node only **/



    IF myLeft >1 THEN



		DELETE FROM catelory WHERE lft BETWEEN myLeft AND myRight;



		UPDATE catelory SET rgt = rgt - myWidth WHERE rgt > myRight;



		UPDATE catelory SET lft = lft - myWidth WHERE lft > myRight;



    END IF;



    COMMIT;



END ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEBUG_CATELORY_UPDATE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;

CREATE DEFINER=`root`@`localhost` PROCEDURE `DEBUG_CATELORY_UPDATE`(nodeId INT, pName VARCHAR(100),p_url VARCHAR(100) )
BEGIN



	UPDATE catelory SET name = pName , url = p_url WHERE id = nodeId;



    CALL sys_show_result(get_success_code(), CONCAT('{"message_code":"success_code"}'));







END ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEBUG_GET_ALL_SP_LST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;

CREATE DEFINER=`root`@`localhost` PROCEDURE `DEBUG_GET_ALL_SP_LST`()
BEGIN



	SHOW PROCEDURE STATUS



	WHERE Db = DATABASE() AND Type = 'PROCEDURE';







END ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEBUG_GET_ALL_TABLE_LST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;

CREATE DEFINER=`root`@`localhost` PROCEDURE `DEBUG_GET_ALL_TABLE_LST`()
BEGIN



	select table_name As name from information_schema.tables WHERE TABLE_SCHEMA = DATABASE();







END ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEBUG_GET_CATEGORY_LST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;

CREATE DEFINER=`root`@`localhost` PROCEDURE `DEBUG_GET_CATEGORY_LST`()
BEGIN







	SELECT BASE.id, BASE.name, BASE.level_value ,BASE.url, BASE.order_value, TMP.id AS parent



    FROM view_category_item_level AS BASE



	LEFT JOIN view_category_item_level AS TMP ON



			TMP.level_value = BASE.level_value -1



		AND  BASE.lft BETWEEN TMP.lft AND TMP.rgt



	ORDER BY BASE.id;







END ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEBUG_GET_CATEGORY_WITH_LEVEL_LIST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;

CREATE DEFINER=`root`@`localhost` PROCEDURE `DEBUG_GET_CATEGORY_WITH_LEVEL_LIST`()
BEGIN



	SELECT BASE.id, BASE.name, BASE.level_value, BASE.lft, BASE.rgt,BASE.url, BASE.order_value



    FROM view_category_item_level AS BASE



	ORDER BY BASE.lft;



END ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEBUG_GET_LANGUAGE_CODE_LST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;

CREATE DEFINER=`root`@`localhost` PROCEDURE `DEBUG_GET_LANGUAGE_CODE_LST`()
BEGIN



	SELECT



		id,



        code,



        name



	FROM sys_languages;



END ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEBUG_GET_MODULES_LST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;

CREATE DEFINER=`root`@`localhost` PROCEDURE `DEBUG_GET_MODULES_LST`()
BEGIN



	SELECT * FROM sys_modules ORDER BY order_value;







END ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEBUG_GET_PARAM_OF_SPS_LST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;

CREATE DEFINER=`root`@`localhost` PROCEDURE `DEBUG_GET_PARAM_OF_SPS_LST`(p_procedureName VARCHAR(250) charset utf8)
BEGIN







	SELECT *



	FROM information_schema.parameters



	WHERE SPECIFIC_NAME = p_procedureName



    AND SPECIFIC_SCHEMA = DATABASE()



    ;







END ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEBUG_GET_ROLES_LST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;

CREATE DEFINER=`root`@`localhost` PROCEDURE `DEBUG_GET_ROLES_LST`()
BEGIN



	SELECT * FROM sys_roles



    ORDER BY role_value;



END ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEBUG_GET_ROLES_MAP_ACTION_LST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;

CREATE DEFINER=`root`@`localhost` PROCEDURE `DEBUG_GET_ROLES_MAP_ACTION_LST`()
BEGIN







	SELECT



		SR.id AS role_id



	,	SR.name AS role_name



    ,	SR.role_value AS role_value



    ,	SR.description AS role_description



    FROM sys_roles AS SR



    ORDER BY SR.role_value;







	SELECT



		SR.id AS role_id



	,	RMS.id AS role_map_id



	,	SR.name AS role_name



    ,	SR.role_value AS role_value



    ,	SR.description AS role_description



    ,	SS.module



    ,	SS.controller



    ,	SS.action



    ,	RMS.is_active AS is_active



    ,	SS.screen_code AS screen_code



    FROM sys_roles AS SR



    LEFT JOIN sys_role_map_screen AS RMS ON



			SR.role_value = RMS.role_value



	LEFT JOIN sys_screens AS SS ON



			RMS.screen_id = SS.id



	INNER JOIN sys_modules AS DM ON



			DM.module_code = SS.module



		AND DM.is_skip_acl <> 1



	ORDER BY



		SR.role_value



	,	RMS.screen_id;







END ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEBUG_GET_TRANSLATION_DATA_LST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;

CREATE DEFINER=`root`@`localhost` PROCEDURE `DEBUG_GET_TRANSLATION_DATA_LST`( p_translate_type_code VARCHAR(50),p_lang VARCHAR(50) )
BEGIN



	SELECT



			V.id



		,	V.lang_code







		,	V.text



        ,	TT.code AS translate_type_code



		FROM sys_translation AS V



		LEFT JOIN sys_translate_type TT ON



			V.translate_type= TT.code



		WHERE



				(V.is_deleted IS NULL OR  V.is_deleted<>1)



			AND (	p_translate_type_code IS NULL OR p_translate_type_code = '' OR TT.code= p_translate_type_code)



			AND (TT.code IS NOT NULL)



            AND (	p_lang IS NULL OR p_lang = '' OR V.lang_code= p_lang)



        ORDER BY



				V.lang_code;



END ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEBUG_GET_TRANSLATION_TYPE_LST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;

CREATE DEFINER=`root`@`localhost` PROCEDURE `DEBUG_GET_TRANSLATION_TYPE_LST`()
BEGIN



	SELECT id,code,comment FROM sys_translate_type



    ORDER BY code;



END ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEBUG_GET_VALIDATION_RULES_LST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;

CREATE DEFINER=`root`@`localhost` PROCEDURE `DEBUG_GET_VALIDATION_RULES_LST`()
BEGIN



	SELECT



		V.id



	,	V.lang_code



    ,	V.code



    ,	VI.type_name



    ,	V.text



	FROM sys_translation AS V



    LEFT JOIN sys_validation_input_type AS VI ON



		V.input_type = VI.id



	LEFT JOIN sys_translate_type TT ON



		V.translate_type= TT.id



	WHERE



			V.is_deleted IS NULL



		OR  V.is_deleted<>1



		AND TT.code= 'validation'



	ORDER BY



			V.lang_code



		,	V.code



        ,	VI.type_name;







END ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEBUG_IMPORT_AND_MERGER_ROLE_ACT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;

CREATE DEFINER=`root`@`localhost` PROCEDURE `DEBUG_IMPORT_AND_MERGER_ROLE_ACT`(p_listScreen JSON)
BEGIN











		DECLARE i,j INT DEFAULT 1;



		DECLARE countElement INT DEFAULT 0;



		DECLARE screen_json_arr JSON;



		DECLARE tmpRecord JSON;



		CREATE TEMPORARY TABLE IF NOT EXISTS SCREEN_INFO (



			id INT NOT NULL  AUTO_INCREMENT,



			module VARCHAR(50) NOT NULL,



			controller VARCHAR(50) NOT NULL,



			action_name VARCHAR(50) NOT NULL,



            screen_code VARCHAR(100) NOT NULL,



            description VARCHAR(100),



			PRIMARY KEY (id)



		);



		CREATE TEMPORARY TABLE IF NOT EXISTS SCREEN_MAP_ROLE (



			module VARCHAR(50) NOT NULL,



			controller VARCHAR(50) NOT NULL,



			action_name VARCHAR(50) NOT NULL,



			role_value INT,



			is_active TINYINT(4)



		);



        CREATE TEMPORARY TABLE IF NOT EXISTS SCREEN_MAP_ROLE_INSERT (



			module VARCHAR(50) NOT NULL,



			controller VARCHAR(50) NOT NULL,



			action_name VARCHAR(50) NOT NULL,



			role_value INT,



			is_active TINYINT(4)



		);



        START TRANSACTION;



		/**



		INIT INPUT DATA



		**/



		SET screen_json_arr = JSON_EXTRACT(p_listScreen,'$.*');



		SET countElement = JSON_LENGTH(screen_json_arr) ;



		WHILE i <= countElement DO



			SET j = i-1;



			SET tmpRecord = JSON_EXTRACT(screen_json_arr,CONCAT('$[',j,']'));



			INSERT INTO SCREEN_INFO(



				id



			,	module



			,	controller



			,	action_name



            ,	screen_code



            ,	description



			)



			SELECT



				i



			,	JSON_UNQUOTE(JSON_EXTRACT(tmpRecord,'$.module'))



			,	JSON_UNQUOTE(JSON_EXTRACT(tmpRecord,'$.controller'))



			,	JSON_UNQUOTE(JSON_EXTRACT(tmpRecord,'$.action'))



            ,	JSON_UNQUOTE(JSON_EXTRACT(tmpRecord,'$.screen_code'))



            ,	JSON_UNQUOTE(JSON_EXTRACT(tmpRecord,'$.description'))



			;



			SET i = i+1;



		END WHILE;







		/** BUSSINESS**/



		INSERT SCREEN_MAP_ROLE(



			module ,



			controller,



			action_name,



			role_value,



			is_active



		)



		SELECT



			S.module



		,	S.controller



		,	S.action



		,	RMS.role_value



		,	RMS.is_active



		FROM sys_role_map_screen AS RMS



		INNER JOIN sys_screens AS S ON



			RMS.screen_id = S.id;



		/** Remove all not exists in screen list**/







		DELETE FROM SCREEN_MAP_ROLE



        WHERE



			SCREEN_MAP_ROLE.module NOT IN (SELECT module FROM SCREEN_INFO);



		DELETE FROM SCREEN_MAP_ROLE



        WHERE



			 SCREEN_MAP_ROLE.controller NOT IN (SELECT controller FROM SCREEN_INFO);



		DELETE FROM SCREEN_MAP_ROLE



        WHERE



			SCREEN_MAP_ROLE.action_name NOT IN (SELECT action_name FROM SCREEN_INFO);











        INSERT INTO SCREEN_MAP_ROLE_INSERT(



			module ,



			controller,



			action_name,



			role_value,



			is_active



        )



        SELECT



			module ,



			controller,



			action_name,



			role_value,



			is_active



		FROM SCREEN_MAP_ROLE;











		INSERT INTO SCREEN_MAP_ROLE_INSERT(



			module ,



			controller,



			action_name,



			role_value,



			is_active



		)



		SELECT DISTINCT



			S.module



		,	S.controller



		,	S.action_name



		,	R.role_value



		,	0



		FROM SCREEN_INFO AS S



        LEFT JOIN SCREEN_MAP_ROLE AS RMS  ON



				S.module =  RMS.module



			AND	S.controller =  RMS.controller



			AND S.action_name = RMS.action_name



        CROSS JOIN sys_roles AS R



        WHERE RMS.module IS NULL;







		TRUNCATE TABLE sys_screens;



		INSERT INTO sys_screens(



			id



		,	module



		,	controller



		,	action



        ,	screen_code



		,	description



		)



		SELECT



			id



		,	module



		,	controller



		,	action_name



        ,	screen_code



		,	description



		FROM SCREEN_INFO;







		TRUNCATE TABLE sys_role_map_screen;



		INSERT INTO sys_role_map_screen(



			role_value



		,	screen_id



		,	is_active



		)



		SELECT



			RMS.role_value



		,	S.id



		,	RMS.is_active



		FROM SCREEN_MAP_ROLE_INSERT AS RMS



		INNER JOIN sys_screens AS S ON



				RMS.module =  S.module



			AND RMS.controller = S.controller



			AND RMS.action_name = S.action;







        COMMIT;







		DROP TABLE SCREEN_INFO;



		DROP TABLE SCREEN_MAP_ROLE;



        DROP TABLE SCREEN_MAP_ROLE_INSERT;



END ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEBUG_ROLE_UPDATE_ACTIVE_ACT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;

CREATE DEFINER=`root`@`localhost` PROCEDURE `DEBUG_ROLE_UPDATE_ACTIVE_ACT`(roleMapId INT,isActive INT)
BEGIN



	UPDATE sys_role_map_screen



    SET



		is_active = isActive



	WHERE



		id = roleMapId;







    CALL sys_show_result(get_success_code(), '{"message_code":"success_code"}');



END ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEBUG_ROLE_UPDATE_ACTIVE_ALL_ACT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;

CREATE DEFINER=`root`@`localhost` PROCEDURE `DEBUG_ROLE_UPDATE_ACTIVE_ALL_ACT`(isActive INT)
BEGIN



	UPDATE sys_role_map_screen



    SET



		is_active = isActive;







    CALL sys_show_result(get_success_code(), '{"message_code":"success_code"}');



END ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEBUG_USER_ROLE_GET_LIST_USERS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;

CREATE DEFINER=`root`@`localhost` PROCEDURE `DEBUG_USER_ROLE_GET_LIST_USERS`()
BEGIN







	SELECT



	us.id AS user_id



	,	us.name AS user_name



    ,	us.email AS user_email



    ,	us.role_value AS user_role_value



    ,	us.is_active AS user_active



	,	sr.id AS role_id



	,	sr.name AS role_name



    ,	sr.role_value AS role_value



    ,	sr.description AS role_description



    ,   ud.birth_date AS user_birth_date



    ,   ud.gender AS user_gender







    FROM users AS us



    LEFT JOIN sys_roles AS sr ON



			us.role_value = sr.role_value



	LEFT JOIN users_detail AS ud ON



			us.id = ud.user_id;



END ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DEBUG_USER_ROLE_UPDATE_ROLES` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;

CREATE DEFINER=`root`@`localhost` PROCEDURE `DEBUG_USER_ROLE_UPDATE_ROLES`( current_id INT,current_role_value INT)
BEGIN



	UPDATE users



    SET



		role_value = current_role_value



	WHERE



		id = current_id;







    CALL sys_show_result(get_success_code(), '{"message_code":"success_code"}');



END ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sys_show_message_error` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;

CREATE DEFINER=`root`@`localhost` PROCEDURE `sys_show_message_error`(code INT, dataError JSON)
BEGIN



	SELECT code AS code, dataError AS data_error;



END ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sys_show_message_exception` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;

CREATE DEFINER=`root`@`localhost` PROCEDURE `sys_show_message_exception`(message_code varchar(500))
BEGIN



	SELECT -9999 AS code, message_code AS message_code;



END ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sys_show_message_success` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;

CREATE DEFINER=`root`@`localhost` PROCEDURE `sys_show_message_success`()
BEGIN



	SELECT 0 AS code, 'success_message' AS message_code;



END ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sys_show_result` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;

CREATE DEFINER=`root`@`localhost` PROCEDURE `sys_show_result`(code INT, dataError JSON)
BEGIN



	SELECT code AS code, dataError AS data;



END ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `view_category_item_level`
--

/*!50001 DROP VIEW IF EXISTS `view_category_item_level`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_category_item_level` AS select `n`.`id` AS `id`,`n`.`name` AS `name`,`n`.`lft` AS `lft`,`n`.`rgt` AS `rgt`,`n`.`url` AS `url`,`n`.`order_value` AS `order_value`,(count(`p`.`id`) - 1) AS `level_value` from (`catelory` `n` left join `catelory` `p` on((`n`.`lft` between `p`.`lft` and `p`.`rgt`))) group by `n`.`id`,`n`.`name`,`n`.`lft`,`n`.`rgt` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-10  9:58:39
