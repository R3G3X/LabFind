-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: regex_db
-- ------------------------------------------------------
-- Server version	5.7.9-log

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
-- Table structure for table `labbase`
--

DROP TABLE IF EXISTS `labbase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `labbase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `labname` varchar(45) DEFAULT NULL,
  `labintro` varchar(100) DEFAULT NULL,
  `leader` varchar(45) DEFAULT NULL,
  `member` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labbase`
--

LOCK TABLES `labbase` WRITE;
/*!40000 ALTER TABLE `labbase` DISABLE KEYS */;
INSERT INTO `labbase` VALUES (1,'regex','hhh',NULL,NULL);
/*!40000 ALTER TABLE `labbase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectadded`
--

DROP TABLE IF EXISTS `projectadded`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectadded` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `projectid` int(11) DEFAULT NULL,
  `addedTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectadded`
--

LOCK TABLES `projectadded` WRITE;
/*!40000 ALTER TABLE `projectadded` DISABLE KEYS */;
/*!40000 ALTER TABLE `projectadded` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectbase`
--

DROP TABLE IF EXISTS `projectbase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectbase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectname` varchar(45) NOT NULL,
  `createtime` datetime DEFAULT NULL,
  `fintime` datetime DEFAULT NULL,
  `founderid` int(11) NOT NULL,
  `labid` int(11) DEFAULT NULL,
  `projectintro` varchar(100) DEFAULT NULL,
  `requirenum` int(11) DEFAULT NULL,
  `technique` varchar(45) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `projectstatus` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectbase`
--

LOCK TABLES `projectbase` WRITE;
/*!40000 ALTER TABLE `projectbase` DISABLE KEYS */;
INSERT INTO `projectbase` VALUES (1,'pro1',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1),(2,'pro2',NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,1),(3,'pro3',NULL,NULL,4,NULL,NULL,NULL,NULL,NULL,1),(4,'pro4',NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,2);
/*!40000 ALTER TABLE `projectbase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectqueue`
--

DROP TABLE IF EXISTS `projectqueue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectqueue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `memo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectqueue`
--

LOCK TABLES `projectqueue` WRITE;
/*!40000 ALTER TABLE `projectqueue` DISABLE KEYS */;
/*!40000 ALTER TABLE `projectqueue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacherbase`
--

DROP TABLE IF EXISTS `teacherbase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacherbase` (
  `userid` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `level` varchar(45) DEFAULT NULL,
  `research` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacherbase`
--

LOCK TABLES `teacherbase` WRITE;
/*!40000 ALTER TABLE `teacherbase` DISABLE KEYS */;
/*!40000 ALTER TABLE `teacherbase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userbase`
--

DROP TABLE IF EXISTS `userbase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userbase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `realName` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `userintro` varchar(60) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `isTeacher` varchar(45) DEFAULT NULL,
  `mailaddress` varchar(45) DEFAULT NULL,
  `major` varchar(45) DEFAULT NULL,
  `technique` varchar(100) DEFAULT NULL,
  `labAdded` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userbase`
--

LOCK TABLES `userbase` WRITE;
/*!40000 ALTER TABLE `userbase` DISABLE KEYS */;
INSERT INTO `userbase` VALUES (1,'jiang','jiang','蒋悦紫晗','17000000000','我很2','MsJiang.png','0','598868984@qq.com','软件工程','卖萌',NULL),(2,'admin','admin','administrator','1333','i am admin','cb4edb100d6627155fd085be96b9587f.jpeg','1','admin@regex.com','admin','a',NULL),(3,'hhui','hhui','机智汇','','我就是辣么机智！','avatar3.jpg','0','502597562@qq.com','软件','C++',NULL);
/*!40000 ALTER TABLE `userbase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userupdate`
--

DROP TABLE IF EXISTS `userupdate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userupdate` (
  `id` int(11) NOT NULL,
  `userbaseid` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `projectid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userupdate`
--

LOCK TABLES `userupdate` WRITE;
/*!40000 ALTER TABLE `userupdate` DISABLE KEYS */;
/*!40000 ALTER TABLE `userupdate` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-12 21:19:30
