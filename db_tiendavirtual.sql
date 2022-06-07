-- MySQL dump 10.13  Distrib 8.0.27, for macos11 (x86_64)
--
-- Host: localhost    Database: db_tiendavirtual
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `idcategoria` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `portada` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ruta` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Hombre','Hoodies Hombre','sliderHombre.jpg','2021-08-20 03:04:04','hombre',1),(4,'Mujer','Hoodies Mujer','sliderMujer.jpg','2022-06-05 22:24:59','mujer',1),(5,'Parejas','Hoodies Parejas','sliderParejas.jpg','2021-08-20 03:04:04','parejas',1),(6,'Otros Estilos','Hoodies Otros Estilos','sliderAnimados.jpg','2022-06-05 22:24:59','otrosEstilos',1);
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacto`
--

DROP TABLE IF EXISTS `contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacto` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `mensaje` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `ip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `dispositivo` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `useragent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacto`
--

LOCK TABLES `contacto` WRITE;
/*!40000 ALTER TABLE `contacto` DISABLE KEYS */;
INSERT INTO `contacto` VALUES (2,'Juan Camilo Gallego','camilo.gallego@ucp.edu.co','Hola','::1','PC','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36','2022-06-05 20:31:55'),(4,'H','prueba@gmail.com','h','::1','PC','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36','2022-06-05 20:45:51'),(5,'Day','day@gmail.com','hola prueba','::1','PC','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36','2022-06-06 01:20:16'),(6,'Prueba2','prueba34@gmail.com','Hola','::1','PC','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36','2022-06-06 03:41:08');
/*!40000 ALTER TABLE `contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_pedido`
--

DROP TABLE IF EXISTS `detalle_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_pedido` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `pedidoid` bigint NOT NULL,
  `productoid` bigint NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pedidoid` (`pedidoid`),
  KEY `productoid` (`productoid`),
  CONSTRAINT `detalle_pedido_ibfk_1` FOREIGN KEY (`pedidoid`) REFERENCES `pedido` (`idpedido`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `detalle_pedido_ibfk_2` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_pedido`
--

LOCK TABLES `detalle_pedido` WRITE;
/*!40000 ALTER TABLE `detalle_pedido` DISABLE KEYS */;
INSERT INTO `detalle_pedido` VALUES (4,3,31,80000.00,1),(5,3,30,160000.00,1),(6,4,26,130000.00,1),(7,4,27,140000.00,1),(8,5,30,160000.00,1),(9,5,31,80000.00,1),(10,5,27,140000.00,1),(11,6,30,160000.00,1),(12,6,31,80000.00,1);
/*!40000 ALTER TABLE `detalle_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagen`
--

DROP TABLE IF EXISTS `imagen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imagen` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `productoid` bigint NOT NULL,
  `img` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `productoid` (`productoid`),
  CONSTRAINT `imagen_ibfk_1` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagen`
--

LOCK TABLES `imagen` WRITE;
/*!40000 ALTER TABLE `imagen` DISABLE KEYS */;
INSERT INTO `imagen` VALUES (21,13,'Hombre1.jpg'),(22,14,'Hombre2.jpg'),(23,15,'Hombre3.jpg'),(24,16,'Hombre4.jpg'),(25,17,'Hombre5.jpg'),(26,18,'mujer1.jpg'),(27,19,'mujer2.jpg'),(28,20,'mujer3.jpg'),(29,21,'mujer4.jpg'),(30,22,'mujer5.jpg'),(31,23,'Parejas1.jpg'),(32,24,'Parejas2.jpg'),(33,25,'Parejas3.jpg'),(34,26,'Parejas4.jpg'),(35,27,'Animados.jpg'),(36,28,'Animados1.jpg'),(37,29,'Animados2.png'),(38,30,'Animados3.png'),(39,31,'Animados4.jpg'),(40,32,'Homero.jpg'),(41,33,'Jack.png');
/*!40000 ALTER TABLE `imagen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modulo`
--

DROP TABLE IF EXISTS `modulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modulo` (
  `idmodulo` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idmodulo`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modulo`
--

LOCK TABLES `modulo` WRITE;
/*!40000 ALTER TABLE `modulo` DISABLE KEYS */;
INSERT INTO `modulo` VALUES (1,'Dashboard','Dashboard',1),(2,'Usuarios','Usuarios del sistema',1),(3,'Clientes','Clientes de tienda',1),(4,'Productos','Todos los productos',1),(5,'Pedidos','Pedidos',1),(6,'Caterogías','Caterogías Productos',1),(7,'Suscriptores','Suscriptores del sitio web',1),(8,'Contactos','Mensajes del formulario contacto',1),(9,'Páginas','Páginas del sitio web',1);
/*!40000 ALTER TABLE `modulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `idpedido` bigint NOT NULL AUTO_INCREMENT,
  `personaid` bigint NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `costo_envio` decimal(10,2) NOT NULL DEFAULT '0.00',
  `monto` decimal(11,2) NOT NULL,
  `tipopagoid` bigint NOT NULL,
  `direccion_envio` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`idpedido`),
  KEY `personaid` (`personaid`),
  KEY `tipopagoid` (`tipopagoid`),
  CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`personaid`) REFERENCES `persona` (`idpersona`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`tipopagoid`) REFERENCES `tipopago` (`idtipopago`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (3,13,'2022-06-06 02:35:04',5000.00,245000.00,2,'a, a','Pendiente'),(4,15,'2022-06-06 02:42:56',5000.00,275000.00,2,'carrera 27, pereira','Pendiente'),(5,16,'2022-06-06 03:31:11',5000.00,385000.00,2,'calle 73, pereira','Pendiente'),(6,17,'2022-06-06 04:14:39',5000.00,245000.00,2,'calle, manizales','Pendiente');
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permisos`
--

DROP TABLE IF EXISTS `permisos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permisos` (
  `idpermiso` bigint NOT NULL AUTO_INCREMENT,
  `rolid` bigint NOT NULL,
  `moduloid` bigint NOT NULL,
  `r` int NOT NULL DEFAULT '0',
  `w` int NOT NULL DEFAULT '0',
  `u` int NOT NULL DEFAULT '0',
  `d` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpermiso`),
  KEY `rolid` (`rolid`),
  KEY `moduloid` (`moduloid`),
  CONSTRAINT `permisos_ibfk_1` FOREIGN KEY (`rolid`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permisos_ibfk_2` FOREIGN KEY (`moduloid`) REFERENCES `modulo` (`idmodulo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permisos`
--

LOCK TABLES `permisos` WRITE;
/*!40000 ALTER TABLE `permisos` DISABLE KEYS */;
INSERT INTO `permisos` VALUES (3,1,1,1,1,1,1),(4,1,2,1,1,1,1),(5,1,3,1,1,1,1),(6,1,4,1,1,1,1),(7,1,5,1,1,1,1),(8,1,6,1,1,1,1),(9,1,7,1,1,1,1),(10,1,8,1,1,1,1),(11,1,9,1,1,1,1),(12,2,1,1,1,1,1),(13,2,2,0,0,0,0),(14,2,3,1,1,1,0),(15,2,4,1,1,1,0),(16,2,5,1,1,1,0),(17,2,6,1,1,1,0),(18,2,7,1,0,0,0),(19,2,8,1,0,0,0),(20,2,9,1,1,1,1),(21,3,1,0,0,0,0),(22,3,2,0,0,0,0),(23,3,3,0,0,0,0),(24,3,4,0,0,0,0),(25,3,5,1,0,0,0),(26,3,6,0,0,0,0),(27,3,7,0,0,0,0),(28,3,8,0,0,0,0),(29,3,9,0,0,0,0),(30,4,1,1,0,0,0),(31,4,2,0,0,0,0),(32,4,3,1,1,1,0),(33,4,4,1,0,0,0),(34,4,5,1,0,1,0),(35,4,6,0,0,0,0),(36,4,7,1,0,0,0),(37,4,8,1,0,0,0),(38,4,9,0,0,0,0);
/*!40000 ALTER TABLE `permisos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona` (
  `idpersona` bigint NOT NULL AUTO_INCREMENT,
  `identificacion` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `nombres` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `apellidos` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `telefono` bigint NOT NULL,
  `email_user` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `password` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `rolid` bigint NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idpersona`),
  KEY `rolid` (`rolid`),
  CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`rolid`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,'1004779385','Daynlli','Quintero',3197406482,'daynlli.quintero@ucp.edu.co','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',NULL,1,'2021-08-20 01:34:15',1),(5,NULL,'Yess','Gutierrez',30082938374,'yessica.gutierrez@ucp.edu.co','0fec89ef096816a94dbad346257dc9cdd7c349d9e4460878a3b82dd9bc99d628',NULL,3,'2022-06-05 20:47:55',1),(6,NULL,'PruebaCliente','Cliente',123454436,'prueba@gmail.com','228f4755e4cd3791e7acb4b590e73f1ea7c108176223407aeecfb3b7382db436',NULL,3,'2022-06-05 20:49:48',1),(7,NULL,'PruebaDos','Dos',1234567,'prueba2@gmail.com','b4fb0f3e1fc7205cddea2936359b9b87c70d5a6bbc58567d48aa29962b636843',NULL,3,'2022-06-06 01:26:25',1),(8,NULL,'Cam','Gall',124142,'cami@gmail.com','acbc84c0f7f0f4e31b6f64c0767045db8d1c58e7fe1dee8be46ece952619642b',NULL,3,'2022-06-06 01:29:32',1),(9,NULL,'Daynlli','Quintero',3197406482,'daynlliquintero@gmail.com','463ded350c67657f73b918d46b55d24d2ba0b0472dd43d187d7e17b8d2591231',NULL,3,'2022-06-06 01:32:42',1),(10,NULL,'Day','Dat',123,'day@gmai.com','2fc73eb562b0bc55b2c5aa6f2fe92ed726fcd7e5b298d41a5d5ada5a44b9ba6f',NULL,3,'2022-06-06 01:35:34',1),(11,NULL,'Mujer','Cliente',12344556,'da@gmail.com','490468382130806170c8bbc3d6a9e7e841cb46bad46aec2f5898aefb10231db1',NULL,3,'2022-06-06 01:58:11',1),(12,NULL,'A','A',12,'a@gmai.com','9ac439ab46e2071992ecade54b7b2252a84266692e7b233747645223f35b5420',NULL,3,'2022-06-06 02:13:39',1),(13,NULL,'B','B',23,'b@gmail.com','000ed9dfa27302f2b24073b4f57c218d5218ccf7f90f6d5dff7a9bc88474531e',NULL,3,'2022-06-06 02:14:41',1),(14,NULL,'A','A',1,'aa@gmail.com','e8f5099766fbcde3bce5cc029d22a53d3dd33941b024bbddd738ae04248069dd',NULL,3,'2022-06-06 02:41:35',1),(15,NULL,'Juan Camilo','Gallego',11234,'daynkintero@gmail.com','d0a76bd1402f0644c4d1a46574b707f2b29b559cd1d90feb04af0778a8f7eaa9',NULL,3,'2022-06-06 02:42:32',1),(16,NULL,'Santiago','S',123456,'day@gmail.com','3ac1c3709bba0dcb1e754927cd79d6f45cece17d76dd44137c41a079904bc04e',NULL,3,'2022-06-06 03:27:07',1),(17,'123','Baa','Baa',2123,'basd@gmail.com','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',NULL,3,'2022-06-06 04:14:25',1);
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `idpost` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `contenido` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `portada` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `datecreate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ruta` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idpost`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (2,'Tienda','<p>Contenido p&aacute;gina!</p>','','2021-08-06 01:21:27','tienda',1),(3,'Carrito','<p>Contenido p&aacute;gina!</p>','','2021-08-06 01:21:52','carrito',1),(4,'Nosotros','<section class=\"bg0 p-t-75 p-b-120\"> <div class=\"container\"> <div class=\"row p-b-148\"> <div class=\"col-md-7 col-lg-26\"> <div class=\"p-t-7 p-r-85 p-r-15-lg p-r-0-md\"> <h3 class=\"mtext-111 cl2 p-b-16\">Historia</h3> <p class=\"stext-113 cl6 p-b-26\">Hoodies Neeo surge en el año 2020, en medio de un contexto de pandemia, como un emprendimiento que busca la prosperidad, pero por encima de todo, la distinción y el posicionamiento entre todos sus clientes y usuarios.\r\n<br> <br>\r\nEl lema de Hoodies Neoo “Crea tu estilo y adapta tus prendas a él” representa la promesa y el objetivo de querer ser mucho más que solo una marca colgada en tu clóset. Queremos ser mucho más que cualquier prenda aleatoria de tu outfit. Buscamos que puedas expresarte a través de tu manera de vestir, que los colores y diseños que elijas para tus Hoodies te hagan sentir único y especial. Que tus prendas sean tal cual como tú siempre las haz querido, que sean tu estilo y todos los días puedas tener el estilo y el Hoodie que deseas.</p> </div> </div> <div class=\"col-11 col-md-5 col-lg-4 m-lr-auto\"> <div class=\"how-bor1 \"> <div class=\"hov-img0\"><img src=\"https://cdn.pixabay.com/photo/2015/07/17/22/43/student-849825_1280.jpg\" alt=\"IMG\" width=\"500\" height=\"333\" /></div> </div> </div> </div> <div class=\"row\"> <div class=\"order-md-2 col-md-7 p-b-30\"> <div class=\"p-t-7 p-l-85 p-l-15-lg p-l-0-md\"> <h2 class=\"mtext-111 cl2 p-b-16\"><span style=\"color: #236fa1;\">Nuestra Misi&oacute;n</span></h2> <p class=\"stext-113 cl6 p-b-26\">Ofrecer una experiencia de compra segura e intuitiva, para garantizar la confección y entrega de prendas de vestir que llenen las expectativas de calidad y exclusividad de cada uno de nuestros clientes.\r\n<br><br>\r\nElaboramos nuestros productos con amor y entrega, para que puedas ajustar tus prendas a tu estilo.</div> </div> </div> </div> </div> </div> </section>','banner.jpg','2021-08-09 03:09:44','nosotros',1),(5,'Contacto','','banner.jpg','2021-08-09 03:11:08','contacto',1),(6,'Preguntas frecuentes','<ol> <li><strong>&iquest;Cu&aacute;l es el tiempo de entrega de los producto? </strong>El tiempo de entrega está sujeto a la dirección de domicilio que hayas ingresado para recibir tu pedido. Si estás domiciliado en Pereira, o municipios aledaños a ella, tu pedido tardará 4 días hábiles en entregarse. Para otras ciudades, la entrega de tu producto está sujeta a la disponibilidad y tiempos de entrega estimados por la empresa de envíos contratada para el servicio. La confección y estampación del buzo toma un estimado de 3 días contados a partir de la confirmación del pedido, y de allí en adelante se adicionan los días que la empresa de encomiendas confirme para su entrega.\r\n</li> <li><strong>&iquest;C&oacute;mo es la forma de env&iacute;o de los productos?</strong> En Pereira o municipios aledaños como Pereira, La Virginia, Dosquebradas y Santa Rosa de Cabal, los envíos se entregan con servicios de domicilio locales, y generalmente son transportados en motocicleta desde el punto de recogida hasta el punto de entrega. Para envíos a otras ciudades, Hoodies Neeo utiliza los servicios de encomiendas de la empresa Coordinadora para transportar sus productos.\r\n</li> <li><strong>&iquest;Cu&aacute;l es el tiempo m&aacute;ximo para solicitar un reembolso?</strong> Como la modalidad de pago es contraentrega, el reembolso debe solicitarse con uno de nuestros asesores inmediatamente se recibe el producto por el repartidor. El cliente debe justificar el por qué de la inconformidad, y no puede conservar la encomienda.\r\n<br><br>\r\nSi la inconformidad se presenta días después de adquirido el producto por razones de calidad injustificadas, Hoodies Neeo reenviará otro ejemplar al cliente o acordarán la forma de compensación.\r\n</li> </ol> <p>&nbsp;</p> <ul> <li><strong> <p>Otras preguntas</p> </strong><span style=\"color: #666666; font-family: Arial, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Nuestras telas son de la mejor calidad. Utilizamos Perchado Mónaco, para garantizar que la prenda no generará mota, no desteñirá y no encogerá después de lavadas. Los estampados son realizados con pintura textil si no son mayores a 2 tonos; y si el estampado comprende más de 2 tonos, se realiza bajo la técnica de DTF que garantiza perdurabilidad y calidad durante un tiempo prolongado.\r\n</span></li> </ul>','','2021-08-11 01:24:19','preguntas-frecuentes',1),(7,'Términos y Condiciones','<ol> <li> ACEPTACIÓN </li> <p>En el presente documento se establecen los términos y condiciones de Hoodies Neeo Empresa de Confección y Personalización de Buzos, con domicilio en el centro de la ciudad de Pereira, que serán de aplicación al acceso y uso por parte del Usuario de esta página web. Les rogamos lean atentamente el presente Contrato. \r\n<br> <br>\r\nAl acceder, consultar o utilizar el Sitio Web, los Usuarios aceptan cumplir los términos y condiciones establecidos en este Contrato. En caso de que usted no acepte quedar vinculado por los presentes términos y condiciones, no podrá acceder a, ni utilizar, el Sitio Web. \r\n<br> <br>\r\nHoodies Neeo se reserva el derecho de actualizar el presente Contrato siempre que lo consideren oportuno. En consecuencia, recomendamos al Usuario revisar periódicamente las modificaciones efectuadas al Contrato.\r\n<br> <br>\r\nEl presente Sitio Web está dirigido exclusivamente a personas residentes en Colombia. Los Usuarios residentes o domiciliados en otro país que deseen acceder y utilizar el Sitio Web, lo harán bajo su propia responsabilidad, por lo que deberán asegurarse de que dichos accesos y/o usos cumplen con la legislación y leyes de comercio aplicables en su país. Los envíos a otros países diferentes a Colombia no están contemplados dentro de los límites de entrega establecidos por la empresa. <br> <br>\r\n</p>\r\n <li> REQUISITOS RELATIVOS AL USUARIO </li> <p>El Sitio Web y los servicios relacionados con el mismo se ofrecen a los Usuarios que tengan capacidad legal para otorgar contratos legalmente vinculantes según la legislación aplicable. \r\nLos menores no están autorizados para utilizar el Sitio Web. Si usted es menor de edad, por favor, no utilice esta web o hágalo bajo supervisión y acompañamiento de un adulto responsable. <br> <br>\r\n</p> <li> LICENCIA </li> <p>En este acto, Hoodies Neeo otorga al Usuario una licencia limitada, no exclusiva, intransferible, no susceptible de cesión y revocable; para consultar y descargar, de forma temporal, una copia del contenido ofrecido en el Sitio Web, únicamente para uso personal del Usuario o dentro de su empresa, y nunca con fines comerciales. \r\n<br> <br>\r\nTodo el material mostrado u ofrecido en el Sitio Web, entre otros ejemplos, el material gráfico, los documentos, textos, imágenes, sonido, video, audio, las ilustraciones, el software y el código HTML (en conjunto, el “Contenido”), es de  exclusiva propiedad de Hoodies Neeo o de las empresas que proporcionan dicho material. Se reconocen los derechos de marca de terceros que hacen parte de los diseños que puedan contener algunas de nuestras prendas.\r\n<br> <br>\r\nEl Contenido está protegido por las leyes de copyright Colombianas e internacionales, así como por las demás leyes, reglamentos y normas aplicables a los derechos de propiedad intelectual. Salvo disposición expresa en contrario en el presente contrato, y/o salvo que por imperativo legal ello esté expresamente permitido por leyes derogatorias de las actualmente vigentes, el Usuario no podrá (i) utilizar, copiar, modificar, mostrar, eliminar, distribuir, descargar, almacenar, reproducir, transmitir, publicar, vender, revender, adaptar, invertir el proceso de creación o crear productos derivados a partir de, el Contenido. Tampoco podrá (ii) utilizar el Contenido en otras páginas Web o en cualquier medio de comunicación como, por ejemplo, en un entorno de red, sin la previa autorización por escrito en este sentido de Hoodies Neeo.\r\n<br> <br>\r\nTodas las marcas comerciales, las marcas de servicio y los logos (en adelante, las “Marcas”) mostrados en el Sitio Web son propiedad exclusiva de Hoodies Neeo y de sus respectivos propietarios. El Usuario no podrá utilizar las Marcas en modo alguno sin la previa autorización por escrito para ello de Hoodies Neeo y los respectivos propietarios. <br> <br>\r\n</p> <li> INFORMACIÓN FACILITADA POR EL USUARIO </li> <p>Hoodies Neeo se reserva el derecho de, a su libre JUICIO, eliminar, retirar, negarse a reflejar o bloquear toda Información del Usuario que Hoodies Neeo considere como inaceptable. En caso de que Hoodies Neeo reciba alguna notificación sobre la inaceptabilidad de determinada información facilitada por los usuarios, Hoodies Neeo podrá, con total discrecionalidad, investigar dicha información.\r\n<br> <br>\r\nEl Usuario asume y acepta que Hoodies Neeo podrá conservar copia de la Información del Usuario, y revelar dicha información a terceros si lo considera necesario para:\r\n<br> <br>\r\n(i) proteger la integridad del Sitio Web;\r\n(ii) proteger los derechos de Hoodies Neeo;\r\n(iii) cumplir una orden judicial;\r\n(iv) cumplir cualquier trámite legal;\r\n(v) hacer valer los derechos y acciones que asisten a Hoodies Neeo a tenor de este Contrato; y\r\n(vi) satisfacer cualquier petición relativa a la infracción de derechos de terceros.\r\n</p> <li> PROHIBICIONES GENERALES </li> <p>Al acceder a y utilizar el Sitio Web, el Usuario se compromete a NO:\r\n<br> <br>\r\n(a) incumplir todas las leyes, reglamentos y normas aplicables a nivel local, estatal, provincial, nacional (Colombia), así como cualquier otra legislación aplicable como las leyes en materia de comercio electrónico.\r\n(b) infringir los derechos de propiedad intelectual y de privacidad, entre otros, los derechos de patente (copyright), los derechos sobre la base de datos, las marcas registradas o el know how de terceros;\r\n(c) descargar, enviar, transmitir o almacenar material que:\r\n•    sea ilegal, ofensivo, difamatorio, fraudulento, engañoso, que induzca a error, dañino, amenazador, hostil, obsceno o censurable;\r\n•    infrinja las obligaciones contractuales o de confidencialidad del Usuario;\r\n•    perjudique o interfiera en las aplicaciones normales del Sitio Web, como el envío o la transmisión de virus, gusanos o troyanos, el envío continuado de material repetido o el envío de archivos desacostumbradamente grandes; o\r\n•    que no esté permitido por Hoodies Neeo, como, por ejemplo, material publicitario no autorizado, material promocional no solicitado, “correo basura”, “spams”, “cartas en cadena”, mensajes de venta directa piramidal, franquicias, material de distribución, de asociación a un club, contratos de venta o cualquier otro material inaceptable;\r\n(d) vulnerar los derechos personales y de privacidad de terceros abusando del Contenido, como, por ejemplo, acosando o molestando continuadamente a dichas personas enviándoles correos electrónicos no solicitados, o recabando información de carácter personal;\r\n(e) contravenir, o intentar contravenir, las medidas de seguridad del Sitio Web;\r\n(f) utilizar cualquier aparato, procedimiento o mecanismo como, por ejemplo, spiders y robots de rastreo, para localizar, rescatar, buscar, o acceder al Sitio Web o al Contenido, sin el previo consentimiento por escrito de parte de Hoodies Neeo;\r\n(g) acceder o intentar acceder a la cuenta o al login de las terceras personas o empresas indicadas en el Sitio Web;\r\n(h) copiar, modificar, reproducir, eliminar, distribuir, descargar, almacenar, transmitir, vender, revender, publicar, invertir el proceso de creación o crear productos derivados a partir del Contenido, excepto en lo que concierne al material remitido por el propio Usuario y que es de su propiedad, o si así lo autorizan las leyes de propiedad intelectual aplicables;\r\n(i) enviar o facilitar información incorrecta, falsa o incompleta, en relación con el currículum vitae, los datos biográficos, la fecha en que empezó a trabajar o el perfil de la empresa del Usuario;\r\n(j) hacerse pasar por otra persona o empresa;\r\n(k) utilizar el Sitio Web de forma no autorizada o para alguna actividad delictiva;\r\n(l) falsificar la información de cabecera en el correo electrónico; o\r\n(m) falsear los datos sobre sí mismo, sobre su asociación con terceros o sobre su empresa. <br> <br>\r\n</p> <li> UTILIZACIÓN DEL SITIO Y OBLIGACIONES CONCRETAS </li> <p>Además de las obligaciones generales señaladas en el Artículo 5, el Usuario deberá:\r\n(a) utilizar el Sitio Web únicamente para los fines legalmente permitidos de buscar empleo y recabar información profesional;\r\n(b) facilitar y mantener los datos personales que conforman la Información del Usuario de forma completa, correcta, actualizada y veraz;\r\n(c) enviar solamente material sobre el que el Usuario tenga los correspondientes derechos o licencia para hacerlo;\r\n(d) utilizar su propio criterio, precaución y sentido común al gestionar las oportunidades de empleo y la información conseguida a través del Sitio Web; y\r\n(e) asumir el riesgo de confiar en el contenido, o utilizar la información, facilitados por terceros. <br> <br>\r\n</p> <li> CUENTA Y CONTRASEÑA </li> <p>Cuando el Usuario utiliza el Sitio Web, puede optar por abrir una cuenta en el Sitio. En ese caso, el Usuario recibirá el número de cuenta virtual y la contraseña inicial que le correspondan. Es responsabilidad exclusiva del Usuario:\r\n(a) mantener la confidencialidad de dichos números de cuenta virtual y contraseña;\r\n(b) actualizar y comprobar frecuentemente su contraseña; y\r\n(c) notificar inmediatamente a Hoodies Neeo, si tiene conocimiento del uso no autorizado de su cuenta o de cualquier vulneración de las medidas de seguridad. <br> <br>\r\n</p> <li> VÍNCULOS A PÁGINAS WEB DE TERCEROS </li> <p>El Sitio Web puede tener vínculos, como hipervínculos o enlaces, que indican el acceso a páginas Web de terceros (los “Sitios Relacionados”). Aunque Hoodies Neeo revisa el material de terceros y solamente permite la inclusión de los Sitios Relacionados que, a su leal saber y entender, no infringen la legislación aplicable, Hoodies Neeo no puede controlar ni realizar un seguimiento de los Sitios Relacionados y, en consecuencia, no asumirá responsabilidad alguna en cuanto a la exactitud, seguridad o fiabilidad del material, información o contenido incluido en dichos Sitios Relacionados. \r\n<br> <br>\r\nLa inclusión de los Sitios Relacionados en el Sitio Web no implica que haya relación o asociación alguna entre Hoodies Neeo y el propietario de los Sitios Relacionados, ni la aprobación o promoción por parte de Hoodies Neeo de dichos Sitios Relacionados. Hoodies Neeo incluye los Sitios Relacionados solamente para comodidad del Usuario. Este es el único responsable del acceso a los Sitios Relacionados. \r\n<br> <br>\r\nEl Usuario deberá utilizar su propio buen criterio, precaución y sentido común a la hora desusar los Sitios Relacionados y, para ello, le recomendamos revisar el condicionado de uso y los términos que sobre privacidad rigen en dichos Sitios Relacionados. Hoodies Neeo se reserva el derecho de eliminar de su Sitio Web todos los Sitios Relacionados de los que tenga conocimiento real que están infringiendo derechos de terceros y/o cuyo contenido vulnere la legislación aplicable, o si así se lo exige una orden judicial o una ordenanza administrativa.\r\nLos vínculos a nuestra página Web no están permitidos sin la expresa autorización, previa y por escrito, de Hoodies Neeo. El Usuario no podrá, ni solo ni en colaboración con otras personas, ampliar, modificar, sustituir, enmendar o limitar, en todo o en parte, la información ofrecida en nuestra página Web ni las aplicaciones funcionales de la misma. Además, el Usuario no podrá, ni solo ni en colaboración con otras personas, crear o instalar vínculos desde su propia página Web o desde webs de terceros, a la presente página Web (ya sea mediante vínculos de hipertexto, deep-linking, enmarcado, mediante códigos o de otra forma), ni en todo ni en parte, sin el previo consentimiento por escrito en este sentido de parte de Hoodies Neeo. <br> <br>\r\n</p> <li> PRIVACIDAD </li> <p>Hoodies Neeo procesará toda la información personal que el Usuario introduzca o facilite a través de nuestro Sitio Web de conformidad con la Política de Privacidad del Sitio Web y los términos y condiciones relativos a la misma en este contrato.\r\n</p>','','2021-08-11 01:51:06','terminos-y-condiciones',1),(8,'Personalizar','<section class=\"py-5 text-center\"> <div class=\"container\"> <p>Modulo personalizar</p> </div> </section>','banner.jpg','2021-08-11 02:26:45','sucursales',1),(10,'Contacto','\'<div class=\\\"map\\\"><iframe style=\\\"border: 0;\\\" src=\\\"https://www.google.com/maps/embed?<div style=\"width: 100%\"><iframe width=\"100%\" height=\"600\" frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" src=\"https://maps.google.com/maps?width=100%25&amp;height=600&amp;hl=es&amp;q=Cra.%204%20#16-48,%20Pereira,%20Risaralda+(Hoodies%20Neeo)&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed\"><a href=\"https://www.gps.ie/car-satnav-gps/\">GPS devices</a></iframe></div>\\\" width=\\\"100%\\\" height=\\\"600\\\" allowfullscreen=\\\"allowfullscreen\\\" loading=\\\"lazy\\\"></iframe></div>\'','banner.jpg','2021-08-09 03:11:08','contacto',1);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `idproducto` bigint NOT NULL AUTO_INCREMENT,
  `categoriaid` bigint NOT NULL,
  `codigo` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `stock` int NOT NULL,
  `imagen` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ruta` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idproducto`),
  KEY `categoriaid` (`categoriaid`),
  CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`categoriaid`) REFERENCES `categoria` (`idcategoria`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (13,1,'4658798787','Hoodie Rosa','<p>Hoodie Color gris y blanco, estampado Rosa.</p>',120000.00,25,NULL,'2021-08-21 00:48:21','hoodie-hombre1',1),(14,1,'123456789','Hoodie Capota Roja','<p>Hoodie Color negro, capota roja y letras chinas.</p>',140000.00,25,NULL,'2021-08-21 00:48:21','hoodie-hombre2',1),(15,1,'1234567891','Hoodie Tokio','<p>Hoodie Color blanco y negro, tokio.</p>',125000.00,20,NULL,'2021-08-21 00:48:21','hoodie-hombre3',1),(16,1,'1234567892','Hoodie Gris Chino','<p>Hoodie Color Gris, letras chinas.</p>',135000.00,15,NULL,'2021-08-21 00:48:21','hoodie-hombre4',1),(17,1,'1234567893','Hoodie Mostaza Sonrisa','<p>Hoodie Color mostaza, sonrisa.</p>',155000.00,45,NULL,'2021-08-21 00:48:21','hoodie-hombre5',1),(18,4,'1234567894','Hoodie Negro y rosa','<p>Hoodie Color negro y rosa.</p>',125000.00,15,NULL,'2021-08-21 00:48:21','hoodie-mujer1',1),(19,4,'1234567894','Hoodie Rosa y Blanco horizontal','<p>Hoodie Color Rosa y Blanco, línea gris horizontal</p>',135000.00,38,NULL,'2021-08-21 00:48:21','hoodie-mujer2',1),(20,4,'1234567895','Hoodie Gris manga rosa','<p>Hoodie Gris, con mangas rosas</p>',127000.00,26,NULL,'2021-08-21 00:48:21','hoodie-mujer3',1),(21,4,'1234567896','Hoodie Blanco Universo','<p>Hoodie color blanco, lineas negras en la manga, y logo de universo</p>',122000.00,40,NULL,'2021-08-21 00:48:21','hoodie-mujer4',1),(22,4,'1234567896','Hoodie Blanco Rosa y Verde','<p>Hoodie color Rosa, Blando y Verde</p>',120000.00,25,NULL,'2021-08-21 00:48:21','hoodie-mujer5',1),(23,5,'1234567897','Hoodies Parejas Doctor','<p>Hoodies para parejas, color negro, estampado de color</p>',140000.00,35,NULL,'2021-08-21 00:48:21','hoodie-parejas1',1),(24,5,'1234567898','Hoodies Parejas Aguacate','<p>Hoodies para parejas, color negro, estampado de aguacate amor</p>',120000.00,30,NULL,'2021-08-21 00:48:21','hoodie-parejas2',1),(25,5,'1234567898','Hoodies Parejas Wall-e y Eva','<p>Hoodies para parejas, color negro, estampado de Wall-e y Eva</p>',160000.00,40,NULL,'2021-08-21 00:48:21','hoodie-parejas3',1),(26,5,'1234567899','Hoodies Parejas Flechado','<p>Hoodies para parejas, color blanco, estampado flecha y objetivo</p>',130000.00,35,NULL,'2021-08-21 00:48:21','hoodie-parejas4',1),(27,6,'1234567899','Hoodie Sonic','<p>Hoodie Color Azul, estampado Sonic</p>',140000.00,45,NULL,'2021-08-21 00:48:21','hoodie-otros1',1),(28,6,'123456781','Hoodie Los Simpsons','<p>Hoodie Color Blanco, estampado los Simpsons</p>',140000.00,26,NULL,'2021-08-21 00:48:21','hoodie-otros2',1),(29,6,'123456781','Hoodie Harry Potter','<p>Hoodie Color Negro, estampado Harry Potter</p>',130000.00,22,NULL,'2021-08-21 00:48:21','hoodie-otros3',1),(30,6,'123456781','Hoodie Batman','<p>Hoodie Color Gris, estampado Batman</p>',160000.00,28,NULL,'2021-08-21 00:48:21','hoodie-otros4',1),(31,6,'123456781','Hoodie Homero Simpson','<p>Hoodie Color Blanco, estampado Homero Simpson</p>',80000.00,25,NULL,'2021-08-21 00:48:21','hoodie-otros5',1),(32,6,'123456781','Hoodie Negro Homero Simpson','<p>Hoodie Color Negro, estampado Homero Simpson</p>',90000.00,25,NULL,'2021-08-21 00:48:21','hoodie-otros6',1),(33,6,'123456781','Hoodie Negro Jack','<p>Hoodie Color Negro, estampado sonrisa Jacj</p>',100000.00,35,NULL,'2021-08-21 00:48:21','hoodie-otros7',1);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol` (
  `idrol` bigint NOT NULL AUTO_INCREMENT,
  `nombrerol` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idrol`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` VALUES (1,'Administrador','Acceso a todo el sistema',1),(2,'Supervisor','Supervisor de tiendas',0),(3,'Cliente','Clientes en general',1),(4,'Vendedor','Operador de tienda',1);
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suscripciones`
--

DROP TABLE IF EXISTS `suscripciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suscripciones` (
  `idsuscripcion` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idsuscripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suscripciones`
--

LOCK TABLES `suscripciones` WRITE;
/*!40000 ALTER TABLE `suscripciones` DISABLE KEYS */;
INSERT INTO `suscripciones` VALUES (2,'Yessica Gutierrez','yessica.gutierrez@ucp.edu.co','2022-06-05 20:40:25'),(3,'Camilo','camilo.gallego@ucp.edu.co','2022-06-06 01:14:02'),(4,'Daynlli Quintero','daynlli@gmail.com','2022-06-06 01:15:44'),(5,'Carmela','carmela@gmail.com','2022-06-06 01:19:27');
/*!40000 ALTER TABLE `suscripciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipopago`
--

DROP TABLE IF EXISTS `tipopago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipopago` (
  `idtipopago` bigint NOT NULL AUTO_INCREMENT,
  `tipopago` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idtipopago`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipopago`
--

LOCK TABLES `tipopago` WRITE;
/*!40000 ALTER TABLE `tipopago` DISABLE KEYS */;
INSERT INTO `tipopago` VALUES (2,'Efectivo',1);
/*!40000 ALTER TABLE `tipopago` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-06  5:09:21
