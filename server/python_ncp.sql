/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50744
 Source Host           : localhost:3306
 Source Schema         : python_ncp

 Target Server Type    : MySQL
 Target Server Version : 50744
 File Encoding         : 65001

 Date: 18/06/2024 20:00:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add ad', 7, 'add_ad');
INSERT INTO `auth_permission` VALUES (26, 'Can change ad', 7, 'change_ad');
INSERT INTO `auth_permission` VALUES (27, 'Can delete ad', 7, 'delete_ad');
INSERT INTO `auth_permission` VALUES (28, 'Can view ad', 7, 'view_ad');
INSERT INTO `auth_permission` VALUES (29, 'Can add classification', 8, 'add_classification');
INSERT INTO `auth_permission` VALUES (30, 'Can change classification', 8, 'change_classification');
INSERT INTO `auth_permission` VALUES (31, 'Can delete classification', 8, 'delete_classification');
INSERT INTO `auth_permission` VALUES (32, 'Can view classification', 8, 'view_classification');
INSERT INTO `auth_permission` VALUES (33, 'Can add error log', 9, 'add_errorlog');
INSERT INTO `auth_permission` VALUES (34, 'Can change error log', 9, 'change_errorlog');
INSERT INTO `auth_permission` VALUES (35, 'Can delete error log', 9, 'delete_errorlog');
INSERT INTO `auth_permission` VALUES (36, 'Can view error log', 9, 'view_errorlog');
INSERT INTO `auth_permission` VALUES (37, 'Can add login log', 10, 'add_loginlog');
INSERT INTO `auth_permission` VALUES (38, 'Can change login log', 10, 'change_loginlog');
INSERT INTO `auth_permission` VALUES (39, 'Can delete login log', 10, 'delete_loginlog');
INSERT INTO `auth_permission` VALUES (40, 'Can view login log', 10, 'view_loginlog');
INSERT INTO `auth_permission` VALUES (41, 'Can add notice', 11, 'add_notice');
INSERT INTO `auth_permission` VALUES (42, 'Can change notice', 11, 'change_notice');
INSERT INTO `auth_permission` VALUES (43, 'Can delete notice', 11, 'delete_notice');
INSERT INTO `auth_permission` VALUES (44, 'Can view notice', 11, 'view_notice');
INSERT INTO `auth_permission` VALUES (45, 'Can add op log', 12, 'add_oplog');
INSERT INTO `auth_permission` VALUES (46, 'Can change op log', 12, 'change_oplog');
INSERT INTO `auth_permission` VALUES (47, 'Can delete op log', 12, 'delete_oplog');
INSERT INTO `auth_permission` VALUES (48, 'Can view op log', 12, 'view_oplog');
INSERT INTO `auth_permission` VALUES (49, 'Can add user', 13, 'add_user');
INSERT INTO `auth_permission` VALUES (50, 'Can change user', 13, 'change_user');
INSERT INTO `auth_permission` VALUES (51, 'Can delete user', 13, 'delete_user');
INSERT INTO `auth_permission` VALUES (52, 'Can view user', 13, 'view_user');
INSERT INTO `auth_permission` VALUES (53, 'Can add thing', 14, 'add_thing');
INSERT INTO `auth_permission` VALUES (54, 'Can change thing', 14, 'change_thing');
INSERT INTO `auth_permission` VALUES (55, 'Can delete thing', 14, 'delete_thing');
INSERT INTO `auth_permission` VALUES (56, 'Can view thing', 14, 'view_thing');
INSERT INTO `auth_permission` VALUES (57, 'Can add record', 15, 'add_record');
INSERT INTO `auth_permission` VALUES (58, 'Can change record', 15, 'change_record');
INSERT INTO `auth_permission` VALUES (59, 'Can delete record', 15, 'delete_record');
INSERT INTO `auth_permission` VALUES (60, 'Can view record', 15, 'view_record');
INSERT INTO `auth_permission` VALUES (61, 'Can add order', 16, 'add_order');
INSERT INTO `auth_permission` VALUES (62, 'Can change order', 16, 'change_order');
INSERT INTO `auth_permission` VALUES (63, 'Can delete order', 16, 'delete_order');
INSERT INTO `auth_permission` VALUES (64, 'Can view order', 16, 'view_order');
INSERT INTO `auth_permission` VALUES (65, 'Can add comment', 17, 'add_comment');
INSERT INTO `auth_permission` VALUES (66, 'Can change comment', 17, 'change_comment');
INSERT INTO `auth_permission` VALUES (67, 'Can delete comment', 17, 'delete_comment');
INSERT INTO `auth_permission` VALUES (68, 'Can view comment', 17, 'view_comment');
INSERT INTO `auth_permission` VALUES (69, 'Can add feedback', 18, 'add_feedback');
INSERT INTO `auth_permission` VALUES (70, 'Can change feedback', 18, 'change_feedback');
INSERT INTO `auth_permission` VALUES (71, 'Can delete feedback', 18, 'delete_feedback');
INSERT INTO `auth_permission` VALUES (72, 'Can view feedback', 18, 'view_feedback');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for b_ad
-- ----------------------------
DROP TABLE IF EXISTS `b_ad`;
CREATE TABLE `b_ad`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_ad
-- ----------------------------
INSERT INTO `b_ad` VALUES (1, 'ad/1718629427296.jpeg', 'http://www.baidu.com', '2024-06-17 21:03:49.892283');
INSERT INTO `b_ad` VALUES (2, 'ad/1718629439286.jpeg', 'http://gitapp.cn', '2024-06-17 21:04:08.399705');

-- ----------------------------
-- Table structure for b_classification
-- ----------------------------
DROP TABLE IF EXISTS `b_classification`;
CREATE TABLE `b_classification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_classification
-- ----------------------------
INSERT INTO `b_classification` VALUES (1, '水果类', '2024-06-17 20:34:55.997193');
INSERT INTO `b_classification` VALUES (2, '水产类', '2024-06-17 20:35:11.588130');
INSERT INTO `b_classification` VALUES (3, '肉蛋类', '2024-06-17 20:35:16.534691');
INSERT INTO `b_classification` VALUES (4, '粮油类', '2024-06-17 20:35:25.434402');
INSERT INTO `b_classification` VALUES (5, '蔬菜类', '2024-06-17 20:35:38.126484');

-- ----------------------------
-- Table structure for b_comment
-- ----------------------------
DROP TABLE IF EXISTS `b_comment`;
CREATE TABLE `b_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_time` datetime(6) NULL DEFAULT NULL,
  `like_count` int(11) NOT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_comment_thing_id_57ab492b_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_comment_user_id_46f0670f_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_comment_thing_id_57ab492b_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_comment_user_id_46f0670f_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_comment
-- ----------------------------
INSERT INTO `b_comment` VALUES (1, '111', '2024-06-17 21:03:15.233477', 0, 7, 3);
INSERT INTO `b_comment` VALUES (2, '222222', '2024-06-17 21:03:17.119055', 0, 7, 3);
INSERT INTO `b_comment` VALUES (3, '222', '2024-06-18 19:52:51.432393', 0, 5, 3);
INSERT INTO `b_comment` VALUES (4, '1111', '2024-06-18 19:52:52.716647', 0, 5, 3);

-- ----------------------------
-- Table structure for b_error_log
-- ----------------------------
DROP TABLE IF EXISTS `b_error_log`;
CREATE TABLE `b_error_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_error_log
-- ----------------------------

-- ----------------------------
-- Table structure for b_feedback
-- ----------------------------
DROP TABLE IF EXISTS `b_feedback`;
CREATE TABLE `b_feedback`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_feedback
-- ----------------------------
INSERT INTO `b_feedback` VALUES (1, '测试反馈221111', '哈哈哈哈哈哈', '刘文', '222222011@gmail.com', '23581651535', '2024-06-17 21:05:06.739165');
INSERT INTO `b_feedback` VALUES (2, '测试反馈22555', '哈哈哈哈22222', '刘德华', '888777@qq.com', NULL, '2024-06-17 21:05:49.248219');

-- ----------------------------
-- Table structure for b_login_log
-- ----------------------------
DROP TABLE IF EXISTS `b_login_log`;
CREATE TABLE `b_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_login_log
-- ----------------------------
INSERT INTO `b_login_log` VALUES (1, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-17 20:29:56.453567');
INSERT INTO `b_login_log` VALUES (2, 'ddd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-17 20:54:16.052868');
INSERT INTO `b_login_log` VALUES (3, 'www', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-18 19:53:27.656342');

-- ----------------------------
-- Table structure for b_notice
-- ----------------------------
DROP TABLE IF EXISTS `b_notice`;
CREATE TABLE `b_notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_notice
-- ----------------------------
INSERT INTO `b_notice` VALUES (1, '测试通知', '1111111', '2024-06-17 21:04:19.219144');
INSERT INTO `b_notice` VALUES (2, '我的消息888', '99887766', '2024-06-17 21:04:30.505464');

-- ----------------------------
-- Table structure for b_op_log
-- ----------------------------
DROP TABLE IF EXISTS `b_op_log`;
CREATE TABLE `b_op_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `re_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_time` datetime(6) NULL DEFAULT NULL,
  `re_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 778 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_op_log
