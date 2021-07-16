-- MySQL dump 10.13  Distrib 5.1.60, for Win64 (unknown)
--
-- Host: localhost    Database: medical
-- ------------------------------------------------------
-- Server version	5.1.60-community

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
-- Table structure for table `billing`
--

DROP TABLE IF EXISTS `billing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `billing` (
  `cust_name` text,
  `cust_mobile_no` text,
  `doctor_name` text,
  `medicine` varchar(500) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `total_price` varchar(500) DEFAULT NULL,
  `expiry_date` varchar(100) DEFAULT NULL,
  `bill_id` varchar(500) NOT NULL,
  `quantity` varchar(100) DEFAULT NULL,
  `purchased_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing`
--

LOCK TABLES `billing` WRITE;
/*!40000 ALTER TABLE `billing` DISABLE KEYS */;
INSERT INTO `billing` VALUES ('Rajesh Kale','9898989898','Dr name','Covishield,Omee,Limcee Plus,','525,24,68.78,','1328.34','2023/03,2023/12,2024/06,','6Q79','2,3,3,','2021-06-13 06:14:28'),('Avinash','7889562312','Dr.Amar','Citrigen,LimceePlus500,Covishield,sinarest,','20,500,525,87,','5065.0','2022/04,2024/04,2023/03,01/23,','H4W5','5,25,2,45,','2021-06-05 17:40:02'),('sanjivani kaulage','8787878787','dr suhas','Covishield,Omee,','525,22,','569.0','2023/03,2023/12,','JRQA','1,2,','2021-06-05 12:37:08'),('Rahul Kaulge','9696636323','Dr Suhas','Covishield,Omee,','525,24,','1647.0','2023/03,2023/12,','O54I','3,3,','2021-06-13 06:20:28'),('sanjivani kaulage','8888888888','dr suhas','Covishield,','525,','525.0','2023/03,','QETM','1,','2021-06-22 13:03:32');
/*!40000 ALTER TABLE `billing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card_details`
--

DROP TABLE IF EXISTS `card_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card_details` (
  `card_id` int(11) NOT NULL AUTO_INCREMENT,
  `holder_name` varchar(500) DEFAULT NULL,
  `aadhar_num` varchar(500) DEFAULT NULL,
  `card_num` varchar(500) NOT NULL,
  `card_price` varchar(500) DEFAULT NULL,
  `issued_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expired_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `family_members` varchar(500) DEFAULT NULL,
  `mobile_num` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`card_id`),
  UNIQUE KEY `card_id_UNIQUE` (`card_id`),
  UNIQUE KEY `card_num_UNIQUE` (`card_num`),
  UNIQUE KEY `aadhar_num_UNIQUE` (`aadhar_num`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_details`
--

LOCK TABLES `card_details` WRITE;
/*!40000 ALTER TABLE `card_details` DISABLE KEYS */;
INSERT INTO `card_details` VALUES (3,'Avinash Kalyan Kaulage','949227223806','F351','1200','2021-06-05 11:13:30','2022-06-05 11:13:30','6','5653525659'),(4,'Atul Gade','989898989999','QEHO','200','2021-06-06 06:29:58','2022-06-06 06:29:58','5','9898989898'),(5,'Ramesh Kale','989898989898','CYN0','400','2021-06-12 13:28:06','2022-06-12 13:28:06','3','8989898989');
/*!40000 ALTER TABLE `card_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `company_name` text NOT NULL,
  `country` text,
  `email` text,
  `contact_no` text,
  `address` text,
  `company_id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`company_id`),
  UNIQUE KEY `company_id_UNIQUE` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES ('Serum','India','Sirum12@gmail.com','7878899623','Pune',2),('Aboot','India','aboot@gmail.com','8623214556','Solapur',3),('Eurocare','America','eurocare@gmail.com','9886858215','Paloalto',4),('Centaur Pharmaceuticals pvt ltd','india','centaur@gmail.com','8833106537','pune',5),('pharmatech','india','tech@gmail.com','8989898989','pune',6);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `product_name` text NOT NULL,
  `company_name` text,
  `product_expiry` text,
  `product_added` text,
  `product_price` varchar(500) DEFAULT NULL,
  `product_quantity` varchar(100) DEFAULT NULL,
  `product_id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`product_id`),
  UNIQUE KEY `product_id_UNIQUE` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('Covishield','Serum','2023/03','05/06/2021 11:12:19','525','100',1),('Limcee Plus','Eurocare','2024/06','06/06/2021 11:40:26','68.78','60',2),('Citrigen','Cipla','2022/04','05/06/2021 11:16:29','20','40',3),('Omee','Aboot','2023/12','06/06/2021 12:01:34','24','45',4);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_details`
--

DROP TABLE IF EXISTS `project_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_details` (
  `project_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(100) DEFAULT NULL,
  `contributor_name` varchar(500) NOT NULL,
  `contributor_month` varchar(100) DEFAULT NULL,
  `contact_no` varchar(100) DEFAULT NULL,
  `Amount` varchar(500) DEFAULT NULL,
  `contribution_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`project_id`),
  UNIQUE KEY `project_id_UNIQUE` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_details`
--

LOCK TABLES `project_details` WRITE;
/*!40000 ALTER TABLE `project_details` DISABLE KEYS */;
INSERT INTO `project_details` VALUES (1,'Hospital kohneri','Avinash','June','5656565656','600','2021-06-06 08:00:34'),(2,'Study Room','Atul Gade','May','8788899091','2500','2021-06-05 12:29:56');
/*!40000 ALTER TABLE `project_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_record`
--

DROP TABLE IF EXISTS `sales_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` text,
  `company_name` text,
  `date_of_sale` text,
  `quantity` text,
  `amount` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_record`
--

LOCK TABLES `sales_record` WRITE;
/*!40000 ALTER TABLE `sales_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `fullname` text,
  `email` text,
  `contact_no` text,
  `address` text,
  `username` text,
  `password` text,
  `user_type` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('Avinash Kaulage','kaulage@gmail.com','8888888888','Pune','admin','admin1234','Admin'),('avinash kaulage','medi@gmail.com','8484848484','kohneri','medicure','admin12345','User'),('sanj ','sanj@gmail.com','8787878787','kohnnri','medi','admin123456','User'),('Atula Gade','atul@gmail.com','8989565623','Konheri','user1','user123','User');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-16 21:04:57
