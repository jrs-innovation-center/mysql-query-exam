DROP DATABASE IF EXISTS travel;

CREATE DATABASE travel;

USE travel;

--
-- Table structure for table `airline`
--

CREATE TABLE `airline` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;


--
-- Dumping data for table `airline`
--

INSERT INTO `airline` VALUES (1,'American'),(2,'Delta'),(3,'United'),(4,'Southwest');

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `airlineID` int(10) unsigned NOT NULL,
  `departAirport` char(3) NOT NULL,
  `scheduledDepartDateTime` datetime NOT NULL,
  `actualDepartDateTime` datetime DEFAULT NULL,
  `arriveAirport` char(3) NOT NULL,
  `scheduledArriveDateTime` datetime NOT NULL,
  `actualArriveDateTime` datetime DEFAULT NULL,
  `flightNumber` char(4) NOT NULL,
  `gate` varchar(4) NOT NULL,
  `status` enum('arrived','delayed','cancelled','on time','landed','in air','scheduled') NOT NULL DEFAULT 'scheduled',
  `miles` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `IDX_departAirport` (`departAirport`),
  KEY `IDX_arriveAirport` (`arriveAirport`),
  KEY `FL_Flight_AirlineID_idx` (`airlineID`),
  CONSTRAINT `FL_Flight_AirlineID` FOREIGN KEY (`airlineID`) REFERENCES `airline` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` VALUES (1,1,'ATL','2017-10-30 08:15:00',NULL,'CLT','2017-10-30 10:15:00',NULL,'1021','B5','scheduled',277),(2,1,'ATL','2017-10-30 10:00:00',NULL,'CLT','2017-10-30 12:15:00',NULL,'1021','B12','scheduled',277),(3,1,'ATL','2017-10-30 12:00:00',NULL,'CLT','2017-10-30 14:15:00',NULL,'1021','B13','scheduled',277),(4,1,'DEN','2017-10-30 06:00:00',NULL,'ATL','2017-10-30 09:30:00',NULL,'654','C25','scheduled',1200),(5,1,'DEN','2017-10-30 10:00:00',NULL,'ATL','2017-10-30 13:30:00',NULL,'654','C18','scheduled',1200),(6,1,'DEN','2017-10-01 10:00:00','2017-10-01 10:15:00','ATL','2017-10-01 13:30:00','2017-10-01 13:47:00','654','C18','arrived',1200),(7,2,'DEN','2017-10-02 15:30:00','2017-10-02 15:30:00','SFO','2017-10-02 14:55:00','2017-10-02 14:50:00','1033','A12','arrived',965),(8,2,'DEN','2017-10-02 09:30:00','2017-10-02 09:30:00','SFO','2017-10-02 10:50:00','2017-10-02 10:59:00','1033','B1','arrived',965),(9,2,'SFO','2017-10-03 12:00:00','2017-10-03 12:10:00','LAX','2017-10-03 14:00:00','2017-10-03 14:20:00','999','D2','arrived',338),(10,2,'SFO','2017-10-25 12:00:00',NULL,'LAX','2017-10-25 14:30:00',NULL,'999','D5','delayed',338),(11,2,'SFO','2017-10-25 12:30:00',NULL,'CLT','2017-10-25 06:15:00',NULL,'234','C1','delayed',2290),(12,3,'CLT','2017-10-25 07:55:00','2017-10-25 08:00:00','ATL','2017-10-25 10:25:00',NULL,'3456','B3','on time',277),(13,3,'CLT','2017-10-25 08:00:00','2017-10-25 09:20:00','CHS','2017-10-25 09:30:00',NULL,'3456','B3','delayed',168),(14,3,'CLT','2017-10-26 17:00:00',NULL,'BNA','2017-10-26 19:00:00',NULL,'1111','B4','scheduled',328),(15,3,'CLT','2017-10-26 18:00:00',NULL,'STL','2017-10-26 20:00:00',NULL,'1234','B11','cancelled',573),(16,1,'LAX','2017-10-03 12:00:00','2017-10-03 02:10:00','STL','2017-10-03 14:00:00','2017-10-03 16:10:00','3333','A23','arrived',1590),(17,1,'LAX','2017-10-25 12:00:00','2017-10-25 13:15:00','DEN','2017-10-25 14:30:00','2017-10-25 14:55:00','3333','A23','arrived',860),(18,2,'ATL','2017-10-20 09:00:00','2017-10-20 09:00:00','LAX','2017-10-20 11:00:00','2017-10-20 10:55:00','3242','D2','arrived',1940);

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lastName` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `birthDate` date NOT NULL,
  `gender` enum('M','F','U') NOT NULL DEFAULT 'U',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` VALUES (1,'Jagger','Mick','1943-07-26','M'),(2,'Zimmerman','Robert','1942-05-25','M'),(3,'Cobain','Kurt','1967-02-20','M'),(4,'Harrison','George','1943-02-25','M'),(5,'Buck','Peter','1956-12-06','M'),(6,'Young','Neil','1945-11-12','M'),(7,'Helm','Levon','1940-05-26','M'),(8,'Cash','Johnny','1932-02-26','M'),(9,'Presley','Elvis','1935-01-08','M'),(10,'Plant','Robert','1948-08-20','M'),(11,'Townsend','Pete','1945-05-19','M'),(12,'Hendrix','Jimi','1942-11-27','M'),(13,'Baker','Ginger','1939-08-13','M'),(14,'Rotten','Johnny','1956-01-31','M'),(15,'Strummer','Joe','1952-08-21','M'),(16,'Francis','Black','1965-05-06','M'),(17,'Deal','Kim','1961-06-10','M'),(18,'Mills','Mike','1958-12-17','M'),(19,'Bell','John','1962-04-14','M'),(20,'Houser','Michael','1962-01-06','M'),(21,'JoJo','Hermann','1962-01-06','M'),(22,'Schools','David','1964-12-11','M'),(23,'Perry','Steve','1949-01-22','M'),(24,'Schon','Neal','1954-02-27','M'),(25,'Clinton','George','1941-07-22','M'),(26,'Collins','Bootsy','1951-10-26','M'),(27,'Elliot','Joe','1959-08-01','M'),(28,'Allen','Rick','2017-10-19','M'),(29,'Clark','Steve','1960-04-23','M'),(30,'Bruce','Jack','1943-05-14','M'),(31,'Clapton','Eric','1945-03-30','M'),(32,'Jones','George','1931-08-12','M');

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `flightID` int(10) unsigned NOT NULL,
  `passengerID` int(10) unsigned NOT NULL,
  `seat` varchar(4) NOT NULL,
  `class` enum('first','business','coach') NOT NULL DEFAULT 'coach',
  `cost` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`),
  KEY `IDX_passengerID` (`passengerID`),
  KEY `FK2_idx` (`flightID`),
  KEY `FK_reservation_flightID_idx` (`flightID`),
  CONSTRAINT `FK1` FOREIGN KEY (`passengerID`) REFERENCES `passenger` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_reservation_flightID` FOREIGN KEY (`flightID`) REFERENCES `flight` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` VALUES (1,1,1,'1A','first',1200.01),(2,5,1,'4B','first',999.99),(3,13,1,'3A','first',599.00),(4,17,1,'3A','first',1300.00),(5,17,2,'13B','coach',400.00),(6,17,3,'13A','coach',359.00),(7,17,4,'13C','coach',358.00),(8,17,5,'13D','coach',350.00),(9,17,6,'7A','business',999.00),(10,17,7,'7B','business',775.00),(11,18,4,'12A','coach',400.00),(12,18,5,'24F','coach',350.00),(13,18,6,'7B','business',810.00),(14,7,1,'8D','business',799.00),(15,7,8,'12D','coach',415.00),(16,7,9,'24C','coach',330.00),(17,7,10,'7A','business',810.00),(18,7,11,'18C','business',779.00),(19,5,32,'1A','first',1399.00),(20,5,31,'1B','first',1299.00),(21,5,30,'1C','first',1499.00),(22,5,29,'1D','first',1499.00),(23,5,25,'11A','business',800.00),(24,5,24,'11B','business',899.00),(25,5,23,'11C','business',789.00),(26,5,22,'11D','business',599.00),(27,5,18,'23A','coach',245.00),(28,5,17,'27A','coach',230.00),(29,5,16,'32A','coach',300.00),(30,5,15,'27B','coach',255.00),(31,5,14,'28D','coach',233.00),(32,5,13,'29C','coach',289.00),(33,1,15,'1B','first',1300.00),(34,1,2,'2C','first',1250.00),(35,1,3,'22A','coach',300.00),(36,1,4,'24A','coach',225.00);
