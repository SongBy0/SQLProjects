-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: zgtpf
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `grade` char(4) DEFAULT NULL COMMENT '年级',
  `class_name` varchar(20) DEFAULT NULL COMMENT '班级号',
  `subject_id` int NOT NULL COMMENT '专业ID',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `class_name` (`class_name`),
  KEY `fk_subject_class` (`subject_id`),
  CONSTRAINT `fk_subject_class` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='班级表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (1,'讲师',NULL,1),(2,'讲师',NULL,2),(3,'2020','20202831',3),(4,'2020','20202832',3),(5,'2020','20202731',4),(6,'2020','20202732',5),(7,'2019','20192831',3);
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `course_name` varchar(50) NOT NULL COMMENT '课程名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='课程表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'高等数学'),(2,'线性代数'),(3,'数据库基础'),(4,'数据结构'),(5,'专业英语');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `information`
--

DROP TABLE IF EXISTS `information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `information` (
  `id` int NOT NULL COMMENT '主键ID',
  `user_role` char(3) DEFAULT NULL COMMENT '用户身份',
  `name` varchar(20) NOT NULL COMMENT '用户名',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex` char(1) DEFAULT NULL COMMENT '性别',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `introduction` varchar(255) DEFAULT NULL COMMENT '个人简介',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `school` varchar(50) DEFAULT NULL COMMENT '学校',
  `subject_id` int DEFAULT NULL COMMENT '专业ID',
  `class_id` int DEFAULT NULL COMMENT '班级ID',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `fk_user_class` (`class_id`),
  CONSTRAINT `fk_user_class` FOREIGN KEY (`class_id`) REFERENCES `class` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_user_information` FOREIGN KEY (`id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `information`
--

