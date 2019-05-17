CREATE DATABASE  IF NOT EXISTS `adp` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `adp`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: adp
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `department` (
  `Department_ID` int(10) NOT NULL,
  `Department_Name` varchar(20) NOT NULL,
  `Manager_ID` int(10) NOT NULL,
  `Location_ID` int(10) NOT NULL,
  PRIMARY KEY (`Department_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (10,'Administration',200,1700),(20,'Marketing',201,1800),(30,'Purchasing',114,1700),(40,'Human Resources',203,2400),(50,'Shipping',121,1500),(60,'IT',103,1400),(70,'Public Relations',204,2700),(80,'Sales',145,2500);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employee` (
  `Employee_ID` int(10) NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(20) NOT NULL,
  `Last_Name` varchar(20) NOT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Phone_Number` varchar(30) DEFAULT NULL,
  `HireDate` date DEFAULT NULL,
  `Job_ID` varchar(10) NOT NULL,
  `Salary` float DEFAULT NULL,
  `Commission_Pct` float DEFAULT NULL,
  `Manager_ID` int(10) NOT NULL,
  `Department_ID` int(10) NOT NULL,
  PRIMARY KEY (`Employee_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (100,'Steven','King','SKING','5551234567','1987-06-17','AD_PRES',24000,0,0,90),(101,'Neena','Kochhar','NKOCHHAR','5151234568','1987-06-18','AD_VP',17000,0,100,90),(102,'Lex','De Haan','LDEHAAN','5151234569','1987-06-19','AD_VP',17000,0,100,90),(103,'Alexander','Hunold','AHUNOLD','5904234567','1987-06-20','IT_PROG',9000,0,102,60),(104,'Bruce','Ernst','BERNST','5904234568','1987-06-21','IT_PROG',6000,0,103,60),(105,'David','Austin','DAUSTIN','5904234569','1987-06-22','IT_PROG',4800,0,103,60),(106,'Valli','Pataballa','VPATABAL','5904234560','1987-06-23','IT_PROG',4800,0,103,60);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `job` (
  `JOB_ID` varchar(15) NOT NULL,
  `JOB_TITLE` varchar(50) DEFAULT NULL,
  `MIN_SALARY` int(30) NOT NULL,
  `MAX_SALARY` int(30) NOT NULL,
  PRIMARY KEY (`JOB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
INSERT INTO `job` VALUES ('AC_ACCOUNT','Public Accountant',4200,9000),('AC_MGR','Accounting Manager',8200,16000),('AD_ASST','Administration Assistant',3000,6000),('AD_PRES','President',20000,40000),('AD_VP','Administration Vice President',15000,30000),('FI_ACCOUNT','Accountant',4200,9000),('FI_MGR','Finance Manager',8200,16000),('PU_CLERK','Purchasing Clerk	',2500,5500),('PU_MAN','Purchasing Manager',8000,15000),('SA_MAN','Sales Manager',10000,20000),('SA_REP','Sales Representative',6000,12000),('ST_MAN','Stock Manager',5500,8500);
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `location` (
  `Location_Id` int(10) NOT NULL,
  `Street_Address` varchar(50) DEFAULT NULL,
  `Postal_Code` int(10) NOT NULL,
  `City` varchar(15) DEFAULT NULL,
  `State_Province` varchar(15) DEFAULT NULL,
  `Country_Id` varchar(10) NOT NULL,
  PRIMARY KEY (`Location_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1000,'1297 Via Cola di Rie',989,'Roma','','IT'),(1100,'93091 Calle della Te',10934,'Venice',NULL,'IT'),(1200,'2017 Shinjuku-ku',1689,'Tokyo','Tokyo Prefectu','JP'),(1300,'9450 Kamiya-cho',6823,'Hiroshima',NULL,'JP'),(1400,'2014 Jabberwocky Rd',26192,'Southlake','Texas','US'),(1500,'2011 Interiors Blvd',99236,'South San','California','US'),(1600,'2007 Zagora St',50090,'South Brun','New Jersey ','US'),(1700,'2004 Charade Rd',98199,'Seattle','Washington','US');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'adp'
--

--
-- Dumping routines for database 'adp'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-17 13:11:46
