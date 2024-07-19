-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: i9b107.p.ssafy.io    Database: ting_db
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `additional_info`
--

DROP TABLE IF EXISTS `additional_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `additional_info` (
  `code` bigint NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `additional_info`
--

LOCK TABLES `additional_info` WRITE;
/*!40000 ALTER TABLE `additional_info` DISABLE KEYS */;
INSERT INTO `additional_info` VALUES (1,'MBTI','ISTP'),(2,'DRINKING','자주 마심'),(3,'SMOKING','비흡연'),(4,'RELIGION','무교'),(5,'JOB','학생'),(6,'HOBBY','운동'),(7,'HOBBY','독서'),(10,'STYLE','연상'),(11,'MBTI','ESTP'),(12,'MBTI','ENTP'),(13,'MBTI','ESFP'),(14,'MBTI','ESTJ'),(15,'MBTI','ENFP'),(16,'MBTI','ENFJ'),(17,'MBTI','ESFJ'),(18,'MBTI','ENTJ'),(19,'MBTI','ISFJ'),(20,'MBTI','INFP'),(21,'MBTI','INTJ'),(22,'MBTI','INFJ'),(23,'MBTI','INTP'),(24,'MBTI','ISFP'),(25,'MBTI','ISTJ'),(26,'DRINKING','안 마심'),(27,'DRINKING','가끔 마심'),(29,'RELIGION','기독교'),(30,'RELIGION','불교'),(31,'RELIGION','천주교'),(32,'RELIGION','원불교'),(33,'RELIGION','기타'),(34,'JOB','프리랜서'),(35,'JOB','회사원'),(36,'JOB','자영업'),(37,'JOB','전문직'),(38,'JOB','의료직'),(39,'JOB','교육직'),(40,'JOB','금융직'),(41,'JOB','연구원'),(42,'JOB','기술직'),(43,'JOB','공무원'),(44,'JOB','사업가'),(45,'JOB','군인'),(46,'JOB','취준생'),(47,'JOB','기타'),(57,'HOBBY','영화'),(58,'HOBBY','넷플릭스'),(59,'HOBBY','홈카페'),(60,'HOBBY','코인노래방'),(61,'HOBBY','수다'),(62,'HOBBY','쇼핑'),(63,'HOBBY','맛집 탐방'),(64,'HOBBY','여행'),(65,'HOBBY','야구 보기'),(66,'HOBBY','축구 보기'),(67,'HOBBY','등산'),(68,'HOBBY','런닝'),(69,'HOBBY','산책'),(70,'HOBBY','운동'),(94,'HOBBY','볼링'),(95,'HOBBY','당구'),(96,'HOBBY','공부'),(97,'HOBBY','베이킹'),(98,'HOBBY','반려식물'),(99,'HOBBY','K-pop 덕질'),(100,'HOBBY','사진 찍기'),(101,'HOBBY','게임'),(102,'HOBBY','전시회 관람'),(103,'HOBBY','봉사활동'),(104,'HOBBY','드라이브'),(105,'HOBBY','캠핑'),(106,'PERSONALITY','활발한'),(107,'PERSONALITY','조용한'),(108,'PERSONALITY','어른스러운'),(109,'PERSONALITY','열정적인'),(110,'PERSONALITY','차분한'),(111,'PERSONALITY','유머러스한'),(112,'PERSONALITY','진지한'),(113,'PERSONALITY','자신감 넘치는'),(114,'PERSONALITY','엉뚱한'),(115,'PERSONALITY','지적인'),(116,'PERSONALITY','성실한'),(117,'PERSONALITY','자유로운'),(118,'PERSONALITY','감성적인'),(119,'PERSONALITY','논리적인'),(120,'PERSONALITY','꼼꼼한'),(121,'PERSONALITY','소심한'),(122,'PERSONALITY','쿨한'),(123,'PERSONALITY','상냥한'),(124,'PERSONALITY','예의바른'),(125,'PERSONALITY','낙천적인'),(126,'PERSONALITY','귀여운'),(127,'PERSONALITY','개성있는'),(128,'PERSONALITY','듬직한'),(129,'PERSONALITY','즉흥적인'),(130,'STYLE','연하'),(131,'STYLE','동갑'),(132,'STYLE','같은 동네'),(133,'STYLE','장거리'),(134,'STYLE','취미가 같은'),(135,'STYLE','유사 직종'),(136,'SMOKING','가끔 핌'),(137,'SMOKING','자주 핌'),(138,'SMOKING','전자담배');
/*!40000 ALTER TABLE `additional_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advice_board`
--

DROP TABLE IF EXISTS `advice_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advice_board` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) DEFAULT NULL,
  `is_removed` bit(1) NOT NULL DEFAULT b'0',
  `modified_time` datetime(6) DEFAULT NULL,
  `removed_time` datetime(6) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `hit` bigint DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1hv163k3cpk5qmldjc6topmu3` (`user_id`),
  CONSTRAINT `FK1hv163k3cpk5qmldjc6topmu3` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advice_board`
--

LOCK TABLES `advice_board` WRITE;
/*!40000 ALTER TABLE `advice_board` DISABLE KEYS */;
INSERT INTO `advice_board` VALUES (1,'2023-08-16 21:38:48.259663',_binary '\0',NULL,NULL,'상담 글 내용1',0,'상담 글1',2),(2,'2023-08-16 21:38:48.274835',_binary '\0',NULL,NULL,'상담 글 내용2',0,'상담 글2',2),(3,'2023-08-16 21:38:48.286386',_binary '\0',NULL,NULL,'상담 글 내용3',0,'상담 글3',2),(4,'2023-08-16 21:38:48.296163',_binary '\0',NULL,NULL,'상담 글 내용4',0,'상담 글4',2),(5,'2023-08-16 21:38:48.304376',_binary '\0',NULL,NULL,'상담 글 내용5',0,'상담 글5',2),(6,'2023-08-16 21:38:48.315242',_binary '\0',NULL,NULL,'상담 글 내용6',0,'상담 글6',2),(7,'2023-08-16 21:38:48.329111',_binary '\0',NULL,NULL,'상담 글 내용7',0,'상담 글7',2),(8,'2023-08-16 21:38:48.336965',_binary '\0',NULL,NULL,'상담 글 내용8',0,'상담 글8',2),(9,'2023-08-16 21:38:48.345386',_binary '\0',NULL,NULL,'상담 글 내용9',0,'상담 글9',2),(10,'2023-08-16 21:38:48.353365',_binary '\0',NULL,NULL,'상담 글 내용10',0,'상담 글10',2),(11,'2023-08-16 21:38:48.362035',_binary '\0',NULL,NULL,'상담 글 내용11',0,'상담 글11',2),(12,'2023-08-16 21:38:48.370604',_binary '\0',NULL,NULL,'상담 글 내용12',0,'상담 글12',2),(13,'2023-08-16 21:38:48.378234',_binary '\0',NULL,NULL,'상담 글 내용13',0,'상담 글13',2),(14,'2023-08-16 21:38:48.385770',_binary '\0',NULL,NULL,'상담 글 내용14',0,'상담 글14',2),(15,'2023-08-16 21:38:48.396277',_binary '\0',NULL,NULL,'상담 글 내용15',0,'상담 글15',2),(16,'2023-08-16 21:38:48.404050',_binary '\0',NULL,NULL,'상담 글 내용16',0,'상담 글16',2),(17,'2023-08-16 21:38:48.412333',_binary '\0',NULL,NULL,'상담 글 내용17',0,'상담 글17',2),(18,'2023-08-16 21:38:48.423564',_binary '\0',NULL,NULL,'상담 글 내용18',0,'상담 글18',2),(19,'2023-08-16 21:38:48.431584',_binary '\0',NULL,NULL,'상담 글 내용19',0,'상담 글19',2),(20,'2023-08-16 21:38:48.439782',_binary '\0',NULL,NULL,'상담 글 내용20',0,'상담 글20',2),(21,'2023-08-16 21:38:48.448127',_binary '\0',NULL,NULL,'상담 글 내용21',0,'상담 글21',2),(22,'2023-08-16 21:38:48.455822',_binary '\0',NULL,NULL,'상담 글 내용22',0,'상담 글22',2),(23,'2023-08-16 21:38:48.464668',_binary '\0',NULL,NULL,'상담 글 내용23',0,'상담 글23',2),(24,'2023-08-16 21:38:48.474732',_binary '\0',NULL,NULL,'상담 글 내용24',0,'상담 글24',2),(25,'2023-08-16 21:38:48.486297',_binary '\0',NULL,NULL,'상담 글 내용25',0,'상담 글25',2),(26,'2023-08-16 21:38:48.497197',_binary '\0',NULL,NULL,'상담 글 내용26',0,'상담 글26',2),(27,'2023-08-16 21:38:48.504928',_binary '\0',NULL,NULL,'상담 글 내용27',0,'상담 글27',2),(28,'2023-08-16 21:38:48.514195',_binary '\0',NULL,NULL,'상담 글 내용28',0,'상담 글28',2),(29,'2023-08-16 21:38:48.523718',_binary '\0',NULL,NULL,'상담 글 내용29',0,'상담 글29',2),(30,'2023-08-16 21:38:48.532372',_binary '\0',NULL,NULL,'상담 글 내용30',0,'상담 글30',2),(31,'2023-08-16 21:38:48.540837',_binary '\0',NULL,NULL,'상담 글 내용31',0,'상담 글31',2),(32,'2023-08-16 21:38:48.550655',_binary '\0',NULL,NULL,'상담 글 내용32',0,'상담 글32',2),(33,'2023-08-16 21:38:48.560650',_binary '\0',NULL,NULL,'상담 글 내용33',0,'상담 글33',2),(34,'2023-08-16 21:38:48.568751',_binary '\0',NULL,NULL,'상담 글 내용34',0,'상담 글34',2),(35,'2023-08-16 21:38:48.576733',_binary '\0',NULL,NULL,'상담 글 내용35',0,'상담 글35',2),(36,'2023-08-16 21:38:48.584277',_binary '\0',NULL,NULL,'상담 글 내용36',0,'상담 글36',2),(37,'2023-08-16 21:38:48.592368',_binary '\0',NULL,NULL,'상담 글 내용37',0,'상담 글37',2),(38,'2023-08-16 21:38:48.603269',_binary '\0',NULL,NULL,'상담 글 내용38',0,'상담 글38',2),(39,'2023-08-16 21:38:48.613320',_binary '\0',NULL,NULL,'상담 글 내용39',0,'상담 글39',2),(40,'2023-08-16 21:38:48.620540',_binary '\0',NULL,NULL,'상담 글 내용40',0,'상담 글40',2),(41,'2023-08-16 21:38:48.628198',_binary '\0',NULL,NULL,'상담 글 내용41',0,'상담 글41',2),(42,'2023-08-16 21:38:48.636496',_binary '\0',NULL,NULL,'상담 글 내용42',0,'상담 글42',2),(43,'2023-08-16 21:38:48.644240',_binary '\0',NULL,NULL,'상담 글 내용43',0,'상담 글43',2),(44,'2023-08-16 21:38:48.650564',_binary '\0',NULL,NULL,'상담 글 내용44',0,'상담 글44',2),(45,'2023-08-16 21:38:48.658274',_binary '\0',NULL,NULL,'상담 글 내용45',0,'상담 글45',2),(46,'2023-08-16 21:38:48.666256',_binary '\0',NULL,NULL,'상담 글 내용46',0,'상담 글46',2),(47,'2023-08-16 21:38:48.674296',_binary '\0',NULL,NULL,'상담 글 내용47',0,'상담 글47',2),(48,'2023-08-16 21:38:48.681996',_binary '\0',NULL,NULL,'상담 글 내용48',0,'상담 글48',2),(49,'2023-08-16 21:38:48.690576',_binary '\0',NULL,NULL,'상담 글 내용49',0,'상담 글49',2),(50,'2023-08-16 21:38:48.699357',_binary '\0',NULL,NULL,'상담 글 내용50',0,'상담 글50',2),(51,'2023-08-16 21:38:48.707579',_binary '\0',NULL,NULL,'상담 글 내용51',0,'상담 글51',2),(52,'2023-08-16 21:38:48.716040',_binary '\0',NULL,NULL,'상담 글 내용52',0,'상담 글52',2),(53,'2023-08-16 21:38:48.724363',_binary '\0',NULL,NULL,'상담 글 내용53',0,'상담 글53',2),(54,'2023-08-16 21:38:48.732638',_binary '\0',NULL,NULL,'상담 글 내용54',0,'상담 글54',2),(55,'2023-08-16 21:38:48.743820',_binary '\0',NULL,NULL,'상담 글 내용55',0,'상담 글55',2),(56,'2023-08-16 21:38:48.752676',_binary '\0',NULL,NULL,'상담 글 내용56',0,'상담 글56',2),(57,'2023-08-16 21:38:48.763243',_binary '\0',NULL,NULL,'상담 글 내용57',0,'상담 글57',2),(58,'2023-08-16 21:38:48.772928',_binary '\0',NULL,NULL,'상담 글 내용58',0,'상담 글58',2),(59,'2023-08-16 21:38:48.780913',_binary '\0',NULL,NULL,'상담 글 내용59',0,'상담 글59',2),(60,'2023-08-16 21:38:48.789613',_binary '\0',NULL,NULL,'상담 글 내용60',0,'상담 글60',2),(61,'2023-08-16 21:38:48.800669',_binary '\0',NULL,NULL,'상담 글 내용61',0,'상담 글61',2),(62,'2023-08-16 21:38:48.809048',_binary '\0',NULL,NULL,'상담 글 내용62',0,'상담 글62',2),(63,'2023-08-16 21:38:48.816297',_binary '\0',NULL,NULL,'상담 글 내용63',0,'상담 글63',2),(64,'2023-08-16 21:38:48.825889',_binary '\0',NULL,NULL,'상담 글 내용64',0,'상담 글64',2),(65,'2023-08-16 21:38:48.838238',_binary '\0',NULL,NULL,'상담 글 내용65',0,'상담 글65',2),(66,'2023-08-16 21:38:48.849453',_binary '\0',NULL,NULL,'상담 글 내용66',0,'상담 글66',2),(67,'2023-08-16 21:38:48.858227',_binary '\0',NULL,NULL,'상담 글 내용67',0,'상담 글67',2),(68,'2023-08-16 21:38:48.869354',_binary '\0',NULL,NULL,'상담 글 내용68',0,'상담 글68',2),(69,'2023-08-16 21:38:48.877143',_binary '\0',NULL,NULL,'상담 글 내용69',0,'상담 글69',2),(70,'2023-08-16 21:38:48.885221',_binary '\0',NULL,NULL,'상담 글 내용70',0,'상담 글70',2),(71,'2023-08-16 21:38:48.893946',_binary '\0',NULL,NULL,'상담 글 내용71',0,'상담 글71',2),(72,'2023-08-16 21:38:48.902123',_binary '\0',NULL,NULL,'상담 글 내용72',0,'상담 글72',2),(73,'2023-08-16 21:38:48.910095',_binary '\0',NULL,NULL,'상담 글 내용73',0,'상담 글73',2),(74,'2023-08-16 21:38:48.918212',_binary '\0',NULL,NULL,'상담 글 내용74',0,'상담 글74',2),(75,'2023-08-16 21:38:48.926403',_binary '\0',NULL,NULL,'상담 글 내용75',0,'상담 글75',2),(76,'2023-08-16 21:38:48.934538',_binary '\0',NULL,NULL,'상담 글 내용76',0,'상담 글76',2),(77,'2023-08-16 21:38:48.942584',_binary '\0',NULL,NULL,'상담 글 내용77',0,'상담 글77',2),(78,'2023-08-16 21:38:48.951111',_binary '\0',NULL,NULL,'상담 글 내용78',0,'상담 글78',2),(79,'2023-08-16 21:38:48.958813',_binary '\0',NULL,NULL,'상담 글 내용79',0,'상담 글79',2),(80,'2023-08-16 21:38:48.967226',_binary '\0',NULL,NULL,'상담 글 내용80',0,'상담 글80',2),(81,'2023-08-16 21:38:48.976425',_binary '\0',NULL,NULL,'상담 글 내용81',0,'상담 글81',2),(82,'2023-08-16 21:38:48.984571',_binary '\0',NULL,NULL,'상담 글 내용82',0,'상담 글82',2),(83,'2023-08-16 21:38:48.991930',_binary '\0',NULL,NULL,'상담 글 내용83',0,'상담 글83',2),(84,'2023-08-16 21:38:48.999329',_binary '\0',NULL,NULL,'상담 글 내용84',0,'상담 글84',2),(85,'2023-08-16 21:38:49.009373',_binary '\0',NULL,NULL,'상담 글 내용85',0,'상담 글85',2),(86,'2023-08-16 21:38:49.017842',_binary '\0',NULL,NULL,'상담 글 내용86',0,'상담 글86',2),(87,'2023-08-16 21:38:49.030635',_binary '\0',NULL,NULL,'상담 글 내용87',0,'상담 글87',2),(88,'2023-08-16 21:38:49.044079',_binary '\0',NULL,NULL,'상담 글 내용88',0,'상담 글88',2),(89,'2023-08-16 21:38:49.057753',_binary '\0',NULL,NULL,'상담 글 내용89',0,'상담 글89',2),(90,'2023-08-16 21:38:49.068220',_binary '\0',NULL,NULL,'상담 글 내용90',0,'상담 글90',2),(91,'2023-08-16 21:38:49.078077',_binary '\0',NULL,NULL,'상담 글 내용91',0,'상담 글91',2),(92,'2023-08-16 21:38:49.090221',_binary '\0',NULL,NULL,'상담 글 내용92',0,'상담 글92',2),(93,'2023-08-16 21:38:49.103174',_binary '\0',NULL,NULL,'상담 글 내용93',0,'상담 글93',2),(94,'2023-08-16 21:38:49.115359',_binary '\0',NULL,NULL,'상담 글 내용94',0,'상담 글94',2),(95,'2023-08-16 21:38:49.126785',_binary '\0',NULL,NULL,'상담 글 내용95',0,'상담 글95',2),(96,'2023-08-16 21:38:49.137997',_binary '\0',NULL,NULL,'상담 글 내용96',0,'상담 글96',2),(97,'2023-08-16 21:38:49.147649',_binary '\0',NULL,NULL,'상담 글 내용97',0,'상담 글97',2),(98,'2023-08-16 21:38:49.156876',_binary '\0',NULL,NULL,'상담 글 내용98',0,'상담 글98',2),(99,'2023-08-16 21:38:49.165391',_binary '\0',NULL,NULL,'상담 글 내용99',0,'상담 글99',2),(100,'2023-08-16 21:38:49.173333',_binary '\0',NULL,NULL,'상담 글 내용100',0,'상담 글100',2),(101,'2023-08-16 21:46:45.707077',_binary '\0',NULL,NULL,'사랑은 뭐라고 생각하세요?',1,'사랑은 뭐라고 생각하세요?',2),(102,'2023-08-16 21:46:57.136514',_binary '\0',NULL,NULL,'너무 슬퍼요',1,'너무 슬퍼요',2),(103,'2023-08-16 21:47:11.600316',_binary '\0',NULL,NULL,'데이트 장소',4,'데이트 장소',2),(104,'2023-08-16 21:47:23.805514',_binary '\0',NULL,NULL,'성격이 너무 달라요',1,'성격이 너무 달라요',2),(105,'2023-08-16 21:47:45.998625',_binary '\0',NULL,NULL,'연락 빈도...',0,'연락 빈도...',2),(106,'2023-08-16 21:48:00.842500',_binary '\0',NULL,NULL,'사랑은 뭘까요?',1,'사랑은 뭘까요?',2),(107,'2023-08-16 21:48:11.746879',_binary '\0',NULL,NULL,'팅에서 만난 인연',1,'팅에서 만난 인연',2),(108,'2023-08-16 21:48:31.854247',_binary '\0','2023-08-17 10:43:39.200106',NULL,'첫사랑을 만났습니다',19,'첫사랑을 만났습니다...!',2),(109,'2023-08-16 21:48:50.928497',_binary '\0',NULL,NULL,'연락 문제',1,'연락 문제',2),(110,'2023-08-16 21:49:17.448860',_binary '\0',NULL,NULL,'정말 행복합니다',3,'정말 행복합니다',2),(111,'2023-08-16 21:50:01.104338',_binary '\0',NULL,NULL,'세상 힘드네요',6,'세상 힘드네요',2),(112,'2023-08-17 03:05:23.491849',_binary '','2023-08-17 03:47:53.587060','2023-08-17 03:47:53.586827','어쩌고저쩌고\n저쩌고어쩌고',5,'다들 이럴 땐 어떻게 하시나요?',3),(113,'2023-08-17 03:06:43.394023',_binary '','2023-08-17 03:51:46.808088','2023-08-17 03:51:46.807739','이러쿵저러쿵',2,'제가 이상한건가요?',3),(114,'2023-08-17 09:07:41.652492',_binary '\0',NULL,NULL,'어장 늘려주세요',46,'저 매칭 400번했어요..',4),(115,'2023-08-17 10:29:14.387505',_binary '','2023-08-17 10:29:27.508318','2023-08-17 10:29:27.508121','작성허ㅏ기수정',4,'작성',2),(116,'2023-08-17 10:39:30.482297',_binary '','2023-08-17 10:39:35.908625','2023-08-17 10:39:35.908415','고고',1,'삭제하자',2);
/*!40000 ALTER TABLE `advice_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chatting`
--

DROP TABLE IF EXISTS `chatting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chatting` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) DEFAULT NULL,
  `is_removed` bit(1) NOT NULL DEFAULT b'0',
  `removed_time` datetime(6) DEFAULT NULL,
  `last_chatting_content` text,
  `last_chatting_time` datetime(6) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `temperature` decimal(19,2) DEFAULT '36.50',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatting`
