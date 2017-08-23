-- MySQL dump 10.16  Distrib 10.1.21-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: localhost
-- ------------------------------------------------------
-- Server version	10.1.21-MariaDB

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
-- Table structure for table `event_cases`
--

DROP TABLE IF EXISTS `event_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_cases` (
  `id` varchar(50) NOT NULL,
  `endpoint` varchar(100) NOT NULL,
  `metric` varchar(200) NOT NULL,
  `func` varchar(50) DEFAULT NULL,
  `cond` varchar(200) NOT NULL,
  `note` varchar(500) DEFAULT NULL,
  `max_step` int(10) unsigned DEFAULT NULL,
  `current_step` int(10) unsigned DEFAULT NULL,
  `priority` int(6) NOT NULL,
  `status` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT NULL,
  `closed_at` timestamp NULL DEFAULT NULL,
  `closed_note` varchar(250) DEFAULT NULL,
  `user_modified` int(10) unsigned DEFAULT NULL,
  `tpl_creator` varchar(64) DEFAULT NULL,
  `expression_id` int(10) unsigned DEFAULT NULL,
  `strategy_id` int(10) unsigned DEFAULT NULL,
  `template_id` int(10) unsigned DEFAULT NULL,
  `process_note` mediumint(9) DEFAULT NULL,
  `process_status` varchar(20) DEFAULT 'unresolved',
  PRIMARY KEY (`id`),
  KEY `endpoint` (`endpoint`,`strategy_id`,`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_cases`
--

LOCK TABLES `event_cases` WRITE;
/*!40000 ALTER TABLE `event_cases` DISABLE KEYS */;
INSERT INTO `event_cases` VALUES ('s_165_9d223f126e7ecb3477cd6806f1ee9656','agent1','cpu.idle','all(#1)','93.27165685449958 != 66','測試告警自動更新',300,3,0,'PROBLEM','2016-06-22 20:51:00','2016-06-22 21:01:00',NULL,NULL,NULL,'root',0,165,45,20,'ignored'),('s_165_cef145900bf4e2a4a0db8b85762b9cdb','agent2','cpu.idle','all(#1)','0 != 66','測試告警自動更新',300,3,0,'PROBLEM','2017-03-22 12:20:42','2016-06-22 21:00:00',NULL,NULL,NULL,'root',0,165,45,56561,'ignored'),('s_191_ddd09333257b2e92e1941860ee86ab15','agent1','cpu.idle','all(#3)','11.813186813186814 < 10','cpu.idle小于10%',1,1,3,'OK','2016-07-06 01:13:00','2016-07-06 01:13:00',NULL,NULL,NULL,'root',0,191,42,0,'unresolved'),('s_322_001da6a5f95d83387cdfecc37ac70c24','agent2','cpu.iowait','avg(#3)','34.40479690409319 > 40','CPU I/O wait超过40',1,1,1,'OK','2016-10-27 07:37:00','2016-10-27 07:37:00',NULL,NULL,NULL,'root',0,322,125,0,'unresolved'),('s_322_002e499f3b56420fdea506c887e51799','agent3','cpu.iowait','avg(#3)','30.76679150609009 > 40','CPU I/O wait超过40',1,1,1,'OK','2016-11-06 20:28:00','2016-11-06 20:28:00',NULL,NULL,NULL,'root',0,322,125,0,'unresolved'),('s_322_00500cfbaf93a18bdab1cacdb7090226','agent4','cpu.iowait','avg(#3)','0.4165741367509111 > 40','CPU I/O wait超过40',1,1,1,'OK','2016-12-06 18:14:00','2016-12-06 18:14:00',NULL,NULL,NULL,'root',0,322,125,0,'unresolved'),('s_322_00a04708c20df6a71c2c00b79a9a206a','agent5','cpu.iowait','avg(#3)','0 > 40','CPU I/O wait超过40',1,1,1,'OK','2016-12-03 21:27:00','2016-12-03 21:27:00',NULL,NULL,NULL,'root',0,322,125,0,'unresolved'),('s_322_00a9b9f9f859d8436f9b643ea5a1fb5e','agent6','cpu.iowait','avg(#3)','0 > 40','CPU I/O wait超过40',1,1,1,'OK','2016-11-14 14:16:00','2016-11-14 14:16:00',NULL,NULL,NULL,'root',0,322,140,0,'unresolved'),('s_322_00ba3072006a8ba863108d4b3f9c1c51','agent7','cpu.iowait','avg(#3)','0.0695615485072203 > 40','CPU I/O wait超过40',1,1,1,'OK','2016-11-14 12:43:00','2016-11-14 12:43:00',NULL,NULL,NULL,'root',0,322,125,0,'unresolved'),('s_322_00c5f5c87a71bd4c686c0a4a0544b719','agent8','cpu.iowait','avg(#3)','0 > 40','CPU I/O wait超过40',1,1,1,'OK','2016-11-30 12:10:00','2016-11-30 12:10:00',NULL,NULL,NULL,'root',0,322,125,0,'unresolved'),('s_322_00cc81434a0e277b57254a89a839a47b','agent9','cpu.iowait','avg(#3)','0.041876046901172526 > 40','CPU I/O wait超过40',1,1,1,'OK','2016-10-28 02:37:00','2016-10-28 02:37:00',NULL,NULL,NULL,'root',0,322,125,0,'unresolved'),('s_322_00f5a68989281d30fbbb647194a09230','agent10','cpu.iowait','avg(#3)','0 > 40','CPU I/O wait超过40',1,1,1,'OK','2016-12-07 18:10:00','2016-12-07 18:10:00',NULL,NULL,NULL,'root',0,322,125,0,'unresolved'),('s_322_5af549ba7abca6225cf219fab74a9644','agent3','cpu.iowait','avg(#3)','2.5631157529122624e+17 > 40','CPU I/O wait超过40',1,1,1,'PROBLEM','2016-12-07 19:55:00','2016-12-07 19:55:00',NULL,NULL,NULL,'root',0,322,125,0,'unresolved'),('s_46_1ac45122afb893adc02fbd30154ac303','agent4','cpu.iowait','all(#3)','48.33759590792839 > 40','CPU I/O wait超过40',1,1,1,'PROBLEM','2016-07-31 22:25:00','2016-07-31 22:25:00',NULL,NULL,NULL,'root',0,46,126,16907,'ignored'),('s_50_6438ac68b30e2712fb8f00d894c46e21','agent5','cpu.idle','avg(#3)','95.16331658291456 <= 98','cpu空闲值报警',1,1,3,'PROBLEM','2016-07-03 08:13:00','2016-07-03 08:13:00',NULL,NULL,NULL,'root',0,50,53,1181,'ignored');
/*!40000 ALTER TABLE `event_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_note`
--

DROP TABLE IF EXISTS `event_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_note` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `event_caseId` varchar(50) DEFAULT NULL,
  `note` varchar(300) DEFAULT NULL,
  `case_id` varchar(20) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_caseId` (`event_caseId`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `event_note_ibfk_1` FOREIGN KEY (`event_caseId`) REFERENCES `event_cases` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `event_note_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `uic`.`user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=56562 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_note`
--

LOCK TABLES `event_note` WRITE;
/*!40000 ALTER TABLE `event_note` DISABLE KEYS */;
INSERT INTO `event_note` VALUES (21,'s_165_9d223f126e7ecb3477cd6806f1ee9656','Ignored by user',NULL,'ignored','2016-06-22 21:38:56',1),(22,'s_165_cef145900bf4e2a4a0db8b85762b9cdb','test',NULL,'ignored','2016-06-22 21:39:09',1),(1051,'s_50_6438ac68b30e2712fb8f00d894c46e21','ignored',NULL,'ignored','2016-07-02 09:44:55',1),(1137,'s_50_6438ac68b30e2712fb8f00d894c46e21','ignored',NULL,'ignored','2016-07-04 06:19:39',1),(1148,'s_50_6438ac68b30e2712fb8f00d894c46e21','ignored',NULL,'ignored','2016-07-04 17:50:27',1),(1180,'s_50_6438ac68b30e2712fb8f00d894c46e21','ignored',NULL,'ignored','2016-07-04 19:36:18',1),(1181,'s_50_6438ac68b30e2712fb8f00d894c46e21','ignored',NULL,'ignored','2016-07-04 19:37:27',1),(1182,'s_50_6438ac68b30e2712fb8f00d894c46e21','ignored',NULL,'ignored','2016-07-04 19:39:47',1),(2820,'s_46_1ac45122afb893adc02fbd30154ac303','ignored',NULL,'ignored','2016-07-19 01:32:46',1),(3447,'s_46_1ac45122afb893adc02fbd30154ac303','ignored',NULL,'ignored','2016-07-26 23:31:35',1),(14031,'s_46_1ac45122afb893adc02fbd30154ac303','ignored',NULL,'ignored','2016-08-17 08:20:08',1),(14473,'s_46_1ac45122afb893adc02fbd30154ac303','ignored',NULL,'ignored','2016-08-17 08:20:22',1),(14908,'s_46_1ac45122afb893adc02fbd30154ac303','ignored',NULL,'ignored','2016-08-17 08:20:34',1),(15186,'s_46_1ac45122afb893adc02fbd30154ac303','ignored',NULL,'ignored','2016-08-17 08:20:46',1),(15977,'s_46_1ac45122afb893adc02fbd30154ac303','ignored',NULL,'ignored','2016-08-17 08:21:17',1),(16299,'s_46_1ac45122afb893adc02fbd30154ac303','ignored',NULL,'ignored','2016-08-17 08:21:24',1),(16564,'s_46_1ac45122afb893adc02fbd30154ac303','ignored',NULL,'ignored','2016-08-17 08:21:31',1),(16910,'s_46_1ac45122afb893adc02fbd30154ac303','ignored',NULL,'ignored','2016-08-17 08:21:45',1),(56511,'s_322_00f5a68989281d30fbbb647194a09230','ignored',NULL,'ignored','2016-11-14 18:37:06',1),(56516,'s_165_cef145900bf4e2a4a0db8b85762b9cdb','test note','','comment','2017-03-22 06:08:34',NULL),(56525,'s_165_cef145900bf4e2a4a0db8b85762b9cdb','test note','','comment','0000-00-00 00:00:00',2),(56526,'s_165_cef145900bf4e2a4a0db8b85762b9cdb','test note','','comment','2017-03-22 08:31:02',2),(56527,'s_165_cef145900bf4e2a4a0db8b85762b9cdb','test note','','comment','2017-03-22 08:32:09',2),(56528,'s_165_cef145900bf4e2a4a0db8b85762b9cdb','test note','','comment','2017-03-22 08:32:37',2),(56529,'s_165_cef145900bf4e2a4a0db8b85762b9cdb','test note','','comment','2017-03-22 08:33:54',2),(56530,'s_165_cef145900bf4e2a4a0db8b85762b9cdb','test note','','comment','2017-03-22 08:34:55',2),(56531,'s_165_cef145900bf4e2a4a0db8b85762b9cdb','test note','','comment','2017-03-22 08:35:04',2),(56532,'s_165_cef145900bf4e2a4a0db8b85762b9cdb','test note','','comment','2017-03-22 08:35:18',2),(56533,'s_165_cef145900bf4e2a4a0db8b85762b9cdb','test note','','comment','2017-03-22 08:37:09',2),(56534,'s_165_cef145900bf4e2a4a0db8b85762b9cdb','test note','','comment','2017-03-22 08:38:11',2),(56535,'s_165_cef145900bf4e2a4a0db8b85762b9cdb','test note','','comment','2017-03-22 08:38:42',2),(56536,'s_165_cef145900bf4e2a4a0db8b85762b9cdb','test note','','comment','2017-03-22 08:38:55',2),(56537,'s_165_cef145900bf4e2a4a0db8b85762b9cdb','test note','','comment','2017-03-22 08:40:45',2),(56538,'s_165_cef145900bf4e2a4a0db8b85762b9cdb','test note','','comment','2017-03-22 08:41:18',2),(56539,'s_165_cef145900bf4e2a4a0db8b85762b9cdb','test note','','comment','2017-03-22 08:42:04',2),(56540,'s_165_cef145900bf4e2a4a0db8b85762b9cdb','test note','','comment','2017-03-22 08:43:24',2),(56547,'s_165_cef145900bf4e2a4a0db8b85762b9cdb','test note','','resolved','2017-03-22 08:54:30',2),(56548,'s_165_cef145900bf4e2a4a0db8b85762b9cdb','test note','','ignored','2017-03-22 08:54:41',2),(56549,'s_165_cef145900bf4e2a4a0db8b85762b9cdb','test note','','comment','2017-03-22 08:54:50',2),(56550,'s_165_cef145900bf4e2a4a0db8b85762b9cdb','test note','','comment','2017-03-22 08:56:25',2),(56551,'s_165_cef145900bf4e2a4a0db8b85762b9cdb','test note','','ignored','2017-03-22 08:56:25',2),(56552,'s_165_cef145900bf4e2a4a0db8b85762b9cdb','test note','','comment','2017-03-22 10:56:25',2),(56553,'s_165_cef145900bf4e2a4a0db8b85762b9cdb','test note','','ignored','2017-03-22 10:56:25',2),(56554,'s_165_cef145900bf4e2a4a0db8b85762b9cdb','test note','','comment','2017-03-22 10:56:35',2),(56555,'s_165_cef145900bf4e2a4a0db8b85762b9cdb','test note','','ignored','2017-03-22 10:56:35',2),(56556,'s_165_cef145900bf4e2a4a0db8b85762b9cdb','test note','','comment','2017-03-22 10:58:04',2),(56557,'s_165_cef145900bf4e2a4a0db8b85762b9cdb','test note','','ignored','2017-03-22 10:58:04',2),(56558,'s_165_cef145900bf4e2a4a0db8b85762b9cdb','test note','','comment','2017-03-22 10:58:41',2),(56559,'s_165_cef145900bf4e2a4a0db8b85762b9cdb','test note','','ignored','2017-03-22 10:58:41',2),(56560,'s_165_cef145900bf4e2a4a0db8b85762b9cdb','test note','','comment','2017-03-22 12:20:42',1),(56561,'s_165_cef145900bf4e2a4a0db8b85762b9cdb','test note','','ignored','2017-03-22 12:20:42',1);
/*!40000 ALTER TABLE `event_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `event_caseId` varchar(50) DEFAULT NULL,
  `step` int(10) unsigned DEFAULT NULL,
  `cond` varchar(200) NOT NULL,
  `status` int(3) unsigned DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `event_caseId` (`event_caseId`),
  CONSTRAINT `events_ibfk_1` FOREIGN KEY (`event_caseId`) REFERENCES `event_cases` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2283965 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (635149,'s_165_cef145900bf4e2a4a0db8b85762b9cdb',1,'13.486005089058525 != 66',0,'2016-06-22 20:50:00'),(635152,'s_165_9d223f126e7ecb3477cd6806f1ee9656',1,'93.69747899159664 != 66',0,'2016-06-22 20:51:00'),(635166,'s_165_cef145900bf4e2a4a0db8b85762b9cdb',2,'10.649350649350648 != 66',0,'2016-06-22 20:55:00'),(635168,'s_165_9d223f126e7ecb3477cd6806f1ee9656',2,'93.04274937133277 != 66',0,'2016-06-22 20:56:00'),(635186,'s_165_cef145900bf4e2a4a0db8b85762b9cdb',3,'0 != 66',0,'2016-06-22 21:00:00'),(635188,'s_165_9d223f126e7ecb3477cd6806f1ee9656',3,'93.27165685449958 != 66',0,'2016-06-22 21:01:00'),(700347,'s_50_6438ac68b30e2712fb8f00d894c46e21',1,'98.16915422885573 <= 98',1,'2016-06-30 18:01:00'),(700351,'s_50_6438ac68b30e2712fb8f00d894c46e21',1,'85.90381426202322 <= 98',0,'2016-06-30 18:02:00'),(703455,'s_50_6438ac68b30e2712fb8f00d894c46e21',1,'98.33333333333333 <= 98',1,'2016-07-01 07:43:00'),(703460,'s_50_6438ac68b30e2712fb8f00d894c46e21',1,'96.8299332483312 <= 98',0,'2016-07-01 07:45:00'),(707249,'s_50_6438ac68b30e2712fb8f00d894c46e21',1,'98.3407960199005 <= 98',1,'2016-07-02 07:01:00'),(707252,'s_50_6438ac68b30e2712fb8f00d894c46e21',1,'95.47822445561138 <= 98',0,'2016-07-02 07:02:00'),(707278,'s_50_6438ac68b30e2712fb8f00d894c46e21',1,'99.00414593698174 <= 98',1,'2016-07-02 07:06:00'),(707288,'s_50_6438ac68b30e2712fb8f00d894c46e21',1,'97.16666666666667 <= 98',0,'2016-07-02 07:08:00'),(711176,'s_50_6438ac68b30e2712fb8f00d894c46e21',1,'98.66666666666667 <= 98',1,'2016-07-03 08:11:00'),(711180,'s_50_6438ac68b30e2712fb8f00d894c46e21',1,'95.16331658291456 <= 98',0,'2016-07-03 08:13:00'),(725640,'s_191_ddd09333257b2e92e1941860ee86ab15',1,'9.214092140921409 < 10',0,'2016-07-06 01:12:00'),(725650,'s_191_ddd09333257b2e92e1941860ee86ab15',1,'11.813186813186814 < 10',1,'2016-07-06 01:13:00'),(906508,'s_46_1ac45122afb893adc02fbd30154ac303',1,'26.892950391644913 > 40',1,'2016-07-31 21:57:00'),(906558,'s_46_1ac45122afb893adc02fbd30154ac303',1,'46.875 > 40',0,'2016-07-31 22:07:00'),(906562,'s_46_1ac45122afb893adc02fbd30154ac303',1,'19.84732824427481 > 40',1,'2016-07-31 22:08:00'),(906578,'s_46_1ac45122afb893adc02fbd30154ac303',1,'58.07291666666667 > 40',0,'2016-07-31 22:11:00'),(906608,'s_46_1ac45122afb893adc02fbd30154ac303',1,'34.86005089058524 > 40',1,'2016-07-31 22:13:00'),(906621,'s_46_1ac45122afb893adc02fbd30154ac303',1,'79.34508816120906 > 40',0,'2016-07-31 22:16:00'),(906626,'s_46_1ac45122afb893adc02fbd30154ac303',1,'29.74358974358974 > 40',1,'2016-07-31 22:17:00'),(906653,'s_46_1ac45122afb893adc02fbd30154ac303',1,'50.261780104712045 > 40',0,'2016-07-31 22:21:00'),(906656,'s_46_1ac45122afb893adc02fbd30154ac303',1,'33.589743589743584 > 40',1,'2016-07-31 22:22:00'),(906684,'s_46_1ac45122afb893adc02fbd30154ac303',1,'48.33759590792839 > 40',0,'2016-07-31 22:25:00'),(1274215,'s_322_00ba3072006a8ba863108d4b3f9c1c51',1,'2.5760011274556003e+17 > 40',0,'2016-09-06 11:39:00'),(1274230,'s_322_00ba3072006a8ba863108d4b3f9c1c51',1,'0.1255522319173578 > 40',1,'2016-09-06 11:42:00'),(1557519,'s_322_00a9b9f9f859d8436f9b643ea5a1fb5e',1,'2.5814083506450534e+17 > 40',0,'2016-09-18 07:32:00'),(1557529,'s_322_00a9b9f9f859d8436f9b643ea5a1fb5e',1,'0.11172212284164133 > 40',1,'2016-09-18 07:35:00'),(1760945,'s_322_00a9b9f9f859d8436f9b643ea5a1fb5e',1,'2.5846635944668003e+17 > 40',0,'2016-10-09 02:47:00'),(1760970,'s_322_00a9b9f9f859d8436f9b643ea5a1fb5e',1,'0.20923280127311905 > 40',1,'2016-10-09 02:50:00'),(2008645,'s_322_00500cfbaf93a18bdab1cacdb7090226',1,'2.5620477880152154e+17 > 40',0,'2016-10-25 14:53:00'),(2008660,'s_322_00500cfbaf93a18bdab1cacdb7090226',1,'0.3332234254245916 > 40',1,'2016-10-25 14:56:00'),(2024294,'s_322_001da6a5f95d83387cdfecc37ac70c24',1,'40.589559956314574 > 40',0,'2016-10-27 06:02:00'),(2024307,'s_322_001da6a5f95d83387cdfecc37ac70c24',1,'34.215741802391705 > 40',1,'2016-10-27 06:03:00'),(2024561,'s_322_001da6a5f95d83387cdfecc37ac70c24',1,'41.223637369540135 > 40',0,'2016-10-27 06:30:00'),(2024574,'s_322_001da6a5f95d83387cdfecc37ac70c24',1,'32.70390179169318 > 40',1,'2016-10-27 06:31:00'),(2024653,'s_322_001da6a5f95d83387cdfecc37ac70c24',1,'41.32519457846019 > 40',0,'2016-10-27 06:40:00'),(2024677,'s_322_001da6a5f95d83387cdfecc37ac70c24',1,'37.68856496726676 > 40',1,'2016-10-27 06:42:00'),(2024821,'s_322_001da6a5f95d83387cdfecc37ac70c24',1,'42.13064472804732 > 40',0,'2016-10-27 06:57:00'),(2024832,'s_322_001da6a5f95d83387cdfecc37ac70c24',1,'38.772563144159285 > 40',1,'2016-10-27 06:58:00'),(2025107,'s_322_001da6a5f95d83387cdfecc37ac70c24',1,'41.124157514530204 > 40',0,'2016-10-27 07:34:00'),(2025124,'s_322_001da6a5f95d83387cdfecc37ac70c24',1,'34.40479690409319 > 40',1,'2016-10-27 07:37:00'),(2030568,'s_322_00cc81434a0e277b57254a89a839a47b',1,'7.724767200045875e+17 > 40',0,'2016-10-28 02:34:00'),(2030584,'s_322_00cc81434a0e277b57254a89a839a47b',1,'0.041876046901172526 > 40',1,'2016-10-28 02:37:00'),(2100972,'s_322_002e499f3b56420fdea506c887e51799',1,'40.05790088473078 > 40',0,'2016-11-04 06:34:00'),(2100978,'s_322_002e499f3b56420fdea506c887e51799',1,'31.21889807490236 > 40',1,'2016-11-04 06:36:00'),(2108081,'s_322_002e499f3b56420fdea506c887e51799',1,'44.01372894077503 > 40',0,'2016-11-06 09:00:00'),(2108089,'s_322_002e499f3b56420fdea506c887e51799',1,'8.080808080808081 > 40',1,'2016-11-06 09:09:00'),(2108482,'s_322_002e499f3b56420fdea506c887e51799',1,'40.25974025974026 > 40',0,'2016-11-06 13:10:00'),(2108493,'s_322_002e499f3b56420fdea506c887e51799',1,'37.62799819500851 > 40',1,'2016-11-06 13:12:00'),(2109554,'s_322_002e499f3b56420fdea506c887e51799',1,'42.56161946882552 > 40',0,'2016-11-06 19:56:00'),(2109561,'s_322_002e499f3b56420fdea506c887e51799',1,'37.56637439724457 > 40',1,'2016-11-06 19:57:00'),(2109617,'s_322_002e499f3b56420fdea506c887e51799',1,'45.26708341096215 > 40',0,'2016-11-06 20:27:00'),(2109619,'s_322_002e499f3b56420fdea506c887e51799',1,'30.76679150609009 > 40',1,'2016-11-06 20:28:00'),(2126926,'s_322_00500cfbaf93a18bdab1cacdb7090226',1,'2.5599145259102902e+17 > 40',0,'2016-11-10 16:03:00'),(2126933,'s_322_00500cfbaf93a18bdab1cacdb7090226',1,'0.27744908306211713 > 40',1,'2016-11-10 16:06:00'),(2145185,'s_322_00ba3072006a8ba863108d4b3f9c1c51',1,'2.573844575653628e+17 > 40',0,'2016-11-14 12:40:00'),(2145194,'s_322_00ba3072006a8ba863108d4b3f9c1c51',1,'0.0695615485072203 > 40',1,'2016-11-14 12:43:00'),(2145462,'s_322_00a9b9f9f859d8436f9b643ea5a1fb5e',1,'2.573844575653628e+17 > 40',0,'2016-11-14 14:13:00'),(2145467,'s_322_00a9b9f9f859d8436f9b643ea5a1fb5e',1,'0 > 40',1,'2016-11-14 14:16:00'),(2162149,'s_322_00500cfbaf93a18bdab1cacdb7090226',1,'2.5620477880152154e+17 > 40',0,'2016-11-18 11:30:00'),(2162153,'s_322_00500cfbaf93a18bdab1cacdb7090226',1,'0.0832870659521434 > 40',1,'2016-11-18 11:33:00'),(2192184,'s_322_00f5a68989281d30fbbb647194a09230',1,'2.5599145259102902e+17 > 40',0,'2016-11-25 19:47:00'),(2192195,'s_322_00f5a68989281d30fbbb647194a09230',1,'0.055578713352785886 > 40',1,'2016-11-25 19:50:00'),(2199446,'s_322_00f5a68989281d30fbbb647194a09230',1,'2.5609807127182493e+17 > 40',0,'2016-11-27 15:25:00'),(2199450,'s_322_00f5a68989281d30fbbb647194a09230',1,'0.013935340022296544 > 40',1,'2016-11-27 15:28:00'),(2200816,'s_322_00a04708c20df6a71c2c00b79a9a206a',1,'5.124095576030431e+17 > 40',0,'2016-11-27 21:26:00'),(2200826,'s_322_00a04708c20df6a71c2c00b79a9a206a',1,'0 > 40',1,'2016-11-27 21:29:00'),(2207663,'s_322_00f5a68989281d30fbbb647194a09230',1,'2.5620477880152154e+17 > 40',0,'2016-11-28 08:41:00'),(2207670,'s_322_00f5a68989281d30fbbb647194a09230',1,'0.8339821284409691 > 40',1,'2016-11-28 08:44:00'),(2212186,'s_322_00500cfbaf93a18bdab1cacdb7090226',1,'2.5620477880152154e+17 > 40',0,'2016-11-29 08:59:00'),(2212200,'s_322_00500cfbaf93a18bdab1cacdb7090226',1,'0.18050350355963604 > 40',1,'2016-11-29 09:02:00'),(2218881,'s_322_00c5f5c87a71bd4c686c0a4a0544b719',1,'3.881890587901842e+17 > 40',0,'2016-11-30 12:07:00'),(2218885,'s_322_00c5f5c87a71bd4c686c0a4a0544b719',1,'0 > 40',1,'2016-11-30 12:10:00'),(2229281,'s_322_00f5a68989281d30fbbb647194a09230',1,'2.5620477880152154e+17 > 40',0,'2016-12-02 07:40:00'),(2229288,'s_322_00f5a68989281d30fbbb647194a09230',1,'0.8756834205893638 > 40',1,'2016-12-02 07:43:00'),(2233587,'s_322_5af549ba7abca6225cf219fab74a9644',1,'2.5631157529122624e+17 > 40',0,'2016-12-03 13:12:00'),(2233590,'s_322_5af549ba7abca6225cf219fab74a9644',1,'0 > 40',1,'2016-12-03 13:15:00'),(2234566,'s_322_00a04708c20df6a71c2c00b79a9a206a',1,'5.141233019428526e+17 > 40',0,'2016-12-03 21:24:00'),(2234571,'s_322_00a04708c20df6a71c2c00b79a9a206a',1,'0 > 40',1,'2016-12-03 21:27:00'),(2276562,'s_322_5af549ba7abca6225cf219fab74a9644',1,'2.5620477880152154e+17 > 40',0,'2016-12-06 16:25:00'),(2276569,'s_322_5af549ba7abca6225cf219fab74a9644',1,'0 > 40',1,'2016-12-06 16:28:00'),(2277000,'s_322_00500cfbaf93a18bdab1cacdb7090226',1,'2.5620477880152154e+17 > 40',0,'2016-12-06 18:11:00'),(2277022,'s_322_00500cfbaf93a18bdab1cacdb7090226',1,'0.4165741367509111 > 40',1,'2016-12-06 18:14:00'),(2283566,'s_322_00f5a68989281d30fbbb647194a09230',1,'2.5609807127182493e+17 > 40',0,'2016-12-07 18:07:00'),(2283581,'s_322_00f5a68989281d30fbbb647194a09230',1,'0 > 40',1,'2016-12-07 18:10:00'),(2283964,'s_322_5af549ba7abca6225cf219fab74a9644',1,'2.5631157529122624e+17 > 40',0,'2016-12-07 19:55:00');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-22 20:23:28
