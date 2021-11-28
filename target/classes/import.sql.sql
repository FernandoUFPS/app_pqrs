-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: app_pqrs
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `authorities`
--

DROP TABLE IF EXISTS `authorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authorities` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `authority` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKrimuuii4fm3j9qt8uupyiy8nd` (`user_id`,`authority`),
  CONSTRAINT `FKk91upmbueyim93v469wj7b2qh` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authorities`
--

LOCK TABLES `authorities` WRITE;
/*!40000 ALTER TABLE `authorities` DISABLE KEYS */;
INSERT INTO `authorities` VALUES (2,'ROLE_USER',1),(3,'ROLE_ADMIN',2),(4,'ROLE_USER',2);
/*!40000 ALTER TABLE `authorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cargo` varchar(255) DEFAULT NULL,
  `celular` varchar(255) DEFAULT NULL,
  `codigo_interno` varchar(255) DEFAULT NULL,
  `contrasena` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `es_admin` bit(1) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL,
  `fecha_ultimo_ingreso` datetime(6) DEFAULT NULL,
  `identificacion` varchar(255) DEFAULT NULL,
  `nombre_completo` varchar(255) DEFAULT NULL,
  `tipo_identificacion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,NULL,NULL,NULL,'123456',NULL,_binary '',NULL,NULL,NULL,'2020','ALVARO uribe',NULL),(2,NULL,NULL,NULL,'12345',NULL,_binary '\0',NULL,NULL,NULL,'2021','ivan duque',NULL),(3,NULL,'321',NULL,'1234','casi@gmail.com',NULL,NULL,NULL,NULL,'1990','casimiro perez',NULL);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitud`
--

DROP TABLE IF EXISTS `solicitud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitud` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) DEFAULT NULL,
  `fecha_registro` datetime(6) DEFAULT NULL,
  `fecha_respuesta` datetime(6) DEFAULT NULL,
  `funcionario` varchar(255) DEFAULT NULL,
  `motivo_solicitud` varchar(255) DEFAULT NULL,
  `respodida` bit(1) DEFAULT NULL,
  `respuesta` varchar(255) DEFAULT NULL,
  `tipo_solicitud` varchar(255) DEFAULT NULL,
  `usuario_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6jl4i2eesvg305qkamgialwh3` (`usuario_id`),
  CONSTRAINT `FK6jl4i2eesvg305qkamgialwh3` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitud`
--

LOCK TABLES `solicitud` WRITE;
/*!40000 ALTER TABLE `solicitud` DISABLE KEYS */;
INSERT INTO `solicitud` VALUES (1,'esta es la primera prueba usuario pepe id 3 solicitud id 1','2021-05-08 18:29:54.142000',NULL,NULL,'solicitud de informacion',NULL,NULL,'queja - reclamo',3),(2,'prueba numero 2','2021-05-08 18:31:20.152000',NULL,NULL,'tramites administrativos',NULL,NULL,'peticion',3),(3,'prueba numero 6','2021-05-08 18:32:08.075000',NULL,NULL,'tramites administrativos',NULL,NULL,'peticion',3),(4,'prueba numero 7','2021-05-08 18:32:22.256000',NULL,NULL,'tramites administrativos',NULL,NULL,'peticion',1),(5,'prueba numero 8','2021-05-08 19:07:02.860000',NULL,NULL,'solicitud de informacion',NULL,NULL,'sugerencia',1),(6,'prueba numero 9','2021-05-08 19:22:00.574000',NULL,NULL,'solicitud de informacion',NULL,NULL,'queja - reclamo',4),(7,'prueba numero 10','2021-05-08 19:23:28.196000',NULL,NULL,'otro',NULL,NULL,'felicitacion',2),(8,'prueba numero 11','2021-05-08 19:24:21.862000',NULL,NULL,'tramites administrativos',NULL,NULL,'peticion',3),(9,'prueba numero 12','2021-05-08 19:25:30.768000',NULL,NULL,'tramites administrativos',NULL,NULL,'peticion',4),(10,'prueba numero 13','2021-05-08 19:25:48.826000',NULL,NULL,'tramites administrativos',NULL,NULL,'peticion',1),(11,'prueba numero 13','2021-05-08 19:26:45.782000',NULL,NULL,'tramites administrativos',NULL,NULL,'peticion',2);
/*!40000 ALTER TABLE `solicitud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `codigo` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `es_admin` varchar(255) DEFAULT NULL,
  `fehca_registro` datetime(6) DEFAULT NULL,
  `identificacion` varchar(255) DEFAULT NULL,
  `nombre_compelto` varchar(255) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_r43af9ap4edm43mmtq01oddj6` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,NULL,NULL,_binary '',NULL,NULL,NULL,NULL,'$2a$10$gDcCfakVDsJ3st/g2JK0GODG67YReSwzZ164HqawKUBfq5GZxns.y','admin'),(2,NULL,NULL,_binary '',NULL,NULL,NULL,NULL,'$2a$10$RFuoa2dNgpYjuoug7sc.judPZJGeG6hbYISq37d.rRN/99HTGSiJq','brayan');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `barrio` varchar(255) DEFAULT NULL,
  `celular` varchar(255) DEFAULT NULL,
  `codigointerno` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL,
  `identificacion` varchar(255) DEFAULT NULL,
  `municipio` varchar(255) DEFAULT NULL,
  `primer_apellido` varchar(255) DEFAULT NULL,
  `primer_nombre` varchar(255) DEFAULT NULL,
  `segundo_apellido` varchar(255) DEFAULT NULL,
  `segundo_nombre` varchar(255) DEFAULT NULL,
  `telefono_fijo` varchar(255) DEFAULT NULL,
  `tipo_identificacion` varchar(255) DEFAULT NULL,
  `tipo_usuario` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,NULL,'3144300588','25001','brayan@gmail.com','cll 1',NULL,'1093783472',NULL,'Espitia','Brayan','orjuela','david','','pasaporte','egresado'),(2,NULL,'1234','','cliente3@gmail.com','cll 2',NULL,'123456',NULL,'rodriguez','james','futbol','goleador','1234','pasaporte','egresado'),(3,NULL,'3144300588','123','pepe@gmail.com','cll 3',NULL,'1090',NULL,'perez','pepe','gomez','jose','123','pasaporte','egresado'),(4,NULL,'1234','1234','cliente4@gmail.com','cll4',NULL,'1091',NULL,'sacasu','juanito','cuchillo','alimana','','pasaporte','egresado'),(5,NULL,'311','1234','carlos@gmail.com','calle 23',NULL,'8080',NULL,'perez','carlos','gomez','david','555','cedula de extanjeria','persona natural');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-26 23:23:35
