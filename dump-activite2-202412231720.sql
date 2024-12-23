-- this is how I work in this activity 
-- use Activite2
-- create table Customer  (CustomerID INT primary key auto_increment not null,
-- CustomerFirstName VARCHAR(50) not null,
-- CustomerLastName VARCHAR(50) not null,
-- CustomerAddress VARCHAR(50) not null,
-- CustomerCity VARCHAR(50) not null,
-- CustomerPostCode CHAR(4),
-- CustomerPhoneNumber CHAR(12))

-- create table Inventory (
-- InventoryID tinyint primary key not null,
-- InventoryName VARCHAR(50) not null,
-- InventoryDescription VARCHAR(255))

-- create Table Employee (
-- EmployeeID tinyint primary key not null,
-- EmployeeFirstName  VARCHAR(50) not null,
-- EmployeeLastName  VARCHAR(50) not null,
-- EmployeeExtension  CHAR(4))

-- create Table Sale (
-- SaleID tinyint primary key not null,
-- CustomerID INT not null,
-- InventoryID tinyint not null,
-- EmployeeID tinyint not null,
-- SaleDate DATE not null,
-- SaleQuantity INT not null,
-- SaleUnitPrice Decimal(10,2) not null,
--  FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
--  FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
--  FOREIGN KEY (InventoryID) REFERENCES Inventory(InventoryID))
 
--  INSERT INTO Customer 
-- VALUES 
--     (1,'Ahmed', 'Ben Jelloun', '123 hay elfarah', 'Casablanca', '1001', '0601234567'),
--     (2,'Fatima', 'Al Aloui', '456 dawdiyat ', 'Marrakech', '2002', '0619876543'),
--     (3,'Youssef', 'El Hassani', '789 Rue Nakheel ', 'Rabat', '3003', '0624567890');
 
 
--    INSERT INTO Inventory 
-- VALUES
--     (1, 'Laptop', 'High-performance laptop'),
--     (2, 'Smartphone', 'Latest model smartphone'),
--     (3, 'Headphones', 'Noise-cancelling headphones');
   
--    INSERT INTO Employee
-- VALUES
--     (1, 'Ali', 'Cherif', '1001'),
--     (2, 'Zineb', 'Abouzaid', '2002'),
--     (3, 'Mohammed', 'El Kettani', '3003');
   
--    INSERT INTO Sale
-- VALUES
--     (1, 1, 1, 1, '2024-12-20', 2, 1500.00),
--     (2, 2, 2, 2, '2024-12-21', 1, 800.00),
--     (3, 3, 3, 3, '2024-12-22', 3, 250.00);

--    select * from Customer
   
   
   
--    select (SaleQuantity*SaleUnitPrice) as montantsTotal from Sale order by montantsTotal desc;
  
--   select EmployeeFirstName, (SaleQuantity*SaleUnitPrice) as montantsTotal from Employee e , Sale  s  where s.EmployeeID  = e.EmployeeID order by montantsTotal desc  
  
--   alter table Customer add CustomerEmail varchar(50)
  
--   update Customer set CustomerEmail="ali12@gmail.com" where CustomerID =1;
--   update Customer set CustomerEmail="zinebh25@gmail.com" where CustomerID =2;
--  update Customer set CustomerEmail="medbrch4@gmail.com" where CustomerID =3;

-- select * from Customer

-- insert into Customer values(4,"khadija","hamidi","N 35 Rue 5 hay el jadid","NewYork",6154,0689874895,"khadijajf47#gmail.com")

-- delete from Customer where CustomerCity like "NewYork"

-- select * from sale where SaleDate >= curdate() - interval 30 day

-- select * from Customer c , Sale  s , Inventory i where c.CustomerID  = s.CustomerID and i.InventoryID  = s.InventoryID and  SaleQuantity>2

-- select InventoryName,(SaleUnitPrice *SaleQuantity) as revenuTotal from Sale  s , Inventory i where i.InventoryID  = s.InventoryID order by InventoryName 

-- create view CustomerSalesView as select CustomerFirstName, CustomerLastName, SaleDate, InventoryName, SaleQuantity, (SaleUnitPrice *SaleQuantity) as TotalAmount from Customer c , Sale  s , Inventory i where c.CustomerID  = s.CustomerID and i.InventoryID  = s.InventoryID  
-- select * from CustomerSalesView

-- create procedure proced3(in ventCustomerID int) 
-- begin 
-- select * 
-- from Customer c , Sale  s , Inventory i
-- where c.CustomerID  = s.CustomerID and i.InventoryID  = s.InventoryID and s.CustomerID = ventCustomerID;
-- end

