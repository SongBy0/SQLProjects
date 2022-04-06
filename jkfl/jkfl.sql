/*
 Navicat Premium Data Transfer

 Source Server         : wuy Mac
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : jkfl

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 29/01/2022 10:56:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for grade
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `id` bigint NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `grade_name` varchar(255) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `totle` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of grade
-- ----------------------------
BEGIN;
INSERT INTO `grade` VALUES (1, '2022-01-29 10:56:08', '20202831', '2022-01-29 10:56:08', 10);
INSERT INTO `grade` VALUES (2, '2022-01-29 10:56:08', '20202832', '2022-01-29 10:56:08', 19);
INSERT INTO `grade` VALUES (3, '2022-01-29 10:56:08', '20202833', '2022-01-29 10:56:08', 34);
COMMIT;

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
BEGIN;
INSERT INTO `hibernate_sequence` VALUES (1);
COMMIT;

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` bigint NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `operation` varchar(255) DEFAULT NULL,
  `params` text,
  `time` bigint DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for login_log
-- ----------------------------
DROP TABLE IF EXISTS `login_log`;
CREATE TABLE `login_log` (
  `id` bigint NOT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `login_time` datetime DEFAULT NULL,
  `user_browser` varchar(255) DEFAULT NULL,
  `user_system` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of login_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` bigint NOT NULL,
  `available` int DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `menu_name` varchar(255) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `open` int DEFAULT NULL,
  `order_num` int DEFAULT NULL,
  `parent_id` bigint DEFAULT NULL,
  `perms` varchar(255) DEFAULT NULL,
  `type` int DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of menu
-- ----------------------------
BEGIN;
INSERT INTO `menu` VALUES (1, 1, '2022-01-29 10:56:08', 'el-icon-s-home', '系统首页', '2022-01-29 10:56:08', 0, 1, 0, NULL, 0, NULL);
INSERT INTO `menu` VALUES (2, 1, '2022-01-29 10:56:08', 'el-icon-files ', '题库管理', '2022-01-29 10:56:08', 0, 2, 0, NULL, 0, NULL);
INSERT INTO `menu` VALUES (3, 1, '2022-01-29 10:56:08', 'el-icon-document-copy', '试卷管理', '2022-01-29 10:56:08', 1, 3, 0, NULL, 0, NULL);
INSERT INTO `menu` VALUES (4, 1, '2022-01-29 10:56:08', 'el-icon-edit ', '考试管理', '2022-01-29 10:56:08', 1, 4, 0, NULL, 0, NULL);
INSERT INTO `menu` VALUES (5, 1, '2022-01-29 10:56:08', 'el-icon-monitor', '考务管理', '2022-01-29 10:56:08', 0, 5, 0, NULL, 0, NULL);
INSERT INTO `menu` VALUES (6, 1, '2022-01-29 10:56:08', 'el-icon-s-claim ', '阅卷管理', '2022-01-29 10:56:08', 0, 6, 0, NULL, 0, NULL);
INSERT INTO `menu` VALUES (7, 1, '2022-01-29 10:56:08', 'el-icon-document ', '成绩管理', '2022-01-29 10:56:08', 0, 7, 0, NULL, 0, NULL);
INSERT INTO `menu` VALUES (8, 1, '2022-01-29 10:56:08', 'el-icon-user ', '用户管理', '2022-01-29 10:56:08', 0, 8, 0, NULL, 0, NULL);
INSERT INTO `menu` VALUES (9, 1, '2022-01-29 10:56:08', 'el-icon-setting ', '系统管理', '2022-01-29 10:56:08', 1, 9, 0, NULL, 0, NULL);
INSERT INTO `menu` VALUES (31, 1, '2022-01-29 10:56:08', 'el-icon-edit-outline ', '组建试卷', '2022-01-29 10:56:08', 0, 1, 3, NULL, 0, NULL);
INSERT INTO `menu` VALUES (32, 1, '2022-01-29 10:56:08', 'el-icon-folder-opened ', '管理试卷', '2022-01-29 10:56:08', 0, 2, 3, NULL, 0, NULL);
INSERT INTO `menu` VALUES (41, 1, '2022-01-29 10:56:08', 'el-icon-date ', '发布考试', '2022-01-29 10:56:08', 0, 1, 4, NULL, 0, NULL);
INSERT INTO `menu` VALUES (42, 1, '2022-01-29 10:56:08', 'el-icon-data-line ', '考试详情', '2022-01-29 10:56:08', 0, 2, 4, NULL, 0, NULL);
INSERT INTO `menu` VALUES (91, 1, '2022-01-29 10:56:08', 'el-icon-menu ', '功能模块', '2022-01-29 10:56:08', 0, 1, 9, NULL, 0, NULL);
INSERT INTO `menu` VALUES (92, 1, '2022-01-29 10:56:08', 'el-icon-office-building ', '组织机构', '2022-01-29 10:56:08', 0, 2, 9, NULL, 0, NULL);
INSERT INTO `menu` VALUES (93, 1, '2022-01-29 10:56:08', 'el-icon-key ', '角色权限', '2022-01-29 10:56:08', 0, 3, 9, NULL, 0, NULL);
INSERT INTO `menu` VALUES (94, 1, '2022-01-29 10:56:08', 'el-icon-thumb ', '操作日志', '2022-01-29 10:56:08', 0, 4, 9, NULL, 0, NULL);
COMMIT;

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `id` bigint NOT NULL,
  `analysis` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `is_visible` int DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `score` int DEFAULT NULL,
  `state` int DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `topic` varchar(255) DEFAULT NULL,
  `type` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of question
-- ----------------------------
BEGIN;
INSERT INTO `question` VALUES (1, NULL, 'B', NULL, NULL, NULL, NULL, NULL, NULL, '设f(x)=2x+3x-2，则当x→0时，下列结论正确的是', 0);
COMMIT;

-- ----------------------------
-- Table structure for question_mark
-- ----------------------------
DROP TABLE IF EXISTS `question_mark`;
CREATE TABLE `question_mark` (
  `questions_id` bigint NOT NULL,
  `mark` varchar(255) DEFAULT NULL,
  KEY `FKkc7i9syu6t0x4ewt1ygnc3dk2` (`questions_id`),
  CONSTRAINT `FKkc7i9syu6t0x4ewt1ygnc3dk2` FOREIGN KEY (`questions_id`) REFERENCES `question` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of question_mark
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for question_options
-- ----------------------------
DROP TABLE IF EXISTS `question_options`;
CREATE TABLE `question_options` (
  `question_id` bigint NOT NULL,
  `options` varchar(255) DEFAULT NULL,
  KEY `FKjk4v42xhyfv4ca1yyhorsg5tv` (`question_id`),
  CONSTRAINT `FKjk4v42xhyfv4ca1yyhorsg5tv` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of question_options
-- ----------------------------
BEGIN;
INSERT INTO `question_options` VALUES (1, 'A.f(x)与x是等价无穷小');
INSERT INTO `question_options` VALUES (1, 'B.f(x)与x同阶但非等价无穷小');
INSERT INTO `question_options` VALUES (1, 'C.f(x)是比x高阶的无穷小');
INSERT INTO `question_options` VALUES (1, 'D.f(x)是比x低阶的无穷小');
COMMIT;

-- ----------------------------
-- Table structure for question_test_papars
-- ----------------------------
DROP TABLE IF EXISTS `question_test_papars`;
CREATE TABLE `question_test_papars` (
  `test_papars_id` bigint NOT NULL,
  `question_id` bigint NOT NULL,
  PRIMARY KEY (`test_papars_id`,`question_id`),
  KEY `FK2fo1drlb5sdcjnma0fr3mxxox` (`question_id`),
  CONSTRAINT `FK2fo1drlb5sdcjnma0fr3mxxox` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`),
  CONSTRAINT `FK7u7ncb097hye5h58jb0fhcqfx` FOREIGN KEY (`test_papars_id`) REFERENCES `test_papar` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of question_test_papars
-- ----------------------------
BEGIN;
INSERT INTO `question_test_papars` VALUES (1, 1);
COMMIT;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` bigint NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator_id` bigint DEFAULT NULL,
  `creator_name` varchar(255) DEFAULT NULL,
  `is_system` int DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of role
-- ----------------------------
BEGIN;
INSERT INTO `role` VALUES (1, '2022-01-29 10:56:08', NULL, NULL, 1, NULL, NULL, '学生', NULL);
INSERT INTO `role` VALUES (2, '2022-01-29 10:56:08', NULL, NULL, 1, NULL, NULL, '老师', NULL);
INSERT INTO `role` VALUES (3, '2022-01-29 10:56:08', NULL, NULL, 1, NULL, NULL, '管理员', NULL);
COMMIT;

-- ----------------------------
-- Table structure for s_grade
-- ----------------------------
DROP TABLE IF EXISTS `s_grade`;
CREATE TABLE `s_grade` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of s_grade
-- ----------------------------
BEGIN;
INSERT INTO `s_grade` VALUES (4);
COMMIT;

-- ----------------------------
-- Table structure for s_log
-- ----------------------------
DROP TABLE IF EXISTS `s_log`;
CREATE TABLE `s_log` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of s_log
-- ----------------------------
BEGIN;
INSERT INTO `s_log` VALUES (1);
COMMIT;

-- ----------------------------
-- Table structure for s_login_log
-- ----------------------------
DROP TABLE IF EXISTS `s_login_log`;
CREATE TABLE `s_login_log` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of s_login_log
-- ----------------------------
BEGIN;
INSERT INTO `s_login_log` VALUES (1);
COMMIT;

-- ----------------------------
-- Table structure for s_question
-- ----------------------------
DROP TABLE IF EXISTS `s_question`;
CREATE TABLE `s_question` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of s_question
-- ----------------------------
BEGIN;
INSERT INTO `s_question` VALUES (2);
COMMIT;

-- ----------------------------
-- Table structure for s_role
-- ----------------------------
DROP TABLE IF EXISTS `s_role`;
CREATE TABLE `s_role` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of s_role
-- ----------------------------
BEGIN;
INSERT INTO `s_role` VALUES (4);
COMMIT;

-- ----------------------------
-- Table structure for s_student_grade
-- ----------------------------
DROP TABLE IF EXISTS `s_student_grade`;
CREATE TABLE `s_student_grade` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of s_student_grade
-- ----------------------------
BEGIN;
INSERT INTO `s_student_grade` VALUES (1);
COMMIT;

-- ----------------------------
-- Table structure for s_subject
-- ----------------------------
DROP TABLE IF EXISTS `s_subject`;
CREATE TABLE `s_subject` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of s_subject
-- ----------------------------
BEGIN;
INSERT INTO `s_subject` VALUES (6);
COMMIT;

-- ----------------------------
-- Table structure for s_test_papar
-- ----------------------------
DROP TABLE IF EXISTS `s_test_papar`;
CREATE TABLE `s_test_papar` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of s_test_papar
-- ----------------------------
BEGIN;
INSERT INTO `s_test_papar` VALUES (2);
COMMIT;

-- ----------------------------
-- Table structure for s_user
-- ----------------------------
DROP TABLE IF EXISTS `s_user`;
CREATE TABLE `s_user` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of s_user
-- ----------------------------
BEGIN;
INSERT INTO `s_user` VALUES (12);
COMMIT;

-- ----------------------------
-- Table structure for s_user_role
-- ----------------------------
DROP TABLE IF EXISTS `s_user_role`;
CREATE TABLE `s_user_role` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of s_user_role
-- ----------------------------
BEGIN;
INSERT INTO `s_user_role` VALUES (1);
COMMIT;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of student
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for student_grade
-- ----------------------------
DROP TABLE IF EXISTS `student_grade`;
CREATE TABLE `student_grade` (
  `id` bigint NOT NULL,
  `grade_id` int DEFAULT NULL,
  `student_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of student_grade
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for student_score
-- ----------------------------
DROP TABLE IF EXISTS `student_score`;
CREATE TABLE `student_score` (
  `id` bigint NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator_name` varchar(255) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `score` int DEFAULT NULL,
  `student_id` bigint DEFAULT NULL,
  `creator_id` bigint DEFAULT NULL,
  `test_papar_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of student_score
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for subject
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `id` bigint NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `subject_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of subject
-- ----------------------------
BEGIN;
INSERT INTO `subject` VALUES (1, NULL, NULL, '大学语文');
INSERT INTO `subject` VALUES (2, NULL, NULL, '高等数学');
INSERT INTO `subject` VALUES (3, NULL, NULL, '数据结构');
INSERT INTO `subject` VALUES (4, NULL, NULL, '计算机网络');
INSERT INTO `subject` VALUES (5, NULL, NULL, '英语');
COMMIT;

-- ----------------------------
-- Table structure for test_papar
-- ----------------------------
DROP TABLE IF EXISTS `test_papar`;
CREATE TABLE `test_papar` (
  `id` bigint NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of test_papar
-- ----------------------------
BEGIN;
INSERT INTO `test_papar` VALUES (1, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint NOT NULL,
  `age` int DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator_id` bigint DEFAULT NULL,
  `creator_name` varchar(255) DEFAULT NULL,
  `grade_name` varchar(255) DEFAULT NULL,
  `gradeid` bigint DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `nick_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `sex` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `type` int DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'b4c0d295b78edaa02e2c7fcebeee7a22', '68bd2048-007e-4f86-8416-dcb1cd5f', NULL, 1, 0, 20202845, 'admin');
INSERT INTO `user` VALUES (2, NULL, NULL, '2022-01-29 10:56:08', NULL, NULL, '20202831', 1, NULL, NULL, 'ebb7c7fdd28c07030c395e07d3a79e10', 'f8a5aaf7-486d-4a83-8d86-078b178f', NULL, 1, 3, 2020283107, '张三');
INSERT INTO `user` VALUES (3, NULL, NULL, '2022-01-29 10:56:08', NULL, NULL, '20202831', 1, NULL, NULL, '342fddf36c8b1b88c1beb142f80adb1a', '93286817-698f-44f5-b975-6d273813', NULL, 1, 1, 1001, '张老师');
INSERT INTO `user` VALUES (4, NULL, NULL, '2022-01-29 10:56:08', NULL, NULL, '20202831', 1, NULL, NULL, '92f83903ef95a2d877e5a09cd636062d', 'ee12378f-bbe9-4e54-8ce7-a857f82c', NULL, 1, 2, 2020283102, '李雷');
INSERT INTO `user` VALUES (5, NULL, NULL, '2022-01-29 10:56:08', NULL, NULL, '20202831', 1, NULL, NULL, '64ad4089631661b3fd3bf5118ec644d8', '18f738b8-0596-4f5c-b433-a35b3356', NULL, 1, 2, 2020283103, '刘丽');
INSERT INTO `user` VALUES (6, NULL, NULL, '2022-01-29 10:56:08', NULL, NULL, '20202832', 2, NULL, NULL, 'd32e397836eec1573bbfdbbc6934862f', '7f9a7e5e-b3dc-4cf4-8a73-aa8eaa8d', NULL, 1, 1, 2020283211, '刘老师');
INSERT INTO `user` VALUES (7, NULL, NULL, '2022-01-29 10:56:08', NULL, NULL, '20202832', 2, NULL, NULL, '9a0188707f868e471034c5dde11b1842', '87dd8b0f-9c78-4e85-9a3f-1fff215a', NULL, 1, 2, 2020283202, '苏军');
INSERT INTO `user` VALUES (8, NULL, NULL, '2022-01-29 10:56:08', NULL, NULL, '20202832', 2, NULL, NULL, 'bd22b09d7ff4083c4efd81d446d0b6db', '6b1837a4-dfee-4362-b8c0-8117c7e5', NULL, 1, 2, 2020283203, '刘庆');
INSERT INTO `user` VALUES (9, NULL, NULL, '2022-01-29 10:56:08', NULL, NULL, '20202833', 3, NULL, NULL, 'e1c748121439ad058f3c007fce4ec34f', '544195e1-10e5-4060-a669-78136067', NULL, 1, 1, 2020283311, '王老师');
INSERT INTO `user` VALUES (10, NULL, NULL, '2022-01-29 10:56:08', NULL, NULL, '20202833', 3, NULL, NULL, '1313afbc17d85c186644ceab86c99eeb', 'a94d684d-77c4-48f6-8d74-0af1ee05', NULL, 1, 2, 2020283302, '吴语');
INSERT INTO `user` VALUES (11, NULL, NULL, '2022-01-29 10:56:08', NULL, NULL, '20202833', 3, NULL, NULL, '2dd4a626f7013c0f97ee9939fbbd8861', 'd591f354-6bfc-4415-8539-b4a90dd8', NULL, 1, 2, 2020283303, '严伟');
COMMIT;

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` bigint NOT NULL,
  `role_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user_role
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