--

LOCK TABLES `chatting` WRITE;
/*!40000 ALTER TABLE `chatting` DISABLE KEYS */;
INSERT INTO `chatting` VALUES (1,'2023-08-17 09:15:53.476748',_binary '\0',NULL,'[김싸피님이 좀 더 대화를 나누어보고 싶어 부활티켓을 사용하였습니다.]','2023-08-17 10:27:20.556129','DEAD',36.50),(2,'2023-08-17 09:56:32.751062',_binary '\0',NULL,'♡대화를 시작해보세요♡','2023-08-17 09:56:32.759572','ALIVE',36.50);
/*!40000 ALTER TABLE `chatting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chatting_user`
--

DROP TABLE IF EXISTS `chatting_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chatting_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `unread` int DEFAULT NULL,
  `chatting_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKi17it16uqbbuo6p6ur8665jd2` (`chatting_id`),
  KEY `FK86heb1cbr42ixe8y3ggg7nlyh` (`user_id`),
  CONSTRAINT `FK86heb1cbr42ixe8y3ggg7nlyh` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKi17it16uqbbuo6p6ur8665jd2` FOREIGN KEY (`chatting_id`) REFERENCES `chatting` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatting_user`
--

LOCK TABLES `chatting_user` WRITE;
/*!40000 ALTER TABLE `chatting_user` DISABLE KEYS */;
INSERT INTO `chatting_user` VALUES (1,0,1,4),(2,0,1,2),(3,0,2,4),(4,0,2,5);
/*!40000 ALTER TABLE `chatting_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) DEFAULT NULL,
  `is_removed` bit(1) NOT NULL DEFAULT b'0',
  `modified_time` datetime(6) DEFAULT NULL,
  `removed_time` datetime(6) DEFAULT NULL,
  `board_type` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `depth` int DEFAULT NULL,
  `like_count` bigint DEFAULT '0',
  `advice_board_id` bigint DEFAULT NULL,
  `issue_board_id` bigint DEFAULT NULL,
  `parent_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdkv493iivxrqpikcm1kd2h4fo` (`advice_board_id`),
  KEY `FKd8ph3somh5re4lagynqc77c0y` (`issue_board_id`),
  KEY `FKde3rfu96lep00br5ov0mdieyt` (`parent_id`),
  KEY `FK8kcum44fvpupyw6f5baccx25c` (`user_id`),
  CONSTRAINT `FK8kcum44fvpupyw6f5baccx25c` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKd8ph3somh5re4lagynqc77c0y` FOREIGN KEY (`issue_board_id`) REFERENCES `issue_board` (`id`),
  CONSTRAINT `FKde3rfu96lep00br5ov0mdieyt` FOREIGN KEY (`parent_id`) REFERENCES `comment` (`id`),
  CONSTRAINT `FKdkv493iivxrqpikcm1kd2h4fo` FOREIGN KEY (`advice_board_id`) REFERENCES `advice_board` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'2023-08-16 23:45:20.932110',_binary '\0',NULL,NULL,'ISSUE','댓글 작성',0,1,NULL,1,NULL,3),(2,'2023-08-16 23:45:30.497204',_binary '\0',NULL,NULL,'ISSUE','댓글2',0,1,NULL,1,NULL,3),(3,'2023-08-17 02:49:12.668948',_binary '','2023-08-17 03:00:21.574946','2023-08-17 03:00:21.574656','ADVICE','저는 여름에는 시원한 실내데이트가 좋은 것 같아요 ㅎㅎ',0,0,103,NULL,NULL,3),(4,'2023-08-17 03:04:17.380555',_binary '','2023-08-17 03:04:22.222791','2023-08-17 03:04:22.222560','ADVICE','실내 데이트',0,0,103,NULL,NULL,3),(5,'2023-08-17 03:04:35.082258',_binary '','2023-08-17 03:04:42.256597','2023-08-17 03:04:42.256331','ADVICE','댓글댓글',0,0,103,NULL,NULL,3),(6,'2023-08-17 09:16:46.068222',_binary '\0',NULL,NULL,'ISSUE','둘 다 싫어요...............',0,0,NULL,108,NULL,3),(7,'2023-08-17 09:17:29.682843',_binary '\0',NULL,NULL,'ISSUE','깻잎은 도의적으로 떼어줄 수 있는거 아닌가요??????',0,0,NULL,103,NULL,3),(8,'2023-08-17 09:19:56.925019',_binary '\0',NULL,NULL,'ISSUE','민초가 나라다',0,0,NULL,105,NULL,3),(9,'2023-08-17 09:20:10.462158',_binary '\0',NULL,NULL,'ISSUE','음식 사진 필수죠',0,0,NULL,102,NULL,3),(10,'2023-08-17 09:20:21.161368',_binary '\0',NULL,NULL,'ISSUE','우웩',0,0,NULL,101,NULL,3),(11,'2023-08-17 09:20:24.576239',_binary '\0',NULL,NULL,'ISSUE','우웨에에에에에엑',0,0,NULL,101,NULL,3),(12,'2023-08-17 09:20:44.098883',_binary '\0',NULL,NULL,'ISSUE','파인애플은 차갑게 먹읍시다;;;;',0,0,NULL,101,NULL,3),(13,'2023-08-17 09:24:05.552898',_binary '\0',NULL,NULL,'ADVICE','두근두근두근두근두근두근두근두근두근두근두근두근두근두근두근두근두근두근두근두근두근두근두근두근',0,0,108,NULL,NULL,3),(14,'2023-08-17 09:24:36.264182',_binary '\0',NULL,NULL,'ADVICE','사탕처럼 달콤하다는데~~ 하늘을 나는 것 같다는데~~~~',0,0,106,NULL,NULL,3),(15,'2023-08-17 10:42:11.822987',_binary '\0','2023-08-17 10:42:20.141799',NULL,'ADVICE','엄청나시군요...!!',0,1,114,NULL,NULL,2);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_like`
--

DROP TABLE IF EXISTS `comment_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_like` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) DEFAULT NULL,
  `comment_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqlv8phl1ibeh0efv4dbn3720p` (`comment_id`),
  KEY `FK6arwb0j7by23pw04ljdtxq4p5` (`user_id`),
  CONSTRAINT `FK6arwb0j7by23pw04ljdtxq4p5` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKqlv8phl1ibeh0efv4dbn3720p` FOREIGN KEY (`comment_id`) REFERENCES `comment` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_like`
--

LOCK TABLES `comment_like` WRITE;
/*!40000 ALTER TABLE `comment_like` DISABLE KEYS */;
INSERT INTO `comment_like` VALUES (1,'2023-08-16 23:46:21.445410',1,3),(2,'2023-08-16 23:46:22.319179',2,3),(4,'2023-08-17 10:42:33.378718',15,2);
/*!40000 ALTER TABLE `comment_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fish_skin`
--

DROP TABLE IF EXISTS `fish_skin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fish_skin` (
  `code` bigint NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fish_skin`
--

LOCK TABLES `fish_skin` WRITE;
/*!40000 ALTER TABLE `fish_skin` DISABLE KEYS */;
INSERT INTO `fish_skin` VALUES (1,'skin/fish/defaultFish.png'),(2,'skin/fish/Fish1.png'),(3,'skin/fish/Fish2.png'),(4,'skin/fish/Fish3.png'),(5,'skin/fish/Fish4.png'),(6,'skin/fish/Fish5.png'),(7,'skin/fish/Whale.png'),(8,'skin/fish/Dolphin.png'),(9,'skin/fish/Seahorse.png'),(10,'skin/fish/Shark.png'),(1001,'skin/fish/DeadDefaultFish.png'),(1002,'skin/fish/DeadFish1.png'),(1003,'skin/fish/DeadFish2.png'),(1004,'skin/fish/DeadFish3.png'),(1005,'skin/fish/DeadFish4.png'),(1006,'skin/fish/DeadFish5.png'),(1007,'skin/fish/DeadWhale.png'),(1008,'skin/fish/DeadDolphin.png'),(1009,'skin/fish/DeadSeahorse.png'),(1010,'skin/fish/DeadShark.png');
/*!40000 ALTER TABLE `fish_skin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (18);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `id` bigint NOT NULL,
  `item_type` varchar(255) DEFAULT NULL,
  `quantity` int NOT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK86u2qtuaxn5uph2u9olsxk2ic` (`user_id`),
  CONSTRAINT `FK86u2qtuaxn5uph2u9olsxk2ic` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,'SKIN_2',1,1),(2,'FREE_MATCHING_TICKET',3,1),(3,'SKIN_2',1,2),(4,'FREE_MATCHING_TICKET',2,2),(5,'SKIN_2',1,3),(6,'FREE_MATCHING_TICKET',3,3),(7,'SKIN_2',1,4),(8,'FREE_MATCHING_TICKET',1,4),(9,'SKIN_10',1,4),(10,'RANDOM_SKIN_BOX',3,4),(11,'MATCHING_TICKET',5,4),(12,'SKIN_2',1,5),(13,'FREE_MATCHING_TICKET',2,5),(14,'REVIVE_TICKET',0,2),(15,'RANDOM_SKIN_BOX',2,3),(16,'SKIN_2',1,6),(17,'FREE_MATCHING_TICKET',3,6);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue_board`
--

DROP TABLE IF EXISTS `issue_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issue_board` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) DEFAULT NULL,
  `is_removed` bit(1) NOT NULL DEFAULT b'0',
  `removed_time` datetime(6) DEFAULT NULL,
  `agree_count` bigint DEFAULT '0',
  `agree_title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `hit` bigint DEFAULT '0',
  `oppose_count` bigint DEFAULT '0',
  `oppose_title` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKb2ijtlb1hdof9e4axx37x8rjo` (`user_id`),
  CONSTRAINT `FKb2ijtlb1hdof9e4axx37x8rjo` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_board`
--

LOCK TABLES `issue_board` WRITE;
/*!40000 ALTER TABLE `issue_board` DISABLE KEYS */;
INSERT INTO `issue_board` VALUES (1,'2023-08-16 21:38:15.153770',_binary '\0',NULL,0,'찬성','논쟁 글 내용1',1,0,'반대','논쟁 글1',2),(2,'2023-08-16 21:38:15.192638',_binary '\0',NULL,0,'찬성','논쟁 글 내용2',0,0,'반대','논쟁 글2',2),(3,'2023-08-16 21:38:15.204575',_binary '\0',NULL,0,'찬성','논쟁 글 내용3',0,0,'반대','논쟁 글3',2),(4,'2023-08-16 21:38:15.213286',_binary '\0',NULL,0,'찬성','논쟁 글 내용4',0,0,'반대','논쟁 글4',2),(5,'2023-08-16 21:38:15.223041',_binary '\0',NULL,0,'찬성','논쟁 글 내용5',0,0,'반대','논쟁 글5',2),(6,'2023-08-16 21:38:15.232562',_binary '\0',NULL,0,'찬성','논쟁 글 내용6',1,0,'반대','논쟁 글6',2),(7,'2023-08-16 21:38:15.241799',_binary '\0',NULL,0,'찬성','논쟁 글 내용7',0,0,'반대','논쟁 글7',2),(8,'2023-08-16 21:38:15.252006',_binary '\0',NULL,0,'찬성','논쟁 글 내용8',0,0,'반대','논쟁 글8',2),(9,'2023-08-16 21:38:15.260264',_binary '\0',NULL,0,'찬성','논쟁 글 내용9',0,0,'반대','논쟁 글9',2),(10,'2023-08-16 21:38:15.272131',_binary '\0',NULL,0,'찬성','논쟁 글 내용10',0,0,'반대','논쟁 글10',2),(11,'2023-08-16 21:38:15.281894',_binary '\0',NULL,0,'찬성','논쟁 글 내용11',0,0,'반대','논쟁 글11',2),(12,'2023-08-16 21:38:15.290755',_binary '\0',NULL,0,'찬성','논쟁 글 내용12',0,0,'반대','논쟁 글12',2),(13,'2023-08-16 21:38:15.299787',_binary '\0',NULL,0,'찬성','논쟁 글 내용13',0,0,'반대','논쟁 글13',2),(14,'2023-08-16 21:38:15.309040',_binary '\0',NULL,0,'찬성','논쟁 글 내용14',0,0,'반대','논쟁 글14',2),(15,'2023-08-16 21:38:15.317259',_binary '\0',NULL,0,'찬성','논쟁 글 내용15',0,0,'반대','논쟁 글15',2),(16,'2023-08-16 21:38:15.329193',_binary '\0',NULL,0,'찬성','논쟁 글 내용16',0,0,'반대','논쟁 글16',2),(17,'2023-08-16 21:38:15.339829',_binary '\0',NULL,0,'찬성','논쟁 글 내용17',0,0,'반대','논쟁 글17',2),(18,'2023-08-16 21:38:15.348343',_binary '\0',NULL,0,'찬성','논쟁 글 내용18',0,0,'반대','논쟁 글18',2),(19,'2023-08-16 21:38:15.355820',_binary '\0',NULL,0,'찬성','논쟁 글 내용19',0,0,'반대','논쟁 글19',2),(20,'2023-08-16 21:38:15.362783',_binary '\0',NULL,0,'찬성','논쟁 글 내용20',0,0,'반대','논쟁 글20',2),(21,'2023-08-16 21:38:15.372018',_binary '\0',NULL,0,'찬성','논쟁 글 내용21',0,0,'반대','논쟁 글21',2),(22,'2023-08-16 21:38:15.381248',_binary '\0',NULL,0,'찬성','논쟁 글 내용22',0,0,'반대','논쟁 글22',2),(23,'2023-08-16 21:38:15.390344',_binary '\0',NULL,0,'찬성','논쟁 글 내용23',0,0,'반대','논쟁 글23',2),(24,'2023-08-16 21:38:15.401441',_binary '\0',NULL,0,'찬성','논쟁 글 내용24',0,0,'반대','논쟁 글24',2),(25,'2023-08-16 21:38:15.410813',_binary '\0',NULL,0,'찬성','논쟁 글 내용25',0,0,'반대','논쟁 글25',2),(26,'2023-08-16 21:38:15.419177',_binary '\0',NULL,0,'찬성','논쟁 글 내용26',0,0,'반대','논쟁 글26',2),(27,'2023-08-16 21:38:15.428195',_binary '\0',NULL,0,'찬성','논쟁 글 내용27',0,0,'반대','논쟁 글27',2),(28,'2023-08-16 21:38:15.436472',_binary '\0',NULL,0,'찬성','논쟁 글 내용28',0,0,'반대','논쟁 글28',2),(29,'2023-08-16 21:38:15.443218',_binary '\0',NULL,0,'찬성','논쟁 글 내용29',0,0,'반대','논쟁 글29',2),(30,'2023-08-16 21:38:15.451644',_binary '\0',NULL,0,'찬성','논쟁 글 내용30',0,0,'반대','논쟁 글30',2),(31,'2023-08-16 21:38:15.465384',_binary '\0',NULL,0,'찬성','논쟁 글 내용31',0,0,'반대','논쟁 글31',2),(32,'2023-08-16 21:38:15.472393',_binary '\0',NULL,0,'찬성','논쟁 글 내용32',0,0,'반대','논쟁 글32',2),(33,'2023-08-16 21:38:15.483570',_binary '\0',NULL,0,'찬성','논쟁 글 내용33',0,0,'반대','논쟁 글33',2),(34,'2023-08-16 21:38:15.495205',_binary '\0',NULL,0,'찬성','논쟁 글 내용34',0,0,'반대','논쟁 글34',2),(35,'2023-08-16 21:38:15.504797',_binary '\0',NULL,0,'찬성','논쟁 글 내용35',0,0,'반대','논쟁 글35',2),(36,'2023-08-16 21:38:15.513242',_binary '\0',NULL,0,'찬성','논쟁 글 내용36',0,0,'반대','논쟁 글36',2),(37,'2023-08-16 21:38:15.535075',_binary '\0',NULL,0,'찬성','논쟁 글 내용37',0,0,'반대','논쟁 글37',2),(38,'2023-08-16 21:38:15.543506',_binary '\0',NULL,0,'찬성','논쟁 글 내용38',0,0,'반대','논쟁 글38',2),(39,'2023-08-16 21:38:15.551423',_binary '\0',NULL,0,'찬성','논쟁 글 내용39',0,0,'반대','논쟁 글39',2),(40,'2023-08-16 21:38:15.560202',_binary '\0',NULL,0,'찬성','논쟁 글 내용40',0,0,'반대','논쟁 글40',2),(41,'2023-08-16 21:38:15.568863',_binary '\0',NULL,0,'찬성','논쟁 글 내용41',0,0,'반대','논쟁 글41',2),(42,'2023-08-16 21:38:15.576523',_binary '\0',NULL,0,'찬성','논쟁 글 내용42',0,0,'반대','논쟁 글42',2),(43,'2023-08-16 21:38:15.582961',_binary '\0',NULL,0,'찬성','논쟁 글 내용43',0,0,'반대','논쟁 글43',2),(44,'2023-08-16 21:38:15.595608',_binary '\0',NULL,0,'찬성','논쟁 글 내용44',0,0,'반대','논쟁 글44',2),(45,'2023-08-16 21:38:15.638968',_binary '\0',NULL,0,'찬성','논쟁 글 내용45',0,0,'반대','논쟁 글45',2),(46,'2023-08-16 21:38:15.647663',_binary '\0',NULL,0,'찬성','논쟁 글 내용46',0,0,'반대','논쟁 글46',2),(47,'2023-08-16 21:38:15.657107',_binary '\0',NULL,0,'찬성','논쟁 글 내용47',0,0,'반대','논쟁 글47',2),(48,'2023-08-16 21:38:15.663922',_binary '\0',NULL,0,'찬성','논쟁 글 내용48',0,0,'반대','논쟁 글48',2),(49,'2023-08-16 21:38:15.671669',_binary '\0',NULL,0,'찬성','논쟁 글 내용49',0,0,'반대','논쟁 글49',2),(50,'2023-08-16 21:38:15.680381',_binary '\0',NULL,0,'찬성','논쟁 글 내용50',0,0,'반대','논쟁 글50',2),(51,'2023-08-16 21:38:15.688466',_binary '\0',NULL,0,'찬성','논쟁 글 내용51',0,0,'반대','논쟁 글51',2),(52,'2023-08-16 21:38:15.697632',_binary '\0',NULL,0,'찬성','논쟁 글 내용52',0,0,'반대','논쟁 글52',2),(53,'2023-08-16 21:38:15.706090',_binary '\0',NULL,0,'찬성','논쟁 글 내용53',0,0,'반대','논쟁 글53',2),(54,'2023-08-16 21:38:15.714993',_binary '\0',NULL,0,'찬성','논쟁 글 내용54',0,0,'반대','논쟁 글54',2),(55,'2023-08-16 21:38:15.724196',_binary '\0',NULL,0,'찬성','논쟁 글 내용55',0,0,'반대','논쟁 글55',2),(56,'2023-08-16 21:38:15.731717',_binary '\0',NULL,0,'찬성','논쟁 글 내용56',0,0,'반대','논쟁 글56',2),(57,'2023-08-16 21:38:15.739171',_binary '\0',NULL,0,'찬성','논쟁 글 내용57',0,0,'반대','논쟁 글57',2),(58,'2023-08-16 21:38:15.748015',_binary '\0',NULL,0,'찬성','논쟁 글 내용58',0,0,'반대','논쟁 글58',2),(59,'2023-08-16 21:38:15.755435',_binary '\0',NULL,0,'찬성','논쟁 글 내용59',0,0,'반대','논쟁 글59',2),(60,'2023-08-16 21:38:15.763881',_binary '\0',NULL,0,'찬성','논쟁 글 내용60',0,0,'반대','논쟁 글60',2),(61,'2023-08-16 21:38:15.772195',_binary '\0',NULL,0,'찬성','논쟁 글 내용61',0,0,'반대','논쟁 글61',2),(62,'2023-08-16 21:38:15.780783',_binary '\0',NULL,0,'찬성','논쟁 글 내용62',0,0,'반대','논쟁 글62',2),(63,'2023-08-16 21:38:15.787823',_binary '\0',NULL,0,'찬성','논쟁 글 내용63',0,0,'반대','논쟁 글63',2),(64,'2023-08-16 21:38:15.795322',_binary '\0',NULL,0,'찬성','논쟁 글 내용64',0,0,'반대','논쟁 글64',2),(65,'2023-08-16 21:38:15.804224',_binary '\0',NULL,0,'찬성','논쟁 글 내용65',0,0,'반대','논쟁 글65',2),(66,'2023-08-16 21:38:15.812074',_binary '\0',NULL,0,'찬성','논쟁 글 내용66',0,0,'반대','논쟁 글66',2),(67,'2023-08-16 21:38:15.821059',_binary '\0',NULL,0,'찬성','논쟁 글 내용67',0,0,'반대','논쟁 글67',2),(68,'2023-08-16 21:38:15.829898',_binary '\0',NULL,0,'찬성','논쟁 글 내용68',0,0,'반대','논쟁 글68',2),(69,'2023-08-16 21:38:15.840828',_binary '\0',NULL,0,'찬성','논쟁 글 내용69',0,0,'반대','논쟁 글69',2),(70,'2023-08-16 21:38:15.847145',_binary '\0',NULL,0,'찬성','논쟁 글 내용70',0,0,'반대','논쟁 글70',2),(71,'2023-08-16 21:38:15.856122',_binary '\0',NULL,0,'찬성','논쟁 글 내용71',0,0,'반대','논쟁 글71',2),(72,'2023-08-16 21:38:15.863933',_binary '\0',NULL,0,'찬성','논쟁 글 내용72',0,0,'반대','논쟁 글72',2),(73,'2023-08-16 21:38:15.873093',_binary '\0',NULL,0,'찬성','논쟁 글 내용73',0,0,'반대','논쟁 글73',2),(74,'2023-08-16 21:38:15.880605',_binary '\0',NULL,0,'찬성','논쟁 글 내용74',0,0,'반대','논쟁 글74',2),(75,'2023-08-16 21:38:15.887278',_binary '\0',NULL,0,'찬성','논쟁 글 내용75',0,0,'반대','논쟁 글75',2),(76,'2023-08-16 21:38:15.896938',_binary '\0',NULL,0,'찬성','논쟁 글 내용76',0,0,'반대','논쟁 글76',2),(77,'2023-08-16 21:38:15.905125',_binary '\0',NULL,0,'찬성','논쟁 글 내용77',0,0,'반대','논쟁 글77',2),(78,'2023-08-16 21:38:15.912734',_binary '\0',NULL,0,'찬성','논쟁 글 내용78',0,0,'반대','논쟁 글78',2),(79,'2023-08-16 21:38:15.919442',_binary '\0',NULL,0,'찬성','논쟁 글 내용79',0,0,'반대','논쟁 글79',2),(80,'2023-08-16 21:38:15.926764',_binary '\0',NULL,0,'찬성','논쟁 글 내용80',0,0,'반대','논쟁 글80',2),(81,'2023-08-16 21:38:15.935037',_binary '\0',NULL,0,'찬성','논쟁 글 내용81',0,0,'반대','논쟁 글81',2),(82,'2023-08-16 21:38:15.943308',_binary '\0',NULL,0,'찬성','논쟁 글 내용82',0,0,'반대','논쟁 글82',2),(83,'2023-08-16 21:38:15.951818',_binary '\0',NULL,0,'찬성','논쟁 글 내용83',0,0,'반대','논쟁 글83',2),(84,'2023-08-16 21:38:15.959813',_binary '\0',NULL,0,'찬성','논쟁 글 내용84',0,0,'반대','논쟁 글84',2),(85,'2023-08-16 21:38:15.968185',_binary '\0',NULL,0,'찬성','논쟁 글 내용85',0,0,'반대','논쟁 글85',2),(86,'2023-08-16 21:38:15.978657',_binary '\0',NULL,0,'찬성','논쟁 글 내용86',0,0,'반대','논쟁 글86',2),(87,'2023-08-16 21:38:15.986152',_binary '\0',NULL,0,'찬성','논쟁 글 내용87',0,0,'반대','논쟁 글87',2),(88,'2023-08-16 21:38:15.993862',_binary '\0',NULL,0,'찬성','논쟁 글 내용88',0,0,'반대','논쟁 글88',2),(89,'2023-08-16 21:38:16.001797',_binary '\0',NULL,0,'찬성','논쟁 글 내용89',0,0,'반대','논쟁 글89',2),(90,'2023-08-16 21:38:16.009185',_binary '\0',NULL,0,'찬성','논쟁 글 내용90',0,0,'반대','논쟁 글90',2),(91,'2023-08-16 21:38:16.015265',_binary '\0',NULL,0,'찬성','논쟁 글 내용91',0,0,'반대','논쟁 글91',2),(92,'2023-08-16 21:38:16.022664',_binary '\0',NULL,0,'찬성','논쟁 글 내용92',0,0,'반대','논쟁 글92',2),(93,'2023-08-16 21:38:16.031335',_binary '\0',NULL,0,'찬성','논쟁 글 내용93',0,0,'반대','논쟁 글93',2),(94,'2023-08-16 21:38:16.039892',_binary '\0',NULL,0,'찬성','논쟁 글 내용94',0,0,'반대','논쟁 글94',2),(95,'2023-08-16 21:38:16.047609',_binary '\0',NULL,0,'찬성','논쟁 글 내용95',0,0,'반대','논쟁 글95',2),(96,'2023-08-16 21:38:16.055583',_binary '\0',NULL,0,'찬성','논쟁 글 내용96',0,0,'반대','논쟁 글96',2),(97,'2023-08-16 21:38:16.065448',_binary '\0',NULL,0,'찬성','논쟁 글 내용97',0,0,'반대','논쟁 글97',2),(98,'2023-08-16 21:38:16.074375',_binary '\0',NULL,0,'찬성','논쟁 글 내용98',0,0,'반대','논쟁 글98',2),(99,'2023-08-16 21:38:16.082721',_binary '\0',NULL,0,'찬성','논쟁 글 내용99',1,0,'반대','논쟁 글99',2),(100,'2023-08-16 21:38:16.091512',_binary '\0',NULL,0,'찬성','논쟁 글 내용100',1,0,'반대','논쟁 글100',2),(101,'2023-08-16 21:51:21.969315',_binary '\0',NULL,0,'호','하와이안 피자 좋아하시나요?',5,2,'불호','하와이안 피자',2),(102,'2023-08-16 21:52:15.598997',_binary '\0',NULL,2,'좋다','밥 먹기 전 음식 사진 찍기 어떻게 생각하시나요?',6,0,'싫다','밥 먹기 전 음식 사진 찍기',2),(103,'2023-08-16 21:54:37.869411',_binary '\0',NULL,1,'괜찮다','애인이 다른 이성의 깻잎 떼어주기 괜찮으신가요?',8,0,'싫다','깻잎 논쟁',2),(104,'2023-08-16 21:55:12.350367',_binary '\0',NULL,0,'찬성','커플룩 입기 어떻게 생각하나요?',5,1,'반대','커플룩 입기',2),(105,'2023-08-16 21:56:08.415967',_binary '\0',NULL,1,'민초 최고','민초 너무 좋아요 짱짱',13,1,'민초 우웩','민초단들이여 일어나라',2),(106,'2023-08-17 03:43:18.312132',_binary '','2023-08-17 03:43:41.006131',0,'친구면 그럴 수 있다','남사친/여사친과 단 둘이 술마시기 가능한가요?',3,0,'말도 안되는 소리 하지 마라','남사친/여사친과 단 둘이 술마시기',3),(107,'2023-08-17 03:49:19.743203',_binary '','2023-08-17 03:50:50.666045',0,'친구니까 그럴 수 있다','남사친/여사친과 단 둘이 술마시기 가능한가요?',5,0,'말도 안되는 소리 하지 마라','남사친/여사친과 단 둘이 술',3),(108,'2023-08-17 09:06:34.515013',_binary '\0',NULL,1,'밑단 질질끌리는 스트릿 룩','무조건 여기서 골라야해',11,1,'공대생 체크셔츠','소개팅 패션 둘 중에 어때?',4),(109,'2023-08-17 09:21:24.675820',_binary '\0',NULL,0,'친구니까 그럴 수 있다','남사친/여사친과 단 둘이 술마시기 가능한가요?',6,0,'말도 안되는 소리 하지 마라','남사친/여사친과 단 둘이 술',3);
/*!40000 ALTER TABLE `issue_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue_vote`
--

DROP TABLE IF EXISTS `issue_vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issue_vote` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) DEFAULT NULL,
  `is_agree` bit(1) NOT NULL,
  `issue_board_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqdwa13qskitewj569mdk7rvxu` (`issue_board_id`),
  KEY `FKgntp75hleqlthxh0pok91c3eh` (`user_id`),
  CONSTRAINT `FKgntp75hleqlthxh0pok91c3eh` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKqdwa13qskitewj569mdk7rvxu` FOREIGN KEY (`issue_board_id`) REFERENCES `issue_board` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_vote`
--

LOCK TABLES `issue_vote` WRITE;
/*!40000 ALTER TABLE `issue_vote` DISABLE KEYS */;
INSERT INTO `issue_vote` VALUES (1,'2023-08-17 08:36:48.473077',_binary '\0',105,2),(2,'2023-08-17 08:36:57.558909',_binary '\0',101,2),(3,'2023-08-17 08:37:05.186098',_binary '',102,2),(6,'2023-08-17 09:06:42.120603',_binary '',108,4),(7,'2023-08-17 09:15:55.470789',_binary '\0',104,3),(8,'2023-08-17 09:16:53.252237',_binary '\0',108,3),(9,'2023-08-17 09:16:59.478861',_binary '',103,3),(10,'2023-08-17 09:19:52.504789',_binary '',105,3),(11,'2023-08-17 09:20:05.795819',_binary '',102,3),(12,'2023-08-17 09:20:16.165301',_binary '\0',101,3);
/*!40000 ALTER TABLE `issue_vote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `code` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` bigint DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'매칭 티켓',1000,'MATCHING_TICKET','매칭에 필요한 티켓입니다.'),(2,'매칭 티켓 x3',2800,'MATCHING_TICKET','매칭 티켓 3개 묶음입니다.'),(3,'매칭 티켓 x5',4500,'MATCHING_TICKET','매칭 티켓 5개 묶음입니다.'),(4,'물고기 부활 티켓',3000,'REVIVE_TICKET','3일이 지나 죽은 물고기를 살릴 수 있습니다.'),(5,'물고기 스킨 랜덤박스',2000,'RANDOM_SKIN_BOX','물고기 스킨을 랜덤으로 뽑을 수 있습니다.'),(6,'닉네임 변경권',5000,'CHANGE_NICKNAME','닉네임을 1회 변경할 수 있습니다.'),(7,'작은 어항',3000,'SKIN_3','최대 3명의 친구를 추가할 수 있습니다.'),(8,'수조',5000,'SKIN_5','최대 5명의 친구를 추가할 수 있습니다.'),(9,'아쿠아리움',10000,'SKIN_10','최대 10명의 친구를 추가할 수 있습니다.');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_log`
--

DROP TABLE IF EXISTS `login_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKa9ca70emkdxbpw4u0voihgers` (`user_id`),
  CONSTRAINT `FKa9ca70emkdxbpw4u0voihgers` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_log`
--

LOCK TABLES `login_log` WRITE;
/*!40000 ALTER TABLE `login_log` DISABLE KEYS */;
INSERT INTO `login_log` VALUES (1,'2023-08-16 21:13:38.472646',1),(2,'2023-08-16 21:22:37.910183',2),(3,'2023-08-16 21:31:25.404080',2),(4,'2023-08-16 21:36:31.513292',2),(5,'2023-08-16 22:05:11.850721',3),(6,'2023-08-16 22:59:40.551333',2),(7,'2023-08-16 23:06:48.571994',2),(8,'2023-08-16 23:15:56.367126',3),(9,'2023-08-16 23:16:31.893013',3),(10,'2023-08-16 23:55:19.682917',3),(11,'2023-08-16 23:58:53.127742',3),(12,'2023-08-17 00:07:46.562292',3),(13,'2023-08-17 00:35:33.832435',4),(14,'2023-08-17 08:35:40.108535',2),(15,'2023-08-17 08:45:47.151625',2),(16,'2023-08-17 09:00:17.306714',3),(17,'2023-08-17 09:04:19.913597',3),(18,'2023-08-17 09:11:53.249103',3),(19,'2023-08-17 09:14:13.408916',3),(20,'2023-08-17 09:36:04.832447',4),(21,'2023-08-17 09:39:22.689188',3),(22,'2023-08-17 09:43:02.361111',5),(23,'2023-08-17 09:47:08.503515',3),(24,'2023-08-17 10:19:29.169470',1),(25,'2023-08-17 10:24:39.283408',2),(26,'2023-08-17 10:30:51.101632',6),(27,'2023-08-17 10:45:59.067269',3);
/*!40000 ALTER TABLE `login_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matching`
--

DROP TABLE IF EXISTS `matching`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matching` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) DEFAULT NULL,
  `end_time` datetime(6) DEFAULT NULL,
  `is_success` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matching`
--

LOCK TABLES `matching` WRITE;
/*!40000 ALTER TABLE `matching` DISABLE KEYS */;
INSERT INTO `matching` VALUES (1,'2023-08-17 09:13:50.428122','2023-08-17 09:15:53.498094',_binary ''),(2,'2023-08-17 09:55:02.179586','2023-08-17 09:56:32.759585',_binary '');
/*!40000 ALTER TABLE `matching` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matching_question`
--

DROP TABLE IF EXISTS `matching_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matching_question` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `question_order` int DEFAULT NULL,
  `matching_id` bigint DEFAULT NULL,
  `question_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqtsfv6u3fvgputky87txi168s` (`matching_id`),
  KEY `FK3g2tcuxemdgcj5riv4ab1h86w` (`question_id`),
  CONSTRAINT `FK3g2tcuxemdgcj5riv4ab1h86w` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`),
  CONSTRAINT `FKqtsfv6u3fvgputky87txi168s` FOREIGN KEY (`matching_id`) REFERENCES `matching` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matching_question`
--

LOCK TABLES `matching_question` WRITE;
/*!40000 ALTER TABLE `matching_question` DISABLE KEYS */;
INSERT INTO `matching_question` VALUES (5881,1,1,66),(5882,2,1,60),(5883,3,1,14),(5884,4,1,49),(5885,5,1,5),(5886,6,1,39),(5887,7,1,1),(5888,8,1,9),(5889,9,1,3),(5890,10,1,95),(5891,1,2,15),(5892,2,2,12),(5893,3,2,53),(5894,4,2,48),(5895,5,2,8),(5896,6,2,28),(5897,7,2,3),(5898,8,2,94),(5899,9,2,4),(5900,10,2,74);
/*!40000 ALTER TABLE `matching_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matching_score_history`
--

DROP TABLE IF EXISTS `matching_score_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matching_score_history` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `question_order` int DEFAULT NULL,
  `score` int DEFAULT NULL,
  `matching_id` bigint DEFAULT NULL,
  `question_code` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKoiylpel96jj27bq7nn77bk2ib` (`matching_id`),
  KEY `FK26p1xi8jasl4hbhrqry46mivb` (`question_code`),
  KEY `FKtkipb0l4u0rvbxk8jgus8e1xa` (`user_id`),
  CONSTRAINT `FK26p1xi8jasl4hbhrqry46mivb` FOREIGN KEY (`question_code`) REFERENCES `question` (`id`),
  CONSTRAINT `FKoiylpel96jj27bq7nn77bk2ib` FOREIGN KEY (`matching_id`) REFERENCES `matching` (`id`),
  CONSTRAINT `FKtkipb0l4u0rvbxk8jgus8e1xa` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matching_score_history`
--

LOCK TABLES `matching_score_history` WRITE;
/*!40000 ALTER TABLE `matching_score_history` DISABLE KEYS */;
INSERT INTO `matching_score_history` VALUES (1,1,10,1,66,4),(2,1,9,1,66,2),(3,2,9,1,60,2),(4,2,10,1,60,4),(5,3,9,1,14,4),(6,3,9,1,14,2),(7,4,9,1,49,4),(8,4,9,1,49,2),(9,5,9,1,5,4),(10,5,9,1,5,2),(11,6,9,1,39,2),(12,6,9,1,39,4),(13,7,9,1,1,4),(14,7,9,1,1,2),(15,8,9,1,9,4),(16,8,9,1,9,2),(17,9,9,1,3,4),(18,9,9,1,3,2),(19,10,5,1,95,2),(20,10,5,1,95,4),(21,1,9,2,15,4),(22,1,7,2,15,5),(23,2,9,2,12,4),(24,2,9,2,12,5),(25,3,8,2,53,5),(26,3,9,2,53,4),(27,4,9,2,48,5),(28,4,10,2,48,4),(29,5,10,2,8,5),(30,5,9,2,8,4),(31,6,10,2,28,5),(32,6,9,2,28,4),(33,7,9,2,3,5),(34,7,9,2,3,4),(35,8,9,2,94,4),(36,8,9,2,94,5),(37,9,9,2,4,4),(38,9,10,2,4,5),(39,9,9,2,4,5),(40,10,9,2,74,4);
/*!40000 ALTER TABLE `matching_score_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matching_user`
--

DROP TABLE IF EXISTS `matching_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matching_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `final_choice` bit(1) DEFAULT NULL,
  `total_score` int DEFAULT NULL,
  `matching_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKh3v2dj80bcpw6gf5kyixxwhoy` (`matching_id`),
  KEY `FKdfjh8gkhwb761dbmjpgwhyv4i` (`user_id`),
  CONSTRAINT `FKdfjh8gkhwb761dbmjpgwhyv4i` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKh3v2dj80bcpw6gf5kyixxwhoy` FOREIGN KEY (`matching_id`) REFERENCES `matching` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matching_user`
--

LOCK TABLES `matching_user` WRITE;
/*!40000 ALTER TABLE `matching_user` DISABLE KEYS */;
INSERT INTO `matching_user` VALUES (1,_binary '',0,1,4),(2,_binary '',0,1,2),(3,_binary '',0,2,4),(4,_binary '',0,2,5);
/*!40000 ALTER TABLE `matching_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `point_category`
--

DROP TABLE IF EXISTS `point_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `point_category` (
  `code` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `point_category`
--

LOCK TABLES `point_category` WRITE;
/*!40000 ALTER TABLE `point_category` DISABLE KEYS */;
INSERT INTO `point_category` VALUES (1,'포인트 충전'),(2,'아이템 구매');
/*!40000 ALTER TABLE `point_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `point_code`
--

DROP TABLE IF EXISTS `point_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `point_code` (
  `code` bigint NOT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `tax_free_amount` int NOT NULL,
  `total_amount` int NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `point_code`
--

LOCK TABLES `point_code` WRITE;
/*!40000 ALTER TABLE `point_code` DISABLE KEYS */;
INSERT INTO `point_code` VALUES (1,'1000 팅 포인트 충전',0,1000),(2,'3000 팅 포인트 충전',0,3000),(3,'5000 팅 포인트 충전',0,5000),(4,'10000 팅 포인트 충전',0,10000),(5,'50000 팅 포인트 충전',0,50000);
/*!40000 ALTER TABLE `point_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `point_history`
--

DROP TABLE IF EXISTS `point_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `point_history` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) DEFAULT NULL,
  `change_cost` bigint DEFAULT NULL,
  `result_point` bigint DEFAULT NULL,
  `point_code` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1xnk2l0fwjshmyhusbahfsh5n` (`point_code`),
  KEY `FK9yptgx9qhcp768sokuopwxncm` (`user_id`),
  CONSTRAINT `FK1xnk2l0fwjshmyhusbahfsh5n` FOREIGN KEY (`point_code`) REFERENCES `point_category` (`code`),
  CONSTRAINT `FK9yptgx9qhcp768sokuopwxncm` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `point_history`
--

LOCK TABLES `point_history` WRITE;
/*!40000 ALTER TABLE `point_history` DISABLE KEYS */;
INSERT INTO `point_history` VALUES (1,'2023-08-17 09:08:19.081149',50000,50000,1,4),(2,'2023-08-17 09:08:28.383801',10000,40000,2,4),(4,'2023-08-17 09:08:38.228642',2000,38000,2,4),(5,'2023-08-17 09:08:42.594046',8000,30000,2,4),(6,'2023-08-17 09:09:18.486267',4500,25500,2,4),(7,'2023-08-17 09:50:09.849633',50000,50000,1,2),(8,'2023-08-17 09:50:23.365824',3000,47000,2,2),(9,'2023-08-17 09:55:29.710658',3000,44000,2,2),(10,'2023-08-17 10:16:04.421392',3000,41000,2,2),(11,'2023-08-17 10:23:40.852610',3000,38000,2,2),(12,'2023-08-17 10:26:28.218649',10000,10000,1,3),(13,'2023-08-17 10:26:44.710340',6000,4000,2,3),(14,'2023-08-17 10:27:15.479987',3000,35000,2,2);
/*!40000 ALTER TABLE `point_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `point_payment`
--

DROP TABLE IF EXISTS `point_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `point_payment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `aid` varchar(255) DEFAULT NULL,
  `cid` varchar(255) DEFAULT NULL,
  `created_time` datetime(6) DEFAULT NULL,
  `payment_method_type` varchar(255) DEFAULT NULL,
  `pg_token` varchar(255) DEFAULT NULL,
  `quantity` int NOT NULL,
  `tid` varchar(255) DEFAULT NULL,
  `point_code` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8ok55d7x02x3o1kfk3mx5f9ih` (`point_code`),
  KEY `FKrkml9sj9v7r630fs8qe8okyx` (`user_id`),
  CONSTRAINT `FK8ok55d7x02x3o1kfk3mx5f9ih` FOREIGN KEY (`point_code`) REFERENCES `point_code` (`code`),
  CONSTRAINT `FKrkml9sj9v7r630fs8qe8okyx` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `point_payment`
--

LOCK TABLES `point_payment` WRITE;
/*!40000 ALTER TABLE `point_payment` DISABLE KEYS */;
INSERT INTO `point_payment` VALUES (1,'A4dd64ef76b90283e8af','TC0ONETIME','2023-08-17 09:08:19.074545','MONEY','53aebaa6f99b055c72db',1,'T4dd64dd76b90283e8ae',5,4),(2,'A4dd6ebe76b90283e924','TC0ONETIME','2023-08-17 09:50:09.843134','MONEY','dfa60ac4df7003767652',1,'T4dd6ea14ce74cf5d8bf',5,2),(3,'A4dd77434ce74cf5d949','TC0ONETIME','2023-08-17 10:26:28.215893','MONEY','02c11ed0de5e76bade93',1,'T4dd77314ce74cf5d947',4,3);
/*!40000 ALTER TABLE `point_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qna`
--

DROP TABLE IF EXISTS `qna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qna` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `completed_time` datetime(6) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `is_completed` bit(1) NOT NULL DEFAULT b'0',
  `title` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK22kn9bnirhpqdv8ibyyo28nkr` (`user_id`),
  CONSTRAINT `FK22kn9bnirhpqdv8ibyyo28nkr` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qna`
--

LOCK TABLES `qna` WRITE;
/*!40000 ALTER TABLE `qna` DISABLE KEYS */;
INSERT INTO `qna` VALUES (1,'2023-08-17 09:10:39.470031',NULL,NULL,'어장 한 1000마리까지 못늘리나요?',_binary '\0','안녕하세요',4);
/*!40000 ALTER TABLE `qna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  `question_card` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1,'ESSENTIAL','첫인상'),(2,'ESSENTIAL','키'),(3,'ESSENTIAL','나이'),(4,'ESSENTIAL','성격'),(5,'ESSENTIAL','종교'),(6,'ESSENTIAL','MBTI'),(7,'ESSENTIAL','지역'),(8,'ESSENTIAL','흡연'),(9,'LOVE','연애횟수'),(10,'LOVE','남사친/여사친 수'),(11,'LOVE','남사친/여사친과 여행'),(12,'LOVE','남사친/여사친과 단 둘이 술'),(13,'LOVE','연락 빈도'),(14,'LOVE','만남 빈도'),(15,'LOVE','솔로 기간'),(16,'LOVE','데이트 스타일'),(17,'LOVE','기념일 챙기는 스타일'),(18,'LOVE','이상형'),(19,'LOVE','다녀온 횟수'),(20,'LOVE','싸웠을 때 바로 풀기 vs 시간 갖기'),(21,'LOVE','카톡 스타일'),(22,'LIFE','상식'),(23,'LIFE','유머'),(24,'LIFE','건강'),(25,'LIFE','주사'),(26,'LIFE','주량'),(27,'LIFE','주종'),(28,'LIFE','패션 스타일'),(29,'LIFE','생활 패턴'),(30,'LIFE','아침형/저녁형 인간'),(31,'LIFE','형제/자매'),(32,'LIFE','반려동물'),(33,'LIFE','맛집 투어'),(34,'LIFE','맛집 웨이팅'),(35,'LIFE','SNS'),(36,'LIFE','소비 습관'),(37,'LIFE','스트레스 해소법'),(38,'LIFE','햄최몇'),(39,'LIFE','쉬는 날 하는 것'),(40,'LIFE','하루 식비'),(41,'LIFE','운전 여부'),(42,'LIFE','직업'),(43,'LIFE','가지고 있는 가장 비싼 물건'),(44,'HOBBY','여행'),(45,'HOBBY','가고 싶은 여행지'),(46,'HOBBY','게임'),(47,'HOBBY','인상깊었던 책'),(48,'HOBBY','하고 있는 운동'),(49,'HOBBY','요리'),(50,'HOBBY','코딩'),(51,'FAVORITE','최애 음악'),(52,'FAVORITE','최애 디저트'),(53,'FAVORITE','최애 음식'),(54,'FAVORITE','최애 게임'),(55,'FAVORITE','최애 영화'),(56,'FAVORITE','최애 드라마'),(57,'FAVORITE','최애 유튜버'),(58,'FAVORITE','최애 계절'),(59,'FAVORITE','최애 베스킨라빈스'),(60,'FAVORITE','최애 과자'),(61,'FAVORITE','최애 아이스크림'),(62,'FAVORITE','최애 라면'),(63,'PREFER','민초'),(64,'PREFER','제로콜라'),(65,'PREFER','하와이언 피자'),(66,'PREFER','솔의눈'),(67,'PREFER','데자와'),(68,'PREFER','마라탕'),(69,'PREFER','오이'),(70,'PREFER','토마토주스'),(71,'PREFER','뼈있는 닭발'),(72,'PREFER','고수(음식)'),(73,'PREFER','번데기'),(74,'PREFER','곱창'),(75,'PREFER','타투'),(76,'PREFER','커플룩'),(77,'PREFER','매운 음식'),(78,'VS','닭다리 vs 닭가슴살'),(79,'VS','장발 vs 단발'),(80,'VS','부먹 vs 찍먹'),(81,'VS','코카콜라 vs 펩시'),(82,'VS','맥날 vs 버거킹 vs 롯데리아'),(83,'VS','KFC vs 맘스터치'),(84,'VS','딱복 vs 물복'),(85,'VS','시리얼 바삭파 vs 눅눅파'),(86,'VS','김치찌개 vs 된장찌개'),(87,'VS','짜장면 vs 짬뽕'),(88,'VS','치킨 뼈 vs 순살'),(89,'VS','깻잎 논쟁'),(90,'VS','맥주 vs 소주'),(91,'VS','갤럭시 vs 아이폰'),(92,'VS','진밥 vs 된밥'),(93,'VS','아아 vs 뜨아'),(94,'VS','집밥 vs 외식'),(95,'VS','밥 먹기 전 음식 촬영'),(96,'VS','밥 vs 빵'),(97,'VS','일 vs 연애'),(98,'VS','가성비 vs 가심비'),(99,'VS','카톡 vs DM'),(100,'VS','아날로그 vs 디지털');
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `type_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKj62onw73yx1qnmd57tcaa9q3a` (`user_id`),
  CONSTRAINT `FKj62onw73yx1qnmd57tcaa9q3a` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) DEFAULT NULL,
  `is_removed` bit(1) NOT NULL DEFAULT b'0',
  `modified_time` datetime(6) DEFAULT NULL,
  `removed_time` datetime(6) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `height` int DEFAULT NULL,
  `introduce` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `point` bigint DEFAULT '0',
  `profile_image` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `drinking_code_code` bigint DEFAULT NULL,
  `fish_skin_code` bigint DEFAULT NULL,
  `job_code_code` bigint DEFAULT NULL,
  `mbti_code_code` bigint DEFAULT NULL,
  `religion_code_code` bigint DEFAULT NULL,
  `smoking_code_code` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKujn7oqf82vc5kpnv2190xyem` (`drinking_code_code`),
  KEY `FK4govwhmo0s1o3kpdshj5jvi3v` (`fish_skin_code`),
  KEY `FKnyritd28lupt4p421735sdofh` (`job_code_code`),
  KEY `FKhmgkji6i66u0m8u7b6k90u8kh` (`mbti_code_code`),
  KEY `FKps4s4m14m7fj64wj56jgtx74` (`religion_code_code`),
  KEY `FKsfa48om5gdq9vookpoxcpt5ph` (`smoking_code_code`),
  CONSTRAINT `FK4govwhmo0s1o3kpdshj5jvi3v` FOREIGN KEY (`fish_skin_code`) REFERENCES `fish_skin` (`code`),
  CONSTRAINT `FKhmgkji6i66u0m8u7b6k90u8kh` FOREIGN KEY (`mbti_code_code`) REFERENCES `additional_info` (`code`),
  CONSTRAINT `FKnyritd28lupt4p421735sdofh` FOREIGN KEY (`job_code_code`) REFERENCES `additional_info` (`code`),
  CONSTRAINT `FKps4s4m14m7fj64wj56jgtx74` FOREIGN KEY (`religion_code_code`) REFERENCES `additional_info` (`code`),
  CONSTRAINT `FKsfa48om5gdq9vookpoxcpt5ph` FOREIGN KEY (`smoking_code_code`) REFERENCES `additional_info` (`code`),
  CONSTRAINT `FKujn7oqf82vc5kpnv2190xyem` FOREIGN KEY (`drinking_code_code`) REFERENCES `additional_info` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'2023-08-16 21:13:02.679398',_binary '\0','2023-08-16 21:14:33.529641',NULL,'1996-07-05','song960705@naver.com','M',179,'','송찬환','환찬','$2a$10$d1jyQkD7..Qj/UxfzFXBkOfiZxExY8noQx5MvvEQc0APjNFYmQLym','01050659767',0,'default/defaultProfile.png','DAEJEON',27,1,46,25,4,3),(2,'2023-08-16 21:22:16.064252',_binary '\0','2023-08-17 10:28:51.454449',NULL,'1999-12-30','test@ssafy.com','F',0,'','김싸피','김싸피','$2a$10$c00kmlDTuu83DHvNiAacvO1tQ8CTPykJ9P762capYY.Rsg7vwJqnC','01012345678',35000,'default/defaultProfile.png','SEOUL',NULL,1,NULL,1,NULL,NULL),(3,'2023-08-16 22:02:14.629980',_binary '\0','2023-08-17 10:26:48.451509',NULL,'2004-12-30','worend365@naver.com','F',161,'안녕하세요 :)','정수정','수정입니다','$2a$10$i6LbrOWFjMhIq/u8IGrYv.moJwjT5NTmRwvf8reIFCGk9y/kJhXwu','01066286059',4000,'230816/91920143-3a39-43ba-b914-22235dd881cb.jpg','DAEJEON',27,6,46,NULL,4,3),(4,'2023-08-17 00:35:20.989276',_binary '\0','2023-08-17 10:16:11.596147',NULL,'1993-09-06','modelism93@naver.com','M',190,'안녕하세요. 키 하나는 자신있습니다.','이은석','은돌','$2a$10$2UhWVRYWyUWNWSUt8/Qwh.hyir2.9J17N3FnZl84M/mYVdFohnJTC','01073882408',25500,'default/defaultProfile.png','DAEJEON',27,8,5,NULL,29,3),(5,'2023-08-17 09:42:51.383194',_binary '\0','2023-08-17 09:43:32.565493',NULL,'1997-12-09','bmj05378@gmail.com','F',180,'안녕 난 밍밍이라고 해','변민지','밍밍','$2a$10$BBCoQLCgfIiUjsxugz8KaehGL1vVnxaEIl6dqWmnMBHhIlJVG7iBi','01081915179',0,'230817/21d39e32-8c43-4bbf-a3cd-0a014faefd6c.png','DAEJEON',26,1,5,19,4,3),(6,'2023-08-17 10:30:21.367517',_binary '\0','2023-08-17 10:32:15.365147',NULL,'2000-01-01','admin@admin.com','M',0,'','관리자','관리자','$2a$10$mPIYTyvwOsgzY8XZ3c7fqeZ7adoOddkCUFWrGvJa5DJvSHIIA8.3W','01012341234',0,'default/defaultProfile.png','SEOUL',NULL,1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_hobby`
--

DROP TABLE IF EXISTS `user_hobby`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_hobby` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `hobby_code` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4x0ihwl2cfqp32xlyqeew295h` (`hobby_code`),
  KEY `FKbb99gkcqchq4w3hmqnugmcwhc` (`user_id`),
  CONSTRAINT `FK4x0ihwl2cfqp32xlyqeew295h` FOREIGN KEY (`hobby_code`) REFERENCES `additional_info` (`code`),
  CONSTRAINT `FKbb99gkcqchq4w3hmqnugmcwhc` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_hobby`
--

LOCK TABLES `user_hobby` WRITE;
/*!40000 ALTER TABLE `user_hobby` DISABLE KEYS */;
INSERT INTO `user_hobby` VALUES (9,57,1),(10,58,1),(11,66,1),(12,69,1),(20,6,4),(21,7,4),(22,58,4),(23,61,4),(24,62,4),(25,63,4),(35,7,5),(36,57,5),(37,58,5),(38,59,5),(39,60,5),(40,61,5),(41,62,5),(42,63,5),(43,64,5);
/*!40000 ALTER TABLE `user_hobby` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_item`
--

DROP TABLE IF EXISTS `user_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_item` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) DEFAULT NULL,
  `is_used` bit(1) NOT NULL DEFAULT b'0',
  `used_time` datetime(6) DEFAULT NULL,
  `item_code` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9ha3vksj2bvgj31rhsmc8fu7r` (`item_code`),
  KEY `FKpgamngac3kq2ye6cg611lfrfm` (`user_id`),
  CONSTRAINT `FK9ha3vksj2bvgj31rhsmc8fu7r` FOREIGN KEY (`item_code`) REFERENCES `item` (`code`),
  CONSTRAINT `FKpgamngac3kq2ye6cg611lfrfm` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_item`
--

LOCK TABLES `user_item` WRITE;
/*!40000 ALTER TABLE `user_item` DISABLE KEYS */;
INSERT INTO `user_item` VALUES (1,'2023-08-17 09:08:28.390441',_binary '\0',NULL,9,4),(2,'2023-08-17 09:08:38.231153',_binary '\0',NULL,5,4),(3,'2023-08-17 09:08:42.596474',_binary '\0',NULL,5,4),(4,'2023-08-17 09:08:42.598889',_binary '\0',NULL,5,4),(5,'2023-08-17 09:08:42.603030',_binary '\0',NULL,5,4),(6,'2023-08-17 09:08:42.605802',_binary '\0',NULL,5,4),(7,'2023-08-17 09:09:18.489036',_binary '\0',NULL,3,4),(8,'2023-08-17 09:50:23.372542',_binary '\0',NULL,4,2),(9,'2023-08-17 09:55:29.731517',_binary '\0',NULL,4,2),(10,'2023-08-17 10:16:04.424421',_binary '\0',NULL,4,2),(11,'2023-08-17 10:23:40.855752',_binary '\0',NULL,4,2),(12,'2023-08-17 10:26:44.713220',_binary '\0',NULL,5,3),(13,'2023-08-17 10:26:44.728398',_binary '\0',NULL,5,3),(14,'2023-08-17 10:26:44.732180',_binary '\0',NULL,5,3),(15,'2023-08-17 10:27:15.482863',_binary '\0',NULL,4,2);
/*!40000 ALTER TABLE `user_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_personality`
--

DROP TABLE IF EXISTS `user_personality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_personality` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `personality_code` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKfrg6a5w0pqmc9wjf470528eu8` (`personality_code`),
  KEY `FKpfnnoo9j5dtnpdydtair8flyd` (`user_id`),
  CONSTRAINT `FKfrg6a5w0pqmc9wjf470528eu8` FOREIGN KEY (`personality_code`) REFERENCES `additional_info` (`code`),
  CONSTRAINT `FKpfnnoo9j5dtnpdydtair8flyd` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_personality`
--

LOCK TABLES `user_personality` WRITE;
/*!40000 ALTER TABLE `user_personality` DISABLE KEYS */;
INSERT INTO `user_personality` VALUES (8,107,1),(9,109,1),(10,110,1),(11,116,1),(12,119,1),(13,120,1),(14,124,1),(22,106,4),(23,109,4),(24,113,4),(25,114,4),(26,116,4),(27,128,4),(28,129,4),(31,107,5),(32,110,5);
/*!40000 ALTER TABLE `user_personality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_style`
--

DROP TABLE IF EXISTS `user_style`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_style` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `style_code` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5cku3i6stw2vu58h0fisfoley` (`style_code`),
  KEY `FKattm4mm8aybv6jk7ascxdb5pc` (`user_id`),
  CONSTRAINT `FK5cku3i6stw2vu58h0fisfoley` FOREIGN KEY (`style_code`) REFERENCES `additional_info` (`code`),
  CONSTRAINT `FKattm4mm8aybv6jk7ascxdb5pc` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_style`
--

LOCK TABLES `user_style` WRITE;
/*!40000 ALTER TABLE `user_style` DISABLE KEYS */;
INSERT INTO `user_style` VALUES (1,130,1),(2,131,1),(6,130,4),(7,131,4),(8,134,4),(14,10,5),(15,130,5),(16,131,5),(17,132,5),(18,134,5);
/*!40000 ALTER TABLE `user_style` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-17 10:48:17
