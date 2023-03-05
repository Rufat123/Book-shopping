CREATE DATABASE  IF NOT EXISTS `book-shopping-mvc-ajax` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `book-shopping-mvc-ajax`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: book-shopping-mvc-ajax
-- ------------------------------------------------------
-- Server version	5.5.37

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
-- Table structure for table `authorities`
--

DROP TABLE IF EXISTS `authorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authorities` (
  `username` varchar(50) NOT NULL,
  `authority` varchar(50) NOT NULL,
  UNIQUE KEY `authorities_idx_1` (`username`,`authority`),
  CONSTRAINT `authorities_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authorities`
--

LOCK TABLES `authorities` WRITE;
/*!40000 ALTER TABLE `authorities` DISABLE KEYS */;
INSERT INTO `authorities` VALUES ('Amin','ROLE_ADMIN'),('Leyla','ROLE_ADMIN'),('Rufat','ROLE_ADMIN'),('Vusal','ROLE_ADMIN');
/*!40000 ALTER TABLE `authorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basket_book`
--

DROP TABLE IF EXISTS `basket_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `basket_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9rgkikwyg8n6dtoh58yjo4w92` (`book_id`),
  KEY `FKme8snq1it725oqbjkooh9ykjq` (`order_id`),
  CONSTRAINT `FK9rgkikwyg8n6dtoh58yjo4w92` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`),
  CONSTRAINT `FKme8snq1it725oqbjkooh9ykjq` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basket_book`
--

LOCK TABLES `basket_book` WRITE;
/*!40000 ALTER TABLE `basket_book` DISABLE KEYS */;
INSERT INTO `basket_book` VALUES (2,1,5,2),(3,1,15,3),(4,1,22,4),(5,1,5,5),(6,1,15,6),(7,1,22,7),(8,1,11,8),(9,1,21,9),(10,1,17,9),(11,1,11,10),(12,1,21,11),(13,1,17,11),(14,1,21,12),(15,1,22,13),(16,1,21,14),(17,1,22,15);
/*!40000 ALTER TABLE `basket_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(30) DEFAULT NULL,
  `description` varchar(600) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `page_count` int(11) NOT NULL,
  `price` double NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'Cay S. Horstmann','Books make up for the first mode of learning. Combining them with articles, tutorials, and videos, you get an excellent recipe to learn Java. As Java is one of the leading programming languages, there is no scarcity of books written on the high-level, general-purpose programming language. While some of them offer an overview of various Java concepts, others go in-depth into specific Java topics.','5fff3292-31d6-4afd-84b1-dccec3a2912f.jpg','Core Java',250,75,'Rufat'),(2,'Barry A. Burd','Are you new to programming and have decided that Java is your language of choice? Are you a wanna-be programmer looking to learn the hottest lingo around? Look no further!beginning programming with Java for Dummies, 5th Edition is the easy-to-follow guide you\'ll want to keep in your back pocket as you work your way toward Java mastery! In plain english, it quickly and easily shows you what goes into creating a program.','4a88300b-fe8c-4ab3-9597-d4a3f1180a6e.jpg','Java for Dummies',430,90,'Rufat'),(3,'Darren Broemmer','Learn how to apply robust application design to your J2EE projects\r\nThere are a number of best practices you need to consider to build highly effective J2EE components and integrate them into applications. These practices include evaluating and selecting the right set of software components and services to handle the job.','ac2ea31d-953e-4d4e-9d67-02bfb0b90992.jpg','J2EETM Best Practices',420,150,'Rufat'),(4,'DT Editorial Services','Core Java ? An Integrated Approach covers all core concepts in a methodical way. It helps you learn the concepts?from OOPS to abstract classes and interfaces; from software packaging to providing API documents; from error handling to converting fundamental data into object form; from collection framework to streams and creating client and server program to threads; from creating GUI applications to generics and communication with database.','afcafd62-25c1-4d1d-8aba-5884087ac9f2.jpg','Core Java:',235,135,'Rufat'),(5,'DT Editorial Services','Big Data is one of the most popular buzzwords in technology industry today. Organizations worldwide have realized the value of the immense volume of data available and are trying their best to manage, analyse and unleash the power of data to build strategies and develop a competitive edge. At the same time, the advent of the technology has led to the evolution of a variety of new and enhanced job roles.','57724cf3-9583-4c85-987c-7c541f67d0cc.jpg','Big Data, Black Book',450,60,'Rufat'),(6,'DT Editorial Services','HTML5 Black Book is the one-time reference book, written from the Web professional?s point of view, containing hundreds of examples and covering nearly every aspect of HTML5. It will help you to master various Web technologies, other than HTML5, including CSS3, JavaScript, XML and AJAX. If you are a Web designer or developer, then this book is your introduction to new features and elements of HTML5, including audio and video media elements, the canvas element for drawing, and many others.','598c582e-da60-44f3-92bd-cf6d2a4e17d9.jpg','HTML 5 Black Book',350,55,'Rufat'),(7,'DT Editorial Services','This is the one-time reference book, written from the programmer’s point of view, containing hundreds of examples and covering nearly every aspect of various Web technologies, such as PHP, HTML, XML, AJAX, ASP.NET, Servlets, and JSP. It will help you to master the entire spectrum of Web Technologies by exploring and implementing various concepts of each Web technology.','49f5dc36-66b0-435f-b7b6-d9c73baa4d50.jpg','Web Technologies',235,170,'Rufat'),(8,'Allen G. Taylor','Sql is the international standard language for creating and maintaining relational databases. This book is a compendium of information about SQL and relational database design, development, and maintenance. The eight mini-books cover the full spectrum of issues that arise in building, using, and maintaining relational database systems. .','ebf2105a-c3bb-49cb-908a-7125abb66bb5.jpg','SQL All-In-One',400,250,'Rufat'),(9,'Hanumant Deshmukh','Last Updated: 25th June 2020 - Build 2.0 : Covers recent changes in the exam! IMPORTANT: This book DOES NOT include mock exams. It is meant to complement Enthuware Mock Exams and should be used as a study guide before or while attempting the mock Exams. OCP Oracle Certified Professional Java SE 11 Programmer Part 1 Exam Fundamentals is a comprehensive study guide for those taking the Oracle Certified Professional Java SE 11 Programmer I Exam (Exam Code 1Z0-815). ','8955b435-6c61-44bb-a2b3-0772ada78cc5.jpg','Oracle Certified Professional',520,235,'Rufat'),(10,'Andrea Maglie','Learn reactive programming using Java and its functional aspects, sometimes called RxJava. This book shows you how to solve \"callback hell\" with RxJava and shows you how to write thread-safe code without hanging onto state variables which comes in handy for cloud computing software-as-a-service issues, especially when dealing with big data processes through streaming.','a9ddddc1-ce12-4326-8ca2-d4269c0008b5.jpg','Reactive Java Programming',275,95,'Rufat'),(11,'Felipe Gutierrez','Quickly and productively develop complex Spring applications and microservices out of the box, with minimal concern over things like configurations. This revised book will show you how to fully leverage the Spring Boot 2 technology and how to apply it to create enterprise ready applications that just work. ','9583e0e2-d5ec-4692-996f-4e3ca7089339.jpg','Pro Spring Boot 2',320,125,'Rufat'),(12,'Richard Blum','It takes a powerful suite of technologies to drive the most-visited websites in the world. PHP, MySQL, JavaScript and other web-building languages serve as the foundation for application development and programming projects at all levels of the web. Dig into this all-in-one book to get a grasp on these in-demand skills and figure out how to apply them to become a professional web builder.','c1d28579-ddd4-4014-801b-193e17db1012.jpg','PHP, MySQL & JavaScript',322,150,'Rufat'),(13,'John C. Shovic','There\'s almost no type of project that Python can\'t make better. From creating apps to building complex web sites to sorting big data, Python provides a way to get the work done. Python All-in-One for Dummies offers a starting point for those new to coding by explaining the basics of Python. Experienced coders looking for more than the basics can also find how Python can be applied to projects in the enterprise, including data analysis and other major undertakings.','8310faf2-e29f-48fd-a287-53287aeb1b19.jpg','Python All-in-One',257,67,'Leyla'),(14,'Luca Massaron','Machine learning can be a mind-boggling concept for the masses, but those who are in the trenches of computer programming know just how invaluable it is. Without machine learning, fraud detection, web search results, real-time ads on web pages, credit scoring, automation and email spam filtering wouldn\'t be possible and this is only showcasing just a few of its capabilities.','f40c2a49-fa65-4e65-8e39-0853722e67ba.jpg','Machine Learning',426,56,'Leyla'),(15,'Allen Downey','The book is designed to introduce the important concepts of Python programming language in detail. The reader will be able to develop and execute the programs in Python. This book will also help the readers to learn about Functions, Recursion, Iterative Statements, Strings, Lists, Tuples, Dictionaries, Files and Exceptions, Classes and Objects, Methods, Inheritance, Linked Lists, Stacks, Queues and Trees.','b5fa74d6-9bc6-4464-b330-9a611e568d88.jpg','Learning with Python',362,195,'Leyla'),(16,'Vei Publishing','Reading books is a kind of enjoyment. Reading books is a good habit. We bring you a different kinds of books. You can carry this book where ever you want. It is easy to carry. It can be an ideal gift to yourself and to your loved ones. Care instruction keep away from fire.','9a469135-dfe1-48af-b29d-f619c4466281.jpg','Zero To Mastery In Python',430,150,'Leyla'),(17,'Kumar Rahul & Dinesh Kumar','Machine Learning Using R aims to make ML concepts and model development using R simpler for students and practitioners. This book covers the theoretical concepts behind ML algorithms and illustrates use of R for developing ML models using datasets from customer relationship management, healthcare, finance, human resource management, social media, and sports.\r\n','f14b4f5c-211a-4ba9-b9ef-1d4f034af0bd.jpg','Machine Learning Using R ',325,195,'Leyla'),(18,'Jason Bell','The book presents a breakdown of each variant of machine learning, how it works and how it is used within certain industries. Also covered are various algorithm types (supervised, unsupervised and so on) during training phases of machine learning. The reader will learn that with the right tools any developer or technology professional can glean information from their existing data. The book outlines the key types of machine learning, providing coded solutions for real world examples.','f1f5130d-cf41-4fa6-b545-604e6ed57c7a.jpg','Machine Learning for Big Data:',430,99,'Leyla'),(19,'R.Shankarmani M. Vijayalakshmi','The goal of this book is to cover foundational techniques and tools required for Big Data Analytics. It focuses on concepts, principles and techniques applicable to any technology environment and industry and establishes a baseline that can be enhanced further by additional real-world experience. This book aims to be a ready reckoner to either a novice or a professional working in the field. Topics covered include Hadoop, MapReduce, Association Rules, Large-Scale Supervised Machine Learning,','c4f2ec5b-90f8-4a1b-bcef-4dcbe72b12ba.jpg','Big Data Analytics, 2ed',325,165,'Leyla'),(20,' Raj Kamal','Big Data Analytics (BDA) is a rapidly evolving field that finds applications in many areas such as healthcare, medicine, advertising, marketing, and sales. This book dwells on all the aspects of Big Data Analytics and covers the subject in its entirety. It comprises several illustrations, sample codes, case studies and real-life analytics of datasets such as toys, chocolates, cars, and student’s GPAs.','83f4d2cc-5633-436c-a5a1-b3cc1ea6d81f.jpg','Big Data Analytics',362,122,'Leyla'),(21,' Josephine Bush','Learn everything you need to know to build efficient SQL queries using this easy-to-follow beginner’s guide','693fa560-bb23-4b9d-ba84-c40041efd353.jpg','Learn SQL Database Programming',230,250,'Leyla'),(22,'Ryan Turner','If you are unfamiliar with programming and are looking for an open-source electronic interface, then Arduino could be just the place to start!','eb818531-9f71-474c-9602-ee0486ab4897.jpg','ARDUINO PROGRAMMING',235,47,'Vusal'),(23,'Martin Odersky','\"If I were to pick a language to use today other than Java, it would be Scala.\" —James Gosling Programming in Scala Fifth Edition is the definitive book on Scala, the popular language for the Java Platform that blends object-oriented and functional programming concepts into a unique and powerful tool for developers. Coauthored by the designer of the Scala language, this authoritative book will teach you, one step at a time, the Scala language and the ideas behind it.','1f4ab9aa-0403-4287-b856-250790794aa5.jpg','Programming in Scala',145,155,'Vusal'),(24,'Reema Thareja','The book starts with an introduction to C programming and then delves into an in-depth analysis of various constructs of C. The key topics include iterative and decision-control statements, functions, arrays, strings, pointers, structures and unions, file management, and pre-processor directives. It deals separately with the fundamental concepts of various data structures such as linked lists, stacks, queues, trees, and graphs.','14503f62-7332-4e5f-b750-017dc98bec54.jpg','PROGRAMMING IN C',187,83,'Vusal'),(25,'Robert Lafore','Object Oriented Programming in C++ is a comprehensive solution for teaching object-oriented programming using the features of ANSI/ISO C++. It covers the basic concepts of object-oriented programming, why those concepts exist and how to make them work effectively. The Fourth Edition is updated and revised to include more UML coverage, inter-file communication and use-cases analysis to explain software design.','ffbd8f23-acf3-4c1f-a73e-f9e9a8118857.jpg','OOP C++',125,37,'Vusal'),(26,'Test','Css test','a8bd4e76-9455-45f6-a300-57cbdacb885c.jpg','Css',125,125,'Vusal');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `note` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (2,'Berlin','qarayev.vusal@gmail.com','Vusal','salam vusal','051-996-3116'),(3,'Ünvan1233','qarayev.rufat123@gmail.com','Rufat123',NULL,'051-996-3117'),(4,'Berlin','qarayev.vusal@gmail.com','Vusal',NULL,'051-996-3116');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `note` varchar(255) DEFAULT NULL,
  `register` datetime DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK624gtjin3po807j3vix093tlf` (`customer_id`),
  CONSTRAINT `FK624gtjin3po807j3vix093tlf` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (2,'salam','2022-09-21 02:27:38',60,'Rufat',2),(3,'salam','2022-09-21 02:27:38',195,'Leyla',2),(4,'salam','2022-09-21 02:27:38',47,'Vusal',2),(5,'salam','2022-09-21 02:27:38',60,'Rufat',2),(6,'salam','2022-09-21 02:27:38',195,'Leyla',2),(7,'salam','2022-09-21 02:27:38',47,'Vusal',2),(8,'Qeyd5','2022-09-21 02:29:41',125,'Rufat',3),(9,'Qeyd5','2022-09-21 02:29:41',445,'Leyla',3),(10,'Qeyd5','2022-09-21 02:29:41',125,'Rufat',2),(11,'Qeyd5','2022-09-21 02:29:41',445,'Leyla',2),(12,'salam vusal','2022-09-21 03:00:12',250,'Leyla',4),(13,'salam vusal','2022-09-21 03:00:12',47,'Vusal',4),(14,'salam vusal','2022-09-21 03:00:12',250,'Leyla',2),(15,'salam vusal','2022-09-21 03:00:12',47,'Vusal',2);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('Amin','{bcrypt}$2a$10$UY/GBuJVXylczs8rP2adk.mQDTMFj8tVxHgXdEcpOhHyFb9yiU6VG',1),('Leyla','{bcrypt}$2a$10$g2zW9a3gMaviAk9n8SjBKuyGDRDHq/EV2INndB5nNOc./wL5VeyB2',1),('Rufat','{bcrypt}$2a$10$7oqfVnvH2niEQcNPnXVVEezKggsl9hBG7ksKg84dX.zLO.3Vyzmky',1),('Vusal','{bcrypt}$2a$10$m6r52FvmKICchuwiomGcmuZ5kwqHYNJ3nJzB900Dtu3Ag5uJmxchq',1);
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

-- Dump completed on 2023-03-05 16:13:45
