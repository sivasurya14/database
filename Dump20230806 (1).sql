-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: app_bank
-- ------------------------------------------------------
-- Server version	5.7.36-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `agents`
--

DROP TABLE IF EXISTS `agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agents` (
  `AGENT_CODE` varchar(6) NOT NULL DEFAULT '',
  `AGENT_NAME` varchar(40) DEFAULT NULL,
  `WORKING_AREA` varchar(35) DEFAULT NULL,
  `COMMISSION` decimal(10,2) DEFAULT NULL,
  `PHONE_NO` varchar(15) DEFAULT NULL,
  `COUNTRY` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`AGENT_CODE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agents`
--

LOCK TABLES `agents` WRITE;
/*!40000 ALTER TABLE `agents` DISABLE KEYS */;
INSERT INTO `agents` VALUES ('A007  ','Ramasundar                              ','Bangalore                          ',0.15,'077-25814763   ','\r'),('A003  ','Alex                                    ','London                             ',0.13,'075-12458969   ','\r'),('A008  ','Alford                                  ','New York                           ',0.12,'044-25874365   ','\r'),('A011  ','Ravi Kumar                              ','Bangalore                          ',0.15,'077-45625874   ','\r'),('A010  ','Santakumar                              ','Chennai                            ',0.14,'007-22388644   ','\r'),('A012  ','Lucida                                  ','San Jose                           ',0.12,'044-52981425   ','\r'),('A005  ','Anderson                                ','Brisban                            ',0.13,'045-21447739   ','\r'),('A001  ','Subbarao                                ','Bangalore                          ',0.14,'077-12346674   ','\r'),('A002  ','Mukesh                                  ','Mumbai                             ',0.11,'029-12358964   ','\r'),('A006  ','McDen                                   ','London                             ',0.15,'078-22255588   ','\r'),('A004  ','Ivan                                    ','Torento                            ',0.15,'008-22544166   ','\r'),('A009  ','Benjamin                                ','Hampshair                          ',0.11,'008-22536178   ','\r');
/*!40000 ALTER TABLE `agents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_table`
--

DROP TABLE IF EXISTS `bank_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch` varchar(255) DEFAULT NULL,
  `ifsc_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_table`
--

LOCK TABLES `bank_table` WRITE;
/*!40000 ALTER TABLE `bank_table` DISABLE KEYS */;
INSERT INTO `bank_table` VALUES (1,'Avadi','IDIB0001'),(2,'Ambatur','IDIB0002'),(3,'RedHills','IDIB0003'),(4,'Guindy','IDIB0004'),(5,'Tiruvanmiyur','IDIB0005'),(6,'SRP','IDIB0006'),(7,'Perungudi','IDIB0007'),(8,'Sholiganallur','IDIB0008'),(9,'Thuraipakkam','IDIB0009'),(10,'Pallikaranai','IDIB00010');
/*!40000 ALTER TABLE `bank_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_table`
--

DROP TABLE IF EXISTS `customer_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `age` int(11) NOT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `ifsc_code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_table`
--

LOCK TABLES `customer_table` WRITE;
/*!40000 ALTER TABLE `customer_table` DISABLE KEYS */;
INSERT INTO `customer_table` VALUES (1,22,'Avadi','IDIB0001','Dinesh'),(2,22,'SRP','IDIB0006','Davitha'),(3,22,'Chennai',NULL,'Davitha'),(7,22,'SRP','IDIB0006','Viji'),(8,22,'Perungudi','IDIB0007','suresh'),(9,22,'Avadi','IDIB0001','anu'),(10,23,'Sholiganallur','IDIB0008','Shyam'),(11,25,'Thuraipakkam','IDIB0009','Arun'),(12,28,'Pallikaranai','IDIB00010','Guru');
/*!40000 ALTER TABLE `customer_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-06 13:24:52
