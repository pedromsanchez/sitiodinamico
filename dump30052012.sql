CREATE DATABASE  IF NOT EXISTS `sitio_dinamico` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `sitio_dinamico`;
-- MySQL dump 10.13  Distrib 5.1.58, for redhat-linux-gnu (i386)
--
-- Host: localhost    Database: trabajo_curso
-- ------------------------------------------------------
-- Server version	5.1.58

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
-- Table structure for table `header`
--

DROP TABLE IF EXISTS `header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `header` (
  `id_header` int(11) NOT NULL AUTO_INCREMENT,
  `foto` varchar(100) NOT NULL,
  `id_menu` int(11) NOT NULL,
  PRIMARY KEY (`id_header`),
  KEY `fk_menu` (`id_menu`),
  CONSTRAINT `header_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `header`
--

LOCK TABLES `header` WRITE;
/*!40000 ALTER TABLE `header` DISABLE KEYS */;
INSERT INTO `header` VALUES (1,'header_1.jpg',1),(2,'header_2.jpg',2),(3,'header_3.jpg',3),(4,'header_4.jpg',4),(5,'header_5.jpg',5);
/*!40000 ALTER TABLE `header` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contenido`
--

DROP TABLE IF EXISTS `contenido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contenido` (
  `id_contenido` int(11) NOT NULL AUTO_INCREMENT,
  `texto` text,
  `id_menu` int(11) NOT NULL,
  PRIMARY KEY (`id_contenido`),
  KEY `fk_contenido_1` (`id_menu`),
  CONSTRAINT `fk_contenido_1` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contenido`
--

LOCK TABLES `contenido` WRITE;
/*!40000 ALTER TABLE `contenido` DISABLE KEYS */;
INSERT INTO `contenido` VALUES (1,'Esta es la p&aacute;gina <b>PRINCIPAL</b>',1),(2,'Nosostros somos de la <strong>UDL</strong><br>Para ver la p&aacute;gina de la UDL da click <a href=\"http://www.universidaddeleon.edu.mx\">aqu&iacute;</a>',2),(3,'\n<html>\n<head>\n<title>Trabajo con Bases de Datos</title>\n<style type=\"text/css\">\n	body{ margin-top:0px}\n</style>\n<script language=\"javascript\" type=\"text/javascript\">\n	function td(id,color){\n		document.getElementById(id).style.backgroundColor=color;\n	}\nfunction no_td(id,color){\n		document.getElementById(id).style.backgroundColor=color;\n	}\n</script>\n</head>\n<body>\n<table width=\"700\" style=\"font-family:Verdana; font-size:13px\">\n<tr style=\"background-color:#999999; font-family:Verdana; font-size:15px; font-weight:bold; color:#FFFFFF\">\n<td align=\"center\" colspan=\"3\">\n<strong>Tabla Art&iacute;culos</strong>\n</td>\n</tr>\n<tr style=\"background-color:#666666; color:#FFFFFF; font-weight:bold\">\n<td width=\"50\">\nID\n</td>\n<td width=\"300\">\nT&iacute;tulo\n</td>\n<td width=\"350\">\nDetalle\n</td>\n</tr>\n\n<tr style=\"background-color:#f0f0f0;\" id=\"id_1\" onMouseMove=\"td(this.id,\'#cccccc\')\" onMouseOut=\"no_td(this.id,\'#f0f0f0\')\" >\n<td width=\"50\">\n1\n</td>\n<td width=\"300\">\nGeneraci&oacute;n de un excel con PHP\n</td>\n<td width=\"350\">\nMuchas veces necesitamos generar reportes para nuestros clientes, y sin lugar a dudas el formato mas popular para &eacute;stos es excel ( .xls ). A continuaci&oacute;n les muestro un sencillo c&oacute;digo que les permitir&aacute; convertir alg&uacute;n documento HTML a Excel, sin usar ning&uacute;n Framework ni nada. Lo pueden usar tanto enlazado a una base de datos MYSQL o con alg&uacute;n archivo en el que deseen mostrar alg&uacute;n contenido mas est&aacute;tico. \n</td>\n</tr>\n\n</table>\n<hr width=\"700\" align=\"left\">\n<table width=\"700\" style=\"font-family:Verdana; font-size:13px\">\n<tr style=\"background-color:#999999; font-family:Verdana; font-size:15px; font-weight:bold; color:#FFFFFF\">\n<td align=\"center\" colspan=\"6\">\n<strong>Tabla Comentarios</strong>\n</td>\n</tr>\n\n<tr style=\"background-color:#666666; color:#FFFFFF; font-weight:bold\">\n\n<td width=\"50\">\nID\n</td>\n<td width=\"150\">\nNombre\n</td>\n<td width=\"100\">\nE-MAIL\n</td>\n<td width=\"100\">\nTel&eacute;fono\n</td>\n<td width=\"250\">\nComentario\n</td>\n<td width=\"50\">\nid_articulo\n</td>\n</tr>\n\n<tr style=\"background-color:#f0f0f0;\" id=\"id_2\" onMouseMove=\"td(this.id,\'#cccccc\')\" onMouseOut=\"no_td(this.id,\'#f0f0f0\')\" >\n\n<td width=\"50\">\n1\n</td>\n<td width=\"150\">\nCristi&aacute;n L&oacute;pez\n</td>\n<td width=\"100\">\ncris@hotmail.com	\n</td>\n<td width=\"100\">\n98787876\n</td>\n<td width=\"250\">\nMe ha servido de mucho este art&iacute;culo, es justo lo que andaba buscando muchas gracias\n</td>\n<td width=\"50\">\n1\n</td>\n</tr>\n\n<tr style=\"background-color:#f0f0f0;\" id=\"id_3\" onMouseMove=\"td(this.id,\'#cccccc\')\" onMouseOut=\"no_td(this.id,\'#f0f0f0\')\" >\n\n<td width=\"50\">\n2\n</td>\n<td width=\"150\">\nRoger Castro\n</td>\n<td width=\"100\">\nroger@cesarcancino.com	\n</td>\n<td width=\"100\">\n97865432\n</td>\n<td width=\"250\">\nMe descargu&eacute; los ejemplos, pero no me funcionan, ser&aacute; que me puedes ayudar?\n</td>\n<td width=\"50\">\n1\n</td>\n</tr>\n\n<tr style=\"background-color:#f0f0f0;\" id=\"id_4\" onMouseMove=\"td(this.id,\'#cccccc\')\" onMouseOut=\"no_td(this.id,\'#f0f0f0\')\" >\n\n<td width=\"50\">\n3\n</td>\n<td width=\"150\">\nRosa Salazar\n</td>\n<td width=\"100\">\nlamami@gmail.com	\n</td>\n<td width=\"100\">\n96545533\n</td>\n<td width=\"250\">\nHola, muchas gracias, lo reviso y te comento...\n</td>\n<td width=\"50\">\n1\n</td>\n</tr>\n\n</table>\n\n</body>\n</html>',3),(4,'Los clientes son:',4),(5,'Aqu&iacute; va el formulario de contacto',5);
/*!40000 ALTER TABLE `contenido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL AUTO_INCREMENT,
  `texto` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'Home'),(2,'Nosotros'),(3,'Productos'),(4,'Clientes'),(5,'Contactos');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-05-30  9:13:45
