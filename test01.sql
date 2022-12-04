/*
 Navicat Premium Data Transfer

 Source Server         : 123.60.184.215
 Source Server Type    : MySQL
 Source Server Version : 80025 (8.0.25-1)
 Source Host           : 123.60.184.215:3306
 Source Schema         : test01

 Target Server Type    : MySQL
 Target Server Version : 80025 (8.0.25-1)
 File Encoding         : 65001

 Date: 03/12/2022 21:13:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_info
-- ----------------------------
DROP TABLE IF EXISTS `admin_info`;
CREATE TABLE `admin_info`  (
  `admin_id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '管理员编号',
  `user_id` int NULL DEFAULT NULL COMMENT '用户编号',
  `admin_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '密码',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint(1) NULL DEFAULT 0 COMMENT '0未删除 1已删除',
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '管理员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_info
-- ----------------------------
INSERT INTO `admin_info` VALUES (1, 3, '付宗菁', 'tageshi', '2022-12-01 20:51:06', '2022-12-01 20:51:40', 0);

-- ----------------------------
-- Table structure for answer_paper_detail
-- ----------------------------
DROP TABLE IF EXISTS `answer_paper_detail`;
CREATE TABLE `answer_paper_detail`  (
  `answer_paper_detail_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `answer_paper_id` int NULL DEFAULT NULL COMMENT '答卷编号',
  `question_id` int NULL DEFAULT NULL COMMENT '题目编号',
  `answer` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '考试答案',
  `score` int NULL DEFAULT 0 COMMENT '得分(默认0)',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint(1) NULL DEFAULT 0 COMMENT '0未删除 1已删除',
  PRIMARY KEY (`answer_paper_detail_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '答卷明细表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of answer_paper_detail
-- ----------------------------
INSERT INTO `answer_paper_detail` VALUES (1, 1, 1, '哈哈哈哈哈哈哈哈哈哈哈哈哈', 0, '2022-12-02 21:31:52', '2022-12-02 21:34:20', 0);
INSERT INTO `answer_paper_detail` VALUES (2, 1, 3, 'A', 0, '2022-12-02 21:31:55', '2022-12-02 21:34:27', 0);
INSERT INTO `answer_paper_detail` VALUES (3, 1, 10, '嘎嘎', 0, '2022-12-02 21:31:55', '2022-12-02 21:35:03', 0);
INSERT INTO `answer_paper_detail` VALUES (4, 1, 20, 'AB', 0, '2022-12-02 21:31:56', '2022-12-02 21:35:08', 0);
INSERT INTO `answer_paper_detail` VALUES (5, 1, 28, 'T', 0, '2022-12-02 21:31:56', '2022-12-02 21:35:10', 0);
INSERT INTO `answer_paper_detail` VALUES (6, 1, 4, '哈哈哈哈', 0, '2022-12-02 21:31:57', '2022-12-02 21:35:23', 0);
INSERT INTO `answer_paper_detail` VALUES (7, 1, 7, 'B', 0, '2022-12-02 21:31:57', '2022-12-02 21:35:25', 0);
INSERT INTO `answer_paper_detail` VALUES (8, 1, 16, '你好', 0, '2022-12-02 21:31:58', '2022-12-02 21:35:32', 0);
INSERT INTO `answer_paper_detail` VALUES (9, 1, 24, 'CD', 0, '2022-12-02 21:31:58', '2022-12-02 21:35:34', 0);
INSERT INTO `answer_paper_detail` VALUES (10, 1, 30, 'F', 0, '2022-12-02 21:31:59', '2022-12-02 21:35:36', 0);
INSERT INTO `answer_paper_detail` VALUES (11, 2, 1, '哈哈哈哈哈哈哈哈哈哈哈哈哈', 0, '2022-12-02 21:32:45', '2022-12-02 21:35:43', 0);
INSERT INTO `answer_paper_detail` VALUES (12, 2, 3, 'A', 0, '2022-12-02 21:32:46', '2022-12-02 21:35:43', 0);
INSERT INTO `answer_paper_detail` VALUES (13, 2, 10, '嘎嘎', 0, '2022-12-02 21:32:47', '2022-12-02 21:35:43', 0);
INSERT INTO `answer_paper_detail` VALUES (14, 2, 20, 'AB', 0, '2022-12-02 21:32:47', '2022-12-02 21:35:43', 0);
INSERT INTO `answer_paper_detail` VALUES (15, 2, 28, 'T', 0, '2022-12-02 21:32:48', '2022-12-02 21:35:43', 0);
INSERT INTO `answer_paper_detail` VALUES (16, 2, 4, '哈哈哈哈', 0, '2022-12-02 21:32:49', '2022-12-02 21:35:43', 0);
INSERT INTO `answer_paper_detail` VALUES (17, 2, 7, 'B', 0, '2022-12-02 21:32:50', '2022-12-02 21:35:43', 0);
INSERT INTO `answer_paper_detail` VALUES (18, 2, 16, '你好', 0, '2022-12-02 21:32:50', '2022-12-02 21:35:43', 0);
INSERT INTO `answer_paper_detail` VALUES (19, 2, 24, 'CD', 0, '2022-12-02 21:32:51', '2022-12-02 21:35:43', 0);
INSERT INTO `answer_paper_detail` VALUES (20, 2, 30, 'F', 0, '2022-12-02 21:32:51', '2022-12-02 21:35:43', 0);

-- ----------------------------
-- Table structure for answer_paper_info
-- ----------------------------
DROP TABLE IF EXISTS `answer_paper_info`;
CREATE TABLE `answer_paper_info`  (
  `answer_paper_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `teacher_id` int NULL DEFAULT NULL COMMENT '教师编号',
  `record_id` int NULL DEFAULT NULL COMMENT '考试记录编号',
  `objective_score` int NULL DEFAULT NULL COMMENT '客观题得分',
  `subjective_score` int NULL DEFAULT NULL COMMENT '主观题得分',
  `paper_total_sccore` int NULL DEFAULT NULL COMMENT '卷面总分',
  `examination_id` int NULL DEFAULT NULL COMMENT '考试编号',
  `student_id` int NULL DEFAULT NULL COMMENT '学生编号',
  `is_marked` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否已批阅',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint(1) NULL DEFAULT 0 COMMENT '0未删除 1已删除',
  `can_query` tinyint(1) NULL DEFAULT 0 COMMENT '学生是否可以查询答卷(0 不可以 1可以)',
  PRIMARY KEY (`answer_paper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '答卷表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of answer_paper_info
-- ----------------------------
INSERT INTO `answer_paper_info` VALUES (1, 3, 1, NULL, NULL, NULL, 1, 1, '0', '2022-12-01 21:41:34', '2022-12-02 21:26:24', 0, NULL);
INSERT INTO `answer_paper_info` VALUES (2, 2, 2, NULL, NULL, NULL, 1, 2, '0', '2022-12-02 21:25:51', '2022-12-02 21:26:29', 0, NULL);

-- ----------------------------
-- Table structure for chapter_info
-- ----------------------------
DROP TABLE IF EXISTS `chapter_info`;
CREATE TABLE `chapter_info`  (
  `chapter_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `subject_id` int NULL DEFAULT NULL COMMENT '学科编号',
  `chapter_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '章节名称',
  `importance_level` int NULL DEFAULT NULL COMMENT '重要程度(1-10 越大越重要)',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint(1) NULL DEFAULT 0 COMMENT '0未删除 1已删除',
  PRIMARY KEY (`chapter_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '学科章节表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chapter_info
-- ----------------------------
INSERT INTO `chapter_info` VALUES (1, 1, '进程和线程', 8, '2022-12-02 19:08:41', '2022-12-02 19:08:41', 0);
INSERT INTO `chapter_info` VALUES (2, 1, '同步与互斥', 9, '2022-12-02 19:09:04', '2022-12-02 19:09:04', 0);
INSERT INTO `chapter_info` VALUES (3, 1, '内存管理', 7, '2022-12-02 19:09:17', '2022-12-02 19:09:34', 0);

-- ----------------------------
-- Table structure for course_examination
-- ----------------------------
DROP TABLE IF EXISTS `course_examination`;
CREATE TABLE `course_examination`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `examination_id` int NULL DEFAULT NULL COMMENT '考试编号',
  `course_id` int NULL DEFAULT NULL COMMENT '课程编号',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint(1) NULL DEFAULT 0 COMMENT '0未删除 1已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '课程考试关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_examination
-- ----------------------------
INSERT INTO `course_examination` VALUES (1, 1, 1, '2022-12-01 21:16:32', '2022-12-01 21:16:32', 0);
INSERT INTO `course_examination` VALUES (2, 1, 2, '2022-12-03 20:52:40', '2022-12-03 20:52:40', 0);

-- ----------------------------
-- Table structure for course_grade_composition
-- ----------------------------
DROP TABLE IF EXISTS `course_grade_composition`;
CREATE TABLE `course_grade_composition`  (
  `composition_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `course_id` int NULL DEFAULT NULL COMMENT '课程编号',
  `composition_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '组成名称',
  `composition_proportion` int NULL DEFAULT NULL COMMENT '占比',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint(1) NULL DEFAULT 0 COMMENT '0未删除 1已删除',
  PRIMARY KEY (`composition_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '课程成绩组成' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_grade_composition
-- ----------------------------

-- ----------------------------
-- Table structure for course_info
-- ----------------------------
DROP TABLE IF EXISTS `course_info`;
CREATE TABLE `course_info`  (
  `course_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `course_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '课程名称',
  `course_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '课程封面url',
  `year` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学年',
  `semester` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学期',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint(1) NULL DEFAULT 0 COMMENT '0未删除 1已删除',
  PRIMARY KEY (`course_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '课程信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_info
-- ----------------------------
INSERT INTO `course_info` VALUES (1, '操作系统-郭宸', 'http://xxxx', '2022-2023', '第一学期', '2022-12-01 21:00:20', '2022-12-02 21:15:42', 0);
INSERT INTO `course_info` VALUES (2, '操作系统-李伟', 'http://xxxx', '2022-2023', '第一学期', '2022-12-02 20:53:25', '2022-12-02 21:15:51', 0);

-- ----------------------------
-- Table structure for examination_info
-- ----------------------------
DROP TABLE IF EXISTS `examination_info`;
CREATE TABLE `examination_info`  (
  `examination_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `examination_paper_id` int NULL DEFAULT NULL COMMENT '试卷编号',
  `examination_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '考试名称',
  `start_time` datetime NULL DEFAULT NULL COMMENT '考试开始时间',
  `end_time` datetime NULL DEFAULT NULL COMMENT '考试结束时间',
  `examination_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '考试状态(NOT_START UNDERWAY OVER)',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint(1) NULL DEFAULT 0 COMMENT '0未删除 1已删除',
  PRIMARY KEY (`examination_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '考试信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of examination_info
-- ----------------------------
INSERT INTO `examination_info` VALUES (1, 1, '操作系统期末考试', '2022-12-02 10:05:00', '2022-12-02 12:05:00', 'OVER', '2022-12-01 21:05:55', '2022-12-01 21:27:07', 0);

-- ----------------------------
-- Table structure for examination_paper
-- ----------------------------
DROP TABLE IF EXISTS `examination_paper`;
CREATE TABLE `examination_paper`  (
  `examination_paper_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '试卷标题',
  `total_score` int NULL DEFAULT NULL COMMENT '试卷总分',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint(1) NULL DEFAULT 0 COMMENT '0未删除 1已删除',
  PRIMARY KEY (`examination_paper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '试卷信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of examination_paper
-- ----------------------------
INSERT INTO `examination_paper` VALUES (1, '2021-2022学年操作系统期末考试试卷', 100, '2022-12-01 21:15:06', '2022-12-01 21:15:06', 0);

-- ----------------------------
-- Table structure for examination_paper_question
-- ----------------------------
DROP TABLE IF EXISTS `examination_paper_question`;
CREATE TABLE `examination_paper_question`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `examination_paper_id` int NULL DEFAULT NULL COMMENT '试卷编号',
  `question_id` int NULL DEFAULT NULL COMMENT '题目编号',
  `question_score` double NULL DEFAULT NULL COMMENT '小题分数',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint(1) NULL DEFAULT 0 COMMENT '0未删除 1已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '试卷题目关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of examination_paper_question
-- ----------------------------
INSERT INTO `examination_paper_question` VALUES (1, 1, 1, 30, '2022-12-02 20:42:41', '2022-12-02 20:45:49', 0);
INSERT INTO `examination_paper_question` VALUES (2, 1, 3, 5, '2022-12-02 20:42:41', '2022-12-02 20:45:49', 0);
INSERT INTO `examination_paper_question` VALUES (3, 1, 10, 5, '2022-12-02 20:42:42', '2022-12-02 20:45:49', 0);
INSERT INTO `examination_paper_question` VALUES (4, 1, 20, 5, '2022-12-02 20:42:42', '2022-12-02 20:45:49', 0);
INSERT INTO `examination_paper_question` VALUES (5, 1, 28, 5, '2022-12-02 20:42:42', '2022-12-02 20:45:49', 0);
INSERT INTO `examination_paper_question` VALUES (6, 1, 4, 30, '2022-12-02 20:42:42', '2022-12-02 20:45:49', 0);
INSERT INTO `examination_paper_question` VALUES (7, 1, 7, 5, '2022-12-02 20:42:42', '2022-12-02 20:45:49', 0);
INSERT INTO `examination_paper_question` VALUES (8, 1, 16, 5, '2022-12-02 20:42:42', '2022-12-02 20:45:49', 0);
INSERT INTO `examination_paper_question` VALUES (9, 1, 24, 5, '2022-12-02 20:42:42', '2022-12-02 20:45:49', 0);
INSERT INTO `examination_paper_question` VALUES (10, 1, 30, 5, '2022-12-02 20:42:42', '2022-12-02 20:45:49', 0);

-- ----------------------------
-- Table structure for option_info
-- ----------------------------
DROP TABLE IF EXISTS `option_info`;
CREATE TABLE `option_info`  (
  `option_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `question_id` int NULL DEFAULT NULL COMMENT '题目编号',
  `option_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '选项名称',
  `option_desc` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '选项描述',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint(1) NULL DEFAULT 0 COMMENT '0未删除 1已删除',
  PRIMARY KEY (`option_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '选项表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of option_info
-- ----------------------------
INSERT INTO `option_info` VALUES (1, 3, 'A', '进程是动态的概念', '2022-12-02 19:29:21', '2022-12-02 19:29:21', 0);
INSERT INTO `option_info` VALUES (2, 3, 'B', '进程有生命期', '2022-12-02 19:29:29', '2022-12-02 19:29:49', 0);
INSERT INTO `option_info` VALUES (3, 3, 'C', '进程是指令的集合', '2022-12-02 19:29:36', '2022-12-02 19:29:54', 0);
INSERT INTO `option_info` VALUES (4, 3, 'D', ' \r\n进程可以并发执行', '2022-12-02 19:29:42', '2022-12-02 19:29:55', 0);
INSERT INTO `option_info` VALUES (5, 6, 'A', '进程被调度程序选中', '2022-12-02 19:30:04', '2022-12-02 19:30:47', 0);
INSERT INTO `option_info` VALUES (6, 6, 'B', '时间片到', '2022-12-02 19:30:08', '2022-12-02 19:30:52', 0);
INSERT INTO `option_info` VALUES (7, 6, 'C', '等待某一事件', '2022-12-02 19:30:10', '2022-12-02 19:30:57', 0);
INSERT INTO `option_info` VALUES (8, 6, 'D', '等待的事件发生', '2022-12-02 19:30:12', '2022-12-02 19:31:02', 0);
INSERT INTO `option_info` VALUES (9, 7, 'A', '没有进程进入临界区', '2022-12-02 19:31:33', '2022-12-02 19:32:29', 0);
INSERT INTO `option_info` VALUES (10, 7, 'B', '有一个进程进入临界区但没进程处于阻塞状态', '2022-12-02 19:31:42', '2022-12-02 19:32:35', 0);
INSERT INTO `option_info` VALUES (11, 7, 'C', '一个进程进入临界区而另一个进程正处于等待进入临界区状态', '2022-12-02 19:31:47', '2022-12-02 19:32:40', 0);
INSERT INTO `option_info` VALUES (12, 7, 'D', '有两个进程进入临界区', '2022-12-02 19:31:52', '2022-12-02 19:32:41', 0);
INSERT INTO `option_info` VALUES (13, 8, 'A', '5', '2022-12-02 19:33:02', '2022-12-02 19:33:25', 0);
INSERT INTO `option_info` VALUES (14, 8, 'B', '3', '2022-12-02 19:33:07', '2022-12-02 19:33:27', 0);
INSERT INTO `option_info` VALUES (15, 8, 'C', '1', '2022-12-02 19:33:12', '2022-12-02 19:33:29', 0);
INSERT INTO `option_info` VALUES (16, 8, 'D', '0', '2022-12-02 19:33:15', '2022-12-02 19:33:31', 0);
INSERT INTO `option_info` VALUES (17, 12, 'A', '编译过程', '2022-12-02 19:38:10', '2022-12-02 19:38:33', 0);
INSERT INTO `option_info` VALUES (18, 12, 'B', '装入过程', '2022-12-02 19:38:15', '2022-12-02 19:38:39', 0);
INSERT INTO `option_info` VALUES (19, 12, 'C', '链接过程', '2022-12-02 19:38:19', '2022-12-02 19:38:44', 0);
INSERT INTO `option_info` VALUES (20, 12, 'D', '执行过程', '2022-12-02 19:38:23', '2022-12-02 19:38:45', 0);
INSERT INTO `option_info` VALUES (21, 15, 'A', '8192', '2022-12-02 19:40:10', '2022-12-02 19:40:35', 0);
INSERT INTO `option_info` VALUES (22, 15, 'B', '4096', '2022-12-02 19:40:16', '2022-12-02 19:40:39', 0);
INSERT INTO `option_info` VALUES (23, 15, 'C', '2048', '2022-12-02 19:40:22', '2022-12-02 19:40:43', 0);
INSERT INTO `option_info` VALUES (24, 15, 'D', '1024', '2022-12-02 19:40:27', '2022-12-02 19:40:46', 0);
INSERT INTO `option_info` VALUES (25, 20, 'A', '运行态-就绪态', '2022-12-02 19:50:00', '2022-12-02 19:50:30', 0);
INSERT INTO `option_info` VALUES (26, 20, 'B', '运行态-阻塞态', '2022-12-02 19:50:05', '2022-12-02 19:51:31', 0);
INSERT INTO `option_info` VALUES (27, 20, 'C', '阻塞态-运行态', '2022-12-02 19:50:15', '2022-12-02 19:51:33', 0);
INSERT INTO `option_info` VALUES (28, 20, 'D', '就绪态-阻塞态', '2022-12-02 19:50:19', '2022-12-02 19:51:37', 0);
INSERT INTO `option_info` VALUES (29, 22, 'A', '一个线程只可以属于一个进程，但一个进程能包含多个线程。', '2022-12-02 19:56:11', '2022-12-02 19:58:31', 0);
INSERT INTO `option_info` VALUES (30, 22, 'B', '进程是操作系统分配资源的基本单位,而线程是操作系统调度的基本单位。', '2022-12-02 19:56:16', '2022-12-02 19:59:05', 0);
INSERT INTO `option_info` VALUES (31, 22, 'C', '线程能独立于进程存在', '2022-12-02 19:56:21', '2022-12-02 20:00:34', 0);
INSERT INTO `option_info` VALUES (32, 22, 'D', '某进程的一个线程处于阻塞状态，则该进程必然处于阻塞状态。', '2022-12-02 19:56:27', '2022-12-02 20:04:57', 0);
INSERT INTO `option_info` VALUES (33, 25, 'A', '进程执行的相对速度是由进程自己来控制的', '2022-12-02 20:09:10', '2022-12-02 20:09:55', 0);
INSERT INTO `option_info` VALUES (34, 25, 'B', '进程执行的相对速度与进程调度策略无关', '2022-12-02 20:09:15', '2022-12-02 20:10:01', 0);
INSERT INTO `option_info` VALUES (35, 25, 'C', 'P操作和Ⅴ操作都是原语操作', '2022-12-02 20:09:20', '2022-12-02 20:10:12', 0);
INSERT INTO `option_info` VALUES (36, 25, 'D', '利用P、V操作可以防止死锁', '2022-12-02 20:09:24', '2022-12-02 20:10:21', 0);
INSERT INTO `option_info` VALUES (37, 24, 'A', '没有运行进程，有2 个就绪进程，n-2 个进程处于等待状态', '2022-12-02 20:13:24', '2022-12-02 20:14:19', 0);
INSERT INTO `option_info` VALUES (38, 24, 'B', '有 1 个运行进程，没有就绪进程，n-1 个进程处于等待状', '2022-12-02 20:13:29', '2022-12-02 20:14:24', 0);
INSERT INTO `option_info` VALUES (39, 24, 'C', '有1个运行进程，有1 个就绪进程， n-2 个进程处于等待状态', '2022-12-02 20:13:31', '2022-12-02 20:14:43', 0);
INSERT INTO `option_info` VALUES (40, 24, 'D', '有1 个运行进程，有n-1 个就绪进程，没有进程处于等待状态', '2022-12-02 20:13:35', '2022-12-02 20:14:52', 0);
INSERT INTO `option_info` VALUES (41, 26, 'A', '单用户连续管理', '2022-12-02 20:19:05', '2022-12-02 20:20:01', 0);
INSERT INTO `option_info` VALUES (42, 26, 'B', '页式存储管理', '2022-12-02 20:19:12', '2022-12-02 20:20:08', 0);
INSERT INTO `option_info` VALUES (43, 26, 'C', '段式存储管理', '2022-12-02 20:19:26', '2022-12-02 20:20:15', 0);
INSERT INTO `option_info` VALUES (44, 26, 'D', '可变分区存储管理', '2022-12-02 20:19:29', '2022-12-02 20:20:16', 0);
INSERT INTO `option_info` VALUES (45, 27, 'A', '用户所感知的', '2022-12-02 20:23:33', '2022-12-02 20:24:08', 0);
INSERT INTO `option_info` VALUES (46, 27, 'B', '操作系统所感知的', '2022-12-02 20:23:45', '2022-12-02 20:24:12', 0);
INSERT INTO `option_info` VALUES (47, 27, 'C', '编译系统所感知的', '2022-12-02 20:23:51', '2022-12-02 20:24:16', 0);
INSERT INTO `option_info` VALUES (48, 27, 'D', '连接装配程序所感知的', '2022-12-02 20:23:55', '2022-12-02 20:29:30', 0);
INSERT INTO `option_info` VALUES (49, 28, 'T', '对', '2022-12-02 20:26:25', '2022-12-02 20:26:28', 0);
INSERT INTO `option_info` VALUES (50, 28, 'F', '错', '2022-12-02 20:29:39', '2022-12-02 20:29:39', 0);
INSERT INTO `option_info` VALUES (51, 29, 'T', '对', '2022-12-02 20:29:56', '2022-12-02 20:30:22', 0);
INSERT INTO `option_info` VALUES (52, 29, 'F', '错', '2022-12-02 20:30:25', '2022-12-02 20:30:45', 0);
INSERT INTO `option_info` VALUES (53, 30, 'T', '对', '2022-12-02 20:39:07', '2022-12-02 20:39:22', 0);
INSERT INTO `option_info` VALUES (54, 30, 'F', '错', '2022-12-02 20:39:09', '2022-12-02 20:39:22', 0);
INSERT INTO `option_info` VALUES (55, 31, 'T', '对', '2022-12-02 20:39:24', '2022-12-02 20:40:11', 0);
INSERT INTO `option_info` VALUES (56, 31, 'F', '错', '2022-12-02 20:39:26', '2022-12-02 20:40:11', 0);
INSERT INTO `option_info` VALUES (57, 32, 'T', '对', '2022-12-02 20:39:27', '2022-12-02 20:40:11', 0);
INSERT INTO `option_info` VALUES (58, 32, 'F', '错', '2022-12-02 20:39:28', '2022-12-02 20:40:12', 0);
INSERT INTO `option_info` VALUES (59, 33, 'T', '对', '2022-12-02 20:39:29', '2022-12-02 20:40:12', 0);
INSERT INTO `option_info` VALUES (60, 33, 'F', '错', '2022-12-02 20:39:33', '2022-12-02 20:40:12', 0);

-- ----------------------------
-- Table structure for question_img
-- ----------------------------
DROP TABLE IF EXISTS `question_img`;
CREATE TABLE `question_img`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `question_id` int NULL DEFAULT NULL COMMENT '题目编号',
  `img_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '题目图片url',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint(1) NULL DEFAULT 0 COMMENT '0未删除 1已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '题目图片表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of question_img
-- ----------------------------
INSERT INTO `question_img` VALUES (1, 14, 'xxx', '2022-12-02 19:40:02', '2022-12-02 19:40:02', 0);
INSERT INTO `question_img` VALUES (2, 15, 'XXX', '2022-12-02 19:42:15', '2022-12-02 19:42:15', 0);
INSERT INTO `question_img` VALUES (3, 21, 'XXX', '2022-12-02 19:50:22', '2022-12-02 19:50:22', 0);
INSERT INTO `question_img` VALUES (4, 23, 'XXX', '2022-12-02 19:50:22', '2022-12-02 19:54:23', 0);

-- ----------------------------
-- Table structure for question_info
-- ----------------------------
DROP TABLE IF EXISTS `question_info`;
CREATE TABLE `question_info`  (
  `question_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `subject_id` int NULL DEFAULT NULL COMMENT '学科编号',
  `chapter_id` int NULL DEFAULT NULL COMMENT '章节编号',
  `subject_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学科名称(冗余)',
  `chapter_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '章节名称(冗余)',
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '题目类型(SINGLE MULTI JUDGE COMPLETION COMPLEX)',
  `description` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '题干',
  `difficulty_level` int NULL DEFAULT NULL COMMENT '题目难度等级（1-10 越大越难)',
  `question_ans` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '题目答案',
  `sub_or_obj` tinyint(1) NULL DEFAULT NULL COMMENT '主客观类型(0sub主观题 1obj客观题)',
  `has_sub_question` tinyint(1) NULL DEFAULT NULL COMMENT '是否有小题(0没有小题 1有小题)',
  `examination_id` int NULL DEFAULT NULL COMMENT '所属考试编号',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint(1) NULL DEFAULT 0 COMMENT '0未删除 1已删除',
  PRIMARY KEY (`question_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '题目信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of question_info
-- ----------------------------
INSERT INTO `question_info` VALUES (1, 1, 1, '操作系统原理', '进程和线程', 'COMPLEX', '列出线程间模式切换可能比进程间模式切换开销更小的原因。', 3, '线程的状态信息更少。', 0, 0, NULL, '2022-12-02 19:17:40', '2022-12-02 19:17:40', 0);
INSERT INTO `question_info` VALUES (2, 1, 1, '操作系统原理', '进程和线程', 'COMPLEX', '给出在单用户多处理系统中使用线程的四个一般示例。', 3, '前台后台工作、异步处理、并行处理数据加快速度、模块化程序结构', 0, 0, NULL, '2022-12-02 19:19:07', '2022-12-02 19:19:07', 0);
INSERT INTO `question_info` VALUES (3, 1, 1, '操作系统原理', '进程和线程', 'SINGLE', '下面对进程的描述中,错误的是 [ ]', 3, 'C', 1, 0, NULL, '2022-12-02 19:22:41', '2022-12-02 19:24:06', 0);
INSERT INTO `question_info` VALUES (4, 1, 2, '操作系统原理', '同步与互斥', 'COMPLEX', '进程同步与互斥的区别是什么？', 3, '进程的竞争需要同时访问相同资源；进程协助需要共享某一资源的访问权，或相互通信。', 0, 0, NULL, '2022-12-02 19:22:42', '2022-12-02 19:24:45', 0);
INSERT INTO `question_info` VALUES (5, 1, 2, '操作系统原理', '同步与互斥', 'COMPLEX', '如何防止循环等待条件？', 2, '可以通过定义资源的线性顺序预防。', 0, 0, NULL, '2022-12-02 19:24:30', '2022-12-02 19:24:45', 0);
INSERT INTO `question_info` VALUES (6, 1, 1, '操作系统原理', '进程和线程', 'SINGLE', '进程从执行状态转变为就绪状态的原因是 [ ]', 3, 'B', 1, 0, NULL, '2022-12-02 19:24:31', '2022-12-02 19:25:05', 0);
INSERT INTO `question_info` VALUES (7, 1, 2, '操作系统原理', '同步与互斥', 'SINGLE', '对两个并发进程，其互斥信号量为mutex；若mutex=0，则表明 [ ]', 3, 'B', 1, 0, NULL, '2022-12-02 19:26:36', '2022-12-02 19:42:04', 0);
INSERT INTO `question_info` VALUES (8, 1, 2, '操作系统原理', '同步与互斥', 'SINGLE', '设有5个进程共享一个资源段，如果允许有3个进程同时进入资源段，则所采用的信号量的初值应是 [ ]', 4, 'B', 1, 0, NULL, '2022-12-02 19:28:01', '2022-12-02 19:28:01', 0);
INSERT INTO `question_info` VALUES (9, 1, 3, '操作系统原理', '内存管理', 'COMPLEX', '某计算机主存按字节编址，逻辑地址和物理地址都是32位，页表项大小为4B，请回答下列问题', 7, NULL, 0, 1, NULL, '2022-12-02 19:28:28', '2022-12-02 19:28:28', 0);
INSERT INTO `question_info` VALUES (10, 1, 1, '操作系统原理', '进程和线程', 'COMPLETION', '在多道程序环境下，操作系统分配资源以＿＿为基本单位。', 2, '进程', 1, 0, NULL, '2022-12-02 19:33:15', '2022-12-02 19:39:43', 0);
INSERT INTO `question_info` VALUES (11, 1, 1, '操作系统原理', '进程和线程', 'COMPLETION', '在多道程序环境下，操作系统调度执行以＿＿为基本单位。 ', 2, '线程', 1, 0, NULL, '2022-12-02 19:35:25', '2022-12-02 19:35:25', 0);
INSERT INTO `question_info` VALUES (12, 1, 3, '操作系统原理', '内存管理', 'SINGLE', '动态重定位是在作业的（）中进行的。', 2, 'D', 1, 0, NULL, '2022-12-02 19:37:07', '2022-12-02 19:37:54', 0);
INSERT INTO `question_info` VALUES (13, 1, 3, '操作系统原理', '内存管理', 'COMPLEX', '在页式存储管理中，假设作业的地址为16位，页长为4KB，作业的第0,1,2逻辑页分别放在内存的第5,10,11物理块中，试计算作业中逻辑地址2F6AH，0E3CH，526CH（十六进制数）相对应的内存物理地址，说明转换过程、写出转换结果。', 7, '由页长为4KB,4KB等于2的12次方，页内偏移量在操作系统上的表示每一页的大小，则页面大小为12位，即页偏移12位。由作业的地址为16位可知：页号=逻辑地址-页内地址=16-12=4位，根据页号与块号的映射，找到对应的地址。把相应的块号转交给页号即可，页内偏移不变。', 0, 0, NULL, '2022-12-02 19:37:17', '2022-12-02 19:41:00', 0);
INSERT INTO `question_info` VALUES (14, 1, 3, '操作系统原理', '内存管理', 'COMPLEX', '设某计算机的逻辑地址空间和物理地址空间均为64KB，按字节编址。操作系统最多为一个进程分配4页物理内存，页的大小为1KB，并采用固定分配局部置换策略。在时刻260前，某进程内存分配与访问情况如下表所示。当该进程执行到时刻260时候，要访问逻辑地址17CAH，请回答下列问题：', 7, NULL, 0, 1, NULL, '2022-12-02 19:39:29', '2022-12-02 19:39:29', 0);
INSERT INTO `question_info` VALUES (15, 1, 3, '操作系统原理', '内存管理', 'SINGLE', '在一页式存储管理系统中，页表内容见下表。若页的大小为4KB，则地址转换机构将逻辑地址0转换成物理地址为（块号从0开始计算）（）', 5, 'A', 1, 0, NULL, '2022-12-02 19:39:38', '2022-12-02 19:39:38', 0);
INSERT INTO `question_info` VALUES (16, 1, 2, '操作系统原理', '同步与互斥', 'COMPLETION', '若P、V操作的信号量S初值为2，当前值为-1，则表示有＿＿个等待进程。', 3, '1', 1, 0, NULL, '2022-12-02 19:39:43', '2022-12-02 19:41:00', 0);
INSERT INTO `question_info` VALUES (17, 1, 2, '操作系统原理', '同步与互斥', 'COMPLETION', '用P、V操作管理互斥区时，信号量的初值应定义为＿＿。', 1, '1', 1, 0, NULL, '2022-12-02 19:39:43', '2022-12-02 19:41:00', 0);
INSERT INTO `question_info` VALUES (18, 1, 3, '操作系统原理', '内存管理', 'COMPLETION', '一段时间内只允许一个进程访问的资源，称为临界资源，程序代码中访问这类的代码称为＿＿。', 2, '临界区', 1, 0, NULL, '2022-12-02 19:41:00', '2022-12-02 19:48:12', 0);
INSERT INTO `question_info` VALUES (19, 1, 3, '操作系统原理', '内存管理', 'COMPLETION', '段页式内存管理中，若没有设置快表，一次有效的内存数据存取，需要访问3次内存，第2次访问的是＿＿。', 5, '段的页表', 1, 0, NULL, '2022-12-02 19:41:00', '2022-12-02 19:48:12', 0);
INSERT INTO `question_info` VALUES (20, 1, 1, '操作系统原理', '进程和线程', 'MULTI', '下列进程状态的转换中，( ）是不可能的。', 2, 'CD', 1, 0, NULL, '2022-12-02 19:46:12', '2022-12-02 19:49:17', 0);
INSERT INTO `question_info` VALUES (21, 1, 1, '操作系统原理', '进程和线程', 'COMPLEX', '操作系统对进程管理的程序叫进程调度。进程调度就是按照某种算法从就绪队列中选取进程，让该进程获得cpu。多个进程竞争一个CPU，获得CPU的次序是由调度算法决定的。考虑5个进程见下表，1的优先级最高，给出在采用下述几种调度算法下的调度次序', 3, NULL, 0, 1, NULL, '2022-12-02 19:49:57', '2022-12-02 19:49:57', 0);
INSERT INTO `question_info` VALUES (22, 1, 1, '操作系统原理', '进程和线程', 'MULTI', '进程和线程的区别有( )', 3, 'AB', 1, 0, NULL, '2022-12-02 19:52:12', '2022-12-02 19:58:01', 0);
INSERT INTO `question_info` VALUES (23, 1, 2, '操作系统原理', '同步与互斥', 'COMPLEX', '一个理发店有N张沙发接待顾客，有P位理发师（P<N）。顾客到来时，如果还有空沙发，新到的顾客就坐在沙发；如果没有空沙发，就离开。空闲的理发师为顾客理发；如果理发师都在理发，顾客则需等待。试用信号量及P、V操作实现理发师给顾客理发的问题。', 8, NULL, 0, 1, NULL, '2022-12-02 19:53:48', '2022-12-02 19:54:01', 0);
INSERT INTO `question_info` VALUES (24, 1, 2, '操作系统原理', '同步与互斥', 'MULTI', 'n（ n>2）进程，且当前不在执行进程调度程序，试考虑下述\r\n4 种情况哪种不能发生：', 6, 'A', 1, 0, NULL, '2022-12-02 20:07:18', '2022-12-02 20:13:15', 0);
INSERT INTO `question_info` VALUES (25, 1, 2, '操作系统原理', '同步与互斥', 'MULTI', '有关并发进程的下列描述中，（）是不正确的', 3, 'ABD', 1, 0, NULL, '2022-12-02 20:07:22', '2022-12-02 20:08:37', 0);
INSERT INTO `question_info` VALUES (26, 1, 3, '操作系统原理', '内存管理', 'MULTI', '在存储管理中允许作业可不占有连续主存空间的是（）。', 3, 'BC', 1, 0, NULL, '2022-12-02 20:15:31', '2022-12-02 20:18:46', 0);
INSERT INTO `question_info` VALUES (27, 1, 3, '操作系统原理', '内存管理', 'MULTI', '分页系统中的页面是为（）', 3, 'B', 1, 0, NULL, '2022-12-02 20:17:27', '2022-12-02 20:22:14', 0);
INSERT INTO `question_info` VALUES (28, 1, 1, '操作系统原理', '进程和线程', 'JUDGE', '一个阻塞进程被唤醒意味着该进程重新占有了CPU', 2, 'F', 1, 0, NULL, '2022-12-02 20:20:34', '2022-12-02 20:45:27', 0);
INSERT INTO `question_info` VALUES (29, 1, 1, '操作系统原理', '进程和线程', 'JUDGE', '在5状态图中，任意一个进程在它的生命周期中必须要经过不同的5个状态后才能结束。', 3, 'F', 1, 0, NULL, '2022-12-02 20:27:21', '2022-12-02 20:45:29', 0);
INSERT INTO `question_info` VALUES (30, 1, 2, '操作系统原理', '同步与互斥', 'JUDGE', '若P、V操作的信号量S初值为2，当前值为-1，则表示有3个等待进程。', 3, 'F', 1, 0, NULL, '2022-12-02 20:37:28', '2022-12-02 20:45:31', 0);
INSERT INTO `question_info` VALUES (31, 1, 2, '操作系统原理', '同步与互斥', 'JUDGE', '用P、V操作管理互斥区时，信号量的初值应定义为1。', 1, 'T', 1, 0, NULL, '2022-12-02 20:40:42', '2022-12-02 20:45:36', 0);
INSERT INTO `question_info` VALUES (32, 1, 3, '操作系统原理', '内存管理', 'JUDGE', '在存储管理中，采用覆盖与交换技术的目的是提高CPU效率', 4, 'F', 1, 0, NULL, '2022-12-02 20:42:39', '2022-12-02 20:45:41', 0);
INSERT INTO `question_info` VALUES (33, 1, 3, '操作系统原理', '内存管理', 'JUDGE', '采用分段存储管理不会产生内部碎片', 2, 'T', 1, 0, NULL, '2022-12-02 20:45:48', '2022-12-02 20:47:00', 0);

-- ----------------------------
-- Table structure for role_info
-- ----------------------------
DROP TABLE IF EXISTS `role_info`;
CREATE TABLE `role_info`  (
  `role_id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '角色编号',
  `role_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色名称',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint(1) NULL DEFAULT 0 COMMENT '0未删除 1已删除',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_info
-- ----------------------------
INSERT INTO `role_info` VALUES (1, 'student', '2022-12-01 20:21:32', '2022-12-01 20:25:48', 0);
INSERT INTO `role_info` VALUES (2, 'teacher', '2022-12-01 20:21:43', '2022-12-01 20:26:21', 0);
INSERT INTO `role_info` VALUES (3, 'neteacher', '2022-12-01 20:22:15', '2022-12-01 20:28:00', 0);
INSERT INTO `role_info` VALUES (4, 'admin', '2022-12-01 20:25:08', '2022-12-01 20:25:08', 0);

-- ----------------------------
-- Table structure for school_info
-- ----------------------------
DROP TABLE IF EXISTS `school_info`;
CREATE TABLE `school_info`  (
  `school_id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '学校编号',
  `school_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学校名称',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint(1) NULL DEFAULT 0 COMMENT '0未删除 1已删除',
  PRIMARY KEY (`school_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '学校表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of school_info
-- ----------------------------
INSERT INTO `school_info` VALUES (1, '浙江工业大学', '2022-12-01 20:07:39', '2022-12-01 20:07:39', 0);

-- ----------------------------
-- Table structure for semester_info
-- ----------------------------
DROP TABLE IF EXISTS `semester_info`;
CREATE TABLE `semester_info`  (
  `semester_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `year_id` int NULL DEFAULT NULL COMMENT '学年编号',
  `semester_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学期名称',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint(1) NULL DEFAULT 0 COMMENT '0未删除 1已删除',
  PRIMARY KEY (`semester_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '学期信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of semester_info
-- ----------------------------
INSERT INTO `semester_info` VALUES (1, 1, '第一学期', '2022-12-01 21:04:08', '2022-12-01 21:04:08', 0);
INSERT INTO `semester_info` VALUES (2, 1, '第二学期', '2022-12-01 21:04:08', '2022-12-01 21:04:08', 0);
INSERT INTO `semester_info` VALUES (3, 1, '第三学期', '2022-12-01 21:04:08', '2022-12-01 21:04:08', 0);
INSERT INTO `semester_info` VALUES (4, 2, '第一学期', '2022-12-01 21:04:08', '2022-12-01 21:04:08', 0);
INSERT INTO `semester_info` VALUES (5, 2, '第二学期', '2022-12-01 21:04:09', '2022-12-01 21:04:09', 0);
INSERT INTO `semester_info` VALUES (6, 2, '第三学期', '2022-12-01 21:04:09', '2022-12-01 21:04:09', 0);

-- ----------------------------
-- Table structure for student_course
-- ----------------------------
DROP TABLE IF EXISTS `student_course`;
CREATE TABLE `student_course`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '学生课程关联表主键',
  `student_id` int NULL DEFAULT NULL COMMENT '学生编号',
  `course_id` int NULL DEFAULT NULL COMMENT '课程编号',
  `course_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '课程名称(冗余)',
  `course_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '课程封面url(冗余)',
  `final_score` int NULL DEFAULT NULL COMMENT '课程分数(计算得出)',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint(1) NULL DEFAULT 0 COMMENT '0未删除 1已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '学生课程关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_course
-- ----------------------------
INSERT INTO `student_course` VALUES (1, 1, 1, '操作系统', 'http://xxxx', NULL, '2022-12-01 21:03:02', '2022-12-01 21:03:24', 0);
INSERT INTO `student_course` VALUES (2, 2, 1, '操作系统', 'http://xxxx', NULL, '2022-12-01 21:37:07', '2022-12-01 21:37:15', 0);

-- ----------------------------
-- Table structure for student_exam_record
-- ----------------------------
DROP TABLE IF EXISTS `student_exam_record`;
CREATE TABLE `student_exam_record`  (
  `record_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `examination_id` int NULL DEFAULT NULL COMMENT '考试编号',
  `student_id` int NULL DEFAULT NULL COMMENT '学生编号',
  `submit_time` datetime NULL DEFAULT NULL COMMENT '提交时间',
  `is_cheat` tinyint(1) NULL DEFAULT 0 COMMENT '是否作弊(0未作弊 1作弊)',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint(1) NULL DEFAULT 0 COMMENT '0未删除 1已删除',
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '考试信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_exam_record
-- ----------------------------
INSERT INTO `student_exam_record` VALUES (1, 1, 1, '2022-12-01 21:47:47', 0, '2022-12-01 21:18:03', '2022-12-01 21:18:03', 0);
INSERT INTO `student_exam_record` VALUES (2, 1, 2, '2022-12-01 21:38:23', 0, '2022-12-01 21:38:22', '2022-12-01 21:38:26', 0);

-- ----------------------------
-- Table structure for student_info
-- ----------------------------
DROP TABLE IF EXISTS `student_info`;
CREATE TABLE `student_info`  (
  `student_id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '学生编号',
  `user_id` int NULL DEFAULT NULL COMMENT '用户编号',
  `school_id` int NULL DEFAULT NULL COMMENT '学校编号',
  `student_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学号',
  `school_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学校名称(冗余)',
  `student_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名(用户名)',
  `phone_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电话号码(登录名)',
  `head_img` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像url',
  `face_img` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '人脸url',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint(1) NULL DEFAULT 0 COMMENT '0未删除 1已删除',
  PRIMARY KEY (`student_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '学生表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_info
-- ----------------------------
INSERT INTO `student_info` VALUES (1, 1, 1, '202003150826', '浙江工业大学', '张三', '17682405206', 'http://xxxxx', 'http://xxxxx', '2022-12-01 20:54:40', '2022-12-01 20:55:05', 0);
INSERT INTO `student_info` VALUES (2, 6, 1, '202003150827', '浙江工业大学', '李四', '19999999999', 'http://xxxxx', 'http://xxxxx', '2022-12-01 21:35:48', '2022-12-01 21:36:03', 0);

-- ----------------------------
-- Table structure for student_score_detail
-- ----------------------------
DROP TABLE IF EXISTS `student_score_detail`;
CREATE TABLE `student_score_detail`  (
  `detail_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_id` int NULL DEFAULT NULL COMMENT '主键编号',
  `composition_id` int NULL DEFAULT NULL COMMENT '学生编号',
  `composition_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '组成名称(冗余)',
  `composition_proportion` int NULL DEFAULT NULL COMMENT '占比(冗余)',
  `detail_score` int NULL DEFAULT NULL COMMENT '组成编号',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint(1) NULL DEFAULT 0 COMMENT '0未删除 1已删除',
  PRIMARY KEY (`detail_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '学生成绩明细表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_score_detail
-- ----------------------------

-- ----------------------------
-- Table structure for sub_question_ans_img
-- ----------------------------
DROP TABLE IF EXISTS `sub_question_ans_img`;
CREATE TABLE `sub_question_ans_img`  (
  `img_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `answer_paper_detail_id` int NULL DEFAULT NULL COMMENT '答卷明细编号',
  `img_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图片url',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint(1) NULL DEFAULT 0 COMMENT '0未删除 1已删除',
  PRIMARY KEY (`img_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '小题答案图片表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sub_question_ans_img
-- ----------------------------

-- ----------------------------
-- Table structure for sub_question_info
-- ----------------------------
DROP TABLE IF EXISTS `sub_question_info`;
CREATE TABLE `sub_question_info`  (
  `sub_question_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `question_id` int NULL DEFAULT NULL COMMENT '题目编号',
  `sub_question_desc` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '小题题干',
  `sub_question_ans` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '小题答案',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint(1) NULL DEFAULT 0 COMMENT '0未删除 1已删除',
  PRIMARY KEY (`sub_question_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '小题信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sub_question_info
-- ----------------------------
INSERT INTO `sub_question_info` VALUES (1, 9, '页的大小是多少字节？', '页的大小=页内偏移量的大小=2^12B=4KB。', '2022-12-02 19:29:58', '2022-12-02 19:29:58', 0);
INSERT INTO `sub_question_info` VALUES (2, 9, '页表最大占用多少字节？', '页表项个数=2^20，页表占用字节=(2^20)*4B=4MB。', '2022-12-02 19:30:26', '2022-12-02 19:30:26', 0);
INSERT INTO `sub_question_info` VALUES (3, 14, '该逻辑地址对应的页号是多少？', '17CAH = 0001（1） 0111（7） 1100（C） 1010（A），页面大小为1KB=2^10，则页内偏移量是10位，则前6位为页号，0001 01=5，对应页号为5。', '2022-12-02 19:41:44', '2022-12-02 19:41:44', 0);
INSERT INTO `sub_question_info` VALUES (4, 14, '采用FIFO，计算该逻辑地址对应的物理地址？', '按照FIFO，先替换的页框号是7（最先装入），逻辑地址是0001 11|11 1100 1010，|前是页框号，页内偏移量不变，转成16进制为1FCAH。', '2022-12-02 19:41:44', '2022-12-02 19:41:44', 0);
INSERT INTO `sub_question_info` VALUES (5, 14, '采用LRU，计算该逻辑地址对应的物理地址？', 'LRU是最近最长时间未被访问，访问时间最早的是230，即页框号为4，0001 00|11 1100 1010，|前是页框号，页内偏移量不变，转成16进制为13CAH', '2022-12-02 19:41:44', '2022-12-02 19:41:44', 0);
INSERT INTO `sub_question_info` VALUES (6, 21, '非剥夺优先级', '1->2->4->5->3', '2022-12-02 19:51:39', '2022-12-02 19:51:39', 0);
INSERT INTO `sub_question_info` VALUES (7, 21, '剥夺优先级', '1->2->4->5->3->2->1', '2022-12-02 19:51:39', '2022-12-02 19:51:39', 0);
INSERT INTO `sub_question_info` VALUES (8, 21, '时间片轮转(时间片为2)', '1->1->2->3->4->2->5->3->4->2->3->2', '2022-12-02 19:51:39', '2022-12-02 19:51:39', 0);
INSERT INTO `sub_question_info` VALUES (9, 23, '请使用信号量原语进行定义', 'int empty_sofa=N：表示空沙发数量\nint free_barber=P：表示空闲理发师数量\n信号量full_sofa=0：表示有顾客可以给理发师理发\n私有信号量sofa_num=N：表示有N张沙发为空\n私有信号量barber_num=P：表示有P个理发师空闲', '2022-12-02 19:55:41', '2022-12-02 19:55:41', 0);
INSERT INTO `sub_question_info` VALUES (10, 23, '请使用伪代码描述该PV操作', '       process_customer()\n       {\n          while(true)\n         {\n             if(empty_sofa>0)\n             {\n                P(sofa_num);\n            	empty_sofa--；//有空沙发，顾客坐在沙发上；\n          	    V(full_sofa);\n             }\n          	 else\n          	        //没有空沙发，顾客离开；         \n          }       \n       }\n       \n       process_barber()\n       {\n            while(true)\n            {\n                  if(free_barber>0)\n                  {\n                      P(barber_num);\n                      P(full_sofa);\n                      free_barber--;//理发师理发\n                      V(barber_num);\n                      V(sofa_num);\n                  }\n                  else\n                            //没有理发师空闲，顾客等待\n            }           \n       }\n', '2022-12-02 19:55:41', '2022-12-02 19:55:41', 0);

-- ----------------------------
-- Table structure for subject_info
-- ----------------------------
DROP TABLE IF EXISTS `subject_info`;
CREATE TABLE `subject_info`  (
  `subject_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `subject_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '学科名称',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint(1) NULL DEFAULT 0 COMMENT '0未删除 1已删除',
  PRIMARY KEY (`subject_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '学科信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of subject_info
-- ----------------------------
INSERT INTO `subject_info` VALUES (1, '操作系统原理', '2022-12-02 19:07:16', '2022-12-02 19:07:16', 0);

-- ----------------------------
-- Table structure for teacher_course
-- ----------------------------
DROP TABLE IF EXISTS `teacher_course`;
CREATE TABLE `teacher_course`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `teacher_id` int NULL DEFAULT NULL COMMENT '教师编号',
  `course_id` int NULL DEFAULT NULL COMMENT '课程编号',
  `course_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '课程名称(冗余)',
  `course_img` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '课程封面(冗余)',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint(1) NULL DEFAULT 0 COMMENT '0未删除 1已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '教师课程关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher_course
-- ----------------------------
INSERT INTO `teacher_course` VALUES (1, 2, 1, '操作系统-郭宸', 'http://xxxx', '2022-12-01 21:31:26', '2022-12-02 20:55:16', 0);
INSERT INTO `teacher_course` VALUES (2, 3, 2, '操作系统-李伟', 'http://xxxx', '2022-12-01 21:35:33', '2022-12-02 20:54:21', 0);

-- ----------------------------
-- Table structure for teacher_info
-- ----------------------------
DROP TABLE IF EXISTS `teacher_info`;
CREATE TABLE `teacher_info`  (
  `teacher_id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '教师编号',
  `school_id` int NULL DEFAULT NULL COMMENT '学校编号',
  `user_id` int NULL DEFAULT NULL COMMENT '用户编号',
  `teacher_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工号',
  `school_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学校名称(冗余)',
  `teacher_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名(用户名)',
  `phone_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电话号码(登录名)',
  `head_img` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像url',
  `qualification_img` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '教师资格证url',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint(1) NULL DEFAULT 0 COMMENT '0未删除 1已删除',
  PRIMARY KEY (`teacher_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '教师表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher_info
-- ----------------------------
INSERT INTO `teacher_info` VALUES (1, 1, 2, 'T01', '浙江工业大学', '李佳怡', '17816139690', 'http://xxxx', 'http://xxxx', '2022-12-01 20:53:56', '2022-12-01 21:01:28', 0);
INSERT INTO `teacher_info` VALUES (2, 1, 4, 'T02', '浙江工业大学', '郭宸', '19157682689', 'http://xxxx', 'http://xxxx', '2022-12-01 20:54:15', '2022-12-01 20:54:15', 0);
INSERT INTO `teacher_info` VALUES (3, 1, 5, 'T03', '浙江工业大学', '李伟', '18866668888', 'http://xxxx', 'http://xxxx', '2022-12-01 21:34:09', '2022-12-01 21:34:24', 0);
INSERT INTO `teacher_info` VALUES (4, 1, 7, 'T04', '浙江工业大学', '王麻子', '18766666666', 'http://xxxx', 'http://xxxx', '2022-12-02 21:17:58', '2022-12-02 21:18:34', 0);
INSERT INTO `teacher_info` VALUES (5, 1, 8, 'T05', '浙江工业大学', '俞八', '18966666666', 'http://xxxx', 'http://xxxx', '2022-12-02 21:19:11', '2022-12-02 21:19:11', 0);

-- ----------------------------
-- Table structure for teacher_invigilation
-- ----------------------------
DROP TABLE IF EXISTS `teacher_invigilation`;
CREATE TABLE `teacher_invigilation`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `examination_id` int NULL DEFAULT NULL COMMENT '考试编号',
  `teacher_id` int NULL DEFAULT NULL COMMENT '主键编号',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint(1) NULL DEFAULT 0 COMMENT '0未删除 1已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '监考表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher_invigilation
-- ----------------------------
INSERT INTO `teacher_invigilation` VALUES (1, 1, 4, '2022-12-02 21:19:04', '2022-12-02 21:19:04', 0);
INSERT INTO `teacher_invigilation` VALUES (2, 1, 5, '2022-12-02 21:19:04', '2022-12-02 21:19:04', 0);

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `user_id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `login_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '登录名',
  `password` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '密码',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint(1) NULL DEFAULT 0 COMMENT '0未删除 1已删除',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (1, '17682405206', 'zhangsan', '2022-12-01 20:38:12', '2022-12-01 20:48:45', 0);
INSERT INTO `user_info` VALUES (2, '17816139690', 'ljy', '2022-12-01 20:38:14', '2022-12-01 20:48:39', 0);
INSERT INTO `user_info` VALUES (3, '17706728821', 'tageshi', '2022-12-01 20:38:30', '2022-12-01 20:48:48', 0);
INSERT INTO `user_info` VALUES (4, '19157682689', 'gc', '2022-12-01 20:49:50', '2022-12-01 20:49:50', 0);
INSERT INTO `user_info` VALUES (5, '18866668888', 'lisi666', '2022-12-01 21:33:03', '2022-12-01 21:33:05', 0);
INSERT INTO `user_info` VALUES (6, '19999999999', 'wangwu', '2022-12-01 21:34:57', '2022-12-01 21:34:57', 0);
INSERT INTO `user_info` VALUES (7, '18766666666', 'wangmazi', '2022-12-02 21:17:09', '2022-12-02 21:17:20', 0);
INSERT INTO `user_info` VALUES (8, '18966666666', 'yuba666', '2022-12-02 21:17:17', '2022-12-02 21:17:43', 0);

-- ----------------------------
-- Table structure for user_role_info
-- ----------------------------
DROP TABLE IF EXISTS `user_role_info`;
CREATE TABLE `user_role_info`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int NULL DEFAULT NULL COMMENT '角色编号',
  `role_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色名称(冗余)',
  `user_id` int NULL DEFAULT NULL COMMENT '用户编号',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint(1) NULL DEFAULT 0 COMMENT '0未删除 1已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_role_info
-- ----------------------------
INSERT INTO `user_role_info` VALUES (1, 4, 'admin', 3, '2022-12-01 20:55:30', '2022-12-01 20:57:20', 0);
INSERT INTO `user_role_info` VALUES (2, 1, 'student', 1, '2022-12-01 20:57:23', '2022-12-01 20:57:23', 0);
INSERT INTO `user_role_info` VALUES (3, 3, 'neteacher', 2, '2022-12-01 20:58:09', '2022-12-01 20:58:09', 0);
INSERT INTO `user_role_info` VALUES (4, 2, 'teacher', 4, '2022-12-01 20:58:35', '2022-12-01 20:58:40', 0);
INSERT INTO `user_role_info` VALUES (5, 1, 'student', 6, '2022-12-01 21:39:02', '2022-12-01 21:39:02', 0);
INSERT INTO `user_role_info` VALUES (6, 2, 'teacher', 5, '2022-12-01 21:39:03', '2022-12-01 21:39:05', 0);

-- ----------------------------
-- Table structure for year_info
-- ----------------------------
DROP TABLE IF EXISTS `year_info`;
CREATE TABLE `year_info`  (
  `year_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `year_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学年名称',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint(1) NULL DEFAULT 0 COMMENT '0未删除 1已删除',
  PRIMARY KEY (`year_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '学年信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of year_info
-- ----------------------------
INSERT INTO `year_info` VALUES (1, '2022-2023', '2022-12-01 21:03:16', '2022-12-01 21:03:16', 0);
INSERT INTO `year_info` VALUES (2, '2023-2024', '2022-12-01 21:03:16', '2022-12-01 21:03:16', 0);

SET FOREIGN_KEY_CHECKS = 1;
