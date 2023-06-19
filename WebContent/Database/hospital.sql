-- MySQL dump 10.10
--
-- Host: localhost    Database: hospital
-- ------------------------------------------------------
-- Server version	5.0.22-community-nt

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
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
CREATE TABLE `appointment` (
  `apid` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `email` varchar(130) NOT NULL,
  `contact` varchar(130) NOT NULL,
  `age` int(11) NOT NULL,
  `day` varchar(130) NOT NULL,
  `speciality` varchar(130) NOT NULL,
  `description` varchar(200) NOT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY  (`apid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--


/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
LOCK TABLES `appointment` WRITE;
INSERT INTO `appointment` VALUES (4,'Kishor Kadam','kadamk33@gmail.com','9404308673',28,'2018-06-22','Cardiology','heart problem',6),(5,'Sagar Kharmale','sagar@yahoomail.com','9404308673',29,'2018-06-23','Nerology','Cerebral Venous Sinus Thomboisis',1);
UNLOCK TABLES;
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `dept_id` int(11) NOT NULL auto_increment,
  `dept_name` varchar(100) default NULL,
  `dept_description` varchar(400) default NULL,
  PRIMARY KEY  (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--


/*!40000 ALTER TABLE `department` DISABLE KEYS */;
LOCK TABLES `department` WRITE;
INSERT INTO `department` VALUES (5,'Nerology','brain,chest nerology solution'),(6,'Cardiology','angiography,angioplasty'),(7,'Cancer','blood cancer,stamoch cancer,bone cancer'),(8,'AIDS','Fever,blindness'),(9,'Arthopedic','Lungs'),(11,'General Physician','All types of disease'),(12,'Bone ','Osteoporosis is a debilitaring disease in which bones become fragile and are more likely to break'),(14,'Radiology','different types X-ray report');
UNLOCK TABLES;
/*!40000 ALTER TABLE `department` ENABLE KEYS */;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor` (
  `doctor_id` int(11) NOT NULL auto_increment,
  `doc_name` varchar(100) default NULL,
  `email` varchar(100) default NULL,
  `password` varchar(100) default NULL,
  `address` varchar(400) default NULL,
  `phone` varchar(100) default NULL,
  `department` varchar(100) default NULL,
  PRIMARY KEY  (`doctor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--


/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
LOCK TABLES `doctor` WRITE;
INSERT INTO `doctor` VALUES (1,'Sunil Bandishti','sunilbandishti@yahoomail.com','sunil@12345','Dhole Patil Road,Near Ruby Hall,Pune.','9875796434','Nerology'),(6,'Parvej Grant','parvejgrant@gmail.com','abc@123','Ruby Hall,Pune','7875796412','Cardiac'),(7,'Vijay Patil','patilvijay78@gmail.com','patil@123','Ahmednagar','8845746525','Bone'),(8,'Bapu Kandekar','bapukandekar33@gmail.com','abc@123','Nagar Manmad Road,Ahmednagar','9856321478','Cardiology'),(9,'Girish Jadhav','jadhavgirish@gmail.com','kkk@12','Balikashram Road,Ahmednagar,Maharashtra,India','9420949414','Arthopedic'),(10,'Sundar Gore','gores@gmail.com','gore@123','Choupati karanja,Ahmednagar','7475767271','Radiology');
UNLOCK TABLES;
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `name` varchar(100) default NULL,
  `email` varchar(100) default NULL,
  `contact` varchar(200) default NULL,
  `suggestion` varchar(400) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--


/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
LOCK TABLES `feedback` WRITE;
INSERT INTO `feedback` VALUES ('Kishor Kadam','kadamk33@gmail.com','9404308673','Awesome website');
UNLOCK TABLES;
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;

--
-- Table structure for table `nurse`
--

DROP TABLE IF EXISTS `nurse`;
CREATE TABLE `nurse` (
  `nurse_id` int(11) NOT NULL auto_increment,
  `name` varchar(45) default NULL,
  `email` varchar(100) default NULL,
  `password` varchar(100) default NULL,
  `address` varchar(400) default NULL,
  `phone` varchar(100) default NULL,
  PRIMARY KEY  (`nurse_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nurse`
--


/*!40000 ALTER TABLE `nurse` DISABLE KEYS */;
LOCK TABLES `nurse` WRITE;
INSERT INTO `nurse` VALUES (3,'Deepika Nangare','deepikanangare@yahoomail.com','java@123','Kedgaon,Ahmednagar','7276763516'),(5,'Charulata Kadam','charu33@gmail.com','xxx@111','Bhalawani,Ahmednagar,Maharashtra,India','8855441199'),(6,'Kargi Patil','kargi333@gmail.com','kargi@999','Ruby Hall Pune','7475767271'),(7,'Pritam Kadam','pritam@yahoomail.com','pritam@1212','Bhalawani,Ahmednagar,Maharashtra,India','8812475685'),(8,'Sanika Kharmale','kharmales@gmail.com','sanika@8987','Malwadi,Pune','8387741568'),(9,'Pratibha Kadam','pratibhakadam@yahoomail.com','pratibha@000','Bhalawani,Ahmednagar,Maharashtra,India','8874563515'),(10,'Mayuri Patil','mayuripatil@rediffmail.com','mayuri@321','Hadapsar,Pune','7476968573');
UNLOCK TABLES;
/*!40000 ALTER TABLE `nurse` ENABLE KEYS */;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE `patient` (
  `patient_id` int(11) NOT NULL auto_increment,
  `patient_name` varchar(100) default NULL,
  `email` varchar(100) default NULL,
  `password` varchar(100) default NULL,
  `address` varchar(400) default NULL,
  `phone` varchar(100) default NULL,
  `sex` varchar(45) default NULL,
  `birthdate` varchar(100) default NULL,
  `age` int(11) default NULL,
  `blood_group` varchar(45) default NULL,
  PRIMARY KEY  (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--


/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
LOCK TABLES `patient` WRITE;
INSERT INTO `patient` VALUES (1,'Kishor Kadam','kadamk329@yahoo.com','java@1991','Bhalawani,Ahmednagar,Maharashtra','9404308673','Male',NULL,28,'A+'),(3,'Sanket Sambhaji Kadam','kadamk33@gmail.com','pqr@123','Bhalawani,Ahmednagar','9404308673','Male',NULL,16,'AB+'),(4,'Rahul Narsale','narsale@gmail.com','rahul_123','Wakad,Pune','9865321475','Male','1996-06-15',22,'O+'),(5,'Sagar Kharmale','sagar@yahoomail.com','java@123','Malwadi,Pune','8855224467','Male','1988-06-30',29,'A-'),(6,'Govind Raut','rautgovind@rediffmail.com','xxx@000','Bhurate Wadi,Beed','9693857246','Male','1991-04-18',27,'AB-'),(7,'Akshay Jadhav','akshay88@gmail.com','kkk_123','Hinjewadi,Pune','8675731467','Male','1994-09-06',24,'O+');
UNLOCK TABLES;
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  `email` varchar(100) default NULL,
  `address` varchar(400) default NULL,
  `phone` varchar(200) default NULL,
  `password` varchar(100) default NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--


/*!40000 ALTER TABLE `user` DISABLE KEYS */;
LOCK TABLES `user` WRITE;
INSERT INTO `user` VALUES (1,'Kishor Kadam','kadamk329@yahoo.com','Bhalawani,Ahmednagar,Maharashtra,India','7276763516','java@1991'),(2,'Sanket Kadam','kadamk329@gmail.com','Bhalawani,Ahmednagar','9404308673','java@1992');
UNLOCK TABLES;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