LOCK TABLES `information` WRITE;
/*!40000 ALTER TABLE `information` DISABLE KEYS */;
INSERT INTO `information` VALUES (1,'管理员','admin',NULL,NULL,NULL,NULL,NULL,'2022-04-06 21:04:39',NULL,NULL,NULL),(2,'老师','理工老师1',NULL,'男',NULL,NULL,NULL,'2022-04-06 21:04:39','湖州学院',1,1),(3,'老师','理工老师2',NULL,'女',NULL,NULL,NULL,'2022-04-06 21:04:39','湖州学院',1,1),(4,'老师','人文老师1',NULL,'男',NULL,NULL,NULL,'2022-04-06 21:04:39','湖州学院',2,2),(5,'学生','2020283101',NULL,'男',NULL,NULL,NULL,'2022-04-06 21:04:39','湖州学院',3,3),(6,'学生','2020283102',NULL,'女',NULL,NULL,NULL,'2022-04-06 21:04:39','湖州学院',3,3),(7,'学生','2020283201',NULL,'男',NULL,NULL,NULL,'2022-04-06 21:04:39','湖州学院',3,4),(8,'学生','2020283202',NULL,'女',NULL,NULL,NULL,'2022-04-06 21:04:39','湖州学院',3,4),(9,'学生','2020273101',NULL,'男',NULL,NULL,NULL,'2022-04-06 21:04:39','湖州学院',4,5),(10,'学生','2020273102',NULL,'女',NULL,NULL,NULL,'2022-04-06 21:04:39','湖州学院',4,5),(11,'学生','2020273201',NULL,'男',NULL,NULL,NULL,'2022-04-06 21:04:39','湖州学院',5,6),(12,'学生','2020273202',NULL,'女',NULL,NULL,NULL,'2022-04-06 21:04:39','湖州学院',5,6),(13,'学生','2019283101',NULL,'男',NULL,NULL,NULL,'2022-04-06 21:04:39','湖州学院',3,7),(14,'学生','2019283102',NULL,'女',NULL,NULL,NULL,'2022-04-06 21:04:39','湖州学院',3,7);
/*!40000 ALTER TABLE `information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `topic` varchar(255) NOT NULL COMMENT '题目',
  `type` int DEFAULT NULL COMMENT '题目类型：1为主观题，2为客观题',
  `answer` varchar(255) NOT NULL COMMENT '答案',
  `analysis` varchar(255) DEFAULT NULL COMMENT '解析',
  `score` double DEFAULT NULL COMMENT '分数',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',

  `test_id` int DEFAULT NULL COMMENT '试卷ID',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `fk_question_test` (`test_id`),
  CONSTRAINT `fk_question_test` FOREIGN KEY (`test_id`) REFERENCES `test_paper` (`id`),
  CONSTRAINT `question_chk_1` CHECK ((`type` in (1,2)))
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='试题表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1,'设f(x)=2x+3x-2，则当x→0时，下列结论正确的是',1,'B',NULL,5,'2019-09-01 00:00:00',1),(2,'设f(x)=2x+3x-2，则当x→0时，下列结论正确的是',2,'B',NULL,5,'2019-09-01 00:00:00',1),(3,'设f(x)=2x+3x-2，则当x→0时，下列结论正确的是',1,'B',NULL,5,'2019-09-01 00:00:00',2),(4,'设f(x)=2x+3x-2，则当x→0时，下列结论正确的是',2,'B',NULL,5,'2019-09-01 00:00:00',2),(5,'设f(x)=2x+3x-2，则当x→0时，下列结论正确的是',1,'B',NULL,5,'2019-09-01 00:00:00',5),(6,'设f(x)=2x+3x-2，则当x→0时，下列结论正确的是',2,'B',NULL,5,'2019-09-01 00:00:00',5),(7,'设f(x)=2x+3x-2，则当x→0时，下列结论正确的是',1,'B',NULL,5,'2019-09-01 00:00:00',6),(8,'设f(x)=2x+3x-2，则当x→0时，下列结论正确的是',2,'B',NULL,5,'2019-09-01 00:00:00',6);
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_answer`
--

DROP TABLE IF EXISTS `student_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_answer` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `answer` varchar(255) NOT NULL COMMENT '学生作答',
  `suspicious` int NOT NULL DEFAULT '0' COMMENT '作答是否存疑：0著错；1异常',
  `status` int NOT NULL DEFAULT '0' COMMENT '批阅状态：0未批阅；1已批阅',
  `score` double DEFAULT NULL COMMENT '得分',
  `student_id` int NOT NULL COMMENT '学生ID',
  `test_id` int NOT NULL COMMENT '试卷ID',
  `question_id` int NOT NULL COMMENT '题目ID',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `fk_student_answer` (`student_id`),
  KEY `fk_question_answer` (`question_id`),
  KEY `fk_test_answer` (`test_id`),
  CONSTRAINT `fk_question_answer` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`),
  CONSTRAINT `fk_student_answer` FOREIGN KEY (`student_id`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_test_answer` FOREIGN KEY (`test_id`) REFERENCES `test_paper` (`id`),
  CONSTRAINT `student_answer_chk_1` CHECK ((`suspicious` in (0,1))),
  CONSTRAINT `student_answer_chk_2` CHECK ((`status` in (0,1)))
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='学生作答表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_answer`
--

LOCK TABLES `student_answer` WRITE;
/*!40000 ALTER TABLE `student_answer` DISABLE KEYS */;
INSERT INTO `student_answer` VALUES (1,'B',1,0,0,5,5,5),(2,'B',0,0,5,5,5,6),(3,'B',0,0,5,5,6,7),(4,'A',0,0,5,5,6,8),(5,'B',1,0,0,6,5,5),(6,'B',0,0,5,6,5,6),(7,'B',0,0,5,6,6,7),(8,'B',0,0,5,6,6,8);
/*!40000 ALTER TABLE `student_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_score`
--

DROP TABLE IF EXISTS `student_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_score` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `score` double DEFAULT NULL COMMENT '学生测试成绩',
  `student_id` int NOT NULL COMMENT '学生ID',
  `test_id` int NOT NULL COMMENT '试卷ID',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `fk_score_student` (`student_id`),
  KEY `fk_score_test` (`test_id`),
  CONSTRAINT `fk_score_student` FOREIGN KEY (`student_id`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_score_test` FOREIGN KEY (`test_id`) REFERENCES `test_paper` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='学生测试成绩表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_score`
--

LOCK TABLES `student_score` WRITE;
/*!40000 ALTER TABLE `student_score` DISABLE KEYS */;
INSERT INTO `student_score` VALUES (1,50,5,6),(2,100,6,6);
/*!40000 ALTER TABLE `student_score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `college` varchar(50) DEFAULT NULL COMMENT '学院',
  `subject_name` varchar(50) NOT NULL COMMENT '专业名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='专业表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES (1,'理工','教务处'),(2,'人文','教务处'),(3,'理工','计算机'),(4,'理工','数学'),(5,'人文','英语');
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher_course_class`
--

DROP TABLE IF EXISTS `teacher_course_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher_course_class` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `grade` char(4) NOT NULL COMMENT '开课年级',
  `year` varchar(20) DEFAULT NULL COMMENT '开课学年',
  `teacher_id` int NOT NULL COMMENT '教师ID',
  `subject_id` int NOT NULL COMMENT '专业ID',
  `course_id` int NOT NULL COMMENT '课程ID',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `fk_teacher_subject_course` (`teacher_id`),
  KEY `fk_subject_teacher` (`subject_id`),
  KEY `fk_course_teacher` (`course_id`),
  CONSTRAINT `fk_course_teacher` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  CONSTRAINT `fk_subject_teacher` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`),
  CONSTRAINT `fk_teacher_subject_course` FOREIGN KEY (`teacher_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='教师课程班级关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_course_class`
--

LOCK TABLES `teacher_course_class` WRITE;
/*!40000 ALTER TABLE `teacher_course_class` DISABLE KEYS */;
INSERT INTO `teacher_course_class` VALUES (1,'2019','2019-2020',2,3,1),(2,'2019','2019-2020',3,3,3),(3,'2019','2020-2021',3,3,4),(4,'2020','2020-2021',2,3,1),(5,'2020','2020-2021',2,3,3),(6,'2020','2020-2021',2,4,1),(7,'2020','2020-2021',2,4,2),(8,'2020','2020-2021',4,5,5);
/*!40000 ALTER TABLE `teacher_course_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_paper`
--

DROP TABLE IF EXISTS `test_paper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_paper` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) DEFAULT NULL COMMENT '试卷名称',
  `score` double DEFAULT '100' COMMENT '总分',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `watcher` varchar(20) DEFAULT NULL COMMENT '监考人',
  `status` int DEFAULT '0' COMMENT '试卷状态：-1为已结束，0为待批阅，1为正在进行的',
  `course_id` int DEFAULT NULL COMMENT '创建课程ID',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fk_test_course` (`course_id`),
  CONSTRAINT `fk_test_course` FOREIGN KEY (`course_id`) REFERENCES `teacher_course_class` (`id`),
  CONSTRAINT `test_paper_chk_1` CHECK ((`status` in (-(1),0,1)))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='试卷表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_paper`
--

LOCK TABLES `test_paper` WRITE;
/*!40000 ALTER TABLE `test_paper` DISABLE KEYS */;
INSERT INTO `test_paper` VALUES (1,'2019-2020年高等数学B',100,'2019-09-01 00:00:00','2020-06-01 00:00:00','理工老师1',-1,1,'2019-09-01 00:00:00'),(2,'2019-2020年数据库1',100,'2019-09-01 00:00:00','2020-06-01 00:00:00','理工老师2',-1,2,'2019-09-01 00:00:00'),(3,'2019-2020年数据库2',100,'2019-09-01 00:00:00','2020-06-01 00:00:00','理工老师2',-1,2,'2019-09-01 00:00:00'),(4,'2020-2021年数据结构',100,'2020-09-01 00:00:00','2021-06-01 00:00:00','理工老师2',0,3,'2020-09-01 00:00:00'),(5,'2020-2021年高等数学B',100,'2020-09-01 00:00:00','2021-06-01 00:00:00','理工老师1',1,4,'2020-09-01 00:00:00'),(6,'2020-2021年数据库1',100,'2020-09-01 00:00:00','2021-06-01 00:00:00','理工老师2',1,5,'2020-09-01 00:00:00'),(7,'2020-2021年数据库2',100,'2020-09-01 00:00:00','2021-06-01 00:00:00','理工老师2',1,5,'2020-09-01 00:00:00'),(8,'2020-2021年高等数学A',100,'2020-09-01 00:00:00','2021-06-01 00:00:00','理工老师1',1,6,'2020-09-01 00:00:00'),(9,'2020-2021年线性代数',100,'2020-09-01 00:00:00','2021-06-01 00:00:00','理工老师1',1,7,'2020-09-01 00:00:00'),(10,'2020-2021年专业英语',100,'2020-09-01 00:00:00','2021-06-01 00:00:00','人文老师1',1,8,'2020-09-01 00:00:00');
/*!40000 ALTER TABLE `test_paper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `user_id` char(10) NOT NULL COMMENT '账号',
  `password` varchar(16) NOT NULL COMMENT '密码',
  `phone` char(11) DEFAULT NULL COMMENT '手机号',
  `status` int DEFAULT '1' COMMENT '账号状态：0为账号不可用；1为账号可用',
  `user_role` int DEFAULT NULL COMMENT '用户身份：0为管理员；1为老师；2为学生',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `user_chk_1` CHECK ((length(`user_id`) = 10)),
  CONSTRAINT `user_chk_2` CHECK ((length(`phone`) = 11))
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'0000000001','123456','12345678900',1,0),(2,'1000002020','123456','12345678901',1,1),(3,'1000002021','123456','12345678902',1,1),(4,'1000002019','123456','12345678903',1,1),(5,'2020283101','123456','12345678904',1,2),(6,'2020283102','123456','12345678905',1,2),(7,'2020283201','123456','12345678906',1,2),(8,'2020283202','123456','12345678907',1,2),(9,'2020273101','123456','12345678908',1,2),(10,'2020273102','123456','12345678909',1,2),(11,'2020273201','123456','12345678910',1,2),(12,'2020273202','123456','12345678911',1,2),(13,'2019283201','123456','12345678912',1,2),(14,'2019283202','123456','12345678913',1,2);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `word_options`
--

DROP TABLE IF EXISTS `word_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `word_options` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `question_id` int NOT NULL COMMENT '题目ID',
  `type` int NOT NULL COMMENT '题目类型：1为主观题，对应存放关键词，学生不可见；2为客观题，对应存放选项，学生可见',
  `word_options` varchar(255) NOT NULL COMMENT '关键词或选项',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `fk_question_options` (`question_id`),
  CONSTRAINT `fk_question_options` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`),
  CONSTRAINT `word_options_chk_1` CHECK ((`type` in (1,2)))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='关键词或选项表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `word_options`
--

LOCK TABLES `word_options` WRITE;
/*!40000 ALTER TABLE `word_options` DISABLE KEYS */;
INSERT INTO `word_options` VALUES (1,1,1,'B'),(2,2,2,'A.f(x)与x是等价无穷小'),(3,2,2,'B.f(x)与x同阶但非等价无穷小'),(4,2,2,'C.f(x)是比x高阶的无穷小'),(5,2,2,'D.f(x)是比x低阶的无穷小'),(6,3,1,'B'),(7,4,2,'A.f(x)与x是等价无穷小'),(8,4,2,'B.f(x)与x同阶但非等价无穷小'),(9,4,2,'C.f(x)是比x高阶的无穷小'),(10,4,2,'D.f(x)是比x低阶的无穷小'),(11,5,1,'B'),(12,6,2,'A.f(x)与x是等价无穷小'),(13,6,2,'B.f(x)与x同阶但非等价无穷小'),(14,6,2,'C.f(x)是比x高阶的无穷小'),(15,6,2,'D.f(x)是比x低阶的无穷小'),(16,7,1,'B'),(17,8,2,'A.f(x)与x是等价无穷小'),(18,8,2,'B.f(x)与x同阶但非等价无穷小'),(19,8,2,'C.f(x)是比x高阶的无穷小'),(20,8,2,'D.f(x)是比x低阶的无穷小');
/*!40000 ALTER TABLE `word_options` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-06 22:06:02
