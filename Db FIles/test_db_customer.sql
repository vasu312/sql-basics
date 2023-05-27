-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: test_db
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `CUST_CODE` varchar(6) NOT NULL,
  `CUST_NAME` varchar(40) NOT NULL,
  `CUST_CITY` varchar(35) DEFAULT NULL,
  `WORKING_AREA` varchar(35) NOT NULL,
  `CUST_COUNTRY` varchar(20) NOT NULL,
  `GRADE` decimal(10,0) DEFAULT NULL,
  `OPENING_AMT` decimal(12,2) NOT NULL,
  `RECEIVE_AMT` decimal(12,2) NOT NULL,
  `PAYMENT_AMT` decimal(12,2) NOT NULL,
  `OUTSTANDING_AMT` decimal(12,2) NOT NULL,
  `PHONE_NO` varchar(17) NOT NULL,
  `AGENT_CODE` varchar(6) DEFAULT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('C00013','Holmes','London                             ','London','UK',2,6000.00,5000.00,7000.00,4000.00,'BBBBBBB','A003  ','2018-07-24'),('C00001','Micheal','New York                           ','New York','USA',2,3000.00,5000.00,2000.00,6000.00,'CCCCCCC','A008  ','2023-07-24'),('C00020','Albert','New York                           ','New York','USA',3,5000.00,7000.00,6000.00,6000.00,'BBBBSBB','A008  ','2023-07-24'),('C00025','Ravindran','Bangalore                          ','Bangalore','India',2,5000.00,7000.00,4000.00,8000.00,'AVAVAVA','A011  ','2022-03-31'),('C00024','Cook','London                             ','London','UK',2,4000.00,9000.00,7000.00,6000.00,'FSDDSDF','A006  ','2018-07-24'),('C00015','Stuart','London                             ','London','UK',1,6000.00,8000.00,3000.00,11000.00,'GFSGERS','A003  ','2018-07-24'),('C00002','Bolt','New York                           ','New York','USA',3,5000.00,7000.00,9000.00,3000.00,'DDNRDRH','A008  ','2023-07-24'),('C00018','Fleming','Brisban                            ','Brisban','Australia',2,7000.00,7000.00,9000.00,5000.00,'NHBGVFC','A005  ','2012-01-01'),('C00021','Jacks','Brisban                            ','Brisban','Australia',1,7000.00,7000.00,7000.00,7000.00,'WERTGDF','A005  ','2012-01-01'),('C00019','Yearannaidu','Chennai                            ','Chennai','India',1,8000.00,7000.00,7000.00,8000.00,'ZZZZBFV','A010  ','2023-05-16'),('C00005','Sasikant','Mumbai                             ','Mumbai','India',1,7000.00,11000.00,7000.00,11000.00,'147-25896312','A002  ','2021-04-12'),('C00007','Ramanathan','Chennai                            ','Chennai','India',1,7000.00,11000.00,9000.00,9000.00,'GHRDWSD','A010  ','2023-05-16'),('C00022','Avinash','Mumbai                             ','Mumbai','India',2,7000.00,11000.00,9000.00,9000.00,'113-12345678','A002  ','2021-04-12'),('C00004','Winston','Brisban                            ','Brisban','Australia',1,5000.00,8000.00,7000.00,6000.00,'AAAAAAA','A005  ','2012-01-01'),('C00006','Shilton','Torento                            ','Torento','Canada',1,10000.00,7000.00,6000.00,11000.00,'DDDDDDD','A004  ','2023-03-23'),('C00010','Charles','Hampshair                          ','Hampshair','UK',3,6000.00,4000.00,5000.00,5000.00,'MMMMMMM','A009  ','2015-11-24'),('C00017','Srinivas','Bangalore                          ','Bangalore','India',2,8000.00,4000.00,3000.00,9000.00,'AAAAAAB','A007  ','2022-03-31'),('C00012','Steven','San Jose                           ','San Jose','USA',1,5000.00,7000.00,9000.00,3000.00,'KRFYGJK','A012  ','2023-01-13'),('C00008','Karolina','Torento                            ','Torento','Canada',1,7000.00,7000.00,9000.00,5000.00,'HJKORED','A004  ','2023-03-23'),('C00003','Martin','Torento                            ','Torento','Canada',2,8000.00,7000.00,7000.00,8000.00,'MJYURFD','A004  ','2023-03-23'),('C00009','Ramesh','Mumbai                             ','Mumbai','India',3,8000.00,7000.00,3000.00,12000.00,'Phone No','A002  ','2021-04-12'),('C00014','Rangarappa','Bangalore                          ','Bangalore','India',2,8000.00,11000.00,7000.00,12000.00,'AAAATGF','A001  ','2022-03-31'),('C00016','Venkatpati','Bangalore                          ','Bangalore','India',2,8000.00,11000.00,7000.00,12000.00,'JRTVFDD','A007  ','2022-03-31'),('C00011','Sundariya','Chennai                            ','Chennai','India',3,7000.00,11000.00,7000.00,11000.00,'PPHGRTS','A010  ','2023-05-16');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-27 16:08:12
