-- MySQL dump 10.13  Distrib 8.1.0, for macos14.0 (arm64)
--
-- Host: localhost    Database: carServices
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car` (
  `regNo` varchar(10) NOT NULL,
  `make` varchar(25) DEFAULT NULL,
  `model` varchar(20) DEFAULT NULL,
  `year` int DEFAULT NULL,
  `customerID` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`regNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES ('50 J4C08','Subaru','Outback',2011,'8291'),('83 5TU4RT','Mazda','3',2012,'1872'),('AF66 XFP','Ford','F-150',2016,'4668'),('AR16 WJY','Mini','One',2016,'6473'),('BD62 EWT','Kia','Rio',2012,'6275'),('BM18 TWY','Mazda','CX-3',2018,'4917'),('BP67 COO','Bentley','Continental',2017,'1762'),('C4LI 23','Ferrari','California',2015,'9579'),('CN61 XXH','Mitsubishi','Outlander',2011,'8869'),('CR10 WQI','Kia','Sportage',2010,'1872'),('DE17 ENG','Volvo','XC90',2017,'6816'),('FN12 BXW','BMW','1 Series',2012,'1872'),('FO66 VMG','Ford','Fiesta',2016,'2539'),('FS63 RXI','Volkswagen','Golf',2013,'3345'),('GE15 KWE','Nissan','Qashqai',2015,'8404'),('GZ68 VKP','Aston Martin','Vantage',2018,'5475'),('HQ68 KOX','Toyota','Corolla',2018,'4668'),('IM15 PMJ','Volvo','V40',2015,'1566'),('J3NN 338','Citroen','C3',2014,'8127'),('KG19 YBI','Nissan','Mokka',2019,'7486'),('KP67 LRK','Nissan','Qashqai',2017,'7563'),('LH65 MZX','Fiat','500',2015,'5441'),('M4S Q4TT','Maserati','Quattroporte',2018,'4707'),('M4X PRR','Mitsubishi','Mirage',2012,'1025'),('NJ11 DSF','Aston Martin','Virage',2011,'2026'),('NR13 DIC','Peugeot','308',2013,'4730'),('P921 BCP','Toyota','Celica',2015,'8127'),('QA16 NAX','Hyundai','ix35',2016,'3345'),('QE66 GTT','Mini','Hatch',2016,'1189'),('QI17 JUC','BMW','M2',2017,'5475'),('QQ16 UKE','Bentley','Mulsanne',2016,'1762'),('QR14 RGL','Suzuki','Swift',2014,'8291'),('RS67 KPE','BMW','X1',2017,'2026'),('SF11 HQS','Ford','Fiesta',2011,'5786'),('SH63 MWG','Kia','Sorento',2013,'1566'),('SO13 PWJ','Mitsubishi','Lancer',2013,'1025'),('SR14 THK','Nissan','Juke',2014,'4730'),('TA19 POK','Ford','Focus',2019,'8723'),('TH67 CHK','Fiat','500',2017,'5786'),('THW 83','Audi','A4',2018,'4707'),('TN62 XUS','Saab','9-5',2012,'7380'),('UY11 QPB','Nissan','Juke',2011,'7416'),('V10 L3T','Mercedes','C Class',2011,'2762'),('VX13 LIE','Nissan','Micra',2013,'5475'),('W33 COL','Maserati','Ghibli',2015,'4707'),('WC64 TJE','Vauxhall','Astra',2014,'8869'),('WH10 OVH','Toyota','Yaris',2010,'4668'),('WR13 QFR','Audi','A6',2013,'6473'),('WZ19 EVI','Ferrari','488',2019,'4591'),('XV63 ZAS','Volkswagen','Passat',2013,'3345'),('YE12 WUQ','Subaru','Forester',2012,'2539'),('YU15 CQT','Peugeot','208',2015,'8869'),('ZC62 LCH','Toyota','Prius',2012,'1189'),('ZN68 OXT','Citroen','C4',2018,'5786');
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customerID` varchar(4) NOT NULL,
  `forname` varchar(20) DEFAULT NULL,
  `surname` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `phoneNo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('1025','Max','Power','189 Hunter Drive','G55 6TG','07766 336835'),('1189','Jennifer','Hart','9A Douglas Place','EH1 5LD','07900 537290'),('1566','Angela','Smith','178 Mount Stuart Street','EH43 5UJ','07110 577507'),('1762','Laura','Skelly','99 Queensway','EH7 4UZ','07008 072455'),('1872','Stuart','Campbell','2/8 Roberston Gait','EH11 1HJ','07871 142681'),('2026','Mark','Slorance','200 Edward Drive','EH71 3UM','07194 413012'),('2539','Colin','Wilson','12 Hunter Drive','EH83 6NE','07826 411735'),('2762','Violet','Rose','42 Mallot Street','EH9 2AH','07071 225929'),('3345','Amy','Williams','15 King Street','EH9 9UE','07092 544935'),('4591','Derek','Tsang','243 Hill Street','FK1 1FM','07160 225407'),('4668','Abdur','Imran','98 Springfield Road','FK2 0HO','07361 397435'),('4707','Angela','Smith','230 Bellwood Drive','FK3 7WP','07233 894939'),('4730','Stewart','Regan','134 Burton Lane','FK6 0XT','07115 051817'),('4917','Lawrence','Rose','38 South Street','FK7 7BF','07542 139739'),('5441','Colin','Wilson','42 Mill Lane','FK9 2QY','07529 702292'),('5475','Lawrie','Young','70 Drew Street','G1 9CJ','07817 412513'),('5786','Mark','Jones','23 Queensway','G2 1LZ','07174 763203'),('6275','Adil','Jabbar','90 Market Street','G5 6CK','07413 791995'),('6473','Jack','Cook','65 Castle Place','G5 6ME','07006 672479'),('6816','John','Brown','23 Bellflower Gardens','G58 6SL','07771 458506'),('7380','Mark','Jones','8 Windsor Avenue','G6 9HA','07868 666171'),('7416','Stephanie','Jones','87 Hampshire Gardens','G74 3VX','07615 836502'),('7486','Ian','Arthur','330 West Street','G87 2VB','07989 914299'),('7563','David','Ballantyne','87 King\'s Place','G9 7WH','07873 468849'),('8127','Jennifer','Wilson','2 West Street','G98 7FD','07679 591563'),('8291','Jacob','Joseph','22 Deanston Street','KA0 0TP','07945 061491'),('8404','Rebecca','Shearer','12 Hill Street','KA3 9WU','07154 704172'),('8723','Alan','Simpson','5B Church Lane','KA5 9RX','07768 478897'),('8869','Stuart','Barnes','256 Hope Street','KA6 0KS','07153 426507'),('9579','Laura','Forbes','90 Church Street','KA7 2LG','07487 256037');