-- ----------------------------
INSERT INTO `b_op_log` VALUES (1, '127.0.0.1', '2024-06-17 20:29:38.392548', '/myapp/index/notice/list_api', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (2, '127.0.0.1', '2024-06-17 20:29:38.392548', '/myapp/index/notice/list_api', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (3, '127.0.0.1', '2024-06-17 20:29:38.408965', '/myapp/index/notice/list_api', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (4, '127.0.0.1', '2024-06-17 20:29:56.463104', '/myapp/admin/adminLogin', 'POST', NULL, '58');
INSERT INTO `b_op_log` VALUES (5, '127.0.0.1', '2024-06-17 20:29:57.568376', '/myapp/admin/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (6, '127.0.0.1', '2024-06-17 20:29:57.570395', '/myapp/admin/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (7, '127.0.0.1', '2024-06-17 20:30:00.437209', '/myapp/admin/user/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (8, '127.0.0.1', '2024-06-17 20:30:11.892837', '/myapp/admin/user/create', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (9, '127.0.0.1', '2024-06-17 20:30:11.956085', '/myapp/admin/user/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (10, '127.0.0.1', '2024-06-17 20:30:14.359738', '/myapp/admin/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (11, '127.0.0.1', '2024-06-17 20:30:14.359738', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (12, '127.0.0.1', '2024-06-17 20:30:45.673414', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (13, '127.0.0.1', '2024-06-17 20:30:46.929939', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (14, '127.0.0.1', '2024-06-17 20:30:46.936431', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (15, '127.0.0.1', '2024-06-17 20:34:16.641307', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (16, '127.0.0.1', '2024-06-17 20:34:16.646995', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (17, '127.0.0.1', '2024-06-17 20:34:16.991909', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (18, '127.0.0.1', '2024-06-17 20:34:17.766234', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (19, '127.0.0.1', '2024-06-17 20:34:17.770862', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (20, '127.0.0.1', '2024-06-17 20:34:49.701257', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (21, '127.0.0.1', '2024-06-17 20:34:56.013509', '/myapp/admin/classification/create', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (22, '127.0.0.1', '2024-06-17 20:34:56.054826', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (23, '127.0.0.1', '2024-06-17 20:35:11.590577', '/myapp/admin/classification/create', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (24, '127.0.0.1', '2024-06-17 20:35:11.626101', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (25, '127.0.0.1', '2024-06-17 20:35:16.553945', '/myapp/admin/classification/create', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (26, '127.0.0.1', '2024-06-17 20:35:16.593432', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (27, '127.0.0.1', '2024-06-17 20:35:25.444012', '/myapp/admin/classification/create', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (28, '127.0.0.1', '2024-06-17 20:35:25.481775', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (29, '127.0.0.1', '2024-06-17 20:35:38.131618', '/myapp/admin/classification/create', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (30, '127.0.0.1', '2024-06-17 20:35:38.176920', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (31, '127.0.0.1', '2024-06-17 20:35:39.876230', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (32, '127.0.0.1', '2024-06-17 20:35:39.888271', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (33, '127.0.0.1', '2024-06-17 20:38:41.887758', '/myapp/admin/thing/create', 'POST', NULL, '343');
INSERT INTO `b_op_log` VALUES (34, '127.0.0.1', '2024-06-17 20:38:41.969030', '/myapp/admin/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (35, '127.0.0.1', '2024-06-17 20:39:25.864657', '/myapp/admin/thing/create', 'POST', NULL, '83');
INSERT INTO `b_op_log` VALUES (36, '127.0.0.1', '2024-06-17 20:39:25.958677', '/myapp/admin/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (37, '127.0.0.1', '2024-06-17 20:40:03.851057', '/myapp/admin/thing/create', 'POST', NULL, '67');
INSERT INTO `b_op_log` VALUES (38, '127.0.0.1', '2024-06-17 20:40:03.980298', '/myapp/admin/thing/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (39, '127.0.0.1', '2024-06-17 20:40:09.455249', '/myapp/admin/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (40, '127.0.0.1', '2024-06-17 20:41:00.420978', '/myapp/admin/classification/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (41, '127.0.0.1', '2024-06-17 20:41:00.430298', '/myapp/admin/classification/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (42, '127.0.0.1', '2024-06-17 20:41:39.838395', '/myapp/admin/thing/create', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (43, '127.0.0.1', '2024-06-17 20:41:39.971914', '/myapp/admin/thing/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (44, '127.0.0.1', '2024-06-17 20:42:14.754135', '/myapp/admin/thing/create', 'POST', NULL, '72');
INSERT INTO `b_op_log` VALUES (45, '127.0.0.1', '2024-06-17 20:42:14.921709', '/myapp/admin/thing/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (46, '127.0.0.1', '2024-06-17 20:42:18.040899', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (47, '127.0.0.1', '2024-06-17 20:43:01.204676', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (48, '127.0.0.1', '2024-06-17 20:43:01.259576', '/myapp/admin/classification/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (49, '127.0.0.1', '2024-06-17 20:43:34.033755', '/myapp/admin/thing/create', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (50, '127.0.0.1', '2024-06-17 20:43:34.152399', '/myapp/admin/thing/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (51, '127.0.0.1', '2024-06-17 20:44:07.679583', '/myapp/admin/thing/create', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (52, '127.0.0.1', '2024-06-17 20:44:07.847428', '/myapp/admin/thing/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (53, '127.0.0.1', '2024-06-17 20:44:13.816942', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (54, '127.0.0.1', '2024-06-17 20:44:54.214757', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (55, '127.0.0.1', '2024-06-17 20:44:54.278725', '/myapp/admin/classification/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (56, '127.0.0.1', '2024-06-17 20:45:27.090147', '/myapp/admin/thing/create', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (57, '127.0.0.1', '2024-06-17 20:45:27.276670', '/myapp/admin/thing/list', 'GET', NULL, '118');
INSERT INTO `b_op_log` VALUES (58, '127.0.0.1', '2024-06-17 20:46:51.940717', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (59, '127.0.0.1', '2024-06-17 20:46:52.566515', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (60, '127.0.0.1', '2024-06-17 20:46:52.650576', '/myapp/admin/classification/list', 'GET', NULL, '90');
INSERT INTO `b_op_log` VALUES (61, '127.0.0.1', '2024-06-17 20:46:58.797400', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (62, '127.0.0.1', '2024-06-17 20:46:58.804827', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (63, '127.0.0.1', '2024-06-17 20:46:58.826805', '/myapp/index/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (64, '127.0.0.1', '2024-06-17 20:46:58.887840', '/upload/cover/1718627983822.jpeg', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (65, '127.0.0.1', '2024-06-17 20:46:58.887840', '/upload/cover/1718627983822.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (66, '127.0.0.1', '2024-06-17 20:46:58.887840', '/upload/cover/1718627983822.jpeg', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (67, '127.0.0.1', '2024-06-17 20:46:58.887840', '/upload/cover/1718627983822.jpeg', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (68, '127.0.0.1', '2024-06-17 20:46:58.903959', '/upload/cover/1718627983822.jpeg', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (69, '127.0.0.1', '2024-06-17 20:46:58.920592', '/upload/cover/1718627983822.jpeg', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (70, '127.0.0.1', '2024-06-17 20:46:58.954422', '/upload/cover/1718627889667.jpeg', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (71, '127.0.0.1', '2024-06-17 20:46:58.954422', '/upload/cover/1718627889667.jpeg', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (72, '127.0.0.1', '2024-06-17 20:48:25.614164', '/upload/cover/1718628310221.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (73, '127.0.0.1', '2024-06-17 20:48:33.004482', '/myapp/admin/thing/update', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (74, '127.0.0.1', '2024-06-17 20:48:33.167781', '/myapp/admin/thing/list', 'GET', NULL, '98');
INSERT INTO `b_op_log` VALUES (75, '127.0.0.1', '2024-06-17 20:48:37.724851', '/myapp/admin/ad/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (76, '127.0.0.1', '2024-06-17 20:48:37.752510', '/myapp/admin/ad/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (77, '127.0.0.1', '2024-06-17 20:48:37.752510', '/myapp/admin/ad/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (78, '127.0.0.1', '2024-06-17 20:48:37.768557', '/myapp/admin/ad/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (79, '127.0.0.1', '2024-06-17 20:48:37.768557', '/myapp/admin/ad/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (80, '127.0.0.1', '2024-06-17 20:48:45.007301', '/upload/cover/1718628226156.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (81, '127.0.0.1', '2024-06-17 20:48:48.013375', '/myapp/admin/thing/update', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (82, '127.0.0.1', '2024-06-17 20:48:48.180884', '/myapp/admin/thing/list', 'GET', NULL, '104');
INSERT INTO `b_op_log` VALUES (83, '127.0.0.1', '2024-06-17 20:48:49.496751', '/upload/cover/1718628197332.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (84, '127.0.0.1', '2024-06-17 20:48:52.039041', '/myapp/admin/thing/update', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (85, '127.0.0.1', '2024-06-17 20:48:52.209092', '/myapp/admin/thing/list', 'GET', NULL, '112');
INSERT INTO `b_op_log` VALUES (86, '127.0.0.1', '2024-06-17 20:48:53.771439', '/upload/cover/1718628114680.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (87, '127.0.0.1', '2024-06-17 20:48:56.126068', '/myapp/admin/thing/update', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (88, '127.0.0.1', '2024-06-17 20:48:56.340564', '/myapp/admin/thing/list', 'GET', NULL, '150');
INSERT INTO `b_op_log` VALUES (89, '127.0.0.1', '2024-06-17 20:48:57.497203', '/upload/cover/1718628075341.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (90, '127.0.0.1', '2024-06-17 20:48:59.744417', '/myapp/admin/thing/update', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (91, '127.0.0.1', '2024-06-17 20:48:59.976851', '/myapp/admin/thing/list', 'GET', NULL, '166');
INSERT INTO `b_op_log` VALUES (92, '127.0.0.1', '2024-06-17 20:49:04.316991', '/myapp/admin/thing/update', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (93, '127.0.0.1', '2024-06-17 20:49:04.543939', '/myapp/admin/thing/list', 'GET', NULL, '152');
INSERT INTO `b_op_log` VALUES (94, '127.0.0.1', '2024-06-17 20:49:05.666573', '/upload/cover/1718627983822.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (95, '127.0.0.1', '2024-06-17 20:49:07.457655', '/myapp/admin/thing/update', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (96, '127.0.0.1', '2024-06-17 20:49:07.633065', '/myapp/admin/thing/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (97, '127.0.0.1', '2024-06-17 20:49:10.607676', '/myapp/admin/thing/update', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (98, '127.0.0.1', '2024-06-17 20:49:10.764753', '/myapp/admin/thing/list', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (99, '127.0.0.1', '2024-06-17 20:49:11.665390', '/upload/cover/1718627938909.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (100, '127.0.0.1', '2024-06-17 20:49:13.663505', '/myapp/admin/thing/update', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (101, '127.0.0.1', '2024-06-17 20:49:13.840411', '/myapp/admin/thing/list', 'GET', NULL, '113');
INSERT INTO `b_op_log` VALUES (102, '127.0.0.1', '2024-06-17 20:49:17.739581', '/myapp/admin/thing/update', 'POST', NULL, '56');
INSERT INTO `b_op_log` VALUES (103, '127.0.0.1', '2024-06-17 20:49:17.922971', '/myapp/admin/thing/list', 'GET', NULL, '125');
INSERT INTO `b_op_log` VALUES (104, '127.0.0.1', '2024-06-17 20:49:19.912176', '/upload/cover/1718627889667.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (105, '127.0.0.1', '2024-06-17 20:49:21.957953', '/myapp/admin/thing/update', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (106, '127.0.0.1', '2024-06-17 20:49:22.156061', '/myapp/admin/thing/list', 'GET', NULL, '150');
INSERT INTO `b_op_log` VALUES (107, '127.0.0.1', '2024-06-17 20:49:25.156998', '/myapp/admin/thing/update', 'POST', NULL, '64');
INSERT INTO `b_op_log` VALUES (108, '127.0.0.1', '2024-06-17 20:49:25.304959', '/myapp/admin/thing/list', 'GET', NULL, '108');
INSERT INTO `b_op_log` VALUES (109, '127.0.0.1', '2024-06-17 20:49:42.068315', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (110, '127.0.0.1', '2024-06-17 20:49:42.068315', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (111, '127.0.0.1', '2024-06-17 20:49:42.114518', '/myapp/index/thing/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (112, '127.0.0.1', '2024-06-17 20:49:42.147753', '/upload/cover/1718628075341.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (113, '127.0.0.1', '2024-06-17 20:49:42.153263', '/upload/cover/1718628075341.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (114, '127.0.0.1', '2024-06-17 20:49:42.153263', '/upload/cover/1718628075341.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (115, '127.0.0.1', '2024-06-17 20:49:42.157627', '/upload/cover/1718628075341.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (116, '127.0.0.1', '2024-06-17 20:49:43.565347', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (117, '127.0.0.1', '2024-06-17 20:49:44.078424', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (118, '127.0.0.1', '2024-06-17 20:49:44.747673', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (119, '127.0.0.1', '2024-06-17 20:49:45.288199', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (120, '127.0.0.1', '2024-06-17 20:49:45.911378', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (121, '127.0.0.1', '2024-06-17 20:49:46.489218', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (122, '127.0.0.1', '2024-06-17 20:49:47.739429', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (123, '127.0.0.1', '2024-06-17 20:49:48.976230', '/myapp/index/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (124, '127.0.0.1', '2024-06-17 20:50:01.008275', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (125, '127.0.0.1', '2024-06-17 20:50:01.755113', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (126, '127.0.0.1', '2024-06-17 20:50:03.253794', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (127, '127.0.0.1', '2024-06-17 20:50:04.322255', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (128, '127.0.0.1', '2024-06-17 20:50:05.573201', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (129, '127.0.0.1', '2024-06-17 20:50:30.756081', '/myapp/admin/thing/update', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (130, '127.0.0.1', '2024-06-17 20:50:30.925629', '/myapp/admin/thing/list', 'GET', NULL, '101');
INSERT INTO `b_op_log` VALUES (131, '127.0.0.1', '2024-06-17 20:50:33.017121', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (132, '127.0.0.1', '2024-06-17 20:50:33.649699', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (133, '127.0.0.1', '2024-06-17 20:50:33.700452', '/upload/cover/1718628310221.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (134, '127.0.0.1', '2024-06-17 20:50:35.118905', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (135, '127.0.0.1', '2024-06-17 20:50:35.186870', '/upload/cover/1718628075341.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (136, '127.0.0.1', '2024-06-17 20:50:35.186870', '/upload/cover/1718628075341.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (137, '127.0.0.1', '2024-06-17 20:50:35.201619', '/upload/cover/1718628075341.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (138, '127.0.0.1', '2024-06-17 20:50:35.201619', '/upload/cover/1718628075341.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (139, '127.0.0.1', '2024-06-17 20:50:36.937125', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (140, '127.0.0.1', '2024-06-17 20:50:40.825478', '/myapp/index/thing/list', 'GET', NULL, '3916');
INSERT INTO `b_op_log` VALUES (141, '127.0.0.1', '2024-06-17 20:52:39.514923', '/myapp/index/thing/getRecommend', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (142, '127.0.0.1', '2024-06-17 20:52:39.557459', '/myapp/index/thing/getRecommend', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (143, '127.0.0.1', '2024-06-17 20:52:40.438374', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (144, '127.0.0.1', '2024-06-17 20:52:40.445485', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (145, '127.0.0.1', '2024-06-17 20:52:40.491715', '/myapp/index/thing/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (146, '127.0.0.1', '2024-06-17 20:52:47.180800', '/myapp/index/thing/getRecommend', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (147, '127.0.0.1', '2024-06-17 20:52:47.221437', '/myapp/index/thing/getRecommend', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (148, '127.0.0.1', '2024-06-17 20:52:48.543600', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (149, '127.0.0.1', '2024-06-17 20:52:48.559758', '/myapp/index/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (150, '127.0.0.1', '2024-06-17 20:52:48.595339', '/myapp/index/thing/list', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (151, '127.0.0.1', '2024-06-17 20:52:50.091745', '/myapp/index/thing/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (152, '127.0.0.1', '2024-06-17 20:52:51.175733', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (153, '127.0.0.1', '2024-06-17 20:52:51.898491', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (154, '127.0.0.1', '2024-06-17 20:52:52.622267', '/myapp/index/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (155, '127.0.0.1', '2024-06-17 20:52:54.337505', '/myapp/index/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (156, '127.0.0.1', '2024-06-17 20:52:55.137385', '/myapp/index/thing/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (157, '127.0.0.1', '2024-06-17 20:52:58.515292', '/myapp/index/comment/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (158, '127.0.0.1', '2024-06-17 20:52:58.520422', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (159, '127.0.0.1', '2024-06-17 20:52:58.537224', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (160, '127.0.0.1', '2024-06-17 20:52:58.567503', '/myapp/index/comment/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (161, '127.0.0.1', '2024-06-17 20:52:58.580935', '/myapp/index/comment/list', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (162, '127.0.0.1', '2024-06-17 20:53:58.222546', '/myapp/index/thing/rate', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (163, '127.0.0.1', '2024-06-17 20:54:11.047502', '/myapp/index/user/register', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (164, '127.0.0.1', '2024-06-17 20:54:16.057315', '/myapp/index/user/login', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (165, '127.0.0.1', '2024-06-17 20:54:16.161276', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (166, '127.0.0.1', '2024-06-17 20:54:16.161276', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (167, '127.0.0.1', '2024-06-17 20:54:16.174425', '/myapp/index/user/info', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (168, '127.0.0.1', '2024-06-17 20:54:16.206933', '/myapp/index/user/info', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (169, '127.0.0.1', '2024-06-17 20:54:16.241335', '/upload/cover/1718628075341.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (170, '127.0.0.1', '2024-06-17 20:54:16.251902', '/upload/cover/1718628075341.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (171, '127.0.0.1', '2024-06-17 20:54:16.256295', '/upload/cover/1718628075341.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (172, '127.0.0.1', '2024-06-17 20:54:16.257480', '/upload/cover/1718628075341.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (173, '127.0.0.1', '2024-06-17 20:54:16.260047', '/upload/cover/1718628075341.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (174, '127.0.0.1', '2024-06-17 20:54:16.277241', '/upload/cover/1718627983822.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (175, '127.0.0.1', '2024-06-17 20:54:16.277241', '/upload/cover/1718627889667.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (176, '127.0.0.1', '2024-06-17 20:54:17.687894', '/myapp/admin/ad/list', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (177, '127.0.0.1', '2024-06-17 20:54:17.689213', '/myapp/admin/ad/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (178, '127.0.0.1', '2024-06-17 20:54:17.693844', '/myapp/admin/ad/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (179, '127.0.0.1', '2024-06-17 20:54:17.721598', '/myapp/admin/ad/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (180, '127.0.0.1', '2024-06-17 20:54:17.738574', '/myapp/admin/ad/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (181, '127.0.0.1', '2024-06-17 20:54:17.754453', '/myapp/admin/ad/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (182, '127.0.0.1', '2024-06-17 20:54:19.054107', '/myapp/index/thing/addCollectUser', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (183, '127.0.0.1', '2024-06-17 20:54:19.110706', '/myapp/index/thing/detail', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (184, '127.0.0.1', '2024-06-17 20:54:19.927186', '/myapp/index/thing/addWishUser', 'POST', NULL, '58');
INSERT INTO `b_op_log` VALUES (185, '127.0.0.1', '2024-06-17 20:54:20.005352', '/myapp/index/thing/detail', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (186, '127.0.0.1', '2024-06-17 20:54:27.017727', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (187, '127.0.0.1', '2024-06-17 20:54:27.023724', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (188, '127.0.0.1', '2024-06-17 20:54:27.029289', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (189, '127.0.0.1', '2024-06-17 20:54:27.064664', '/myapp/index/thing/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (190, '127.0.0.1', '2024-06-17 20:54:48.716168', '/myapp/index/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (191, '127.0.0.1', '2024-06-17 20:54:48.716168', '/myapp/index/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (192, '127.0.0.1', '2024-06-17 20:54:48.726143', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (193, '127.0.0.1', '2024-06-17 20:54:48.746023', '/myapp/index/comment/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (194, '127.0.0.1', '2024-06-17 20:54:48.758753', '/myapp/index/comment/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (195, '127.0.0.1', '2024-06-17 20:54:48.778340', '/myapp/index/comment/list', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (196, '127.0.0.1', '2024-06-17 20:54:50.991973', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (197, '127.0.0.1', '2024-06-17 20:54:50.997284', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (198, '127.0.0.1', '2024-06-17 20:54:51.021943', '/myapp/index/user/info', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (199, '127.0.0.1', '2024-06-17 20:54:51.034001', '/myapp/index/user/info', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (200, '127.0.0.1', '2024-06-17 20:54:51.968297', '/myapp/index/thing/getRecommend', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (201, '127.0.0.1', '2024-06-17 20:54:51.974695', '/myapp/index/thing/getRecommend', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (202, '127.0.0.1', '2024-06-17 20:54:52.024761', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (203, '127.0.0.1', '2024-06-17 20:54:52.046988', '/myapp/index/comment/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (204, '127.0.0.1', '2024-06-17 20:54:52.047984', '/myapp/index/comment/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (205, '127.0.0.1', '2024-06-17 20:54:52.056501', '/myapp/index/comment/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (206, '127.0.0.1', '2024-06-17 20:54:53.051962', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (207, '127.0.0.1', '2024-06-17 20:54:53.051962', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (208, '127.0.0.1', '2024-06-17 20:54:53.066518', '/myapp/index/user/info', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (209, '127.0.0.1', '2024-06-17 20:54:53.102755', '/myapp/index/user/info', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (210, '127.0.0.1', '2024-06-17 20:54:54.286142', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (211, '127.0.0.1', '2024-06-17 20:54:54.292382', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (212, '127.0.0.1', '2024-06-17 20:54:54.314961', '/myapp/index/comment/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (213, '127.0.0.1', '2024-06-17 20:54:54.314961', '/myapp/index/comment/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (214, '127.0.0.1', '2024-06-17 20:54:54.331796', '/myapp/index/comment/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (215, '127.0.0.1', '2024-06-17 20:54:54.363827', '/myapp/index/comment/list', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (216, '127.0.0.1', '2024-06-17 20:54:55.216941', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (217, '127.0.0.1', '2024-06-17 20:54:55.224820', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (218, '127.0.0.1', '2024-06-17 20:54:55.232554', '/myapp/index/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (219, '127.0.0.1', '2024-06-17 20:54:55.266411', '/myapp/index/thing/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (220, '127.0.0.1', '2024-06-17 20:54:56.330291', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (221, '127.0.0.1', '2024-06-17 20:54:56.347078', '/myapp/index/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (222, '127.0.0.1', '2024-06-17 20:54:56.336039', '/myapp/index/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (223, '127.0.0.1', '2024-06-17 20:54:56.364352', '/myapp/index/comment/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (224, '127.0.0.1', '2024-06-17 20:54:56.381232', '/myapp/index/comment/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (225, '127.0.0.1', '2024-06-17 20:54:56.398520', '/myapp/index/comment/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (226, '127.0.0.1', '2024-06-17 20:54:57.448148', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (227, '127.0.0.1', '2024-06-17 20:54:57.450765', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (228, '127.0.0.1', '2024-06-17 20:54:57.450765', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (229, '127.0.0.1', '2024-06-17 20:54:57.494913', '/myapp/index/thing/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (230, '127.0.0.1', '2024-06-17 20:54:58.722831', '/myapp/index/thing/detail', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (231, '127.0.0.1', '2024-06-17 20:54:58.731415', '/myapp/index/thing/detail', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (232, '127.0.0.1', '2024-06-17 20:54:58.743935', '/myapp/index/thing/detail', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (233, '127.0.0.1', '2024-06-17 20:54:58.752465', '/myapp/index/thing/detail', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (234, '127.0.0.1', '2024-06-17 20:54:58.792209', '/myapp/index/thing/detail', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (235, '127.0.0.1', '2024-06-17 20:54:58.833718', '/myapp/index/thing/detail', 'GET', NULL, '137');
INSERT INTO `b_op_log` VALUES (236, '127.0.0.1', '2024-06-17 20:54:59.994398', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (237, '127.0.0.1', '2024-06-17 20:55:00.000620', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (238, '127.0.0.1', '2024-06-17 20:55:00.005068', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (239, '127.0.0.1', '2024-06-17 20:55:00.045109', '/myapp/index/thing/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (240, '127.0.0.1', '2024-06-17 20:55:01.297508', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (241, '127.0.0.1', '2024-06-17 20:55:01.308175', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (242, '127.0.0.1', '2024-06-17 20:55:01.308175', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (243, '127.0.0.1', '2024-06-17 20:55:01.323846', '/myapp/index/comment/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (244, '127.0.0.1', '2024-06-17 20:55:01.387212', '/myapp/index/comment/list', 'GET', NULL, '101');
INSERT INTO `b_op_log` VALUES (245, '127.0.0.1', '2024-06-17 20:55:01.404486', '/myapp/index/comment/list', 'GET', NULL, '119');
INSERT INTO `b_op_log` VALUES (246, '127.0.0.1', '2024-06-17 20:55:03.597728', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (247, '127.0.0.1', '2024-06-17 20:55:03.601467', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (248, '127.0.0.1', '2024-06-17 20:55:03.604837', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (249, '127.0.0.1', '2024-06-17 20:55:03.623424', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (250, '127.0.0.1', '2024-06-17 20:55:04.673789', '/myapp/index/thing/detail', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (251, '127.0.0.1', '2024-06-17 20:55:04.685680', '/myapp/index/thing/detail', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (252, '127.0.0.1', '2024-06-17 20:55:04.699694', '/myapp/index/thing/detail', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (253, '127.0.0.1', '2024-06-17 20:55:04.703803', '/myapp/index/thing/detail', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (254, '127.0.0.1', '2024-06-17 20:55:04.736200', '/myapp/index/thing/detail', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (255, '127.0.0.1', '2024-06-17 20:55:04.752726', '/myapp/index/thing/detail', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (256, '127.0.0.1', '2024-06-17 20:55:05.693495', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (257, '127.0.0.1', '2024-06-17 20:55:05.706725', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (258, '127.0.0.1', '2024-06-17 20:55:05.709964', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (259, '127.0.0.1', '2024-06-17 20:55:05.754822', '/myapp/index/thing/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (260, '127.0.0.1', '2024-06-17 20:55:06.980935', '/myapp/index/thing/detail', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (261, '127.0.0.1', '2024-06-17 20:55:06.991934', '/myapp/index/thing/detail', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (262, '127.0.0.1', '2024-06-17 20:55:06.991934', '/myapp/index/thing/detail', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (263, '127.0.0.1', '2024-06-17 20:55:07.025520', '/myapp/index/thing/detail', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (264, '127.0.0.1', '2024-06-17 20:55:07.056640', '/myapp/index/thing/detail', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (265, '127.0.0.1', '2024-06-17 20:55:07.084835', '/myapp/index/thing/detail', 'GET', NULL, '113');
INSERT INTO `b_op_log` VALUES (266, '127.0.0.1', '2024-06-17 20:55:08.055980', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (267, '127.0.0.1', '2024-06-17 20:55:08.068503', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (268, '127.0.0.1', '2024-06-17 20:55:08.075451', '/myapp/index/user/info', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (269, '127.0.0.1', '2024-06-17 20:55:08.108992', '/myapp/index/user/info', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (270, '127.0.0.1', '2024-06-17 20:55:09.520115', '/myapp/index/thing/detail', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (271, '127.0.0.1', '2024-06-17 20:55:09.536947', '/myapp/index/thing/detail', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (272, '127.0.0.1', '2024-06-17 20:55:09.548163', '/myapp/index/thing/detail', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (273, '127.0.0.1', '2024-06-17 20:55:09.563436', '/myapp/index/thing/detail', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (274, '127.0.0.1', '2024-06-17 20:55:09.579473', '/myapp/index/thing/detail', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (275, '127.0.0.1', '2024-06-17 20:55:09.595777', '/myapp/index/thing/detail', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (276, '127.0.0.1', '2024-06-17 20:55:10.567775', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (277, '127.0.0.1', '2024-06-17 20:55:10.567775', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (278, '127.0.0.1', '2024-06-17 20:55:10.567775', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (279, '127.0.0.1', '2024-06-17 20:55:10.622714', '/myapp/index/user/info', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (280, '127.0.0.1', '2024-06-17 20:55:10.650541', '/upload/cover/1718628310221.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (281, '127.0.0.1', '2024-06-17 20:55:13.046478', '/myapp/index/thing/detail', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (282, '127.0.0.1', '2024-06-17 20:55:13.050559', '/myapp/index/thing/detail', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (283, '127.0.0.1', '2024-06-17 20:55:13.063686', '/myapp/index/thing/detail', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (284, '127.0.0.1', '2024-06-17 20:55:13.077675', '/myapp/index/thing/detail', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (285, '127.0.0.1', '2024-06-17 20:55:13.107162', '/myapp/index/thing/detail', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (286, '127.0.0.1', '2024-06-17 20:55:13.143583', '/myapp/index/thing/detail', 'GET', NULL, '116');
INSERT INTO `b_op_log` VALUES (287, '127.0.0.1', '2024-06-17 20:55:14.277313', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (288, '127.0.0.1', '2024-06-17 20:55:14.285486', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (289, '127.0.0.1', '2024-06-17 20:55:14.294252', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (290, '127.0.0.1', '2024-06-17 20:55:14.341162', '/myapp/index/thing/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (291, '127.0.0.1', '2024-06-17 20:55:17.689785', '/myapp/admin/ad/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (292, '127.0.0.1', '2024-06-17 20:55:17.689785', '/myapp/admin/ad/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (293, '127.0.0.1', '2024-06-17 20:55:17.707458', '/myapp/admin/ad/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (294, '127.0.0.1', '2024-06-17 20:55:17.708397', '/myapp/admin/ad/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (295, '127.0.0.1', '2024-06-17 20:55:17.736436', '/myapp/admin/ad/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (296, '127.0.0.1', '2024-06-17 20:55:17.752507', '/myapp/admin/ad/list', 'GET', NULL, '86');
INSERT INTO `b_op_log` VALUES (297, '127.0.0.1', '2024-06-17 20:55:19.925885', '/myapp/index/notice/list_api', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (298, '127.0.0.1', '2024-06-17 20:55:19.931466', '/myapp/index/notice/list_api', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (299, '127.0.0.1', '2024-06-17 20:55:19.935875', '/myapp/index/notice/list_api', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (300, '127.0.0.1', '2024-06-17 20:55:19.965830', '/myapp/index/notice/list_api', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (301, '127.0.0.1', '2024-06-17 20:55:19.986046', '/upload/cover/1718628226156.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (302, '127.0.0.1', '2024-06-17 20:55:38.579600', '/myapp/index/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (303, '127.0.0.1', '2024-06-17 20:55:40.012388', '/myapp/index/thing/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (304, '127.0.0.1', '2024-06-17 20:55:49.794355', '/myapp/index/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (305, '127.0.0.1', '2024-06-17 20:55:49.801651', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (306, '127.0.0.1', '2024-06-17 20:55:49.827158', '/myapp/index/comment/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (307, '127.0.0.1', '2024-06-17 20:55:49.827158', '/myapp/index/comment/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (308, '127.0.0.1', '2024-06-17 20:55:49.841760', '/myapp/index/comment/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (309, '127.0.0.1', '2024-06-17 20:55:49.863141', '/myapp/index/comment/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (310, '127.0.0.1', '2024-06-17 20:56:09.494658', '/myapp/index/thing/getRecommend', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (311, '127.0.0.1', '2024-06-17 20:56:09.494658', '/myapp/index/thing/getRecommend', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (312, '127.0.0.1', '2024-06-17 20:56:09.515220', '/myapp/index/thing/getRecommend', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (313, '127.0.0.1', '2024-06-17 20:56:30.547698', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (314, '127.0.0.1', '2024-06-17 20:56:30.549041', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (315, '127.0.0.1', '2024-06-17 20:56:30.566183', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (316, '127.0.0.1', '2024-06-17 20:56:30.585434', '/upload/cover/1718627983822.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (317, '127.0.0.1', '2024-06-17 20:56:30.596398', '/upload/cover/1718627983822.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (318, '127.0.0.1', '2024-06-17 20:56:51.686245', '/myapp/index/thing/getRecommend', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (319, '127.0.0.1', '2024-06-17 20:56:51.697613', '/myapp/index/thing/getRecommend', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (320, '127.0.0.1', '2024-06-17 20:56:51.700736', '/myapp/index/thing/getRecommend', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (321, '127.0.0.1', '2024-06-17 20:56:51.714542', '/myapp/index/thing/getRecommend', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (322, '127.0.0.1', '2024-06-17 20:56:51.776795', '/myapp/index/thing/getRecommend', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (323, '127.0.0.1', '2024-06-17 20:56:51.796117', '/myapp/index/thing/getRecommend', 'GET', NULL, '119');
INSERT INTO `b_op_log` VALUES (324, '127.0.0.1', '2024-06-17 20:56:51.813329', '/upload/cover/1718628114680.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (325, '127.0.0.1', '2024-06-17 20:56:51.851961', '/upload/cover/1718627889667.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (326, '127.0.0.1', '2024-06-17 20:56:51.874288', '/upload/cover/1718627889667.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (327, '127.0.0.1', '2024-06-17 20:56:55.205315', '/myapp/index/thing/addCollectUser', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (328, '127.0.0.1', '2024-06-17 20:56:55.256829', '/myapp/index/thing/detail', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (329, '127.0.0.1', '2024-06-17 20:56:55.897002', '/myapp/index/thing/addWishUser', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (330, '127.0.0.1', '2024-06-17 20:56:55.958908', '/myapp/index/thing/detail', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (331, '127.0.0.1', '2024-06-17 20:57:05.446982', '/myapp/index/notice/list_api', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (332, '127.0.0.1', '2024-06-17 20:57:05.455677', '/myapp/index/notice/list_api', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (333, '127.0.0.1', '2024-06-17 20:57:05.484221', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (334, '127.0.0.1', '2024-06-17 20:57:05.493438', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (335, '127.0.0.1', '2024-06-17 20:57:05.496495', '/myapp/index/user/info', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (336, '127.0.0.1', '2024-06-17 20:57:05.513008', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (337, '127.0.0.1', '2024-06-17 20:57:06.814780', '/myapp/index/thing/getWishThingList', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (338, '127.0.0.1', '2024-06-17 20:57:07.392470', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (339, '127.0.0.1', '2024-06-17 20:57:41.009611', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (340, '127.0.0.1', '2024-06-17 20:57:42.381261', '/myapp/index/order/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (341, '127.0.0.1', '2024-06-17 20:58:59.724785', '/myapp/index/thing/getWishThingList', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (342, '127.0.0.1', '2024-06-17 20:58:59.747073', '/upload/cover/1718628114680.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (343, '127.0.0.1', '2024-06-17 20:58:59.747073', '/upload/cover/1718628114680.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (344, '127.0.0.1', '2024-06-17 20:59:00.750691', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (345, '127.0.0.1', '2024-06-17 20:59:05.766759', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (346, '127.0.0.1', '2024-06-17 20:59:05.773125', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (347, '127.0.0.1', '2024-06-17 20:59:05.775221', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (348, '127.0.0.1', '2024-06-17 20:59:05.822776', '/myapp/index/thing/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (349, '127.0.0.1', '2024-06-17 20:59:05.856272', '/upload/cover/1718627889667.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (350, '127.0.0.1', '2024-06-17 20:59:05.870406', '/upload/cover/1718627889667.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (351, '127.0.0.1', '2024-06-17 20:59:05.873726', '/upload/cover/1718627889667.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (352, '127.0.0.1', '2024-06-17 20:59:05.873726', '/upload/cover/1718627889667.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (353, '127.0.0.1', '2024-06-17 20:59:05.873726', '/upload/cover/1718627889667.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (354, '127.0.0.1', '2024-06-17 20:59:05.873726', '/upload/cover/1718627889667.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (355, '127.0.0.1', '2024-06-17 20:59:06.953803', '/myapp/index/thing/detail', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (356, '127.0.0.1', '2024-06-17 20:59:06.970100', '/myapp/index/thing/detail', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (357, '127.0.0.1', '2024-06-17 20:59:06.981600', '/myapp/index/thing/detail', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (358, '127.0.0.1', '2024-06-17 20:59:06.986329', '/myapp/index/thing/detail', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (359, '127.0.0.1', '2024-06-17 20:59:07.012818', '/myapp/index/thing/detail', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (360, '127.0.0.1', '2024-06-17 20:59:07.031887', '/myapp/index/thing/detail', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (361, '127.0.0.1', '2024-06-17 20:59:46.922430', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (362, '127.0.0.1', '2024-06-17 20:59:46.923103', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (363, '127.0.0.1', '2024-06-17 20:59:46.940250', '/myapp/index/user/info', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (364, '127.0.0.1', '2024-06-17 20:59:46.940250', '/myapp/index/user/info', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (365, '127.0.0.1', '2024-06-17 20:59:46.963722', '/myapp/index/user/info', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (366, '127.0.0.1', '2024-06-17 20:59:46.975481', '/myapp/index/user/info', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (367, '127.0.0.1', '2024-06-17 21:00:16.451877', '/myapp/index/order/create', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (368, '127.0.0.1', '2024-06-17 21:00:16.932567', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (369, '127.0.0.1', '2024-06-17 21:00:16.939485', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (370, '127.0.0.1', '2024-06-17 21:00:18.382843', '/myapp/index/order/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (371, '127.0.0.1', '2024-06-17 21:00:18.393317', '/myapp/index/order/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (372, '127.0.0.1', '2024-06-17 21:00:18.416907', '/myapp/index/user/info', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (373, '127.0.0.1', '2024-06-17 21:00:18.430563', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (374, '127.0.0.1', '2024-06-17 21:00:18.435214', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (375, '127.0.0.1', '2024-06-17 21:00:18.447299', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (376, '127.0.0.1', '2024-06-17 21:01:11.376234', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (377, '127.0.0.1', '2024-06-17 21:01:11.379844', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (378, '127.0.0.1', '2024-06-17 21:01:11.388406', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (379, '127.0.0.1', '2024-06-17 21:01:11.392493', '/myapp/index/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (380, '127.0.0.1', '2024-06-17 21:01:11.433559', '/myapp/index/comment/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (381, '127.0.0.1', '2024-06-17 21:01:11.439087', '/myapp/index/comment/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (382, '127.0.0.1', '2024-06-17 21:01:11.466489', '/upload/cover/1718628226156.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (383, '127.0.0.1', '2024-06-17 21:01:11.488220', '/upload/cover/1718627889667.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (384, '127.0.0.1', '2024-06-17 21:01:11.488220', '/upload/cover/1718627889667.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (385, '127.0.0.1', '2024-06-17 21:01:11.488220', '/upload/cover/1718627889667.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (386, '127.0.0.1', '2024-06-17 21:01:56.012332', '/myapp/admin/order/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (387, '127.0.0.1', '2024-06-17 21:01:59.620697', '/myapp/admin/order/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (388, '127.0.0.1', '2024-06-17 21:02:14.687473', '/myapp/admin/user/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (389, '127.0.0.1', '2024-06-17 21:02:15.011752', '/myapp/admin/order/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (390, '127.0.0.1', '2024-06-17 21:02:35.322855', '/myapp/admin/order/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (391, '127.0.0.1', '2024-06-17 21:02:59.573043', '/myapp/admin/order/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (392, '127.0.0.1', '2024-06-17 21:03:00.798517', '/myapp/admin/user/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (393, '127.0.0.1', '2024-06-17 21:03:01.444255', '/myapp/admin/order/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (394, '127.0.0.1', '2024-06-17 21:03:07.775877', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (395, '127.0.0.1', '2024-06-17 21:03:07.869900', '/myapp/admin/classification/list', 'GET', NULL, '107');
INSERT INTO `b_op_log` VALUES (396, '127.0.0.1', '2024-06-17 21:03:08.354928', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (397, '127.0.0.1', '2024-06-17 21:03:09.093490', '/myapp/admin/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (398, '127.0.0.1', '2024-06-17 21:03:12.299738', '/myapp/index/thing/detail', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (399, '127.0.0.1', '2024-06-17 21:03:12.302367', '/myapp/index/thing/detail', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (400, '127.0.0.1', '2024-06-17 21:03:12.321483', '/myapp/index/thing/detail', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (401, '127.0.0.1', '2024-06-17 21:03:12.341052', '/myapp/index/thing/detail', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (402, '127.0.0.1', '2024-06-17 21:03:12.352131', '/myapp/index/thing/detail', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (403, '127.0.0.1', '2024-06-17 21:03:12.381896', '/myapp/index/thing/detail', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (404, '127.0.0.1', '2024-06-17 21:03:12.399109', '/upload/cover/1718628226156.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (405, '127.0.0.1', '2024-06-17 21:03:12.446232', '/upload/cover/1718628114680.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (406, '127.0.0.1', '2024-06-17 21:03:15.254779', '/myapp/index/comment/create', 'POST', NULL, '51');
INSERT INTO `b_op_log` VALUES (407, '127.0.0.1', '2024-06-17 21:03:15.305437', '/myapp/index/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (408, '127.0.0.1', '2024-06-17 21:03:17.131190', '/myapp/index/comment/create', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (409, '127.0.0.1', '2024-06-17 21:03:17.158977', '/myapp/index/comment/list', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (410, '127.0.0.1', '2024-06-17 21:03:18.244645', '/myapp/index/comment/create', 'POST', NULL, '0');
INSERT INTO `b_op_log` VALUES (411, '127.0.0.1', '2024-06-17 21:03:20.915452', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (412, '127.0.0.1', '2024-06-17 21:03:21.477546', '/myapp/admin/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (413, '127.0.0.1', '2024-06-17 21:03:22.817865', '/myapp/admin/user/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (414, '127.0.0.1', '2024-06-17 21:03:32.066462', '/myapp/admin/user/create', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (415, '127.0.0.1', '2024-06-17 21:03:32.137196', '/myapp/admin/user/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (416, '127.0.0.1', '2024-06-17 21:03:33.731069', '/myapp/admin/order/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (417, '127.0.0.1', '2024-06-17 21:03:37.236673', '/myapp/admin/ad/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (418, '127.0.0.1', '2024-06-17 21:03:49.917735', '/myapp/admin/ad/create', 'POST', NULL, '63');
INSERT INTO `b_op_log` VALUES (419, '127.0.0.1', '2024-06-17 21:03:49.971444', '/myapp/admin/ad/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (420, '127.0.0.1', '2024-06-17 21:03:50.069048', '/upload/ad/1718629427296.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (421, '127.0.0.1', '2024-06-17 21:04:08.405577', '/myapp/admin/ad/create', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (422, '127.0.0.1', '2024-06-17 21:04:08.459235', '/myapp/admin/ad/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (423, '127.0.0.1', '2024-06-17 21:04:08.513105', '/upload/ad/1718629439286.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (424, '127.0.0.1', '2024-06-17 21:04:10.221000', '/myapp/admin/notice/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (425, '127.0.0.1', '2024-06-17 21:04:19.235737', '/myapp/admin/notice/create', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (426, '127.0.0.1', '2024-06-17 21:04:19.285793', '/myapp/admin/notice/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (427, '127.0.0.1', '2024-06-17 21:04:30.524569', '/myapp/admin/notice/create', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (428, '127.0.0.1', '2024-06-17 21:04:30.580676', '/myapp/admin/notice/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (429, '127.0.0.1', '2024-06-17 21:04:34.470305', '/myapp/admin/loginLog/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (430, '127.0.0.1', '2024-06-17 21:04:35.250033', '/myapp/admin/opLog/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (431, '127.0.0.1', '2024-06-17 21:04:37.032305', '/myapp/admin/overview/count', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (432, '127.0.0.1', '2024-06-17 21:04:42.801001', '/myapp/admin/feedback/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (433, '127.0.0.1', '2024-06-17 21:04:44.668853', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1129');
INSERT INTO `b_op_log` VALUES (434, '127.0.0.1', '2024-06-17 21:04:45.250190', '/myapp/admin/feedback/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (435, '127.0.0.1', '2024-06-17 21:04:49.606207', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (436, '127.0.0.1', '2024-06-17 21:04:49.613130', '/myapp/index/user/info', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (437, '127.0.0.1', '2024-06-17 21:05:06.747190', '/myapp/index/feedback/create', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (438, '127.0.0.1', '2024-06-17 21:05:08.620056', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (439, '127.0.0.1', '2024-06-17 21:05:08.620056', '/myapp/index/notice/list_api', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (440, '127.0.0.1', '2024-06-17 21:05:49.252700', '/myapp/index/feedback/create', 'POST', NULL, '11');
INSERT INTO `b_op_log` VALUES (441, '127.0.0.1', '2024-06-17 21:05:51.330995', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (442, '127.0.0.1', '2024-06-17 21:05:51.338062', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (443, '127.0.0.1', '2024-06-17 21:05:54.179274', '/myapp/admin/overview/count', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (444, '127.0.0.1', '2024-06-17 21:05:54.974162', '/myapp/admin/feedback/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (445, '127.0.0.1', '2024-06-17 21:05:56.405058', '/myapp/admin/overview/count', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (446, '127.0.0.1', '2024-06-17 21:05:59.399619', '/myapp/admin/feedback/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (447, '127.0.0.1', '2024-06-17 21:06:01.553535', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1043');
INSERT INTO `b_op_log` VALUES (448, '127.0.0.1', '2024-06-17 21:06:02.303485', '/myapp/admin/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (449, '127.0.0.1', '2024-06-17 21:06:03.181330', '/myapp/admin/user/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (450, '127.0.0.1', '2024-06-17 21:06:04.414521', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (451, '127.0.0.1', '2024-06-17 21:06:04.505498', '/myapp/admin/classification/list', 'GET', NULL, '115');
INSERT INTO `b_op_log` VALUES (452, '127.0.0.1', '2024-06-17 21:06:05.228358', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (453, '127.0.0.1', '2024-06-17 21:06:06.253198', '/myapp/admin/classification/list', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (454, '127.0.0.1', '2024-06-17 21:06:06.341643', '/myapp/admin/classification/list', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (455, '127.0.0.1', '2024-06-17 21:06:09.548252', '/myapp/index/thing/getRecommend', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (456, '127.0.0.1', '2024-06-17 21:06:09.559262', '/myapp/index/thing/getRecommend', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (457, '127.0.0.1', '2024-06-17 21:06:09.600366', '/myapp/index/thing/getRecommend', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (458, '127.0.0.1', '2024-06-17 21:06:09.631646', '/upload/cover/1718627983822.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (459, '127.0.0.1', '2024-06-17 21:06:09.641927', '/upload/cover/1718627983822.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (460, '127.0.0.1', '2024-06-17 21:06:09.659399', '/upload/cover/1718627889667.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (461, '127.0.0.1', '2024-06-17 21:06:09.662480', '/upload/cover/1718628310221.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (462, '127.0.0.1', '2024-06-17 21:06:09.671846', '/upload/cover/1718628310221.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (463, '127.0.0.1', '2024-06-17 21:06:09.674452', '/upload/cover/1718628197332.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (464, '127.0.0.1', '2024-06-17 21:06:09.678966', '/upload/cover/1718627938909.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (465, '127.0.0.1', '2024-06-17 21:06:09.697363', '/upload/cover/1718628310221.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (466, '127.0.0.1', '2024-06-17 21:06:13.883370', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (467, '127.0.0.1', '2024-06-17 21:06:13.894094', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (468, '127.0.0.1', '2024-06-17 21:06:13.911882', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (469, '127.0.0.1', '2024-06-17 21:06:13.913516', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (470, '127.0.0.1', '2024-06-17 21:06:13.935399', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (471, '127.0.0.1', '2024-06-17 21:06:13.953252', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (472, '127.0.0.1', '2024-06-17 21:06:22.995286', '/myapp/index/user/update', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (473, '127.0.0.1', '2024-06-17 21:06:24.190692', '/myapp/index/thing/getWishThingList', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (474, '127.0.0.1', '2024-06-17 21:06:24.200953', '/myapp/index/thing/getWishThingList', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (475, '127.0.0.1', '2024-06-17 21:06:24.207342', '/myapp/index/thing/getWishThingList', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (476, '127.0.0.1', '2024-06-17 21:06:24.227518', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (477, '127.0.0.1', '2024-06-17 21:06:24.228928', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (478, '127.0.0.1', '2024-06-17 21:06:24.243995', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (479, '127.0.0.1', '2024-06-17 21:06:24.250133', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (480, '127.0.0.1', '2024-06-17 21:06:25.791231', '/myapp/index/thing/listUserThing', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (481, '127.0.0.1', '2024-06-17 21:06:25.811357', '/myapp/index/thing/listUserThing', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (482, '127.0.0.1', '2024-06-17 21:06:26.411339', '/myapp/index/order/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (483, '127.0.0.1', '2024-06-17 21:06:49.652039', '/myapp/index/user/info', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (484, '127.0.0.1', '2024-06-17 21:06:49.652039', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (485, '127.0.0.1', '2024-06-17 21:06:49.672254', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (486, '127.0.0.1', '2024-06-17 21:06:49.693690', '/upload/avatar/1718629582051.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (487, '127.0.0.1', '2024-06-17 21:06:49.767853', '/upload/avatar/1718629582051.jpeg', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (488, '127.0.0.1', '2024-06-17 21:06:50.235849', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (489, '127.0.0.1', '2024-06-17 21:06:50.243936', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (490, '127.0.0.1', '2024-06-17 21:06:50.270661', '/myapp/index/user/info', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (491, '127.0.0.1', '2024-06-17 21:06:50.278912', '/myapp/index/user/info', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (492, '127.0.0.1', '2024-06-17 21:06:50.277453', '/myapp/index/user/info', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (493, '127.0.0.1', '2024-06-17 21:06:50.296228', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (494, '127.0.0.1', '2024-06-17 21:06:50.311595', '/upload/avatar/1718629582051.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (495, '127.0.0.1', '2024-06-17 21:06:51.406021', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (496, '127.0.0.1', '2024-06-17 21:06:52.411416', '/myapp/index/comment/listMyComments', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (497, '127.0.0.1', '2024-06-17 21:06:52.881730', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (498, '127.0.0.1', '2024-06-17 21:06:54.389450', '/myapp/index/notice/list_api', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (499, '127.0.0.1', '2024-06-17 21:06:55.114310', '/myapp/index/order/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (500, '127.0.0.1', '2024-06-17 21:08:49.623853', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (501, '127.0.0.1', '2024-06-17 21:08:49.653988', '/myapp/index/user/info', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (502, '127.0.0.1', '2024-06-17 21:08:49.694948', '/upload/ad/1718629427296.jpeg', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (503, '127.0.0.1', '2024-06-17 21:08:49.704288', '/upload/ad/1718629439286.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (504, '127.0.0.1', '2024-06-17 21:08:49.713053', '/upload/ad/1718629427296.jpeg', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (505, '127.0.0.1', '2024-06-17 21:08:49.728256', '/upload/ad/1718629427296.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (506, '127.0.0.1', '2024-06-17 21:08:49.761866', '/upload/avatar/1718629582051.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (507, '127.0.0.1', '2024-06-17 21:08:49.768506', '/upload/avatar/1718629582051.jpeg', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (508, '127.0.0.1', '2024-06-17 21:08:49.826094', '/upload/cover/1718628226156.jpeg', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (509, '127.0.0.1', '2024-06-17 21:08:49.829346', '/upload/cover/1718628226156.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (510, '127.0.0.1', '2024-06-17 21:08:49.863352', '/upload/cover/1718627983822.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (511, '127.0.0.1', '2024-06-17 21:08:49.863541', '/upload/cover/1718627983822.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (512, '127.0.0.1', '2024-06-17 21:10:00.596271', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (513, '127.0.0.1', '2024-06-17 21:10:01.115506', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (514, '127.0.0.1', '2024-06-17 21:10:01.235726', '/myapp/admin/classification/list', 'GET', NULL, '124');
INSERT INTO `b_op_log` VALUES (515, '127.0.0.1', '2024-06-17 21:10:02.572063', '/upload/cover/1718628310221.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (516, '127.0.0.1', '2024-06-17 21:10:06.251359', '/myapp/admin/thing/update', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (517, '127.0.0.1', '2024-06-17 21:10:06.457078', '/myapp/admin/thing/list', 'GET', NULL, '155');
INSERT INTO `b_op_log` VALUES (518, '127.0.0.1', '2024-06-17 21:11:01.713237', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (519, '127.0.0.1', '2024-06-17 21:11:01.808312', '/myapp/admin/classification/list', 'GET', NULL, '113');
INSERT INTO `b_op_log` VALUES (520, '127.0.0.1', '2024-06-17 21:11:05.704166', '/myapp/admin/thing/update', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (521, '127.0.0.1', '2024-06-17 21:11:05.944094', '/myapp/admin/thing/list', 'GET', NULL, '170');
INSERT INTO `b_op_log` VALUES (522, '127.0.0.1', '2024-06-17 21:11:12.615938', '/myapp/admin/thing/update', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (523, '127.0.0.1', '2024-06-17 21:11:12.843182', '/myapp/admin/thing/list', 'GET', NULL, '159');
INSERT INTO `b_op_log` VALUES (524, '127.0.0.1', '2024-06-17 21:11:18.567807', '/myapp/admin/thing/update', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (525, '127.0.0.1', '2024-06-17 21:11:18.799583', '/myapp/admin/thing/list', 'GET', NULL, '158');
INSERT INTO `b_op_log` VALUES (526, '127.0.0.1', '2024-06-17 21:11:30.795369', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (527, '127.0.0.1', '2024-06-17 21:11:30.795369', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (528, '127.0.0.1', '2024-06-17 21:11:30.811047', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (529, '127.0.0.1', '2024-06-17 21:11:30.839042', '/upload/avatar/1718629582051.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (530, '127.0.0.1', '2024-06-17 21:11:30.868380', '/upload/avatar/1718629582051.jpeg', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (531, '127.0.0.1', '2024-06-17 21:11:30.925877', '/upload/cover/1718628114680.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (532, '127.0.0.1', '2024-06-17 21:11:30.925877', '/upload/cover/1718628114680.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (533, '127.0.0.1', '2024-06-17 21:11:30.946741', '/upload/cover/1718628075341.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (534, '127.0.0.1', '2024-06-17 21:11:30.946741', '/upload/cover/1718627938909.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (535, '127.0.0.1', '2024-06-17 21:11:30.946741', '/upload/cover/1718628075341.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (536, '127.0.0.1', '2024-06-17 21:11:30.953921', '/upload/cover/1718627889667.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (537, '127.0.0.1', '2024-06-17 21:11:32.289771', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (538, '127.0.0.1', '2024-06-17 21:11:32.293312', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (539, '127.0.0.1', '2024-06-17 21:11:32.313747', '/myapp/index/comment/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (540, '127.0.0.1', '2024-06-17 21:11:32.373274', '/upload/ad/1718629427296.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (541, '127.0.0.1', '2024-06-17 21:11:32.373274', '/upload/ad/1718629427296.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (542, '127.0.0.1', '2024-06-17 21:11:32.392722', '/upload/ad/1718629427296.jpeg', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (543, '127.0.0.1', '2024-06-17 21:11:32.400264', '/upload/ad/1718629427296.jpeg', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (544, '127.0.0.1', '2024-06-17 21:11:32.439999', '/upload/ad/1718629427296.jpeg', 'GET', NULL, '117');
INSERT INTO `b_op_log` VALUES (545, '127.0.0.1', '2024-06-17 21:31:19.846687', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (546, '127.0.0.1', '2024-06-17 21:31:20.597066', '/myapp/admin/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (547, '127.0.0.1', '2024-06-17 21:31:20.711708', '/myapp/admin/classification/list', 'GET', NULL, '137');
INSERT INTO `b_op_log` VALUES (548, '127.0.0.1', '2024-06-18 19:46:03.409796', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (549, '127.0.0.1', '2024-06-18 19:46:03.454798', '/myapp/admin/classification/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (550, '127.0.0.1', '2024-06-18 19:46:25.747159', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (551, '127.0.0.1', '2024-06-18 19:46:26.255718', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (552, '127.0.0.1', '2024-06-18 19:46:26.294697', '/myapp/admin/classification/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (553, '127.0.0.1', '2024-06-18 19:46:28.942881', '/upload/cover/1718628310221.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (554, '127.0.0.1', '2024-06-18 19:46:47.213102', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (555, '127.0.0.1', '2024-06-18 19:46:48.191588', '/myapp/admin/comment/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (556, '127.0.0.1', '2024-06-18 19:46:52.720595', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (557, '127.0.0.1', '2024-06-18 19:46:52.720595', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (558, '127.0.0.1', '2024-06-18 19:46:52.720595', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (559, '127.0.0.1', '2024-06-18 19:46:52.735388', '/upload/avatar/1718629582051.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (560, '127.0.0.1', '2024-06-18 19:46:52.735388', '/upload/avatar/1718629582051.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (561, '127.0.0.1', '2024-06-18 19:46:52.760373', '/upload/cover/1718628114680.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (562, '127.0.0.1', '2024-06-18 19:46:52.761447', '/upload/cover/1718627983822.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (563, '127.0.0.1', '2024-06-18 19:46:52.766856', '/upload/cover/1718627938909.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (564, '127.0.0.1', '2024-06-18 19:46:52.767019', '/upload/cover/1718628197332.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (565, '127.0.0.1', '2024-06-18 19:46:52.767434', '/upload/cover/1718628075341.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (566, '127.0.0.1', '2024-06-18 19:46:52.767710', '/upload/cover/1718627938909.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (567, '127.0.0.1', '2024-06-18 19:46:52.782229', '/upload/cover/1718627889667.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (568, '127.0.0.1', '2024-06-18 19:47:01.948876', '/myapp/admin/classification/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (569, '127.0.0.1', '2024-06-18 19:47:01.994290', '/myapp/admin/classification/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (570, '127.0.0.1', '2024-06-18 19:47:16.850765', '/myapp/admin/thing/update', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (571, '127.0.0.1', '2024-06-18 19:47:16.921236', '/myapp/admin/thing/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (572, '127.0.0.1', '2024-06-18 19:47:21.622298', '/myapp/index/thing/list', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (573, '127.0.0.1', '2024-06-18 19:47:21.623650', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (574, '127.0.0.1', '2024-06-18 19:47:21.623957', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (575, '127.0.0.1', '2024-06-18 19:47:21.637981', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (576, '127.0.0.1', '2024-06-18 19:49:01.473810', '/myapp/admin/classification/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (577, '127.0.0.1', '2024-06-18 19:49:01.558952', '/myapp/admin/classification/list', 'GET', NULL, '123');
INSERT INTO `b_op_log` VALUES (578, '127.0.0.1', '2024-06-18 19:49:09.624957', '/myapp/admin/ad/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (579, '127.0.0.1', '2024-06-18 19:49:09.640418', '/myapp/admin/ad/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (580, '127.0.0.1', '2024-06-18 19:49:09.659969', '/myapp/admin/ad/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (581, '127.0.0.1', '2024-06-18 19:49:09.670796', '/myapp/admin/ad/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (582, '127.0.0.1', '2024-06-18 19:49:09.732624', '/upload/ad/1718629427296.jpeg', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (583, '127.0.0.1', '2024-06-18 19:49:09.738197', '/upload/ad/1718629439286.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (584, '127.0.0.1', '2024-06-18 19:49:09.752094', '/upload/ad/1718629427296.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (585, '127.0.0.1', '2024-06-18 19:49:09.772947', '/upload/ad/1718629427296.jpeg', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (586, '127.0.0.1', '2024-06-18 19:49:11.048567', '/myapp/admin/ad/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (587, '127.0.0.1', '2024-06-18 19:49:11.064213', '/myapp/admin/ad/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (588, '127.0.0.1', '2024-06-18 19:49:11.086603', '/myapp/admin/ad/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (589, '127.0.0.1', '2024-06-18 19:49:11.098600', '/myapp/admin/ad/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (590, '127.0.0.1', '2024-06-18 19:49:11.121046', '/myapp/admin/ad/list', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (591, '127.0.0.1', '2024-06-18 19:49:11.144954', '/myapp/admin/ad/list', 'GET', NULL, '108');
INSERT INTO `b_op_log` VALUES (592, '127.0.0.1', '2024-06-18 19:49:31.995534', '/myapp/index/order/create', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (593, '127.0.0.1', '2024-06-18 19:49:32.125059', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (594, '127.0.0.1', '2024-06-18 19:49:32.128446', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (595, '127.0.0.1', '2024-06-18 19:49:36.455474', '/myapp/admin/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (596, '127.0.0.1', '2024-06-18 19:49:37.229689', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (597, '127.0.0.1', '2024-06-18 19:49:37.325968', '/myapp/admin/classification/list', 'GET', NULL, '108');
INSERT INTO `b_op_log` VALUES (598, '127.0.0.1', '2024-06-18 19:49:40.908707', '/myapp/index/thing/getWishThingList', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (599, '127.0.0.1', '2024-06-18 19:49:40.916106', '/myapp/index/thing/getWishThingList', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (600, '127.0.0.1', '2024-06-18 19:49:40.981378', '/myapp/index/user/info', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (601, '127.0.0.1', '2024-06-18 19:49:40.984975', '/myapp/index/user/info', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (602, '127.0.0.1', '2024-06-18 19:49:40.999802', '/myapp/index/user/info', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (603, '127.0.0.1', '2024-06-18 19:49:40.999802', '/myapp/index/user/info', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (604, '127.0.0.1', '2024-06-18 19:49:43.893694', '/myapp/index/thing/detail', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (605, '127.0.0.1', '2024-06-18 19:49:43.899004', '/myapp/index/thing/detail', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (606, '127.0.0.1', '2024-06-18 19:49:43.909338', '/myapp/index/thing/detail', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (607, '127.0.0.1', '2024-06-18 19:49:43.925977', '/myapp/index/thing/detail', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (608, '127.0.0.1', '2024-06-18 19:49:43.974364', '/myapp/index/thing/detail', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (609, '127.0.0.1', '2024-06-18 19:49:44.012532', '/myapp/index/thing/detail', 'GET', NULL, '135');
INSERT INTO `b_op_log` VALUES (610, '127.0.0.1', '2024-06-18 19:49:44.806954', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (611, '127.0.0.1', '2024-06-18 19:49:44.806954', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (612, '127.0.0.1', '2024-06-18 19:49:44.823551', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (613, '127.0.0.1', '2024-06-18 19:49:44.823551', '/myapp/index/user/info', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (614, '127.0.0.1', '2024-06-18 19:49:44.887407', '/myapp/index/user/info', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (615, '127.0.0.1', '2024-06-18 19:49:44.895557', '/myapp/index/user/info', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (616, '127.0.0.1', '2024-06-18 19:49:52.322238', '/myapp/index/order/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (617, '127.0.0.1', '2024-06-18 19:50:07.779092', '/myapp/index/order/create', 'POST', NULL, '15');
INSERT INTO `b_op_log` VALUES (618, '127.0.0.1', '2024-06-18 19:50:10.809535', '/myapp/index/order/create', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (619, '127.0.0.1', '2024-06-18 19:50:11.228379', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (620, '127.0.0.1', '2024-06-18 19:50:11.244180', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (621, '127.0.0.1', '2024-06-18 19:50:14.988582', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (622, '127.0.0.1', '2024-06-18 19:50:15.589763', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (623, '127.0.0.1', '2024-06-18 19:50:15.703439', '/myapp/admin/classification/list', 'GET', NULL, '120');
INSERT INTO `b_op_log` VALUES (624, '127.0.0.1', '2024-06-18 19:50:22.625386', '/myapp/admin/thing/update', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (625, '127.0.0.1', '2024-06-18 19:50:22.834119', '/myapp/admin/thing/list', 'GET', NULL, '141');
INSERT INTO `b_op_log` VALUES (626, '127.0.0.1', '2024-06-18 19:50:28.046319', '/myapp/admin/thing/update', 'POST', NULL, '56');
INSERT INTO `b_op_log` VALUES (627, '127.0.0.1', '2024-06-18 19:50:28.242403', '/myapp/admin/thing/list', 'GET', NULL, '134');
INSERT INTO `b_op_log` VALUES (628, '127.0.0.1', '2024-06-18 19:50:31.150192', '/myapp/admin/thing/update', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (629, '127.0.0.1', '2024-06-18 19:50:31.369341', '/myapp/admin/thing/list', 'GET', NULL, '140');
INSERT INTO `b_op_log` VALUES (630, '127.0.0.1', '2024-06-18 19:50:37.108357', '/myapp/admin/thing/update', 'POST', NULL, '68');
INSERT INTO `b_op_log` VALUES (631, '127.0.0.1', '2024-06-18 19:50:37.368734', '/myapp/admin/thing/list', 'GET', NULL, '196');
INSERT INTO `b_op_log` VALUES (632, '127.0.0.1', '2024-06-18 19:50:42.362291', '/myapp/admin/thing/update', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (633, '127.0.0.1', '2024-06-18 19:50:42.567589', '/myapp/admin/thing/list', 'GET', NULL, '134');
INSERT INTO `b_op_log` VALUES (634, '127.0.0.1', '2024-06-18 19:50:47.309891', '/myapp/admin/thing/update', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (635, '127.0.0.1', '2024-06-18 19:50:47.526197', '/myapp/admin/thing/list', 'GET', NULL, '149');
INSERT INTO `b_op_log` VALUES (636, '127.0.0.1', '2024-06-18 19:50:51.792371', '/myapp/admin/thing/update', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (637, '127.0.0.1', '2024-06-18 19:50:52.066954', '/myapp/admin/thing/list', 'GET', NULL, '200');
INSERT INTO `b_op_log` VALUES (638, '127.0.0.1', '2024-06-18 19:50:56.540511', '/myapp/admin/thing/update', 'POST', NULL, '64');
INSERT INTO `b_op_log` VALUES (639, '127.0.0.1', '2024-06-18 19:50:56.780708', '/myapp/admin/thing/list', 'GET', NULL, '145');
INSERT INTO `b_op_log` VALUES (640, '127.0.0.1', '2024-06-18 19:51:02.872687', '/myapp/admin/thing/update', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (641, '127.0.0.1', '2024-06-18 19:51:03.078912', '/myapp/admin/thing/list', 'GET', NULL, '167');
INSERT INTO `b_op_log` VALUES (642, '127.0.0.1', '2024-06-18 19:51:07.346978', '/myapp/admin/thing/update', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (643, '127.0.0.1', '2024-06-18 19:51:07.578858', '/myapp/admin/thing/list', 'GET', NULL, '183');
INSERT INTO `b_op_log` VALUES (644, '127.0.0.1', '2024-06-18 19:51:14.376121', '/myapp/admin/thing/update', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (645, '127.0.0.1', '2024-06-18 19:51:14.588440', '/myapp/admin/thing/list', 'GET', NULL, '149');
INSERT INTO `b_op_log` VALUES (646, '127.0.0.1', '2024-06-18 19:51:18.594032', '/myapp/admin/thing/update', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (647, '127.0.0.1', '2024-06-18 19:51:18.831402', '/myapp/admin/thing/list', 'GET', NULL, '161');
INSERT INTO `b_op_log` VALUES (648, '127.0.0.1', '2024-06-18 19:51:23.761881', '/myapp/admin/thing/update', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (649, '127.0.0.1', '2024-06-18 19:51:24.014150', '/myapp/admin/thing/list', 'GET', NULL, '182');
INSERT INTO `b_op_log` VALUES (650, '127.0.0.1', '2024-06-18 19:51:28.138740', '/myapp/admin/thing/update', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (651, '127.0.0.1', '2024-06-18 19:51:28.323667', '/myapp/admin/thing/list', 'GET', NULL, '116');
INSERT INTO `b_op_log` VALUES (652, '127.0.0.1', '2024-06-18 19:51:36.235166', '/myapp/admin/ad/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (653, '127.0.0.1', '2024-06-18 19:51:36.235166', '/myapp/admin/ad/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (654, '127.0.0.1', '2024-06-18 19:51:36.246898', '/myapp/admin/ad/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (655, '127.0.0.1', '2024-06-18 19:51:36.257338', '/myapp/admin/ad/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (656, '127.0.0.1', '2024-06-18 19:51:36.301819', '/myapp/admin/ad/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (657, '127.0.0.1', '2024-06-18 19:51:36.321483', '/myapp/admin/ad/list', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (658, '127.0.0.1', '2024-06-18 19:51:56.382598', '/myapp/index/comment/listMyComments', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (659, '127.0.0.1', '2024-06-18 19:51:57.371644', '/myapp/index/thing/getWishThingList', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (660, '127.0.0.1', '2024-06-18 19:51:58.473782', '/myapp/index/comment/listMyComments', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (661, '127.0.0.1', '2024-06-18 19:51:59.137738', '/myapp/index/order/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (662, '127.0.0.1', '2024-06-18 19:52:08.736126', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (663, '127.0.0.1', '2024-06-18 19:52:08.736126', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (664, '127.0.0.1', '2024-06-18 19:52:08.805255', '/myapp/index/user/info', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (665, '127.0.0.1', '2024-06-18 19:52:11.020525', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (666, '127.0.0.1', '2024-06-18 19:52:11.030691', '/myapp/index/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (667, '127.0.0.1', '2024-06-18 19:52:11.034606', '/myapp/index/comment/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (668, '127.0.0.1', '2024-06-18 19:52:11.045319', '/myapp/index/comment/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (669, '127.0.0.1', '2024-06-18 19:52:11.075857', '/myapp/index/comment/list', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (670, '127.0.0.1', '2024-06-18 19:52:11.120870', '/myapp/index/comment/list', 'GET', NULL, '125');
INSERT INTO `b_op_log` VALUES (671, '127.0.0.1', '2024-06-18 19:52:36.619859', '/myapp/admin/ad/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (672, '127.0.0.1', '2024-06-18 19:52:36.695624', '/myapp/admin/ad/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (673, '127.0.0.1', '2024-06-18 19:52:36.720999', '/myapp/admin/ad/list', 'GET', NULL, '120');
INSERT INTO `b_op_log` VALUES (674, '127.0.0.1', '2024-06-18 19:52:36.735726', '/myapp/admin/ad/list', 'GET', NULL, '130');
INSERT INTO `b_op_log` VALUES (675, '127.0.0.1', '2024-06-18 19:52:36.787438', '/myapp/admin/ad/list', 'GET', NULL, '187');
INSERT INTO `b_op_log` VALUES (676, '127.0.0.1', '2024-06-18 19:52:36.792449', '/myapp/admin/ad/list', 'GET', NULL, '193');
INSERT INTO `b_op_log` VALUES (677, '127.0.0.1', '2024-06-18 19:52:45.019780', '/myapp/admin/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (678, '127.0.0.1', '2024-06-18 19:52:51.449491', '/myapp/index/comment/create', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (679, '127.0.0.1', '2024-06-18 19:52:51.496743', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (680, '127.0.0.1', '2024-06-18 19:52:52.716647', '/myapp/index/comment/create', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (681, '127.0.0.1', '2024-06-18 19:52:52.748763', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (682, '127.0.0.1', '2024-06-18 19:52:55.241718', '/myapp/admin/user/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (683, '127.0.0.1', '2024-06-18 19:52:55.932389', '/myapp/admin/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (684, '127.0.0.1', '2024-06-18 19:52:57.080039', '/myapp/admin/order/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (685, '127.0.0.1', '2024-06-18 19:52:59.130541', '/myapp/admin/ad/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (686, '127.0.0.1', '2024-06-18 19:52:59.800390', '/myapp/admin/notice/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (687, '127.0.0.1', '2024-06-18 19:53:01.659548', '/myapp/admin/feedback/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (688, '127.0.0.1', '2024-06-18 19:53:02.251742', '/myapp/admin/overview/count', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (689, '127.0.0.1', '2024-06-18 19:53:06.022559', '/myapp/admin/overview/count', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (690, '127.0.0.1', '2024-06-18 19:53:08.283323', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (691, '127.0.0.1', '2024-06-18 19:53:08.428206', '/myapp/admin/classification/list', 'GET', NULL, '150');
INSERT INTO `b_op_log` VALUES (692, '127.0.0.1', '2024-06-18 19:53:12.747065', '/myapp/index/thing/addWishUser', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (693, '127.0.0.1', '2024-06-18 19:53:12.831573', '/myapp/index/thing/detail', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (694, '127.0.0.1', '2024-06-18 19:53:13.134396', '/myapp/index/thing/addCollectUser', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (695, '127.0.0.1', '2024-06-18 19:53:13.209629', '/myapp/index/thing/detail', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (696, '127.0.0.1', '2024-06-18 19:53:16.404448', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (697, '127.0.0.1', '2024-06-18 19:53:16.408480', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (698, '127.0.0.1', '2024-06-18 19:53:16.449386', '/myapp/index/thing/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (699, '127.0.0.1', '2024-06-18 19:53:24.699726', '/myapp/index/user/register', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (700, '127.0.0.1', '2024-06-18 19:53:27.665879', '/myapp/index/user/login', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (701, '127.0.0.1', '2024-06-18 19:53:27.766171', '/myapp/index/notice/list_api', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (702, '127.0.0.1', '2024-06-18 19:53:27.807899', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (703, '127.0.0.1', '2024-06-18 19:53:27.818332', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (704, '127.0.0.1', '2024-06-18 19:53:27.867763', '/myapp/index/user/info', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (705, '127.0.0.1', '2024-06-18 19:53:30.758239', '/myapp/index/thing/detail', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (706, '127.0.0.1', '2024-06-18 19:53:30.776056', '/myapp/index/thing/detail', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (707, '127.0.0.1', '2024-06-18 19:53:30.788655', '/myapp/index/thing/detail', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (708, '127.0.0.1', '2024-06-18 19:53:30.817429', '/myapp/index/thing/detail', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (709, '127.0.0.1', '2024-06-18 19:53:30.847130', '/myapp/index/thing/detail', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (710, '127.0.0.1', '2024-06-18 19:53:30.868181', '/myapp/index/thing/detail', 'GET', NULL, '117');
INSERT INTO `b_op_log` VALUES (711, '127.0.0.1', '2024-06-18 19:53:32.159766', '/myapp/index/thing/addWishUser', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (712, '127.0.0.1', '2024-06-18 19:53:32.251052', '/myapp/index/thing/detail', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (713, '127.0.0.1', '2024-06-18 19:53:32.729247', '/myapp/index/thing/addCollectUser', 'POST', NULL, '79');
INSERT INTO `b_op_log` VALUES (714, '127.0.0.1', '2024-06-18 19:53:32.784219', '/myapp/index/thing/detail', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (715, '127.0.0.1', '2024-06-18 19:53:34.031646', '/myapp/index/thing/getRecommend', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (716, '127.0.0.1', '2024-06-18 19:53:34.041721', '/myapp/index/thing/getRecommend', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (717, '127.0.0.1', '2024-06-18 19:53:34.050928', '/myapp/index/thing/getRecommend', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (718, '127.0.0.1', '2024-06-18 19:53:34.072836', '/myapp/index/thing/getRecommend', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (719, '127.0.0.1', '2024-06-18 19:53:34.093848', '/myapp/index/thing/getRecommend', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (720, '127.0.0.1', '2024-06-18 19:53:34.112971', '/myapp/index/thing/getRecommend', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (721, '127.0.0.1', '2024-06-18 19:55:08.865728', '/myapp/index/notice/list_api', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (722, '127.0.0.1', '2024-06-18 19:55:08.887430', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (723, '127.0.0.1', '2024-06-18 19:55:16.325910', '/myapp/index/order/create', 'POST', NULL, '65');
INSERT INTO `b_op_log` VALUES (724, '127.0.0.1', '2024-06-18 19:55:16.418555', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (725, '127.0.0.1', '2024-06-18 19:55:16.428671', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (726, '127.0.0.1', '2024-06-18 19:55:18.914396', '/myapp/admin/ad/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (727, '127.0.0.1', '2024-06-18 19:55:18.934198', '/myapp/admin/ad/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (728, '127.0.0.1', '2024-06-18 19:55:18.971609', '/myapp/admin/ad/list', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (729, '127.0.0.1', '2024-06-18 19:55:18.998716', '/myapp/admin/ad/list', 'GET', NULL, '108');
INSERT INTO `b_op_log` VALUES (730, '127.0.0.1', '2024-06-18 19:55:19.019634', '/myapp/admin/ad/list', 'GET', NULL, '129');
INSERT INTO `b_op_log` VALUES (731, '127.0.0.1', '2024-06-18 19:55:19.043645', '/myapp/admin/ad/list', 'GET', NULL, '141');
INSERT INTO `b_op_log` VALUES (732, '127.0.0.1', '2024-06-18 19:55:28.400325', '/myapp/admin/order/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (733, '127.0.0.1', '2024-06-18 19:55:33.625031', '/myapp/admin/order/cancel_order', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (734, '127.0.0.1', '2024-06-18 19:55:33.705415', '/myapp/admin/order/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (735, '127.0.0.1', '2024-06-18 19:55:38.673336', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (736, '127.0.0.1', '2024-06-18 19:55:39.667395', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (737, '127.0.0.1', '2024-06-18 19:55:39.746645', '/myapp/admin/classification/list', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (738, '127.0.0.1', '2024-06-18 19:55:42.200331', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (739, '127.0.0.1', '2024-06-18 19:55:43.381153', '/myapp/admin/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (740, '127.0.0.1', '2024-06-18 19:56:17.708173', '/myapp/admin/user/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (741, '127.0.0.1', '2024-06-18 19:56:18.413921', '/myapp/admin/order/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (742, '127.0.0.1', '2024-06-18 19:56:20.543129', '/myapp/admin/ad/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (743, '127.0.0.1', '2024-06-18 19:56:28.284038', '/myapp/index/thing/getRecommend', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (744, '127.0.0.1', '2024-06-18 19:56:28.320733', '/myapp/index/thing/getRecommend', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (745, '127.0.0.1', '2024-06-18 19:56:28.327363', '/myapp/index/thing/getRecommend', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (746, '127.0.0.1', '2024-06-18 19:56:28.932561', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (747, '127.0.0.1', '2024-06-18 19:56:28.932561', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (748, '127.0.0.1', '2024-06-18 19:56:28.951507', '/myapp/index/thing/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (749, '127.0.0.1', '2024-06-18 19:56:28.983743', '/myapp/index/thing/list', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (750, '127.0.0.1', '2024-06-18 19:57:01.077019', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (751, '127.0.0.1', '2024-06-18 19:57:01.080031', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (752, '127.0.0.1', '2024-06-18 19:57:01.087128', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (753, '127.0.0.1', '2024-06-18 19:57:01.106566', '/myapp/index/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (754, '127.0.0.1', '2024-06-18 19:57:01.405693', '/myapp/admin/ad/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (755, '127.0.0.1', '2024-06-18 19:58:07.534397', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (756, '127.0.0.1', '2024-06-18 19:58:07.551111', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (757, '127.0.0.1', '2024-06-18 19:58:07.551111', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (758, '127.0.0.1', '2024-06-18 19:58:07.584235', '/myapp/index/thing/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (759, '127.0.0.1', '2024-06-18 19:58:58.380453', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (760, '127.0.0.1', '2024-06-18 19:58:58.380453', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (761, '127.0.0.1', '2024-06-18 19:58:58.395927', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (762, '127.0.0.1', '2024-06-18 19:58:58.432757', '/myapp/index/thing/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (763, '127.0.0.1', '2024-06-18 19:59:01.545868', '/myapp/index/thing/getRecommend', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (764, '127.0.0.1', '2024-06-18 19:59:01.552011', '/myapp/index/thing/getRecommend', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (765, '127.0.0.1', '2024-06-18 19:59:01.566733', '/myapp/index/thing/getRecommend', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (766, '127.0.0.1', '2024-06-18 19:59:02.425553', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (767, '127.0.0.1', '2024-06-18 19:59:02.427251', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (768, '127.0.0.1', '2024-06-18 19:59:02.427251', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (769, '127.0.0.1', '2024-06-18 19:59:02.461748', '/myapp/index/thing/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (770, '127.0.0.1', '2024-06-18 19:59:37.078588', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (771, '127.0.0.1', '2024-06-18 19:59:37.078588', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (772, '127.0.0.1', '2024-06-18 19:59:37.094294', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (773, '127.0.0.1', '2024-06-18 19:59:37.110700', '/myapp/index/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (774, '127.0.0.1', '2024-06-18 19:59:57.929332', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (775, '127.0.0.1', '2024-06-18 19:59:57.936581', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (776, '127.0.0.1', '2024-06-18 19:59:57.943908', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (777, '127.0.0.1', '2024-06-18 19:59:57.966297', '/myapp/index/thing/list', 'GET', NULL, '49');

-- ----------------------------
-- Table structure for b_order
-- ----------------------------
DROP TABLE IF EXISTS `b_order`;
CREATE TABLE `b_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_number` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `count` int(11) NOT NULL,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_time` datetime(6) NULL DEFAULT NULL,
  `receiver_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_order_thing_id_4e345e2c_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_order_user_id_64854046_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_order_thing_id_4e345e2c_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_order_user_id_64854046_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_order
-- ----------------------------
INSERT INTO `b_order` VALUES (1, '1718629216427', 2, '1', '2024-06-17 21:00:16.437525', '刘德华', '北京市朝阳路99号', '1231111', '', 7, 3);
INSERT INTO `b_order` VALUES (2, '1718711371964', 2, '1', '2024-06-18 19:49:31.979844', '王猛', '上海市某路', '13211111111', '', 5, 3);
INSERT INTO `b_order` VALUES (3, '1718711410779', 1, '2', '2024-06-18 19:50:10.793319', '刘新建', '济南市奥体西路99号', '13555552222', '', 5, 3);
INSERT INTO `b_order` VALUES (4, '1718711716285', 1, '1', '2024-06-18 19:55:16.297710', '张三', '', '13222222222', '', 5, 5);

-- ----------------------------
-- Table structure for b_record
-- ----------------------------
DROP TABLE IF EXISTS `b_record`;
CREATE TABLE `b_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `score` int(11) NOT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_record_thing_id_d8e773c0_fk_b_thing_id`(`thing_id`) USING BTREE,
  CONSTRAINT `b_record_thing_id_d8e773c0_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_record
-- ----------------------------
INSERT INTO `b_record` VALUES (1, 8, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (2, 7, 11, '127.0.0.1');
INSERT INTO `b_record` VALUES (3, 6, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (4, 5, 18, '127.0.0.1');
INSERT INTO `b_record` VALUES (5, 4, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (6, 11, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (7, 3, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (8, 9, 2, '127.0.0.2');
INSERT INTO `b_record` VALUES (9, 2, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (10, 12, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (11, 1, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (12, 10, 1, '127.0.0.2');

-- ----------------------------
-- Table structure for b_thing
-- ----------------------------
DROP TABLE IF EXISTS `b_thing`;
CREATE TABLE `b_thing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `price` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pinzhong` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `pv` int(11) NOT NULL,
  `recommend_count` int(11) NOT NULL,
  `wish_count` int(11) NOT NULL,
  `collect_count` int(11) NOT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `rate` int(11) NOT NULL,
  `baozhiqi` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shengchanriqi` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `repertory` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_thing_classification_id_47675ac4_fk_b_classification_id`(`classification_id`) USING BTREE,
  INDEX `b_thing_user_id_9918a633_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_classification_id_47675ac4_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_user_id_9918a633_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing
-- ----------------------------
INSERT INTO `b_thing` VALUES (1, '超甜西瓜阳光5号', 'cover/1718627889667.jpeg', '农业生产出来的各种农作物、畜禽、水产品以及与农业生产相关的产品。农产品是人类生活中必不可少的食物来源，同时也作为原材料用于食品加工、医药、化工、纺织等领域。以下是一些常见的农产品简介：\r\n\r\n农作物：包括谷物（如稻谷、小麦、玉米）、豆类（大豆、黄豆、绿豆）、蔬菜（西红柿、黄瓜、胡萝卜）、水果（苹果、香蕉、橙子）、瓜果（西瓜、哈密瓜）等。这些作物提供了人们所需的主要食物和营养素。\r\n\r\n畜禽：包括家畜（牛、猪、羊、马）和家禽（鸡、鸭、鹅、鸽子）。畜禽产品提供了人们所需的动物蛋白和其他营养物质。\r\n\r\n水产品：包括各种海产品（鱼、虾、蟹、贝类）和淡水产品（鱼、虾、蟹）。水产品是人们饮食中重要的蛋白来源。\r\n\r\n其他农产品：还包括蜂蜜、蜂蜜制品、蜂蜡、林产品（木材、竹材）、药材、茶叶、花卉等。\r\n\r\n农产品在全球各地被广泛生产和消费，对人类生活产生着重要影响。因此，农业生产和农产品市场也是国民经济的重要组成部分。为确保农产品的质量和安全，一些国家和地区还制定了相关的农产品质量标准和监管政策。', '32', '阳光5号', '0', '2024-06-17 20:38:41.865478', 1, 0, 0, 0, 1, NULL, 3, '7天', '2024年1月1日', 3444);
INSERT INTO `b_thing` VALUES (2, '超级好吃香蕉322', 'cover/1718627938909.jpeg', '农业生产出来的各种农作物、畜禽、水产品以及与农业生产相关的产品。农产品是人类生活中必不可少的食物来源，同时也作为原材料用于食品加工、医药、化工、纺织等领域。以下是一些常见的农产品简介：\r\n\r\n农作物：包括谷物（如稻谷、小麦、玉米）、豆类（大豆、黄豆、绿豆）、蔬菜（西红柿、黄瓜、胡萝卜）、水果（苹果、香蕉、橙子）、瓜果（西瓜、哈密瓜）等。这些作物提供了人们所需的主要食物和营养素。\r\n\r\n畜禽：包括家畜（牛、猪、羊、马）和家禽（鸡、鸭、鹅、鸽子）。畜禽产品提供了人们所需的动物蛋白和其他营养物质。\r\n\r\n水产品：包括各种海产品（鱼、虾、蟹、贝类）和淡水产品（鱼、虾、蟹）。水产品是人们饮食中重要的蛋白来源。\r\n\r\n其他农产品：还包括蜂蜜、蜂蜜制品、蜂蜡、林产品（木材、竹材）、药材、茶叶、花卉等。\r\n\r\n农产品在全球各地被广泛生产和消费，对人类生活产生着重要影响。因此，农业生产和农产品市场也是国民经济的重要组成部分。为确保农产品的质量和安全，一些国家和地区还制定了相关的农产品质量标准和监管政策。', '45', '海南5号', '0', '2024-06-17 20:39:25.825590', 1, 0, 0, 0, 2, NULL, 3, '120天', '2020年8月1日', 3211);
INSERT INTO `b_thing` VALUES (3, '超级好吃果篮', 'cover/1718627983822.jpeg', '农业生产出来的各种农作物、畜禽、水产品以及与农业生产相关的产品。农产品是人类生活中必不可少的食物来源，同时也作为原材料用于食品加工、医药、化工、纺织等领域。以下是一些常见的农产品简介：\r\n\r\n农作物：包括谷物（如稻谷、小麦、玉米）、豆类（大豆、黄豆、绿豆）、蔬菜（西红柿、黄瓜、胡萝卜）、水果（苹果、香蕉、橙子）、瓜果（西瓜、哈密瓜）等。这些作物提供了人们所需的主要食物和营养素。\r\n\r\n畜禽：包括家畜（牛、猪、羊、马）和家禽（鸡、鸭、鹅、鸽子）。畜禽产品提供了人们所需的动物蛋白和其他营养物质。\r\n\r\n水产品：包括各种海产品（鱼、虾、蟹、贝类）和淡水产品（鱼、虾、蟹）。水产品是人们饮食中重要的蛋白来源。\r\n\r\n其他农产品：还包括蜂蜜、蜂蜜制品、蜂蜡、林产品（木材、竹材）、药材、茶叶、花卉等。\r\n\r\n农产品在全球各地被广泛生产和消费，对人类生活产生着重要影响。因此，农业生产和农产品市场也是国民经济的重要组成部分。为确保农产品的质量和安全，一些国家和地区还制定了相关的农产品质量标准和监管政策。', '43', '花篮9号', '0', '2024-06-17 20:40:03.818299', 1, 0, 0, 0, 1, NULL, 3, '100天', '2025年1月1日', 2112);
INSERT INTO `b_thing` VALUES (4, '好吃的粮油', 'cover/1718628075341.jpeg', '农业生产出来的各种农作物、畜禽、水产品以及与农业生产相关的产品。农产品是人类生活中必不可少的食物来源，同时也作为原材料用于食品加工、医药、化工、纺织等领域。以下是一些常见的农产品简介：\r\n\r\n农作物：包括谷物（如稻谷、小麦、玉米）、豆类（大豆、黄豆、绿豆）、蔬菜（西红柿、黄瓜、胡萝卜）、水果（苹果、香蕉、橙子）、瓜果（西瓜、哈密瓜）等。这些作物提供了人们所需的主要食物和营养素。\r\n\r\n畜禽：包括家畜（牛、猪、羊、马）和家禽（鸡、鸭、鹅、鸽子）。畜禽产品提供了人们所需的动物蛋白和其他营养物质。\r\n\r\n水产品：包括各种海产品（鱼、虾、蟹、贝类）和淡水产品（鱼、虾、蟹）。水产品是人们饮食中重要的蛋白来源。\r\n\r\n其他农产品：还包括蜂蜜、蜂蜜制品、蜂蜡、林产品（木材、竹材）、药材、茶叶、花卉等。\r\n\r\n农产品在全球各地被广泛生产和消费，对人类生活产生着重要影响。因此，农业生产和农产品市场也是国民经济的重要组成部分。为确保农产品的质量和安全，一些国家和地区还制定了相关的农产品质量标准和监管政策。', '55', '黑土地9号', '0', '2024-06-17 20:41:39.810292', 1, 0, 0, 0, 4, NULL, 3, '700天', '2025年1月1日', 2223);
INSERT INTO `b_thing` VALUES (5, '五香粮油', 'cover/1718628114680.jpeg', '农业生产出来的各种农作物、畜禽、水产品以及与农业生产相关的产品。农产品是人类生活中必不可少的食物来源，同时也作为原材料用于食品加工、医药、化工、纺织等领域。以下是一些常见的农产品简介：\r\n\r\n农作物：包括谷物（如稻谷、小麦、玉米）、豆类（大豆、黄豆、绿豆）、蔬菜（西红柿、黄瓜、胡萝卜）、水果（苹果、香蕉、橙子）、瓜果（西瓜、哈密瓜）等。这些作物提供了人们所需的主要食物和营养素。\r\n\r\n畜禽：包括家畜（牛、猪、羊、马）和家禽（鸡、鸭、鹅、鸽子）。畜禽产品提供了人们所需的动物蛋白和其他营养物质。\r\n\r\n水产品：包括各种海产品（鱼、虾、蟹、贝类）和淡水产品（鱼、虾、蟹）。水产品是人们饮食中重要的蛋白来源。\r\n\r\n其他农产品：还包括蜂蜜、蜂蜜制品、蜂蜡、林产品（木材、竹材）、药材、茶叶、花卉等。\r\n\r\n农产品在全球各地被广泛生产和消费，对人类生活产生着重要影响。因此，农业生产和农产品市场也是国民经济的重要组成部分。为确保农产品的质量和安全，一些国家和地区还制定了相关的农产品质量标准和监管政策。', '56', '济南11号', '0', '2024-06-17 20:42:14.716554', 18, 0, 2, 2, 4, NULL, 3, '2年', '2025年1月1日', 1110);
INSERT INTO `b_thing` VALUES (6, '蔬菜组合花篮', 'cover/1718628197332.jpeg', '农业生产出来的各种农作物、畜禽、水产品以及与农业生产相关的产品。农产品是人类生活中必不可少的食物来源，同时也作为原材料用于食品加工、医药、化工、纺织等领域。以下是一些常见的农产品简介：\r\n\r\n农作物：包括谷物（如稻谷、小麦、玉米）、豆类（大豆、黄豆、绿豆）、蔬菜（西红柿、黄瓜、胡萝卜）、水果（苹果、香蕉、橙子）、瓜果（西瓜、哈密瓜）等。这些作物提供了人们所需的主要食物和营养素。\r\n\r\n畜禽：包括家畜（牛、猪、羊、马）和家禽（鸡、鸭、鹅、鸽子）。畜禽产品提供了人们所需的动物蛋白和其他营养物质。\r\n\r\n水产品：包括各种海产品（鱼、虾、蟹、贝类）和淡水产品（鱼、虾、蟹）。水产品是人们饮食中重要的蛋白来源。\r\n\r\n其他农产品：还包括蜂蜜、蜂蜜制品、蜂蜡、林产品（木材、竹材）、药材、茶叶、花卉等。\r\n\r\n农产品在全球各地被广泛生产和消费，对人类生活产生着重要影响。因此，农业生产和农产品市场也是国民经济的重要组成部分。为确保农产品的质量和安全，一些国家和地区还制定了相关的农产品质量标准和监管政策。', '56', '河南9号', '0', '2024-06-17 20:43:34.016793', 1, 0, 0, 0, 5, NULL, 3, '3年', '2025年1月2日', 6666);
INSERT INTO `b_thing` VALUES (7, '好吃的西红柿蔬菜', 'cover/1718628226156.jpeg', '农业生产出来的各种农作物、畜禽、水产品以及与农业生产相关的产品。农产品是人类生活中必不可少的食物来源，同时也作为原材料用于食品加工、医药、化工、纺织等领域。以下是一些常见的农产品简介：\r\n\r\n农作物：包括谷物（如稻谷、小麦、玉米）、豆类（大豆、黄豆、绿豆）、蔬菜（西红柿、黄瓜、胡萝卜）、水果（苹果、香蕉、橙子）、瓜果（西瓜、哈密瓜）等。这些作物提供了人们所需的主要食物和营养素。\r\n\r\n畜禽：包括家畜（牛、猪、羊、马）和家禽（鸡、鸭、鹅、鸽子）。畜禽产品提供了人们所需的动物蛋白和其他营养物质。\r\n\r\n水产品：包括各种海产品（鱼、虾、蟹、贝类）和淡水产品（鱼、虾、蟹）。水产品是人们饮食中重要的蛋白来源。\r\n\r\n其他农产品：还包括蜂蜜、蜂蜜制品、蜂蜡、林产品（木材、竹材）、药材、茶叶、花卉等。\r\n\r\n农产品在全球各地被广泛生产和消费，对人类生活产生着重要影响。因此，农业生产和农产品市场也是国民经济的重要组成部分。为确保农产品的质量和安全，一些国家和地区还制定了相关的农产品质量标准和监管政策。', '51', '西红柿5号', '0', '2024-06-17 20:44:07.658260', 11, 0, 1, 1, 5, NULL, 4, '3年', '2025年1月3日', 2222);
INSERT INTO `b_thing` VALUES (8, '精美鸡蛋礼盒', 'cover/1718628310221.jpeg', '农业生产出来的各种农作物、畜禽、水产品以及与农业生产相关的产品。农产品是人类生活中必不可少的食物来源，同时也作为原材料用于食品加工、医药、化工、纺织等领域。以下是一些常见的农产品简介：\r\n\r\n农作物：包括谷物（如稻谷、小麦、玉米）、豆类（大豆、黄豆、绿豆）、蔬菜（西红柿、黄瓜、胡萝卜）、水果（苹果、香蕉、橙子）、瓜果（西瓜、哈密瓜）等。这些作物提供了人们所需的主要食物和营养素。\r\n\r\n畜禽：包括家畜（牛、猪、羊、马）和家禽（鸡、鸭、鹅、鸽子）。畜禽产品提供了人们所需的动物蛋白和其他营养物质。\r\n\r\n水产品：包括各种海产品（鱼、虾、蟹、贝类）和淡水产品（鱼、虾、蟹）。水产品是人们饮食中重要的蛋白来源。\r\n\r\n其他农产品：还包括蜂蜜、蜂蜜制品、蜂蜡、林产品（木材、竹材）、药材、茶叶、花卉等。\r\n\r\n农产品在全球各地被广泛生产和消费，对人类生活产生着重要影响。因此，农业生产和农产品市场也是国民经济的重要组成部分。为确保农产品的质量和安全，一些国家和地区还制定了相关的农产品质量标准和监管政策。', '66', '陕西2号', '0', '2024-06-17 20:45:27.059202', 1, 0, 0, 0, 3, NULL, 3, '3年', '2025年1月1日', 1333);
INSERT INTO `b_thing` VALUES (9, '超级好吃果篮22', 'cover/1718627983822.jpeg', '农业生产出来的各种农作物、畜禽、水产品以及与农业生产相关的产品。农产品是人类生活中必不可少的食物来源，同时也作为原材料用于食品加工、医药、化工、纺织等领域。以下是一些常见的农产品简介：\r\n\r\n农作物：包括谷物（如稻谷、小麦、玉米）、豆类（大豆、黄豆、绿豆）、蔬菜（西红柿、黄瓜、胡萝卜）、水果（苹果、香蕉、橙子）、瓜果（西瓜、哈密瓜）等。这些作物提供了人们所需的主要食物和营养素。\r\n\r\n畜禽：包括家畜（牛、猪、羊、马）和家禽（鸡、鸭、鹅、鸽子）。畜禽产品提供了人们所需的动物蛋白和其他营养物质。\r\n\r\n水产品：包括各种海产品（鱼、虾、蟹、贝类）和淡水产品（鱼、虾、蟹）。水产品是人们饮食中重要的蛋白来源。\r\n\r\n其他农产品：还包括蜂蜜、蜂蜜制品、蜂蜡、林产品（木材、竹材）、药材、茶叶、花卉等。\r\n\r\n农产品在全球各地被广泛生产和消费，对人类生活产生着重要影响。因此，农业生产和农产品市场也是国民经济的重要组成部分。为确保农产品的质量和安全，一些国家和地区还制定了相关的农产品质量标准和监管政策。', '43', '花篮9号', '0', '2024-06-17 20:40:03.818299', 2, 0, 0, 0, 1, NULL, 3, '100天', '2025年1月1日', 3211);
INSERT INTO `b_thing` VALUES (10, '超甜西瓜阳光5号', 'cover/1718627889667.jpeg', '农业生产出来的各种农作物、畜禽、水产品以及与农业生产相关的产品。农产品是人类生活中必不可少的食物来源，同时也作为原材料用于食品加工、医药、化工、纺织等领域。以下是一些常见的农产品简介：\r\n\r\n农作物：包括谷物（如稻谷、小麦、玉米）、豆类（大豆、黄豆、绿豆）、蔬菜（西红柿、黄瓜、胡萝卜）、水果（苹果、香蕉、橙子）、瓜果（西瓜、哈密瓜）等。这些作物提供了人们所需的主要食物和营养素。\r\n\r\n畜禽：包括家畜（牛、猪、羊、马）和家禽（鸡、鸭、鹅、鸽子）。畜禽产品提供了人们所需的动物蛋白和其他营养物质。\r\n\r\n水产品：包括各种海产品（鱼、虾、蟹、贝类）和淡水产品（鱼、虾、蟹）。水产品是人们饮食中重要的蛋白来源。\r\n\r\n其他农产品：还包括蜂蜜、蜂蜜制品、蜂蜡、林产品（木材、竹材）、药材、茶叶、花卉等。\r\n\r\n农产品在全球各地被广泛生产和消费，对人类生活产生着重要影响。因此，农业生产和农产品市场也是国民经济的重要组成部分。为确保农产品的质量和安全，一些国家和地区还制定了相关的农产品质量标准和监管政策。', '32', '阳光5号', '0', '2024-06-17 20:38:41.865478', 1, 0, 0, 0, 1, NULL, 3, '7天', '2024年1月1日', 3444);
INSERT INTO `b_thing` VALUES (11, '五谷粮油', 'cover/1718628075341.jpeg', '农业生产出来的各种农作物、畜禽、水产品以及与农业生产相关的产品。农产品是人类生活中必不可少的食物来源，同时也作为原材料用于食品加工、医药、化工、纺织等领域。以下是一些常见的农产品简介：\r\n\r\n农作物：包括谷物（如稻谷、小麦、玉米）、豆类（大豆、黄豆、绿豆）、蔬菜（西红柿、黄瓜、胡萝卜）、水果（苹果、香蕉、橙子）、瓜果（西瓜、哈密瓜）等。这些作物提供了人们所需的主要食物和营养素。\r\n\r\n畜禽：包括家畜（牛、猪、羊、马）和家禽（鸡、鸭、鹅、鸽子）。畜禽产品提供了人们所需的动物蛋白和其他营养物质。\r\n\r\n水产品：包括各种海产品（鱼、虾、蟹、贝类）和淡水产品（鱼、虾、蟹）。水产品是人们饮食中重要的蛋白来源。\r\n\r\n其他农产品：还包括蜂蜜、蜂蜜制品、蜂蜡、林产品（木材、竹材）、药材、茶叶、花卉等。\r\n\r\n农产品在全球各地被广泛生产和消费，对人类生活产生着重要影响。因此，农业生产和农产品市场也是国民经济的重要组成部分。为确保农产品的质量和安全，一些国家和地区还制定了相关的农产品质量标准和监管政策。\r\n农业生产出来的各种农作物、畜禽、水产品以及与农业生产相关的产品。农产品是人类生活中必不可少的食物来源，同时也作为原材料用于食品加工、医药、化工、纺织等领域。以下是一些常见的农产品简介：\r\n\r\n农作物：包括谷物（如稻谷、小麦、玉米）、豆类（大豆、黄豆、绿豆）、蔬菜（西红柿、黄瓜、胡萝卜）、水果（苹果、香蕉、橙子）、瓜果（西瓜、哈密瓜）等。这些作物提供了人们所需的主要食物和营养素。\r\n\r\n畜禽：包括家畜（牛、猪、羊、马）和家禽（鸡、鸭、鹅、鸽子）。畜禽产品提供了人们所需的动物蛋白和其他营养物质。\r\n\r\n水产品：包括各种海产品（鱼、虾、蟹、贝类）和淡水产品（鱼、虾、蟹）。水产品是人们饮食中重要的蛋白来源。\r\n\r\n其他农产品：还包括蜂蜜、蜂蜜制品、蜂蜡、林产品（木材、竹材）、药材、茶叶、花卉等。\r\n\r\n农产品在全球各地被广泛生产和消费，对人类生活产生着重要影响。因此，农业生产和农产品市场也是国民经济的重要组成部分。为确保农产品的质量和安全，一些国家和地区还制定了相关的农产品质量标准和监管政策。', '55', '黑土地9号', '0', '2024-06-17 20:41:39.810292', 1, 0, 0, 0, 4, NULL, 3, '700天', '2025年1月1日', 322);
INSERT INTO `b_thing` VALUES (12, '超级好吃香蕉', 'cover/1718627938909.jpeg', '农业生产出来的各种农作物、畜禽、水产品以及与农业生产相关的产品。农产品是人类生活中必不可少的食物来源，同时也作为原材料用于食品加工、医药、化工、纺织等领域。以下是一些常见的农产品简介：\r\n\r\n农作物：包括谷物（如稻谷、小麦、玉米）、豆类（大豆、黄豆、绿豆）、蔬菜（西红柿、黄瓜、胡萝卜）、水果（苹果、香蕉、橙子）、瓜果（西瓜、哈密瓜）等。这些作物提供了人们所需的主要食物和营养素。\r\n\r\n畜禽：包括家畜（牛、猪、羊、马）和家禽（鸡、鸭、鹅、鸽子）。畜禽产品提供了人们所需的动物蛋白和其他营养物质。\r\n\r\n水产品：包括各种海产品（鱼、虾、蟹、贝类）和淡水产品（鱼、虾、蟹）。水产品是人们饮食中重要的蛋白来源。\r\n\r\n其他农产品：还包括蜂蜜、蜂蜜制品、蜂蜡、林产品（木材、竹材）、药材、茶叶、花卉等。\r\n\r\n农产品在全球各地被广泛生产和消费，对人类生活产生着重要影响。因此，农业生产和农产品市场也是国民经济的重要组成部分。为确保农产品的质量和安全，一些国家和地区还制定了相关的农产品质量标准和监管政策。', '45', '海南5号', '0', '2024-06-17 20:39:25.825590', 1, 0, 0, 0, 1, NULL, 3, '120天', '2020年8月1日', 3333);

-- ----------------------------
-- Table structure for b_thing_collect
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_collect`;
CREATE TABLE `b_thing_collect`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_collect_thing_id_user_id_45b9f252_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_collect_user_id_e5d69968_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_collect_thing_id_8edce8b3_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_collect_user_id_e5d69968_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_collect
-- ----------------------------
INSERT INTO `b_thing_collect` VALUES (2, 5, 3);
INSERT INTO `b_thing_collect` VALUES (3, 5, 5);
INSERT INTO `b_thing_collect` VALUES (1, 7, 3);

-- ----------------------------
-- Table structure for b_thing_wish
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_wish`;
CREATE TABLE `b_thing_wish`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_wish_thing_id_user_id_9d647bbb_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_wish_user_id_e2d94f6c_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_wish_thing_id_f0864b16_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_wish_user_id_e2d94f6c_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_wish
-- ----------------------------
INSERT INTO `b_thing_wish` VALUES (2, 5, 3);
INSERT INTO `b_thing_wish` VALUES (3, 5, 5);
INSERT INTO `b_thing_wish` VALUES (1, 7, 3);

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `push_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `push_switch` tinyint(1) NULL DEFAULT NULL,
  `admin_token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES (1, 'admin', '78aafd3207ec4ef6d16f9fc07e95ebc3', '1', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-05-04 16:37:10.143202', 0, NULL, 0, '21232f297a57a5a743894a0e4a801fc3', NULL);
INSERT INTO `b_user` VALUES (2, 'admin123', '0192023a7bbd73250516f069df18b500', '3', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-06-17 20:30:11.875671', 0, NULL, 0, NULL, NULL);
INSERT INTO `b_user` VALUES (3, 'ddd', '77963b7a931377ad4ab5ad6a9cd718aa', '2', '0', 'hhhhhhk', 'avatar/1718629582051.jpeg', NULL, NULL, NULL, NULL, '2024-06-17 20:54:11.034673', 0, NULL, 0, NULL, '77963b7a931377ad4ab5ad6a9cd718aa');
INSERT INTO `b_user` VALUES (4, 'aaaa', '74b87337454200d4d33f80c4663dc5e5', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-06-17 21:03:32.051009', 0, NULL, 0, NULL, NULL);
INSERT INTO `b_user` VALUES (5, 'www', '4eae35f1b35977a00ebd8086c259d4c9', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-06-18 19:53:24.692111', 0, NULL, 0, NULL, '4eae35f1b35977a00ebd8086c259d4c9');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'myapp', 'ad');
INSERT INTO `django_content_type` VALUES (8, 'myapp', 'classification');
INSERT INTO `django_content_type` VALUES (17, 'myapp', 'comment');
INSERT INTO `django_content_type` VALUES (9, 'myapp', 'errorlog');
INSERT INTO `django_content_type` VALUES (18, 'myapp', 'feedback');
INSERT INTO `django_content_type` VALUES (10, 'myapp', 'loginlog');
INSERT INTO `django_content_type` VALUES (11, 'myapp', 'notice');
INSERT INTO `django_content_type` VALUES (12, 'myapp', 'oplog');
INSERT INTO `django_content_type` VALUES (16, 'myapp', 'order');
INSERT INTO `django_content_type` VALUES (15, 'myapp', 'record');
INSERT INTO `django_content_type` VALUES (14, 'myapp', 'thing');
INSERT INTO `django_content_type` VALUES (13, 'myapp', 'user');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2024-06-17 20:24:04.318982');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2024-06-17 20:24:04.888913');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2024-06-17 20:24:04.990067');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2024-06-17 20:24:05.011596');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2024-06-17 20:24:05.029609');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2024-06-17 20:24:05.196084');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2024-06-17 20:24:05.281675');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2024-06-17 20:24:05.376782');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2024-06-17 20:24:05.397219');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2024-06-17 20:24:05.495702');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2024-06-17 20:24:05.505448');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2024-06-17 20:24:05.525354');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2024-06-17 20:24:05.615703');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2024-06-17 20:24:05.734637');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2024-06-17 20:24:05.825621');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2024-06-17 20:24:05.840975');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2024-06-17 20:24:05.915104');
INSERT INTO `django_migrations` VALUES (18, 'myapp', '0001_initial', '2024-06-17 20:24:07.373099');
INSERT INTO `django_migrations` VALUES (19, 'myapp', '0002_thing_user', '2024-06-17 20:24:07.469047');
INSERT INTO `django_migrations` VALUES (20, 'myapp', '0003_auto_20240504_1643', '2024-06-17 20:24:07.847599');
INSERT INTO `django_migrations` VALUES (21, 'myapp', '0004_auto_20240504_1700', '2024-06-17 20:24:08.059533');
INSERT INTO `django_migrations` VALUES (22, 'myapp', '0005_auto_20240617_2022', '2024-06-17 20:24:08.665383');
INSERT INTO `django_migrations` VALUES (23, 'myapp', '0006_auto_20240617_2023', '2024-06-17 20:24:09.098137');
INSERT INTO `django_migrations` VALUES (24, 'sessions', '0001_initial', '2024-06-17 20:24:09.179784');
INSERT INTO `django_migrations` VALUES (25, 'myapp', '0007_thing_repertory', '2024-06-17 21:08:11.988319');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