-- call proced3(1)
-- drop procedure proced2







-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: activite2
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
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
  `CustomerID` int NOT NULL AUTO_INCREMENT,
  `CustomerFirstName` varchar(50) NOT NULL,
  `CustomerLastName` varchar(50) NOT NULL,
  `CustomerAddress` varchar(50) NOT NULL,
  `CustomerCity` varchar(50) NOT NULL,
  `CustomerPostCode` char(4) DEFAULT NULL,
  `CustomerPhoneNumber` char(12) DEFAULT NULL,
  `CustomerEmail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Ahmed','Ben Jelloun','123 hay elfarah','Casablanca','1001','0601234567','ali12@gmail.com'),(2,'Fatima','Al Aloui','456 dawdiyat ','Marrakech','2002','0619876543','zinebh25@gmail.com'),(3,'Youssef','El Hassani','789 Rue Nakheel ','Rabat','3003','0624567890','medbrch4@gmail.com');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `customersalesview`
--

DROP TABLE IF EXISTS `customersalesview`;
/*!50001 DROP VIEW IF EXISTS `customersalesview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customersalesview` AS SELECT 
 1 AS `CustomerFirstName`,
 1 AS `CustomerLastName`,
 1 AS `SaleDate`,
 1 AS `InventoryName`,
 1 AS `SaleQuantity`,
 1 AS `TotalAmount`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `EmployeeID` tinyint NOT NULL,
  `EmployeeFirstName` varchar(50) NOT NULL,
  `EmployeeLastName` varchar(50) NOT NULL,
  `EmployeeExtension` char(4) DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Ali','Cherif','1001'),(2,'Zineb','Abouzaid','2002'),(3,'Mohammed','El Kettani','3003');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `InventoryID` tinyint NOT NULL,
  `InventoryName` varchar(50) NOT NULL,
  `InventoryDescription` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`InventoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,'Laptop','High-performance laptop'),(2,'Smartphone','Latest model smartphone'),(3,'Headphones','Noise-cancelling headphones');
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale`
--

DROP TABLE IF EXISTS `sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale` (
  `SaleID` tinyint NOT NULL,
  `CustomerID` int NOT NULL,
  `InventoryID` tinyint NOT NULL,
  `EmployeeID` tinyint NOT NULL,
  `SaleDate` date NOT NULL,
  `SaleQuantity` int NOT NULL,
  `SaleUnitPrice` decimal(10,2) NOT NULL,
  PRIMARY KEY (`SaleID`),
  KEY `CustomerID` (`CustomerID`),
  KEY `EmployeeID` (`EmployeeID`),
  KEY `InventoryID` (`InventoryID`),
  CONSTRAINT `sale_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`),
  CONSTRAINT `sale_ibfk_2` FOREIGN KEY (`EmployeeID`) REFERENCES `employee` (`EmployeeID`),
  CONSTRAINT `sale_ibfk_3` FOREIGN KEY (`InventoryID`) REFERENCES `inventory` (`InventoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale`
--

LOCK TABLES `sale` WRITE;
/*!40000 ALTER TABLE `sale` DISABLE KEYS */;
INSERT INTO `sale` VALUES (1,1,1,1,'2024-12-20',2,1500.00),(2,2,2,2,'2024-12-21',1,800.00),(3,3,3,3,'2024-12-22',3,250.00);
/*!40000 ALTER TABLE `sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'activite2'
--
/*!50003 DROP PROCEDURE IF EXISTS `proced3` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Bouchta`@`%` PROCEDURE `proced3`(in ventCustomerID int)
begin 

select * 

from Customer c , Sale  s , Inventory i

where c.CustomerID  = s.CustomerID and i.InventoryID  = s.InventoryID and s.CustomerID = ventCustomerID;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `customersalesview`
--

/*!50001 DROP VIEW IF EXISTS `customersalesview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Bouchta`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `customersalesview` AS select `c`.`CustomerFirstName` AS `CustomerFirstName`,`c`.`CustomerLastName` AS `CustomerLastName`,`s`.`SaleDate` AS `SaleDate`,`i`.`InventoryName` AS `InventoryName`,`s`.`SaleQuantity` AS `SaleQuantity`,(`s`.`SaleUnitPrice` * `s`.`SaleQuantity`) AS `TotalAmount` from ((`customer` `c` join `sale` `s`) join `inventory` `i`) where ((`c`.`CustomerID` = `s`.`CustomerID`) and (`i`.`InventoryID` = `s`.`InventoryID`)) */;
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

-- Dump completed on 2024-12-23 17:20:51
