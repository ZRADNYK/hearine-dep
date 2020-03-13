CREATE DATABASE  IF NOT EXISTS `heroku_6cab08c83c8bfc0` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `heroku_6cab08c83c8bfc0`;
-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: eu-cdbr-west-02.cleardb.net    Database: heroku_6cab08c83c8bfc0
-- ------------------------------------------------------
-- Server version	5.6.47-log

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
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `release_date` datetime DEFAULT NULL,
  `total_length` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` VALUES (1,'http://res.cloudinary.com/hearine/image/upload/v1560197245/hearine_images_data/8f82528c-5908-452a-8927-40b8ec831c24.file.jpg','oomph1',NULL,0),(11,NULL,'oomph2',NULL,0),(21,NULL,'oomph2',NULL,0),(31,NULL,'oomph2',NULL,0),(41,'http://res.cloudinary.com/hearine/image/upload/v1560197291/hearine_images_data/15b9e2b0-77db-4c2f-9a07-7cf130c09d0b.file.jpg','oomph2',NULL,0);
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `album_band`
--

DROP TABLE IF EXISTS `album_band`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album_band` (
  `band_id` bigint(20) NOT NULL,
  `album_id` bigint(20) NOT NULL,
  PRIMARY KEY (`album_id`,`band_id`),
  KEY `FK9qfjsj6mp94u5lcybepeb2y0a` (`band_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album_band`
--

LOCK TABLES `album_band` WRITE;
/*!40000 ALTER TABLE `album_band` DISABLE KEYS */;
INSERT INTO `album_band` VALUES (1,1),(1,11);
/*!40000 ALTER TABLE `album_band` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `album_genre`
--

DROP TABLE IF EXISTS `album_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album_genre` (
  `genre_id` bigint(20) NOT NULL,
  `album_id` bigint(20) NOT NULL,
  PRIMARY KEY (`album_id`,`genre_id`),
  KEY `FKld60pu9t8ff70bc6nrnnv91lx` (`genre_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album_genre`
--

LOCK TABLES `album_genre` WRITE;
/*!40000 ALTER TABLE `album_genre` DISABLE KEYS */;
INSERT INTO `album_genre` VALUES (1,1),(11,1),(21,1),(1,41),(11,41),(21,41);
/*!40000 ALTER TABLE `album_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `album_tag`
--

DROP TABLE IF EXISTS `album_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album_tag` (
  `tag_id` bigint(20) NOT NULL,
  `album_id` bigint(20) NOT NULL,
  PRIMARY KEY (`album_id`,`tag_id`),
  KEY `FKgjctiwu03i0a3a7go4918wpcx` (`tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album_tag`
--

LOCK TABLES `album_tag` WRITE;
/*!40000 ALTER TABLE `album_tag` DISABLE KEYS */;
INSERT INTO `album_tag` VALUES (1,1),(11,1),(21,1),(11,21),(21,31),(31,41);
/*!40000 ALTER TABLE `album_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `band`
--

DROP TABLE IF EXISTS `band`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `band` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_date` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `band`
--

LOCK TABLES `band` WRITE;
/*!40000 ALTER TABLE `band` DISABLE KEYS */;
INSERT INTO `band` VALUES (1,NULL,'Oomph!');
/*!40000 ALTER TABLE `band` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'genre1'),(11,'genre2'),(21,'genre3');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlist`
--

DROP TABLE IF EXISTS `playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playlist` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `dsc` varchar(255) DEFAULT NULL,
  `list_type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `lst_access` varchar(255) DEFAULT NULL,
  `lst_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6ydwjfkd7amioiq3qkvtwvm7c` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist`
--

LOCK TABLES `playlist` WRITE;
/*!40000 ALTER TABLE `playlist` DISABLE KEYS */;
INSERT INTO `playlist` VALUES (1,'http://res.cloudinary.com/hearine/image/upload/v1560197423/hearine_images_data/c29363b0-0d75-478a-bb29-42c48b303c3d.file.jpg','2019-06-10 20:10:53','some deutch rock',NULL,'oomph in 1',1,'public','mix'),(11,'http://res.cloudinary.com/hearine/image/upload/v1560197508/hearine_images_data/3aea0bb7-0463-4e3e-91ea-b04d9172cb2d.file.jpg','2019-06-10 20:11:58','o tempora o mores',NULL,'just few Oomph songs',1,'public','top'),(21,'http://res.cloudinary.com/hearine/image/upload/v1560257039/hearine_images_data/f6c6765a-fa95-4f7a-9016-abcfab77aa76.file.jpg','2019-06-11 12:43:57','???????????????',NULL,'???, ??????:3',31,'public','mix');
/*!40000 ALTER TABLE `playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song`
--

DROP TABLE IF EXISTS `song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `song` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `length` varchar(255) DEFAULT NULL,
  `private_name` varchar(255) DEFAULT NULL,
  `public_name` varchar(255) DEFAULT NULL,
  `song_path` varchar(255) DEFAULT NULL,
  `file_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=632 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song`
--

LOCK TABLES `song` WRITE;
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
INSERT INTO `song` VALUES (1,'-1','a7232ee0-fa4e-483a-b817-b2efcbbd8bc0.files','Oomph! - All Deine Wunden.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197076/hearine_songs_data/a7232ee0-fa4e-483a-b817-b2efcbbd8bc0.files.mp3','audio/mpeg'),(11,'-1','42153666-53ab-4202-a945-d495f0dd8e8e.files','Oomph! - All Deine Wunden.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197079/hearine_songs_data/42153666-53ab-4202-a945-d495f0dd8e8e.files.mp3','audio/mpeg'),(21,'-1','a3c6c9bb-da6d-48f3-8bbf-ad9425aaa6aa.files','Oomph! - Alles Aus Liebe.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197083/hearine_songs_data/a3c6c9bb-da6d-48f3-8bbf-ad9425aaa6aa.files.mp3','audio/mpeg'),(31,'-1','330f195c-1b90-43b6-845e-3b450114f4a0.files','Oomph! - Als W-rs Das Letzte Mal.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197090/hearine_songs_data/330f195c-1b90-43b6-845e-3b450114f4a0.files.mp3','audio/mpeg'),(41,'-1','7522b59a-7f0e-4f2a-9f07-3258451589bf.files','Oomph! - Augen auf.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197093/hearine_songs_data/7522b59a-7f0e-4f2a-9f07-3258451589bf.files.mp3','audio/mpeg'),(51,'-1','ad0527a4-73a1-4ec5-abf2-e5911d2daffb.files','Oomph! - Dein Retter.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197096/hearine_songs_data/ad0527a4-73a1-4ec5-abf2-e5911d2daffb.files.mp3','audio/mpeg'),(61,'-1','b7ad13ce-dbb9-4bf7-9177-332187ef2db1.files','Oomph! - Ego.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197099/hearine_songs_data/b7ad13ce-dbb9-4bf7-9177-332187ef2db1.files.mp3','audio/mpeg'),(71,'-1','29c7c2d8-d860-43f2-8fae-9019499f3568.files','Oomph! - Fleisch Und Fell.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197101/hearine_songs_data/29c7c2d8-d860-43f2-8fae-9019499f3568.files.mp3','audio/mpeg'),(81,'-1','d5c45102-d1e4-4cb4-a696-5f596b4ba795.files','Oomph! - Jede Reise Hat Ein Ende.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197104/hearine_songs_data/d5c45102-d1e4-4cb4-a696-5f596b4ba795.files.mp3','audio/mpeg'),(91,'-1','83ae1f1b-6db9-40c4-916d-0bafcc3bc56f.files','Oomph! - Jetzt Oder Nie.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197107/hearine_songs_data/83ae1f1b-6db9-40c4-916d-0bafcc3bc56f.files.mp3','audio/mpeg'),(101,'-1','13fb06d2-3720-4a9c-a98a-c5e1f0918521.files','Oomph! - Leis Ganz Leis.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197110/hearine_songs_data/13fb06d2-3720-4a9c-a98a-c5e1f0918521.files.mp3','audio/mpeg'),(111,'-1','1119827c-e1f8-4f3d-85fc-ed5aea6a2fa9.files','Oomph! - Mary Bell.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197115/hearine_songs_data/1119827c-e1f8-4f3d-85fc-ed5aea6a2fa9.files.mp3','audio/mpeg'),(121,'-1','b6549e87-1d43-4379-b5da-cfc0348f5bc2.files','Oomph! - Nicht Von Dieser Welt.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197118/hearine_songs_data/b6549e87-1d43-4379-b5da-cfc0348f5bc2.files.mp3','audio/mpeg'),(131,'-1','8282dc36-9e80-4934-8555-9d7a4292f702.files','Oomph! - All Deine Wunden.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197119/hearine_songs_data/8282dc36-9e80-4934-8555-9d7a4292f702.files.mp3','audio/mpeg'),(141,'-1','1defe86f-9f72-4705-b447-e5f6c2a81ab8.files','Oomph! - Spieler.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197122/hearine_songs_data/1defe86f-9f72-4705-b447-e5f6c2a81ab8.files.mp3','audio/mpeg'),(151,'-1','d7fadde1-05b3-4414-b107-ea0dab158bd2.files','Oomph! - Tick Tack.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197126/hearine_songs_data/d7fadde1-05b3-4414-b107-ea0dab158bd2.files.mp3','audio/mpeg'),(161,'-1','e08cadfd-d27e-4002-87e8-42cf2352d3ba.files','Oomph! - Alles Aus Liebe.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197124/hearine_songs_data/e08cadfd-d27e-4002-87e8-42cf2352d3ba.files.mp3','audio/mpeg'),(171,'-1','1e976acd-e341-47ab-888b-c0a7c9365411.files','Oomph! - All Deine Wunden.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197124/hearine_songs_data/1e976acd-e341-47ab-888b-c0a7c9365411.files.mp3','audio/mpeg'),(181,'-1','4da8f40f-a234-468a-abdf-8effc3c96982.files','Oomph! - Alles Aus Liebe.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197130/hearine_songs_data/4da8f40f-a234-468a-abdf-8effc3c96982.files.mp3','audio/mpeg'),(191,'-1','c99ac10d-a5eb-4df0-a246-09c37c26c12b.files','Oomph! - Als W-rs Das Letzte Mal.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197130/hearine_songs_data/c99ac10d-a5eb-4df0-a246-09c37c26c12b.files.mp3','audio/mpeg'),(201,'-1','84b00b74-c9e4-4953-a316-acd85dca7ec0.files','Oomph! - Unter Diesem Mond.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197129/hearine_songs_data/84b00b74-c9e4-4953-a316-acd85dca7ec0.files.mp3','audio/mpeg'),(211,'-1','c6a62023-8d9d-43da-9b38-746704232499.files','Oomph! - Als W-rs Das Letzte Mal.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197134/hearine_songs_data/c6a62023-8d9d-43da-9b38-746704232499.files.mp3','audio/mpeg'),(221,'-1','67997f3c-2c72-4477-bfa4-0723b18963cc.files','Oomph! - Augen auf.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197136/hearine_songs_data/67997f3c-2c72-4477-bfa4-0723b18963cc.files.mp3','audio/mpeg'),(231,'-1','ca00e3d2-258f-4fa2-af4b-b6f845885de1.files','Oomph! - Zielscheibe.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197137/hearine_songs_data/ca00e3d2-258f-4fa2-af4b-b6f845885de1.files.mp3','audio/mpeg'),(241,'-1','2e4c7875-3d8e-474a-8d1b-69183c7bf1ac.files','Oomph! - Augen auf.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197138/hearine_songs_data/2e4c7875-3d8e-474a-8d1b-69183c7bf1ac.files.mp3','audio/mpeg'),(251,'-1','591dbca8-b02c-4758-949e-49cd32956f7b.files','Oomph! - Dein Retter.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197138/hearine_songs_data/591dbca8-b02c-4758-949e-49cd32956f7b.files.mp3','audio/mpeg'),(261,'-1','2efd7d78-a223-4253-bf5b-13006b316582.files','Oomph! - Dein Retter.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197140/hearine_songs_data/2efd7d78-a223-4253-bf5b-13006b316582.files.mp3','audio/mpeg'),(271,'-1','dc153504-b4a9-4440-a17b-01756a70d0c3.files','Oomph! - Ego.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197140/hearine_songs_data/dc153504-b4a9-4440-a17b-01756a70d0c3.files.mp3','audio/mpeg'),(281,'-1','e8d7dc9b-394c-419f-bb69-c0a097e56c9a.files','Oomph! - Ego.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197142/hearine_songs_data/e8d7dc9b-394c-419f-bb69-c0a097e56c9a.files.mp3','audio/mpeg'),(291,'-1','ca23fe0a-58b6-4e6b-a6cf-5a2117711507.files','Oomph! - Fleisch Und Fell.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197143/hearine_songs_data/ca23fe0a-58b6-4e6b-a6cf-5a2117711507.files.mp3','audio/mpeg'),(301,'-1','34d7e9df-5eda-4c9c-8671-f5913c60abd5.files','Oomph! - Fleisch Und Fell.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197145/hearine_songs_data/34d7e9df-5eda-4c9c-8671-f5913c60abd5.files.mp3','audio/mpeg'),(311,'-1','e8f39186-44d8-4655-91ac-6ed22bc7573c.files','Oomph! - Jede Reise Hat Ein Ende.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197145/hearine_songs_data/e8f39186-44d8-4655-91ac-6ed22bc7573c.files.mp3','audio/mpeg'),(321,'-1','29744813-654b-4ab5-9ad9-3af2047c3d7a.files','Oomph! - Jede Reise Hat Ein Ende.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197147/hearine_songs_data/29744813-654b-4ab5-9ad9-3af2047c3d7a.files.mp3','audio/mpeg'),(331,'-1','e5f8c2e8-cf72-4445-afd3-f3671788b561.files','Oomph! - Jetzt Oder Nie.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197148/hearine_songs_data/e5f8c2e8-cf72-4445-afd3-f3671788b561.files.mp3','audio/mpeg'),(341,'-1','00543d41-8103-432a-b638-c07b7d86f89c.files','Oomph! - Jetzt Oder Nie.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197150/hearine_songs_data/00543d41-8103-432a-b638-c07b7d86f89c.files.mp3','audio/mpeg'),(351,'-1','a49cda36-736e-4b2d-ab75-9478932669a9.files','Oomph! - Leis Ganz Leis.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197154/hearine_songs_data/a49cda36-736e-4b2d-ab75-9478932669a9.files.mp3','audio/mpeg'),(361,'-1','c69e5e0e-9bf4-4950-b7ae-36c9b072e992.files','Oomph! - Leis Ganz Leis.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197151/hearine_songs_data/c69e5e0e-9bf4-4950-b7ae-36c9b072e992.files.mp3','audio/mpeg'),(371,'-1','524fe615-2d3f-4f6e-a04b-442990054fd3.files','Oomph! - Mary Bell.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197156/hearine_songs_data/524fe615-2d3f-4f6e-a04b-442990054fd3.files.mp3','audio/mpeg'),(381,'-1','81156700-98e4-48e6-bb5a-120383c9dd85.files','Oomph! - Mary Bell.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197159/hearine_songs_data/81156700-98e4-48e6-bb5a-120383c9dd85.files.mp3','audio/mpeg'),(391,'-1','888a05fe-849f-4df5-a9f7-e40e20c2e0a4.files','Oomph! - Nicht Von Dieser Welt.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197162/hearine_songs_data/888a05fe-849f-4df5-a9f7-e40e20c2e0a4.files.mp3','audio/mpeg'),(401,'-1','6325c4ca-190e-4c1b-8d29-f2da5db97786.files','Oomph! - Nicht Von Dieser Welt.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197159/hearine_songs_data/6325c4ca-190e-4c1b-8d29-f2da5db97786.files.mp3','audio/mpeg'),(411,'-1','437e2852-3856-46b9-af1b-69786f5028cc.files','Oomph! - Spieler.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197165/hearine_songs_data/437e2852-3856-46b9-af1b-69786f5028cc.files.mp3','audio/mpeg'),(421,'-1','80246544-acf9-4b89-81e2-37159b27952c.files','Oomph! - Spieler.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197165/hearine_songs_data/80246544-acf9-4b89-81e2-37159b27952c.files.mp3','audio/mpeg'),(431,'-1','553fa1cb-1e2f-405f-b621-73a497dbe524.files','Oomph! - Tick Tack.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197169/hearine_songs_data/553fa1cb-1e2f-405f-b621-73a497dbe524.files.mp3','audio/mpeg'),(441,'-1','38310421-f422-456d-85e1-d1caf0042c45.files','Oomph! - Tick Tack.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197167/hearine_songs_data/38310421-f422-456d-85e1-d1caf0042c45.files.mp3','audio/mpeg'),(451,'-1','13b992d0-ad8a-423f-ae67-53890895755a.files','Oomph! - Unter Diesem Mond.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197172/hearine_songs_data/13b992d0-ad8a-423f-ae67-53890895755a.files.mp3','audio/mpeg'),(461,'-1','0bcd77f5-d247-4422-b6a1-34636e6a84b2.files','Oomph! - Unter Diesem Mond.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197173/hearine_songs_data/0bcd77f5-d247-4422-b6a1-34636e6a84b2.files.mp3','audio/mpeg'),(471,'-1','25b48c67-fd9d-4695-b744-375c7ba30551.files','Oomph! - Zielscheibe.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197175/hearine_songs_data/25b48c67-fd9d-4695-b744-375c7ba30551.files.mp3','audio/mpeg'),(481,'-1','e0a5ec59-2983-4286-9da9-9fb18097d55f.files','Oomph! - Zielscheibe.mp3','http://res.cloudinary.com/hearine/video/upload/v1560197191/hearine_songs_data/e0a5ec59-2983-4286-9da9-9fb18097d55f.files.mp3','audio/mpeg'),(491,'-1','3b96bd5f-5ebb-4e0d-b8bd-b93ebd2b7db3.file','Led Zeppelin - Eye of the Tiger.mp3','http://res.cloudinary.com/hearine/video/upload/v1560412999/hearine_songs_data/3b96bd5f-5ebb-4e0d-b8bd-b93ebd2b7db3.file.mp3','audio/mpeg'),(501,'-1','235d1911-6d74-43c4-ab4a-1275a31b8948.files','Lucifer in Starlight.mp3','http://res.cloudinary.com/hearine/video/upload/v1560413775/hearine_songs_data/235d1911-6d74-43c4-ab4a-1275a31b8948.files.mp3','audio/mpeg'),(511,'-1','a410ac39-74cd-4326-9f96-13a5cecd3fae.files','Midnight messiah.mp3','http://res.cloudinary.com/hearine/video/upload/v1560413778/hearine_songs_data/a410ac39-74cd-4326-9f96-13a5cecd3fae.files.mp3','audio/mpeg'),(521,'-1','6d97defd-c892-4ae8-91d7-2ee841cea9a7.files','Powerwolf - 3. Army Of The Night.mp3','http://res.cloudinary.com/hearine/video/upload/v1560413780/hearine_songs_data/6d97defd-c892-4ae8-91d7-2ee841cea9a7.files.mp3','audio/mpeg'),(531,'-1','c289ad0c-dacd-4092-bd44-365b26922a64.files','Powerwolf - All we need is blood.mp3','http://res.cloudinary.com/hearine/video/upload/v1560413783/hearine_songs_data/c289ad0c-dacd-4092-bd44-365b26922a64.files.mp3','audio/mpeg'),(541,'-1','de05de6f-551d-48fa-9180-fc081af45ef2.files','Powerwolf - Amen&Attack.mp3','http://res.cloudinary.com/hearine/video/upload/v1560413785/hearine_songs_data/de05de6f-551d-48fa-9180-fc081af45ef2.files.mp3','audio/mpeg'),(551,'-1','2ebbae2e-4944-4643-a41f-aab03bad6c3c.files','Powerwolf - Die, die, crucified.mp3','http://res.cloudinary.com/hearine/video/upload/v1560413787/hearine_songs_data/2ebbae2e-4944-4643-a41f-aab03bad6c3c.files.mp3','audio/mpeg'),(561,'-1','90dc90dd-7426-4a4d-aa4e-fe2965db0661.files','Powerwolf - In blood we trust.mp3','http://res.cloudinary.com/hearine/video/upload/v1560413790/hearine_songs_data/90dc90dd-7426-4a4d-aa4e-fe2965db0661.files.mp3','audio/mpeg'),(571,'-1','34ce1774-6aa1-4ee8-b2bf-9f557b61871b.files','Powerwolf - Moscow after dark.mp3','http://res.cloudinary.com/hearine/video/upload/v1560413792/hearine_songs_data/34ce1774-6aa1-4ee8-b2bf-9f557b61871b.files.mp3','audio/mpeg'),(581,'-1','c3c760ce-c0a7-498d-8c2f-2bc9fd28c0a0.files','Powerwolf - Nochnoi Dozor.mp3','http://res.cloudinary.com/hearine/video/upload/v1560413795/hearine_songs_data/c3c760ce-c0a7-498d-8c2f-2bc9fd28c0a0.files.mp3','audio/mpeg'),(591,'-1','a0875e0f-9aa1-41de-a7be-5c0c82576350.files','Powerwolf - Panic in the pentagram.mp3','http://res.cloudinary.com/hearine/video/upload/v1560413802/hearine_songs_data/a0875e0f-9aa1-41de-a7be-5c0c82576350.files.mp3','audio/mpeg'),(601,'-1','f5710d32-6e74-49be-97fc-785cebc11beb.files','Powerwolf - Prayer in the dark.mp3','http://res.cloudinary.com/hearine/video/upload/v1560413805/hearine_songs_data/f5710d32-6e74-49be-97fc-785cebc11beb.files.mp3','audio/mpeg'),(611,'-1','0324b347-1458-47a7-b054-7b8274351183.files','Powerwolf - Ressurection by Erection.mp3','http://res.cloudinary.com/hearine/video/upload/v1560413808/hearine_songs_data/0324b347-1458-47a7-b054-7b8274351183.files.mp3','audio/mpeg'),(621,'-1','b974b9a1-263b-4408-9189-e4d4ad744b26.files','Powerwolf - Sanctified with dynamite (Dm).mp3','http://res.cloudinary.com/hearine/video/upload/v1560413810/hearine_songs_data/b974b9a1-263b-4408-9189-e4d4ad744b26.files.mp3','audio/mpeg'),(631,'-1','d77ab369-b55c-4935-86d7-385255e1033c.files','Powerwolf - We drink your blood.mp3','http://res.cloudinary.com/hearine/video/upload/v1560413813/hearine_songs_data/d77ab369-b55c-4935-86d7-385255e1033c.files.mp3','audio/mpeg');
/*!40000 ALTER TABLE `song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song_album`
--

DROP TABLE IF EXISTS `song_album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `song_album` (
  `song_id` bigint(20) NOT NULL,
  `album_id` bigint(20) NOT NULL,
  PRIMARY KEY (`album_id`,`song_id`),
  KEY `FKbfe3d69v1vbhjll6o1mjl9q` (`song_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song_album`
--

LOCK TABLES `song_album` WRITE;
/*!40000 ALTER TABLE `song_album` DISABLE KEYS */;
INSERT INTO `song_album` VALUES (1,1),(21,1),(31,1),(41,1),(51,1),(61,1),(21,41),(31,41),(51,41),(61,41),(71,41);
/*!40000 ALTER TABLE `song_album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song_genre`
--

DROP TABLE IF EXISTS `song_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `song_genre` (
  `song_id` bigint(20) NOT NULL,
  `genre_id` bigint(20) NOT NULL,
  PRIMARY KEY (`genre_id`,`song_id`),
  KEY `FK1ssu87dg5vsdxpmyjqqc42if3` (`song_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song_genre`
--

LOCK TABLES `song_genre` WRITE;
/*!40000 ALTER TABLE `song_genre` DISABLE KEYS */;
/*!40000 ALTER TABLE `song_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song_playlist`
--

DROP TABLE IF EXISTS `song_playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `song_playlist` (
  `song_id` bigint(20) NOT NULL,
  `playlist_id` bigint(20) NOT NULL,
  PRIMARY KEY (`playlist_id`,`song_id`),
  KEY `FK1ct80f4nsi2lts6j4pmd4ric8` (`song_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song_playlist`
--

LOCK TABLES `song_playlist` WRITE;
/*!40000 ALTER TABLE `song_playlist` DISABLE KEYS */;
INSERT INTO `song_playlist` VALUES (1,1),(21,1),(31,1),(41,1),(51,1),(61,1),(11,11),(21,11),(31,11);
/*!40000 ALTER TABLE `song_playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song_tag`
--

DROP TABLE IF EXISTS `song_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `song_tag` (
  `song_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  PRIMARY KEY (`tag_id`,`song_id`),
  KEY `FK2fem9acf5noopfsm8v4rems4n` (`song_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song_tag`
--

LOCK TABLES `song_tag` WRITE;
/*!40000 ALTER TABLE `song_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `song_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spring_session`
--

DROP TABLE IF EXISTS `spring_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spring_session` (
  `PRIMARY_ID` char(36) NOT NULL,
  `SESSION_ID` char(36) NOT NULL,
  `CREATION_TIME` bigint(20) NOT NULL,
  `LAST_ACCESS_TIME` bigint(20) NOT NULL,
  `MAX_INACTIVE_INTERVAL` int(11) NOT NULL,
  `EXPIRY_TIME` bigint(20) NOT NULL,
  `PRINCIPAL_NAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PRIMARY_ID`),
  UNIQUE KEY `SPRING_SESSION_IX1` (`SESSION_ID`),
  KEY `SPRING_SESSION_IX2` (`EXPIRY_TIME`),
  KEY `SPRING_SESSION_IX3` (`PRINCIPAL_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spring_session`
--

LOCK TABLES `spring_session` WRITE;
/*!40000 ALTER TABLE `spring_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `spring_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spring_session_attributes`
--

DROP TABLE IF EXISTS `spring_session_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spring_session_attributes` (
  `SESSION_PRIMARY_ID` char(36) NOT NULL,
  `ATTRIBUTE_NAME` varchar(200) NOT NULL,
  `ATTRIBUTE_BYTES` blob NOT NULL,
  PRIMARY KEY (`SESSION_PRIMARY_ID`,`ATTRIBUTE_NAME`),
  KEY `SPRING_SESSION_ATTRIBUTES_IX1` (`SESSION_PRIMARY_ID`),
  CONSTRAINT `SPRING_SESSION_ATTRIBUTES_FK` FOREIGN KEY (`SESSION_PRIMARY_ID`) REFERENCES `spring_session` (`PRIMARY_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spring_session_attributes`
--

LOCK TABLES `spring_session_attributes` WRITE;
/*!40000 ALTER TABLE `spring_session_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `spring_session_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,'tag1'),(11,'tag2'),(21,'tag3'),(31,'tag4');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_band`
--

DROP TABLE IF EXISTS `user_band`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_band` (
  `user_id` bigint(20) NOT NULL,
  `band_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`band_id`),
  KEY `FK8bn92f2g5422t0ec5xxo804my` (`band_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_band`
--

LOCK TABLES `user_band` WRITE;
/*!40000 ALTER TABLE `user_band` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_band` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `user_id` bigint(20) NOT NULL,
  `roles` varchar(255) DEFAULT NULL,
  KEY `FKfpm8swft53ulq2hl11yplpr5` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,'USER'),(1,'ADMIN'),(1,'MODERATOR'),(21,'USER'),(11,'USER'),(31,'USER'),(41,'USER'),(41,'ADMIN'),(41,'MODERATOR'),(51,'USER'),(61,'USER'),(71,'USER'),(81,'USER'),(91,'USER'),(101,'USER');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_subscription`
--

DROP TABLE IF EXISTS `user_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_subscription` (
  `subscriber_id` bigint(20) NOT NULL,
  `channel_id` bigint(20) NOT NULL,
  PRIMARY KEY (`channel_id`,`subscriber_id`),
  KEY `FKlpe4u2ktgt5qtjnqa4wre8j2b` (`subscriber_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_subscription`
--

LOCK TABLES `user_subscription` WRITE;
/*!40000 ALTER TABLE `user_subscription` DISABLE KEYS */;
INSERT INTO `user_subscription` VALUES (31,1);
/*!40000 ALTER TABLE `user_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usr`
--

DROP TABLE IF EXISTS `usr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usr` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activation_code` varchar(255) DEFAULT NULL,
  `active` bit(1) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usr`
--

LOCK TABLES `usr` WRITE;
/*!40000 ALTER TABLE `usr` DISABLE KEYS */;
INSERT INTO `usr` VALUES (1,'2f65edd4-6424-4207-b5bd-fca67c7f588b',_binary '',NULL,'wordy7485@gmail.com','$2a$08$xqV6xePsx2EKZ5mqa4jfmuvOeorIHDYZBYyhjHxp3KQ3FTun8a/Oq','admin'),(11,'60578264-e64e-494f-8f45-420d6a37c1ec',_binary '',NULL,'abc@v','$2a$08$oGGEwJg4ijpSmIdyWjqDEue2abOhxT94miNuy8Z.Te5mV.5XUBRBS','lisyash'),(21,'2f43cb82-9ad2-4d11-904b-407a371279b6',_binary '',NULL,'abc@v','$2a$08$yu81EZMyvfUVkAtQUI.C9e3DZSl8yFeOE2gXwAchgoDi0I.0Si.2i','lisyash'),(31,'9836edad-0e2f-41fe-9f96-8beb40eae996',_binary '',NULL,'abc@abv','$2a$08$pqJeQXPIGrbWz2XRA9zwOu3C8bcdTA5YApKs6bWYxShmJCGB9hLOO','user'),(41,'d1e243b2-160d-424f-b429-910c7d967ef9',_binary '',NULL,'vladislavburyak00@gmail.com','$2a$08$yimsWO3wzN1yt1WneSHhTOMGL5WG8LIrbMJaG/4ewJv7oQw5agrCi','Vlad'),(51,'918e8196-a7f3-4737-88a8-2935eb686010',_binary '',NULL,'marusovborislav@gmail.com','$2a$08$RqeVhjk1xdLSp.QAyLflHe5A1qb6sejXgyEPF1ikpxPiRK9p2cYj2','M.Borislav'),(61,'4842554a-438f-4bd2-a57e-e8232a070289',_binary '',NULL,'vladislavburyak00@gmail.com','$2a$08$cgpbq.rYh5K6fLcK.ehySu0cKVdN/XKE9Z1Bh3GcElCzLYsDn1nz2','Vlados'),(71,'d2eee839-3dd5-406d-9894-1ea93dcd08c9',_binary '',NULL,'abc@ukr.net','$2a$08$xJ5yDHMZ1oXHAW4YSDWN9.ELL6nSMlcg3kUsd0jiO17D.MS2c3BTS','zradnyk'),(81,'9076d522-4e1c-4796-8cae-bfff123b9dfd',_binary '',NULL,'pasca1@gmail.com','$2a$08$tC/lElLlm1p.w7E1Ytm7N.ibLv77KtUjO.4cXYhymhWwSGet4M9e6','dru'),(91,'d9c783a1-6b34-4b83-925a-ac29d306b322',_binary '',NULL,'qwerty@ukr.net','{DEVZ338A9b7YtQTVEN/CSQygoIWHWm+9zs4rFQEAPwU=}24e1cdf37cc7ef9606ce36a45f3b371f','qwerty'),(101,'d59880f4-e569-400d-871d-5f45e8009d75',_binary '',NULL,'marusovborislav@gmail.com','$2a$08$R5ckqBiOIoTgH3c.B4AZnOvEsJ/DqbenCiPYjpvgDX51zQq16x/j6','Pavuk');
/*!40000 ALTER TABLE `usr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usr_band`
--

DROP TABLE IF EXISTS `usr_band`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usr_band` (
  `band_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`band_id`,`user_id`),
  KEY `FKonij3rwbd4wibaxdwf4owsyqu` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usr_band`
--

LOCK TABLES `usr_band` WRITE;
/*!40000 ALTER TABLE `usr_band` DISABLE KEYS */;
/*!40000 ALTER TABLE `usr_band` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-12 11:46:39
