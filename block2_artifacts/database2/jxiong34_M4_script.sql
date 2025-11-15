CREATE DATABASE  IF NOT EXISTS `linkedin` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `linkedin`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: linkedin
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `Company_ID` int NOT NULL AUTO_INCREMENT,
  `Company_Name` varchar(225) NOT NULL,
  `Industry` varchar(100) DEFAULT NULL,
  `Size` varchar(50) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `State` varchar(50) DEFAULT NULL,
  `Country` varchar(50) DEFAULT NULL,
  `Zip` varchar(10) DEFAULT NULL,
  `Website` varchar(100) DEFAULT NULL,
  `Companycol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Company_ID`),
  UNIQUE KEY `Company_Name_UNIQUE` (`Company_Name`),
  UNIQUE KEY `Companycol_UNIQUE` (`Companycol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobposting`
--

DROP TABLE IF EXISTS `jobposting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobposting` (
  `Job_ID` int NOT NULL AUTO_INCREMENT,
  `Company_ID` int NOT NULL,
  `Job_Title` varchar(100) NOT NULL,
  `Description` text,
  `Employment_Type` varchar(50) DEFAULT NULL,
  `Salary` decimal(10,2) unsigned DEFAULT NULL,
  `Is_Remote` tinyint DEFAULT NULL,
  PRIMARY KEY (`Job_ID`),
  KEY `FK_JobPosting_Company_ID_idx` (`Company_ID`),
  CONSTRAINT `FK_JobPosting_Company_ID` FOREIGN KEY (`Company_ID`) REFERENCES `company` (`Company_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobposting`
--

LOCK TABLES `jobposting` WRITE;
/*!40000 ALTER TABLE `jobposting` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobposting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobskills`
--

DROP TABLE IF EXISTS `jobskills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobskills` (
  `Job_Skill_ID` int NOT NULL AUTO_INCREMENT,
  `Job_ID` int NOT NULL,
  `Skill_ID` int NOT NULL,
  PRIMARY KEY (`Job_Skill_ID`),
  KEY `FK_Job_Skills_Job_ID_idx` (`Job_ID`),
  KEY `FK_Job_Skills_Skill_ID_idx` (`Skill_ID`),
  CONSTRAINT `FK_Job_Skills_Job_ID` FOREIGN KEY (`Job_ID`) REFERENCES `jobposting` (`Job_ID`),
  CONSTRAINT `FK_Job_Skills_Skill_ID` FOREIGN KEY (`Skill_ID`) REFERENCES `skill` (`Skill_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobskills`
--

LOCK TABLES `jobskills` WRITE;
/*!40000 ALTER TABLE `jobskills` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobskills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school`
--

DROP TABLE IF EXISTS `school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school` (
  `School_ID` int NOT NULL AUTO_INCREMENT,
  `School_Name` varchar(255) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `State` varchar(50) DEFAULT NULL,
  `Country` varchar(50) DEFAULT NULL,
  `Zip` varchar(10) DEFAULT NULL,
  `Website` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`School_ID`),
  UNIQUE KEY `Website_UNIQUE` (`Website`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school`
--

LOCK TABLES `school` WRITE;
/*!40000 ALTER TABLE `school` DISABLE KEYS */;
/*!40000 ALTER TABLE `school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill` (
  `Skill_ID` int NOT NULL AUTO_INCREMENT,
  `Skill_Name` varchar(100) NOT NULL,
  `Description` text,
  PRIMARY KEY (`Skill_ID`),
  UNIQUE KEY `Skill_Name_UNIQUE` (`Skill_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill`
--

LOCK TABLES `skill` WRITE;
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `User_ID` int NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Email_Address` varchar(100) NOT NULL,
  `Head_Line` varchar(255) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `State` varchar(50) DEFAULT NULL,
  `Country` varchar(50) DEFAULT NULL,
  `Zip` varchar(10) DEFAULT NULL,
  `Summary` text,
  PRIMARY KEY (`User_ID`),
  UNIQUE KEY `Email_Address_UNIQUE` (`Email_Address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usereducation`
--

DROP TABLE IF EXISTS `usereducation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usereducation` (
  `Education_ID` int NOT NULL AUTO_INCREMENT,
  `User_ID` int NOT NULL,
  `School_ID` int DEFAULT NULL,
  `Degree` varchar(100) NOT NULL,
  `Field_Of_Study` varchar(100) DEFAULT NULL,
  `Start_Date` date DEFAULT NULL,
  `End_Date` date DEFAULT NULL,
  PRIMARY KEY (`Education_ID`),
  KEY `FK_User_ID_idx` (`User_ID`),
  KEY `FK_UserEducation_School_ID_idx` (`School_ID`),
  CONSTRAINT `FK_UserEducation_School_ID` FOREIGN KEY (`School_ID`) REFERENCES `school` (`School_ID`),
  CONSTRAINT `FK_UserEducation_User_ID` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usereducation`
--

LOCK TABLES `usereducation` WRITE;
/*!40000 ALTER TABLE `usereducation` DISABLE KEYS */;
/*!40000 ALTER TABLE `usereducation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userjobexperience`
--

DROP TABLE IF EXISTS `userjobexperience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userjobexperience` (
  `Job_ID` int NOT NULL,
  `User_ID` int NOT NULL,
  `Company_ID` int DEFAULT NULL,
  `Job_Title` varchar(100) NOT NULL,
  `Description` text,
  `City` varchar(50) DEFAULT NULL,
  `State` varchar(50) DEFAULT NULL,
  `Country` varchar(50) DEFAULT NULL,
  `Zip` varchar(10) DEFAULT NULL,
  `Start_Date` date DEFAULT NULL,
  `End_Date` date DEFAULT NULL,
  `Current_Employer` tinyint DEFAULT NULL,
  PRIMARY KEY (`Job_ID`),
  KEY `FK_User_ID_idx` (`User_ID`),
  KEY `FK_Comany_ID_idx` (`Company_ID`),
  CONSTRAINT `FK_Comany_ID` FOREIGN KEY (`Company_ID`) REFERENCES `company` (`Company_ID`),
  CONSTRAINT `FK_User_ID` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userjobexperience`
--

LOCK TABLES `userjobexperience` WRITE;
/*!40000 ALTER TABLE `userjobexperience` DISABLE KEYS */;
/*!40000 ALTER TABLE `userjobexperience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userskills`
--

DROP TABLE IF EXISTS `userskills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userskills` (
  `User_Skills_ID` int NOT NULL AUTO_INCREMENT,
  `User_ID` int NOT NULL,
  `Skill_ID` int NOT NULL,
  PRIMARY KEY (`User_Skills_ID`),
  KEY `FK_UserSkills_User_ID_idx` (`User_ID`),
  CONSTRAINT `FK_UserSkills_Skill_ID` FOREIGN KEY (`User_Skills_ID`) REFERENCES `skill` (`Skill_ID`),
  CONSTRAINT `FK_UserSkills_User_ID` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userskills`
--

LOCK TABLES `userskills` WRITE;
/*!40000 ALTER TABLE `userskills` DISABLE KEYS */;
/*!40000 ALTER TABLE `userskills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'linkedin'
--

--
-- Dumping routines for database 'linkedin'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-23 16:34:31