UPDATE customer SET phoneNo = REPLACE(phoneNo, ' ', '');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `garage`
--

DROP TABLE IF EXISTS `garage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `garage` (
  `garageID` varchar(20) NOT NULL,
  `garageName` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `town` varchar(25) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`garageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `garage`
--

LOCK TABLES `garage` WRITE;
/*!40000 ALTER TABLE `garage` DISABLE KEYS */;
INSERT INTO `garage` VALUES ('G59-G','Pit Stop Glasgow Shawlands','42 Kingsgate','Glasgow','G41 3EU'),('G61-E','Pit Stop Edinburgh','98 Glen Road','Edinburgh','EH11 1KJ'),('G72-S','Pit Stop Stirling','6 Royal Stuart Way','Stirling','FK8 7DS'),('G82-G','Pit Stop Glasgow Govan','Unit 3 Eastlinks Industrial Estate','Glasgow','G51 9PD'),('G98-K','Pit Stop Kilmarnock','112 Greenbank View','Kilmarnock','KA1 6AZ');
/*!40000 ALTER TABLE `garage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job` (
  `jobID` varchar(10) NOT NULL,
  `garageID` varchar(20) DEFAULT NULL,
  `dateIn` date DEFAULT NULL,
  `dateOut` date DEFAULT NULL,
  `regNo` varchar(10) DEFAULT NULL,
  `cost` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`jobID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
INSERT INTO `job` VALUES ('J001','G72-S','2020-01-02','2020-01-10','NR13 DIC',117.12),('J002','G59-G','2020-01-02','2020-01-10','ZN68 OXT',393.60),('J003','G82-G','2020-01-02','2020-01-04','QR14 RGL',55.96),('J004','G59-G','2020-01-04','2020-01-06','GZ68 VKP',484.42),('J005','G82-G','2020-01-17','2020-01-21','KG19 YBI',298.73),('J006','G59-G','2020-01-06','2020-01-08','QI17 JUC',150.99),('J007','G72-S','2020-01-04','2020-01-19','LH65 MZX',701.10),('J008','G72-S','2020-01-04','2020-01-21','AF66 XFP',168.20),('J009','G98-K','2020-01-02','2020-01-11','CN61 XXH',50.10),('J010','G59-G','2020-01-02','2020-01-12','50 J4C08',77.14),('J011','G61-E','2020-01-02','2020-01-19','ZC62 LCH',507.64),('J012','G98-K','2020-01-09','2020-01-19','C4LI 23',64.50),('J013','G61-E','2020-01-03','2020-01-19','QQ16 UKE',130.88),('J014','G59-G','2020-01-06','2020-01-12','DE17 ENG',162.60),('J015','G82-G','2020-01-08','2020-01-26','QR14 RGL',45.50),('J016','G59-G','2020-01-07','2020-01-09','SF11 HQS',345.00),('J017','G61-E','2020-01-03','2020-01-26','QA16 NAX',231.00),('J018','G61-E','2020-01-05','2020-01-23','NJ11 DSF',74.91),('J019','G61-E','2020-01-07','2020-01-25','IM15 PMJ',133.81),('J020','G82-G','2020-01-14','2020-01-14','KP67 LRK',102.20),('J021','G82-G','2020-01-14','2020-01-19','UY11 QPB',90.00),('J022','G61-E','2020-01-05','2020-01-06','SH63 MWG',704.80),('J023','G59-G','2020-01-07','2020-01-14','TH67 CHK',74.20),('J024','G61-E','2020-01-07','2020-01-12','FO66 VMG',294.71),('J025','G72-S','2020-01-10','2020-01-18','SR14 THK',77.04),('J026','G61-E','2020-01-08','2020-01-13','BP67 COO',70.45),('J027','G61-E','2020-01-10','2020-01-19','SH63 MWG',464.85),('J028','G98-K','2020-01-05','2020-01-19','YU15 CQT',84.92),('J029','G61-E','2020-01-11','2020-01-19','FS63 RXI',94.82),('J030','G59-G','2020-01-08','2020-01-09','TN62 XUS',464.84),('J031','G61-E','2020-01-13','2020-01-18','CR10 WQI',114.68),('J032','G82-G','2020-01-15','2020-01-23','UY11 QPB',65.98),('J033','G61-E','2020-01-10','2020-01-19','V10 L3T',108.64),('J034','G72-S','2020-01-11','2020-01-19','WH10 OVH',180.71),('J035','G82-G','2020-01-13','2020-01-28','SO13 PWJ',114.07),('J036','G82-G','2020-01-23','2020-01-28','QR14 RGL',112.00),('J037','G72-S','2020-01-19','2020-01-27','W33 COL',603.97),('J038','G72-S','2020-01-18','2020-01-24','M4S Q4TT',25.99),('J039','G59-G','2020-01-22','2020-01-27','TH67 CHK',150.08),('J040','G59-G','2020-01-29','2020-01-30','VX13 LIE',24.50),('J041','G61-E','2020-01-25','2020-01-25','RS67 KPE',18.20),('J042','G72-S','2020-01-22','2020-01-23','WZ19 EVI',657.41),('J043','G59-G','2020-01-26','2020-01-29','50 J4C08',90.90),('J044','G98-K','2020-01-19','2020-01-21','GE15 KWE',102.88),('J045','G82-G','2020-01-18','2020-01-20','P921 BCP',74.50),('J046','G82-G','2020-01-13','2020-01-28','M4X PRR',45.70),('J047','G59-G','2020-01-14','2020-01-20','50 J4C08',60.00),('J048','G59-G','2020-01-13','2020-01-19','BD62 EWT',220.38),('J049','G59-G','2020-01-16','2020-01-27','GZ68 VKP',88.29),('J050','G72-S','2020-01-20','2020-01-20','NR13 DIC',283.46),('J051','G61-E','2020-01-21','2020-01-28','83 5TU4RT',250.32),('J052','G61-E','2020-01-14','2020-01-16','83 5TU4RT',309.46),('J053','G61-E','2020-01-17','2020-01-19','QE66 GTT',320.98),('J054','G61-E','2020-01-18','2020-01-20','YE12 WUQ',77.12),('J055','G59-G','2020-01-28','2020-01-31','WR13 QFR',87.71),('J056','G61-E','2020-01-21','2020-01-23','FO66 VMG',378.13),('J057','G72-S','2020-01-19','2020-01-20','M4S Q4TT',921.46),('J058','G72-S','2020-01-22','2020-01-25','BM18 TWY',127.80),('J059','G82-G','2020-01-26','2020-01-31','KP67 LRK',313.74),('J060','G61-E','2020-01-21','2020-01-30','QQ16 UKE',95.70),('J061','G61-E','2020-01-27','2020-01-28','FN12 BXW',274.69),('J062','G98-K','2020-01-27','2020-01-30','WC64 TJE',121.77),('J063','G72-S','2020-01-23','2020-01-23','HQ68 KOX',23.00),('J064','G98-K','2020-01-27','2020-01-29','C4LI 23',202.77),('J065','G61-E','2020-01-31','2020-01-31','XV63 ZAS',274.93),('J066','G72-S','2020-01-25','2020-01-26','THW 83',83.97),('J067','G82-G','2020-01-14','2020-01-15','J3NN 338',121.29),('J068','G98-K','2020-01-03','2020-01-08','TA19 POK',92.12),('J069','G59-G','2020-01-12','2020-01-15','AR16 WJY',23.20),('J070','G82-G','2020-01-05','2020-01-07','KG19 YBI',71.90);
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-06 14:40:10
