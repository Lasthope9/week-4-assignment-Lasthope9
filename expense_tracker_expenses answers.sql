CREATE DATABASE  IF NOT EXISTS `expense_tracker` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `expense_tracker`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: expense_tracker
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
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expenses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenses`
--

LOCK TABLES `expenses` WRITE;
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
INSERT INTO `expenses` VALUES (1,'Groceries','Milk, Eggs, Bread',20.00,'2024-06-15'),(2,'Entertainment','Movie ticket',12.50,'2024-06-18'),(3,'Groceries','Fruits, Vegetables',35.75,'2024-06-20'),(4,NULL,'Transportation',5.00,'2024-06-17'),(5,'Entertainment','Concert ticket',45.00,'2024-06-21'),(6,'Dining Out','Restaurant dinner',30.00,'2024-06-19'),(7,'Clothing',NULL,15.99,'2026-04-12'),(8,'Bills','Electricity bill',75.40,'2027-02-01'),(9,'Other','Gift for friend',22.00,NULL),(10,'Travel','Flight ticket',350.00,'2029-08-10');
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

/* viwing the table */
select *
from expenses;

/* inserting new expenses */

insert into `expenses` (category, description, amount, date) values
('Groceries', 'Meat,Corn,Noodles', '30.55', '2024-07-25'),
('Entertainment', 'Park ticket', '57.89', '2024-09-30'),
('Entertainment', 'Football ticket', '50.00', '2023-06-21'),
('Bills', 'Rent', '270.00', '2025-01-01'),
('Bills', 'Wifi', '150.88', '2024-12-31'),
('Other', 'Function', '300.90', '2025-01-01'),
('Travel', 'Function', '140.56', '2025-01-06'),
('Clothing', 'Winter Special', '430.00', '2024-06-06'),
('Groceries', 'Rolls,Sugar,Tea', '38.09', '2025-02-16'),
('Dinning Out', 'Street food', '52.00', '2025-03-19');

/* to verify if new data is inserted */
select *
from expenses;

/* pausing safe mode */
SET SQL_SAFE_UPDATES = 0;

/* Modification of Data */
use expense_tracker;
update `expenses`
set amount = '300.00'
WHERE category = 'Bills' and description = 'Wifi';

update `expenses`
set date = '2025-05-30'
WHERE category = 'Groceries' OR category = 'Entertainment';

/* Back to safe mode */
SET SQL_SAFE_UPDATES = 1;

/* Simulating Data Deleting
Delete from expenses
where category = 'Groceries' or category = 'Travel';

Delete from expenses
where category = 'Other' and descrition = 'Gift for friend' */

/* Testing Null Values */

select *
from expenses
where description is null;

select *
from expenses
where category is null;

select *
from expenses
where amount is null;

select *
from expenses
where date is null;

/* Handling Null Vales */

Delete from expenses
where category is null;

delete from expenses
where description is null;

update expenses
set category = 'No Category'
where category is null;

update expenses
set description = 'No Description'
where description is null;


  
  
