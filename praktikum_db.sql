-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: praktikum_db
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.20.04.1

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
-- Table structure for table `data_user`
--

DROP TABLE IF EXISTS `data_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `no_telepon` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `id_user` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `data_user_FK` FOREIGN KEY (`id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_user`
--

LOCK TABLES `data_user` WRITE;
/*!40000 ALTER TABLE `data_user` DISABLE KEYS */;
INSERT INTO `data_user` VALUES (1,'089517671541','Pongangan','Gresik','2001-01-01','1'),(2,'08912319324','Namex','Pluto','0001-09-09','2'),(3,'031313131313','Matahari','Bulan','1000-10-10','3'),(4,'087414141414','Bumi','Zuhal','2020-12-20','4');
/*!40000 ALTER TABLE `data_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jenis_permission`
--

DROP TABLE IF EXISTS `jenis_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jenis_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_permission` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jenis_permission`
--

LOCK TABLES `jenis_permission` WRITE;
/*!40000 ALTER TABLE `jenis_permission` DISABLE KEYS */;
INSERT INTO `jenis_permission` VALUES (1,'read'),(2,'write'),(3,'execute');
/*!40000 ALTER TABLE `jenis_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jenis_role`
--

DROP TABLE IF EXISTS `jenis_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jenis_role` (
  `id_role` int NOT NULL AUTO_INCREMENT,
  `nama_role` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jenis_role`
--

LOCK TABLES `jenis_role` WRITE;
/*!40000 ALTER TABLE `jenis_role` DISABLE KEYS */;
INSERT INTO `jenis_role` VALUES (1,'admin'),(2,'user');
/*!40000 ALTER TABLE `jenis_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_permission`
--

DROP TABLE IF EXISTS `role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_permission` (
  `id_permission` int DEFAULT NULL,
  `id_role` int DEFAULT NULL,
  KEY `role_permission_FK` (`id_permission`),
  KEY `role_permission_FK_1` (`id_role`),
  CONSTRAINT `role_permission_FK` FOREIGN KEY (`id_permission`) REFERENCES `jenis_permission` (`id`),
  CONSTRAINT `role_permission_FK_1` FOREIGN KEY (`id_role`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_permission`
--

LOCK TABLES `role_permission` WRITE;
/*!40000 ALTER TABLE `role_permission` DISABLE KEYS */;
INSERT INTO `role_permission` VALUES (1,1),(2,1),(3,1),(1,2),(3,2);
/*!40000 ALTER TABLE `role_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_lengkap` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Hafidz Ubaidillah','hafidz21ub@gmail.com','12345678'),(2,'Manusia A','humana@gmail.com','12345678'),(3,'Manusia B','humanb@gmail,com','12345678'),(4,'Manusia C','humanc@gmail.com','12345678');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `id_role` int NOT NULL,
  `id_user` int NOT NULL,
  KEY `user_role_FK_1` (`id_user`),
  KEY `user_role_FK` (`id_role`),
  CONSTRAINT `user_role_FK` FOREIGN KEY (`id_role`) REFERENCES `jenis_role` (`id_role`),
  CONSTRAINT `user_role_FK_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-24 18:31:13
