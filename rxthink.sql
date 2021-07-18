/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : rxthink

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 18/07/2021 16:04:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for think_action
-- ----------------------------
DROP TABLE IF EXISTS `think_action`;
CREATE TABLE `think_action`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_action
-- ----------------------------

-- ----------------------------
-- Table structure for think_action_log_2021_06
-- ----------------------------
DROP TABLE IF EXISTS `think_action_log_2021_06`;
CREATE TABLE `think_action_log_2021_06`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '唯一性标识',
  `action_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '行为ID',
  `is_admin` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否后台操作：1是 2否',
  `username` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '操作人用户名',
  `method` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '请求类型',
  `module` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '模型',
  `action` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作方法',
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '操作页面',
  `param` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '请求参数(JSON格式)',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '日志标题',
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '内容',
  `ip` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'IP地址',
  `user_agent` varchar(360) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'User-Agent',
  `create_user` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加人',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加时间',
  `mark` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '有效标识：1正常 0删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 454 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统行为日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_action_log_2021_06
-- ----------------------------
INSERT INTO `think_action_log_2021_06` VALUES (1, 0, 1, '相约在冬季', 'POST', 'admin', '/login/login', 'http://admin.tp6.cn/login/login', '{\"username\":\"admin\",\"password\":\"admin123\",\"captcha\":\"520\",\"remember\":\"on\"}', '系统登录', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623600714, 1);
INSERT INTO `think_action_log_2021_06` VALUES (2, 0, 1, '相约在冬季', 'GET', 'admin', '/login/logout', 'http://admin.tp6.cn/login/logout', '', '系统退出', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 0, 1623600956, 1);
INSERT INTO `think_action_log_2021_06` VALUES (3, 0, 1, '相约在冬季', 'POST', 'admin', '/login/login', 'http://admin.tp6.cn/login/login', '{\"username\":\"admin\",\"password\":\"admin123\",\"captcha\":\"520\",\"remember\":\"on\"}', '系统登录', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623600958, 1);
INSERT INTO `think_action_log_2021_06` VALUES (4, 0, 1, '相约在冬季', 'GET', 'admin', '/login/logout', 'http://admin.tp6.cn/login/logout', '', '系统退出', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 0, 1623601432, 1);
INSERT INTO `think_action_log_2021_06` VALUES (5, 0, 1, '相约在冬季', 'POST', 'admin', '/login/login', 'http://admin.tp6.cn/login/login', '{\"username\":\"admin\",\"password\":\"admin123\",\"captcha\":\"520\",\"remember\":\"on\"}', '系统登录', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623601434, 1);
INSERT INTO `think_action_log_2021_06` VALUES (6, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623603108, 1);
INSERT INTO `think_action_log_2021_06` VALUES (7, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623603178, 1);
INSERT INTO `think_action_log_2021_06` VALUES (8, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623603188, 1);
INSERT INTO `think_action_log_2021_06` VALUES (9, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623603218, 1);
INSERT INTO `think_action_log_2021_06` VALUES (10, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623603323, 1);
INSERT INTO `think_action_log_2021_06` VALUES (11, 0, 1, '相约在冬季', 'POST', 'admin', '/login/login', 'http://admin.tp6.cn/login/login', '{\"username\":\"admin\",\"password\":\"admin123\",\"captcha\":\"520\",\"remember\":\"on\"}', '系统登录', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623606278, 1);
INSERT INTO `think_action_log_2021_06` VALUES (12, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623606322, 1);
INSERT INTO `think_action_log_2021_06` VALUES (13, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623606340, 1);
INSERT INTO `think_action_log_2021_06` VALUES (14, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623606469, 1);
INSERT INTO `think_action_log_2021_06` VALUES (15, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623606500, 1);
INSERT INTO `think_action_log_2021_06` VALUES (16, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623606700, 1);
INSERT INTO `think_action_log_2021_06` VALUES (17, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623606806, 1);
INSERT INTO `think_action_log_2021_06` VALUES (18, 0, 1, '相约在冬季', 'POST', 'admin', '/role/index', 'http://admin.tp6.cn/role/index', '{\"page\":\"1\",\"limit\":\"20\"}', '角色管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623606807, 1);
INSERT INTO `think_action_log_2021_06` VALUES (19, 0, 1, '相约在冬季', 'POST', 'admin', '/role/index', 'http://admin.tp6.cn/role/index', '{\"page\":\"1\",\"limit\":\"20\"}', '角色管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623606874, 1);
INSERT INTO `think_action_log_2021_06` VALUES (20, 0, 1, '相约在冬季', 'POST', 'admin', '/role/index', 'http://admin.tp6.cn/role/index', '{\"page\":\"1\",\"limit\":\"20\"}', '角色管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623606886, 1);
INSERT INTO `think_action_log_2021_06` VALUES (21, 0, 1, '相约在冬季', 'POST', 'admin', '/role/index', 'http://admin.tp6.cn/role/index', '{\"page\":\"1\",\"limit\":\"20\"}', '角色管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623607026, 1);
INSERT INTO `think_action_log_2021_06` VALUES (22, 0, 1, '相约在冬季', 'POST', 'admin', '/role/index', 'http://admin.tp6.cn/role/index', '{\"page\":\"1\",\"limit\":\"20\"}', '角色管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623607070, 1);
INSERT INTO `think_action_log_2021_06` VALUES (23, 0, 1, '相约在冬季', 'POST', 'admin', '/role/index', 'http://admin.tp6.cn/role/index', '{\"page\":\"1\",\"limit\":\"20\",\"name\":\"\"}', '角色管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623607481, 1);
INSERT INTO `think_action_log_2021_06` VALUES (24, 0, 1, '相约在冬季', 'POST', 'admin', '/role/index', 'http://admin.tp6.cn/role/index', '{\"page\":\"1\",\"limit\":\"20\",\"name\":\"\"}', '角色管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623607489, 1);
INSERT INTO `think_action_log_2021_06` VALUES (25, 0, 1, '相约在冬季', 'POST', 'admin', '/role/index', 'http://admin.tp6.cn/role/index', '{\"page\":\"1\",\"limit\":\"20\",\"name\":\"\"}', '角色管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623607743, 1);
INSERT INTO `think_action_log_2021_06` VALUES (26, 0, 1, '相约在冬季', 'POST', 'admin', '/role/index', 'http://admin.tp6.cn/role/index', '{\"page\":\"1\",\"limit\":\"20\",\"name\":\"\"}', '角色管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623607744, 1);
INSERT INTO `think_action_log_2021_06` VALUES (27, 0, 1, '相约在冬季', 'POST', 'admin', '/role/index', 'http://admin.tp6.cn/role/index', '{\"page\":\"1\",\"limit\":\"20\",\"name\":\"\"}', '角色管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623607747, 1);
INSERT INTO `think_action_log_2021_06` VALUES (28, 0, 1, '相约在冬季', 'POST', 'admin', '/role/index', 'http://admin.tp6.cn/role/index', '{\"page\":\"1\",\"limit\":\"20\",\"name\":\"\"}', '角色管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623607934, 1);
INSERT INTO `think_action_log_2021_06` VALUES (29, 0, 1, '相约在冬季', 'POST', 'admin', '/role/index', 'http://admin.tp6.cn/role/index', '{\"page\":\"1\",\"limit\":\"20\"}', '角色管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623607995, 1);
INSERT INTO `think_action_log_2021_06` VALUES (30, 0, 1, '相约在冬季', 'POST', 'admin', '/role/index', 'http://admin.tp6.cn/role/index', '{\"page\":\"1\",\"limit\":\"20\"}', '角色管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623608058, 1);
INSERT INTO `think_action_log_2021_06` VALUES (31, 0, 1, '相约在冬季', 'POST', 'admin', '/role/index', 'http://admin.tp6.cn/role/index', '{\"page\":\"1\",\"limit\":\"20\"}', '角色管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623608071, 1);
INSERT INTO `think_action_log_2021_06` VALUES (32, 0, 1, '相约在冬季', 'POST', 'admin', '/role/index', 'http://admin.tp6.cn/role/index', '{\"page\":\"1\",\"limit\":\"20\"}', '角色管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623608121, 1);
INSERT INTO `think_action_log_2021_06` VALUES (33, 0, 1, '相约在冬季', 'POST', 'admin', '/role/index', 'http://admin.tp6.cn/role/index', '{\"page\":\"1\",\"limit\":\"20\"}', '角色管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623608135, 1);
INSERT INTO `think_action_log_2021_06` VALUES (34, 0, 1, '相约在冬季', 'POST', 'admin', '/role/index', 'http://admin.tp6.cn/role/index', '{\"page\":\"1\",\"limit\":\"20\"}', '角色管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623608227, 1);
INSERT INTO `think_action_log_2021_06` VALUES (35, 0, 1, '相约在冬季', 'POST', 'admin', '/role/index', 'http://admin.tp6.cn/role/index', '{\"page\":\"1\",\"limit\":\"20\"}', '角色管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623608234, 1);
INSERT INTO `think_action_log_2021_06` VALUES (36, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623608234, 1);
INSERT INTO `think_action_log_2021_06` VALUES (37, 0, 1, '相约在冬季', 'POST', 'admin', '/role/index', 'http://admin.tp6.cn/role/index', '{\"page\":\"1\",\"limit\":\"20\"}', '角色管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623608246, 1);
INSERT INTO `think_action_log_2021_06` VALUES (38, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623608361, 1);
INSERT INTO `think_action_log_2021_06` VALUES (39, 0, 1, '相约在冬季', 'POST', 'admin', '/role/index', 'http://admin.tp6.cn/role/index', '{\"page\":\"1\",\"limit\":\"20\"}', '角色管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623608361, 1);
INSERT INTO `think_action_log_2021_06` VALUES (40, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623608512, 1);
INSERT INTO `think_action_log_2021_06` VALUES (41, 0, 1, '相约在冬季', 'POST', 'admin', '/role/index', 'http://admin.tp6.cn/role/index', '{\"page\":\"1\",\"limit\":\"20\"}', '角色管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623608512, 1);
INSERT INTO `think_action_log_2021_06` VALUES (42, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623608971, 1);
INSERT INTO `think_action_log_2021_06` VALUES (43, 0, 1, '相约在冬季', 'POST', 'admin', '/role/index', 'http://admin.tp6.cn/role/index', '{\"page\":\"1\",\"limit\":\"20\"}', '角色管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623608971, 1);
INSERT INTO `think_action_log_2021_06` VALUES (44, 0, 1, '相约在冬季', 'POST', 'admin', '/role/index', 'http://admin.tp6.cn/role/index', '{\"page\":\"1\",\"limit\":\"20\"}', '角色管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623609364, 1);
INSERT INTO `think_action_log_2021_06` VALUES (45, 0, 1, '相约在冬季', 'POST', 'admin', '/login/login', 'http://admin.tp6.cn/login/login', '{\"username\":\"admin\",\"password\":\"admin123\",\"captcha\":\"520\",\"remember\":\"on\"}', '系统登录', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623680947, 1);
INSERT INTO `think_action_log_2021_06` VALUES (46, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/index', 'http://admin.tp6.cn/userlevel/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623682184, 1);
INSERT INTO `think_action_log_2021_06` VALUES (47, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/index', 'http://admin.tp6.cn/userlevel/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623682300, 1);
INSERT INTO `think_action_log_2021_06` VALUES (48, 0, 1, '相约在冬季', 'POST', 'admin', '/user/index', 'http://admin.tp6.cn/user/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623682380, 1);
INSERT INTO `think_action_log_2021_06` VALUES (49, 0, 1, '相约在冬季', 'POST', 'admin', '/user/index', 'http://admin.tp6.cn/user/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623682395, 1);
INSERT INTO `think_action_log_2021_06` VALUES (50, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/index', 'http://admin.tp6.cn/userlevel/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623682553, 1);
INSERT INTO `think_action_log_2021_06` VALUES (51, 0, 1, '相约在冬季', 'POST', 'admin', '/user/index', 'http://admin.tp6.cn/user/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623682553, 1);
INSERT INTO `think_action_log_2021_06` VALUES (52, 0, 1, '相约在冬季', 'POST', 'admin', '/user/index', 'http://admin.tp6.cn/user/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623682750, 1);
INSERT INTO `think_action_log_2021_06` VALUES (53, 0, 1, '相约在冬季', 'POST', 'admin', '/user/index', 'http://admin.tp6.cn/user/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623682753, 1);
INSERT INTO `think_action_log_2021_06` VALUES (54, 0, 1, '相约在冬季', 'POST', 'admin', '/user/index', 'http://admin.tp6.cn/user/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623682892, 1);
INSERT INTO `think_action_log_2021_06` VALUES (55, 0, 1, '相约在冬季', 'POST', 'admin', '/user/index', 'http://admin.tp6.cn/user/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623682947, 1);
INSERT INTO `think_action_log_2021_06` VALUES (56, 0, 1, '相约在冬季', 'POST', 'admin', '/user/index', 'http://admin.tp6.cn/user/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623682955, 1);
INSERT INTO `think_action_log_2021_06` VALUES (57, 0, 1, '相约在冬季', 'POST', 'admin', '/user/index', 'http://admin.tp6.cn/user/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623683243, 1);
INSERT INTO `think_action_log_2021_06` VALUES (58, 0, 1, '相约在冬季', 'POST', 'admin', '/user/index', 'http://admin.tp6.cn/user/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623683353, 1);
INSERT INTO `think_action_log_2021_06` VALUES (59, 0, 1, '相约在冬季', 'POST', 'admin', '/user/index', 'http://admin.tp6.cn/user/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623683495, 1);
INSERT INTO `think_action_log_2021_06` VALUES (60, 0, 1, '相约在冬季', 'POST', 'admin', '/user/index', 'http://admin.tp6.cn/user/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623683498, 1);
INSERT INTO `think_action_log_2021_06` VALUES (61, 0, 1, '相约在冬季', 'POST', 'admin', '/user/index', 'http://admin.tp6.cn/user/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623683715, 1);
INSERT INTO `think_action_log_2021_06` VALUES (62, 0, 1, '相约在冬季', 'POST', 'admin', '/user/index', 'http://admin.tp6.cn/user/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623683739, 1);
INSERT INTO `think_action_log_2021_06` VALUES (63, 0, 1, '相约在冬季', 'POST', 'admin', '/user/index', 'http://admin.tp6.cn/user/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623683742, 1);
INSERT INTO `think_action_log_2021_06` VALUES (64, 0, 1, '相约在冬季', 'POST', 'admin', '/user/index', 'http://admin.tp6.cn/user/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623683763, 1);
INSERT INTO `think_action_log_2021_06` VALUES (65, 0, 1, '相约在冬季', 'POST', 'admin', '/user/index', 'http://admin.tp6.cn/user/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623683767, 1);
INSERT INTO `think_action_log_2021_06` VALUES (66, 0, 1, '相约在冬季', 'POST', 'admin', '/user/index', 'http://admin.tp6.cn/user/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623683778, 1);
INSERT INTO `think_action_log_2021_06` VALUES (67, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/index', 'http://admin.tp6.cn/userlevel/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623683786, 1);
INSERT INTO `think_action_log_2021_06` VALUES (68, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/index', 'http://admin.tp6.cn/userlevel/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623684479, 1);
INSERT INTO `think_action_log_2021_06` VALUES (69, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623685718, 1);
INSERT INTO `think_action_log_2021_06` VALUES (70, 0, 1, '相约在冬季', 'POST', 'admin', '/role/index', 'http://admin.tp6.cn/role/index', '{\"page\":\"1\",\"limit\":\"20\"}', '角色管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623685719, 1);
INSERT INTO `think_action_log_2021_06` VALUES (71, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623686375, 1);
INSERT INTO `think_action_log_2021_06` VALUES (72, 0, 1, '相约在冬季', 'POST', 'admin', '/role/index', 'http://admin.tp6.cn/role/index', '{\"page\":\"1\",\"limit\":\"20\"}', '角色管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623686375, 1);
INSERT INTO `think_action_log_2021_06` VALUES (73, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/index', 'http://admin.tp6.cn/userlevel/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623686375, 1);
INSERT INTO `think_action_log_2021_06` VALUES (74, 0, 1, '相约在冬季', 'POST', 'admin', '/role/index', 'http://admin.tp6.cn/role/index', '{\"page\":\"1\",\"limit\":\"20\"}', '角色管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623686408, 1);
INSERT INTO `think_action_log_2021_06` VALUES (75, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623686408, 1);
INSERT INTO `think_action_log_2021_06` VALUES (76, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/index', 'http://admin.tp6.cn/userlevel/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623686408, 1);
INSERT INTO `think_action_log_2021_06` VALUES (77, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623686588, 1);
INSERT INTO `think_action_log_2021_06` VALUES (78, 0, 1, '相约在冬季', 'POST', 'admin', '/role/index', 'http://admin.tp6.cn/role/index', '{\"page\":\"1\",\"limit\":\"20\"}', '角色管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623686588, 1);
INSERT INTO `think_action_log_2021_06` VALUES (79, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/index', 'http://admin.tp6.cn/userlevel/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623686916, 1);
INSERT INTO `think_action_log_2021_06` VALUES (80, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623686916, 1);
INSERT INTO `think_action_log_2021_06` VALUES (81, 0, 1, '相约在冬季', 'POST', 'admin', '/role/index', 'http://admin.tp6.cn/role/index', '{\"page\":\"1\",\"limit\":\"20\"}', '角色管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623686916, 1);
INSERT INTO `think_action_log_2021_06` VALUES (82, 0, 1, '相约在冬季', 'POST', 'admin', '/configgroup/index', 'http://admin.tp6.cn/configgroup/index', '{\"page\":\"1\",\"limit\":\"20\"}', '配置分组', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623686916, 1);
INSERT INTO `think_action_log_2021_06` VALUES (83, 0, 1, '相约在冬季', 'POST', 'admin', '/config/index?group_id=1', 'http://admin.tp6.cn/config/index?group_id=1', '{\"group_id\":\"1\",\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623686920, 1);
INSERT INTO `think_action_log_2021_06` VALUES (84, 0, 1, '相约在冬季', 'POST', 'admin', '/configgroup/index', 'http://admin.tp6.cn/configgroup/index', '{\"page\":\"1\",\"limit\":\"20\"}', '配置分组', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623686953, 1);
INSERT INTO `think_action_log_2021_06` VALUES (85, 0, 1, '相约在冬季', 'POST', 'admin', '/configgroup/index', 'http://admin.tp6.cn/configgroup/index', '{\"page\":\"1\",\"limit\":\"20\"}', '配置分组', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623686985, 1);
INSERT INTO `think_action_log_2021_06` VALUES (86, 0, 1, '相约在冬季', 'POST', 'admin', '/configgroup/index', 'http://admin.tp6.cn/configgroup/index', '{\"page\":\"1\",\"limit\":\"20\"}', '配置分组', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623687150, 1);
INSERT INTO `think_action_log_2021_06` VALUES (87, 0, 1, '相约在冬季', 'POST', 'admin', '/config/index?group_id=1', 'http://admin.tp6.cn/config/index?group_id=1', '{\"group_id\":\"1\",\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623687268, 1);
INSERT INTO `think_action_log_2021_06` VALUES (88, 0, 1, '相约在冬季', 'POST', 'admin', '/config/index?group_id=1', 'http://admin.tp6.cn/config/index?group_id=1', '{\"group_id\":\"1\",\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623687275, 1);
INSERT INTO `think_action_log_2021_06` VALUES (89, 0, 1, '相约在冬季', 'POST', 'admin', '/config/index?group_id=1', 'http://admin.tp6.cn/config/index?group_id=1', '{\"group_id\":\"1\",\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623687366, 1);
INSERT INTO `think_action_log_2021_06` VALUES (90, 0, 1, '相约在冬季', 'POST', 'admin', '/config/index?group_id=1', 'http://admin.tp6.cn/config/index?group_id=1', '{\"group_id\":\"1\",\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623687507, 1);
INSERT INTO `think_action_log_2021_06` VALUES (91, 0, 1, '相约在冬季', 'POST', 'admin', '/config/index?group_id=1', 'http://admin.tp6.cn/config/index?group_id=1', '{\"group_id\":\"1\",\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623687564, 1);
INSERT INTO `think_action_log_2021_06` VALUES (92, 0, 1, '相约在冬季', 'POST', 'admin', '/config/index?group_id=1', 'http://admin.tp6.cn/config/index?group_id=1', '{\"group_id\":\"1\",\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623687574, 1);
INSERT INTO `think_action_log_2021_06` VALUES (93, 0, 1, '相约在冬季', 'POST', 'admin', '/config/index?group_id=1', 'http://admin.tp6.cn/config/index?group_id=1', '{\"group_id\":\"1\",\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623687645, 1);
INSERT INTO `think_action_log_2021_06` VALUES (94, 0, 1, '相约在冬季', 'POST', 'admin', '/config/index?group_id=1', 'http://admin.tp6.cn/config/index?group_id=1', '{\"group_id\":\"1\",\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623687661, 1);
INSERT INTO `think_action_log_2021_06` VALUES (95, 0, 1, '相约在冬季', 'POST', 'admin', '/config/index?group_id=2', 'http://admin.tp6.cn/config/index?group_id=2', '{\"group_id\":\"2\",\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623687668, 1);
INSERT INTO `think_action_log_2021_06` VALUES (96, 0, 1, '相约在冬季', 'POST', 'admin', '/config/index?group_id=1', 'http://admin.tp6.cn/config/index?group_id=1', '{\"group_id\":\"1\",\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623687674, 1);
INSERT INTO `think_action_log_2021_06` VALUES (97, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/index', 'http://admin.tp6.cn/userlevel/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623687679, 1);
INSERT INTO `think_action_log_2021_06` VALUES (98, 0, 1, '相约在冬季', 'POST', 'admin', '/config/index?group_id=1', 'http://admin.tp6.cn/config/index?group_id=1', '{\"group_id\":\"1\",\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623687679, 1);
INSERT INTO `think_action_log_2021_06` VALUES (99, 0, 1, '相约在冬季', 'POST', 'admin', '/configgroup/index', 'http://admin.tp6.cn/configgroup/index', '{\"page\":\"1\",\"limit\":\"20\"}', '配置分组', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623687679, 1);
INSERT INTO `think_action_log_2021_06` VALUES (100, 0, 1, '相约在冬季', 'POST', 'admin', '/role/index', 'http://admin.tp6.cn/role/index', '{\"page\":\"1\",\"limit\":\"20\"}', '角色管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623687679, 1);
INSERT INTO `think_action_log_2021_06` VALUES (101, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623687679, 1);
INSERT INTO `think_action_log_2021_06` VALUES (102, 0, 1, '相约在冬季', 'POST', 'admin', '/configgroup/index', 'http://admin.tp6.cn/configgroup/index', '{\"page\":\"1\",\"limit\":\"20\"}', '配置分组', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623687695, 1);
INSERT INTO `think_action_log_2021_06` VALUES (103, 0, 1, '相约在冬季', 'POST', 'admin', '/configgroup/index', 'http://admin.tp6.cn/configgroup/index', '{\"page\":\"1\",\"limit\":\"20\"}', '配置分组', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623687742, 1);
INSERT INTO `think_action_log_2021_06` VALUES (104, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/index', 'http://admin.tp6.cn/userlevel/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623687839, 1);
INSERT INTO `think_action_log_2021_06` VALUES (105, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/index', 'http://admin.tp6.cn/userlevel/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623687890, 1);
INSERT INTO `think_action_log_2021_06` VALUES (106, 0, 1, '相约在冬季', 'POST', 'admin', '/user/index', 'http://admin.tp6.cn/user/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623687902, 1);
INSERT INTO `think_action_log_2021_06` VALUES (107, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/index', 'http://admin.tp6.cn/userlevel/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623687908, 1);
INSERT INTO `think_action_log_2021_06` VALUES (108, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/index', 'http://admin.tp6.cn/userlevel/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623687970, 1);
INSERT INTO `think_action_log_2021_06` VALUES (109, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/index', 'http://admin.tp6.cn/userlevel/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623688003, 1);
INSERT INTO `think_action_log_2021_06` VALUES (110, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/index', 'http://admin.tp6.cn/userlevel/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623688033, 1);
INSERT INTO `think_action_log_2021_06` VALUES (111, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/index', 'http://admin.tp6.cn/userlevel/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623688046, 1);
INSERT INTO `think_action_log_2021_06` VALUES (112, 0, 1, '相约在冬季', 'POST', 'admin', '/configgroup/index', 'http://admin.tp6.cn/configgroup/index', '{\"page\":\"1\",\"limit\":\"20\"}', '配置分组', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623688062, 1);
INSERT INTO `think_action_log_2021_06` VALUES (113, 0, 1, '相约在冬季', 'POST', 'admin', '/user/index', 'http://admin.tp6.cn/user/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623688394, 1);
INSERT INTO `think_action_log_2021_06` VALUES (114, 0, 1, '相约在冬季', 'POST', 'admin', '/role/index', 'http://admin.tp6.cn/role/index', '{\"page\":\"1\",\"limit\":\"20\"}', '角色管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623688394, 1);
INSERT INTO `think_action_log_2021_06` VALUES (115, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623688394, 1);
INSERT INTO `think_action_log_2021_06` VALUES (116, 0, 1, '相约在冬季', 'POST', 'admin', '/config/index?group_id=1', 'http://admin.tp6.cn/config/index?group_id=1', '{\"group_id\":\"1\",\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623688395, 1);
INSERT INTO `think_action_log_2021_06` VALUES (117, 0, 1, '相约在冬季', 'POST', 'admin', '/configgroup/index', 'http://admin.tp6.cn/configgroup/index', '{\"page\":\"1\",\"limit\":\"20\"}', '配置分组', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623688395, 1);
INSERT INTO `think_action_log_2021_06` VALUES (118, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/index', 'http://admin.tp6.cn/userlevel/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623688395, 1);
INSERT INTO `think_action_log_2021_06` VALUES (119, 0, 1, '相约在冬季', 'POST', 'admin', '/item/index', 'http://admin.tp6.cn/item/index', '{\"page\":\"1\",\"limit\":\"20\"}', '站点管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623688457, 1);
INSERT INTO `think_action_log_2021_06` VALUES (120, 0, 1, '相约在冬季', 'POST', 'admin', '/itemcate/index', 'http://admin.tp6.cn/itemcate/index', '', '栏目管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623688471, 1);
INSERT INTO `think_action_log_2021_06` VALUES (121, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623688513, 1);
INSERT INTO `think_action_log_2021_06` VALUES (122, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623688869, 1);
INSERT INTO `think_action_log_2021_06` VALUES (123, 0, 1, '相约在冬季', 'POST', 'admin', '/item/index', 'http://admin.tp6.cn/item/index', '{\"page\":\"1\",\"limit\":\"20\"}', '站点管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623688895, 1);
INSERT INTO `think_action_log_2021_06` VALUES (124, 0, 1, '相约在冬季', 'POST', 'admin', '/item/index', 'http://admin.tp6.cn/item/index', '{\"page\":\"1\",\"limit\":\"20\"}', '站点管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623688993, 1);
INSERT INTO `think_action_log_2021_06` VALUES (125, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623689069, 1);
INSERT INTO `think_action_log_2021_06` VALUES (126, 0, 1, '相约在冬季', 'POST', 'admin', '/item/index', 'http://admin.tp6.cn/item/index', '{\"page\":\"1\",\"limit\":\"20\"}', '站点管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623689110, 1);
INSERT INTO `think_action_log_2021_06` VALUES (127, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623689175, 1);
INSERT INTO `think_action_log_2021_06` VALUES (128, 0, 1, '相约在冬季', 'POST', 'admin', '/role/index', 'http://admin.tp6.cn/role/index', '{\"page\":\"1\",\"limit\":\"20\"}', '角色管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623689175, 1);
INSERT INTO `think_action_log_2021_06` VALUES (129, 0, 1, '相约在冬季', 'POST', 'admin', '/item/index', 'http://admin.tp6.cn/item/index', '{\"page\":\"1\",\"limit\":\"20\"}', '站点管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623689184, 1);
INSERT INTO `think_action_log_2021_06` VALUES (130, 0, 1, '相约在冬季', 'POST', 'admin', '/itemcate/index', 'http://admin.tp6.cn/itemcate/index', '', '栏目管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623689205, 1);
INSERT INTO `think_action_log_2021_06` VALUES (131, 0, 1, '相约在冬季', 'POST', 'admin', '/configgroup/index', 'http://admin.tp6.cn/configgroup/index', '{\"page\":\"1\",\"limit\":\"20\"}', '配置分组', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623689357, 1);
INSERT INTO `think_action_log_2021_06` VALUES (132, 0, 1, '相约在冬季', 'POST', 'admin', '/config/index?group_id=1', 'http://admin.tp6.cn/config/index?group_id=1', '{\"group_id\":\"1\",\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623689357, 1);
INSERT INTO `think_action_log_2021_06` VALUES (133, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/index', 'http://admin.tp6.cn/userlevel/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623689357, 1);
INSERT INTO `think_action_log_2021_06` VALUES (134, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623689357, 1);
INSERT INTO `think_action_log_2021_06` VALUES (135, 0, 1, '相约在冬季', 'POST', 'admin', '/user/index', 'http://admin.tp6.cn/user/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623689357, 1);
INSERT INTO `think_action_log_2021_06` VALUES (136, 0, 1, '相约在冬季', 'POST', 'admin', '/item/index', 'http://admin.tp6.cn/item/index', '{\"page\":\"1\",\"limit\":\"20\"}', '站点管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623689357, 1);
INSERT INTO `think_action_log_2021_06` VALUES (137, 0, 1, '相约在冬季', 'POST', 'admin', '/itemcate/index', 'http://admin.tp6.cn/itemcate/index', '', '栏目管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623689357, 1);
INSERT INTO `think_action_log_2021_06` VALUES (138, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623689358, 1);
INSERT INTO `think_action_log_2021_06` VALUES (139, 0, 1, '相约在冬季', 'POST', 'admin', '/role/index', 'http://admin.tp6.cn/role/index', '{\"page\":\"1\",\"limit\":\"20\"}', '角色管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623689358, 1);
INSERT INTO `think_action_log_2021_06` VALUES (140, 0, 1, '相约在冬季', 'POST', 'admin', '/user/index', 'http://admin.tp6.cn/user/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623689449, 1);
INSERT INTO `think_action_log_2021_06` VALUES (141, 0, 1, '相约在冬季', 'POST', 'admin', '/item/index', 'http://admin.tp6.cn/item/index', '{\"page\":\"1\",\"limit\":\"20\"}', '站点管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623689449, 1);
INSERT INTO `think_action_log_2021_06` VALUES (142, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/index', 'http://admin.tp6.cn/userlevel/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623689449, 1);
INSERT INTO `think_action_log_2021_06` VALUES (143, 0, 1, '相约在冬季', 'POST', 'admin', '/itemcate/index', 'http://admin.tp6.cn/itemcate/index', '', '栏目管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623689450, 1);
INSERT INTO `think_action_log_2021_06` VALUES (144, 0, 1, '相约在冬季', 'POST', 'admin', '/configgroup/index', 'http://admin.tp6.cn/configgroup/index', '{\"page\":\"1\",\"limit\":\"20\"}', '配置分组', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623689450, 1);
INSERT INTO `think_action_log_2021_06` VALUES (145, 0, 1, '相约在冬季', 'POST', 'admin', '/config/index?group_id=1', 'http://admin.tp6.cn/config/index?group_id=1', '{\"group_id\":\"1\",\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623689450, 1);
INSERT INTO `think_action_log_2021_06` VALUES (146, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623689450, 1);
INSERT INTO `think_action_log_2021_06` VALUES (147, 0, 1, '相约在冬季', 'POST', 'admin', '/role/index', 'http://admin.tp6.cn/role/index', '{\"page\":\"1\",\"limit\":\"20\"}', '角色管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623689450, 1);
INSERT INTO `think_action_log_2021_06` VALUES (148, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623689450, 1);
INSERT INTO `think_action_log_2021_06` VALUES (149, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623689545, 1);
INSERT INTO `think_action_log_2021_06` VALUES (150, 0, 1, '相约在冬季', 'POST', 'admin', '/role/index', 'http://admin.tp6.cn/role/index', '{\"page\":\"1\",\"limit\":\"20\"}', '角色管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623689545, 1);
INSERT INTO `think_action_log_2021_06` VALUES (151, 0, 1, '相约在冬季', 'POST', 'admin', '/config/index?group_id=1', 'http://admin.tp6.cn/config/index?group_id=1', '{\"group_id\":\"1\",\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623689738, 1);
INSERT INTO `think_action_log_2021_06` VALUES (152, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623689739, 1);
INSERT INTO `think_action_log_2021_06` VALUES (153, 0, 1, '相约在冬季', 'POST', 'admin', '/itemcate/index', 'http://admin.tp6.cn/itemcate/index', '', '栏目管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623689761, 1);
INSERT INTO `think_action_log_2021_06` VALUES (154, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623690423, 1);
INSERT INTO `think_action_log_2021_06` VALUES (155, 0, 1, '相约在冬季', 'POST', 'admin', '/configgroup/index', 'http://admin.tp6.cn/configgroup/index', '{\"page\":\"1\",\"limit\":\"20\"}', '配置分组', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623690536, 1);
INSERT INTO `think_action_log_2021_06` VALUES (156, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623690538, 1);
INSERT INTO `think_action_log_2021_06` VALUES (157, 0, 1, '相约在冬季', 'POST', 'admin', '/config/index?group_id=1', 'http://admin.tp6.cn/config/index?group_id=1', '{\"group_id\":\"1\",\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623690745, 1);
INSERT INTO `think_action_log_2021_06` VALUES (158, 0, 1, '相约在冬季', 'POST', 'admin', '/configgroup/index', 'http://admin.tp6.cn/configgroup/index', '{\"page\":\"1\",\"limit\":\"20\"}', '配置分组', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623690745, 1);
INSERT INTO `think_action_log_2021_06` VALUES (159, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623690745, 1);
INSERT INTO `think_action_log_2021_06` VALUES (160, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623690753, 1);
INSERT INTO `think_action_log_2021_06` VALUES (161, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623690767, 1);
INSERT INTO `think_action_log_2021_06` VALUES (162, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623690793, 1);
INSERT INTO `think_action_log_2021_06` VALUES (163, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623690812, 1);
INSERT INTO `think_action_log_2021_06` VALUES (164, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623691105, 1);
INSERT INTO `think_action_log_2021_06` VALUES (165, 0, 1, '相约在冬季', 'POST', 'admin', '/notice/index', 'http://admin.tp6.cn/notice/index', '{\"page\":\"1\",\"limit\":\"20\"}', '通知公告', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623691374, 1);
INSERT INTO `think_action_log_2021_06` VALUES (166, 0, 1, '相约在冬季', 'POST', 'admin', '/notice/index', 'http://admin.tp6.cn/notice/index', '{\"page\":\"1\",\"limit\":\"20\"}', '通知公告', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623691400, 1);
INSERT INTO `think_action_log_2021_06` VALUES (167, 0, 1, '相约在冬季', 'POST', 'admin', '/ad/index', 'http://admin.tp6.cn/ad/index', '{\"page\":\"1\",\"limit\":\"20\"}', '幻灯片管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623691431, 1);
INSERT INTO `think_action_log_2021_06` VALUES (168, 0, 1, '相约在冬季', 'POST', 'admin', '/notice/index', 'http://admin.tp6.cn/notice/index', '{\"page\":\"1\",\"limit\":\"20\"}', '通知公告', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623691431, 1);
INSERT INTO `think_action_log_2021_06` VALUES (169, 0, 1, '相约在冬季', 'POST', 'admin', '/adsort/index', 'http://admin.tp6.cn/adsort/index', '{\"page\":\"1\",\"limit\":\"20\"}', '幻灯片位置管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623691432, 1);
INSERT INTO `think_action_log_2021_06` VALUES (170, 0, 1, '相约在冬季', 'POST', 'admin', '/login/login', 'http://admin.tp6.cn/login/login', '{\"username\":\"admin\",\"password\":\"admin123\",\"captcha\":\"520\",\"remember\":\"on\"}', '系统登录', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623763600, 1);
INSERT INTO `think_action_log_2021_06` VALUES (171, 0, 1, '相约在冬季', 'POST', 'admin', '/login/login', 'http://admin.tp6.cn/login/login', '{\"username\":\"admin\",\"password\":\"admin123\",\"captcha\":\"520\",\"remember\":\"on\"}', '系统登录', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623766863, 1);
INSERT INTO `think_action_log_2021_06` VALUES (172, 0, 1, '相约在冬季', 'POST', 'admin', '/layoutdesc/index', 'http://admin.tp6.cn/layoutdesc/index', '{\"page\":\"1\",\"limit\":\"20\"}', '布局推荐描述', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623766892, 1);
INSERT INTO `think_action_log_2021_06` VALUES (173, 0, 1, '相约在冬季', 'POST', 'admin', '/layout/index', 'http://admin.tp6.cn/layout/index', '{\"page\":\"1\",\"limit\":\"20\"}', '布局推荐管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623766918, 1);
INSERT INTO `think_action_log_2021_06` VALUES (174, 0, 1, '相约在冬季', 'POST', 'admin', '/layout/index', 'http://admin.tp6.cn/layout/index', '{\"page\":\"1\",\"limit\":\"20\"}', '布局推荐管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623766929, 1);
INSERT INTO `think_action_log_2021_06` VALUES (175, 0, 1, '相约在冬季', 'POST', 'admin', '/layoutdesc/index', 'http://admin.tp6.cn/layoutdesc/index', '{\"page\":\"1\",\"limit\":\"20\"}', '布局推荐描述', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623766973, 1);
INSERT INTO `think_action_log_2021_06` VALUES (176, 0, 1, '相约在冬季', 'POST', 'admin', '/layoutdesc/index', 'http://admin.tp6.cn/layoutdesc/index', '{\"page\":\"1\",\"limit\":\"20\"}', '布局推荐描述', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623766997, 1);
INSERT INTO `think_action_log_2021_06` VALUES (177, 0, 1, '相约在冬季', 'POST', 'admin', '/layoutdesc/index', 'http://admin.tp6.cn/layoutdesc/index', '{\"page\":\"1\",\"limit\":\"20\"}', '布局推荐描述', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623767053, 1);
INSERT INTO `think_action_log_2021_06` VALUES (178, 0, 1, '相约在冬季', 'POST', 'admin', '/layout/index', 'http://admin.tp6.cn/layout/index', '{\"page\":\"1\",\"limit\":\"20\"}', '布局推荐管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623767059, 1);
INSERT INTO `think_action_log_2021_06` VALUES (179, 0, 1, '相约在冬季', 'POST', 'admin', '/layout/index', 'http://admin.tp6.cn/layout/index', '{\"page\":\"1\",\"limit\":\"20\"}', '布局推荐管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623767105, 1);
INSERT INTO `think_action_log_2021_06` VALUES (180, 0, 1, '相约在冬季', 'POST', 'admin', '/layoutdesc/index', 'http://admin.tp6.cn/layoutdesc/index', '{\"page\":\"1\",\"limit\":\"20\"}', '布局推荐描述', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623767109, 1);
INSERT INTO `think_action_log_2021_06` VALUES (181, 0, 1, '相约在冬季', 'POST', 'admin', '/layoutdesc/index', 'http://admin.tp6.cn/layoutdesc/index', '{\"page\":\"1\",\"limit\":\"20\"}', '布局推荐描述', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623767318, 1);
INSERT INTO `think_action_log_2021_06` VALUES (182, 0, 1, '相约在冬季', 'POST', 'admin', '/layout/index', 'http://admin.tp6.cn/layout/index', '{\"page\":\"1\",\"limit\":\"20\"}', '布局推荐管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623767365, 1);
INSERT INTO `think_action_log_2021_06` VALUES (183, 0, 1, '相约在冬季', 'POST', 'admin', '/layout/index', 'http://admin.tp6.cn/layout/index', '{\"page\":\"1\",\"limit\":\"20\"}', '布局推荐管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623767759, 1);
INSERT INTO `think_action_log_2021_06` VALUES (184, 0, 1, '相约在冬季', 'POST', 'admin', '/layoutdesc/index', 'http://admin.tp6.cn/layoutdesc/index', '{\"page\":\"1\",\"limit\":\"20\"}', '布局推荐描述', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623767760, 1);
INSERT INTO `think_action_log_2021_06` VALUES (185, 0, 1, '相约在冬季', 'POST', 'admin', '/layoutdesc/index', 'http://admin.tp6.cn/layoutdesc/index', '{\"page\":\"1\",\"limit\":\"20\"}', '布局推荐描述', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623768473, 1);
INSERT INTO `think_action_log_2021_06` VALUES (186, 0, 1, '相约在冬季', 'POST', 'admin', '/layout/index', 'http://admin.tp6.cn/layout/index', '{\"page\":\"1\",\"limit\":\"20\"}', '布局推荐管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623768473, 1);
INSERT INTO `think_action_log_2021_06` VALUES (187, 0, 1, '相约在冬季', 'POST', 'admin', '/notice/index', 'http://admin.tp6.cn/notice/index', '{\"page\":\"1\",\"limit\":\"20\"}', '通知公告', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623768510, 1);
INSERT INTO `think_action_log_2021_06` VALUES (188, 0, 1, '相约在冬季', 'POST', 'admin', '/notice/index', 'http://admin.tp6.cn/notice/index', '{\"page\":\"1\",\"limit\":\"20\"}', '通知公告', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623768554, 1);
INSERT INTO `think_action_log_2021_06` VALUES (189, 0, 1, '相约在冬季', 'POST', 'admin', '/notice/index', 'http://admin.tp6.cn/notice/index', '{\"page\":\"1\",\"limit\":\"20\"}', '通知公告', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623768613, 1);
INSERT INTO `think_action_log_2021_06` VALUES (190, 0, 1, '相约在冬季', 'POST', 'admin', '/notice/index', 'http://admin.tp6.cn/notice/index', '{\"page\":\"1\",\"limit\":\"20\"}', '通知公告', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623768990, 1);
INSERT INTO `think_action_log_2021_06` VALUES (191, 0, 1, '相约在冬季', 'POST', 'admin', '/layout/index', 'http://admin.tp6.cn/layout/index', '{\"page\":\"1\",\"limit\":\"20\"}', '布局推荐管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623769124, 1);
INSERT INTO `think_action_log_2021_06` VALUES (192, 0, 1, '相约在冬季', 'POST', 'admin', '/notice/index', 'http://admin.tp6.cn/notice/index', '{\"page\":\"1\",\"limit\":\"20\"}', '通知公告', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623769125, 1);
INSERT INTO `think_action_log_2021_06` VALUES (193, 0, 1, '相约在冬季', 'POST', 'admin', '/layoutdesc/index', 'http://admin.tp6.cn/layoutdesc/index', '{\"page\":\"1\",\"limit\":\"20\"}', '布局推荐描述', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623769125, 1);
INSERT INTO `think_action_log_2021_06` VALUES (194, 0, 1, '相约在冬季', 'POST', 'admin', '/notice/index', 'http://admin.tp6.cn/notice/index', '{\"page\":\"1\",\"limit\":\"20\"}', '通知公告', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623769133, 1);
INSERT INTO `think_action_log_2021_06` VALUES (195, 0, 1, '相约在冬季', 'POST', 'admin', '/notice/index', 'http://admin.tp6.cn/notice/index', '{\"page\":\"1\",\"limit\":\"20\"}', '通知公告', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623769142, 1);
INSERT INTO `think_action_log_2021_06` VALUES (196, 0, 1, '相约在冬季', 'POST', 'admin', '/notice/index', 'http://admin.tp6.cn/notice/index', '{\"page\":\"1\",\"limit\":\"20\"}', '通知公告', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623769152, 1);
INSERT INTO `think_action_log_2021_06` VALUES (197, 0, 1, '相约在冬季', 'POST', 'admin', '/layoutdesc/index', 'http://admin.tp6.cn/layoutdesc/index', '{\"page\":\"1\",\"limit\":\"20\"}', '布局推荐描述', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623769261, 1);
INSERT INTO `think_action_log_2021_06` VALUES (198, 0, 1, '相约在冬季', 'POST', 'admin', '/layout/index', 'http://admin.tp6.cn/layout/index', '{\"page\":\"1\",\"limit\":\"20\"}', '布局推荐管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623769261, 1);
INSERT INTO `think_action_log_2021_06` VALUES (199, 0, 1, '相约在冬季', 'POST', 'admin', '/notice/index', 'http://admin.tp6.cn/notice/index', '{\"page\":\"1\",\"limit\":\"20\"}', '通知公告', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623769261, 1);
INSERT INTO `think_action_log_2021_06` VALUES (200, 0, 1, '相约在冬季', 'POST', 'admin', '/adsort/index', 'http://admin.tp6.cn/adsort/index', '{\"page\":\"1\",\"limit\":\"20\"}', '幻灯片位置管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623769305, 1);
INSERT INTO `think_action_log_2021_06` VALUES (201, 0, 1, '相约在冬季', 'POST', 'admin', '/ad/index', 'http://admin.tp6.cn/ad/index', '{\"page\":\"1\",\"limit\":\"20\"}', '幻灯片管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623769308, 1);
INSERT INTO `think_action_log_2021_06` VALUES (202, 0, 1, '相约在冬季', 'POST', 'admin', '/layoutdesc/index', 'http://admin.tp6.cn/layoutdesc/index', '{\"page\":\"1\",\"limit\":\"20\"}', '布局推荐描述', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623769648, 1);
INSERT INTO `think_action_log_2021_06` VALUES (203, 0, 1, '相约在冬季', 'POST', 'admin', '/layout/index', 'http://admin.tp6.cn/layout/index', '{\"page\":\"1\",\"limit\":\"20\"}', '布局推荐管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623769648, 1);
INSERT INTO `think_action_log_2021_06` VALUES (204, 0, 1, '相约在冬季', 'POST', 'admin', '/ad/index', 'http://admin.tp6.cn/ad/index', '{\"page\":\"1\",\"limit\":\"20\"}', '幻灯片管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623769649, 1);
INSERT INTO `think_action_log_2021_06` VALUES (205, 0, 1, '相约在冬季', 'POST', 'admin', '/notice/index', 'http://admin.tp6.cn/notice/index', '{\"page\":\"1\",\"limit\":\"20\"}', '通知公告', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623769649, 1);
INSERT INTO `think_action_log_2021_06` VALUES (206, 0, 1, '相约在冬季', 'POST', 'admin', '/adsort/index', 'http://admin.tp6.cn/adsort/index', '{\"page\":\"1\",\"limit\":\"20\"}', '幻灯片位置管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623769649, 1);
INSERT INTO `think_action_log_2021_06` VALUES (207, 0, 1, '相约在冬季', 'POST', 'admin', '/actionlog/index', 'http://admin.tp6.cn/actionlog/index', '{\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623769651, 1);
INSERT INTO `think_action_log_2021_06` VALUES (208, 0, 1, '相约在冬季', 'POST', 'admin', '/adminlog/index', 'http://admin.tp6.cn/adminlog/index', '{\"page\":\"1\",\"limit\":\"20\"}', '登录日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623769661, 1);
INSERT INTO `think_action_log_2021_06` VALUES (209, 0, 1, '相约在冬季', 'POST', 'admin', '/actionlog/index', 'http://admin.tp6.cn/actionlog/index', '{\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623769756, 1);
INSERT INTO `think_action_log_2021_06` VALUES (210, 0, 1, '相约在冬季', 'POST', 'admin', '/actionlog/index', 'http://admin.tp6.cn/actionlog/index', '{\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623769920, 1);
INSERT INTO `think_action_log_2021_06` VALUES (211, 0, 1, '相约在冬季', 'POST', 'admin', '/adminlog/index', 'http://admin.tp6.cn/adminlog/index', '{\"page\":\"1\",\"limit\":\"20\"}', '登录日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623769928, 1);
INSERT INTO `think_action_log_2021_06` VALUES (212, 0, 1, '相约在冬季', 'POST', 'admin', '/actionlog/index', 'http://admin.tp6.cn/actionlog/index', '{\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623770167, 1);
INSERT INTO `think_action_log_2021_06` VALUES (213, 0, 1, '相约在冬季', 'POST', 'admin', '/layoutdesc/index', 'http://admin.tp6.cn/layoutdesc/index', '{\"page\":\"1\",\"limit\":\"20\"}', '布局推荐描述', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623770167, 1);
INSERT INTO `think_action_log_2021_06` VALUES (214, 0, 1, '相约在冬季', 'POST', 'admin', '/layout/index', 'http://admin.tp6.cn/layout/index', '{\"page\":\"1\",\"limit\":\"20\"}', '布局推荐管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623770167, 1);
INSERT INTO `think_action_log_2021_06` VALUES (215, 0, 1, '相约在冬季', 'POST', 'admin', '/adminlog/index', 'http://admin.tp6.cn/adminlog/index', '{\"page\":\"1\",\"limit\":\"20\"}', '登录日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623770167, 1);
INSERT INTO `think_action_log_2021_06` VALUES (216, 0, 1, '相约在冬季', 'POST', 'admin', '/notice/index', 'http://admin.tp6.cn/notice/index', '{\"page\":\"1\",\"limit\":\"20\"}', '通知公告', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623770168, 1);
INSERT INTO `think_action_log_2021_06` VALUES (217, 0, 1, '相约在冬季', 'POST', 'admin', '/ad/index', 'http://admin.tp6.cn/ad/index', '{\"page\":\"1\",\"limit\":\"20\"}', '幻灯片管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623770168, 1);
INSERT INTO `think_action_log_2021_06` VALUES (218, 0, 1, '相约在冬季', 'POST', 'admin', '/adsort/index', 'http://admin.tp6.cn/adsort/index', '{\"page\":\"1\",\"limit\":\"20\"}', '幻灯片位置管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623770168, 1);
INSERT INTO `think_action_log_2021_06` VALUES (219, 0, 1, '相约在冬季', 'POST', 'admin', '/dictype/index', 'http://admin.tp6.cn/dictype/index', '{\"page\":\"1\",\"limit\":\"20\"}', '字典类型', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623770169, 1);
INSERT INTO `think_action_log_2021_06` VALUES (220, 0, 1, '相约在冬季', 'POST', 'admin', '/dictype/index', 'http://admin.tp6.cn/dictype/index', '{\"page\":\"1\",\"limit\":\"20\"}', '字典类型', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623770197, 1);
INSERT INTO `think_action_log_2021_06` VALUES (221, 0, 1, '相约在冬季', 'POST', 'admin', '/dictype/index', 'http://admin.tp6.cn/dictype/index', '{\"page\":\"1\",\"limit\":\"20\"}', '字典类型', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623770418, 1);
INSERT INTO `think_action_log_2021_06` VALUES (222, 0, 1, '相约在冬季', 'POST', 'admin', '/dictype/index', 'http://admin.tp6.cn/dictype/index', '{\"page\":\"1\",\"limit\":\"20\"}', '字典类型', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623770501, 1);
INSERT INTO `think_action_log_2021_06` VALUES (223, 0, 1, '相约在冬季', 'POST', 'admin', '/dictype/index', 'http://admin.tp6.cn/dictype/index', '{\"page\":\"1\",\"limit\":\"20\"}', '字典类型', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623770521, 1);
INSERT INTO `think_action_log_2021_06` VALUES (224, 0, 1, '相约在冬季', 'POST', 'admin', '/dictype/index', 'http://admin.tp6.cn/dictype/index', '{\"page\":\"1\",\"limit\":\"20\"}', '字典类型', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623770566, 1);
INSERT INTO `think_action_log_2021_06` VALUES (225, 0, 1, '相约在冬季', 'POST', 'admin', '/dic/index', 'http://admin.tp6.cn/dic/index', '{\"page\":\"1\",\"limit\":\"20\"}', '字典管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623770571, 1);
INSERT INTO `think_action_log_2021_06` VALUES (226, 0, 1, '相约在冬季', 'POST', 'admin', '/dic/index', 'http://admin.tp6.cn/dic/index', '{\"page\":\"1\",\"limit\":\"20\"}', '字典管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623771288, 1);
INSERT INTO `think_action_log_2021_06` VALUES (227, 0, 1, '相约在冬季', 'POST', 'admin', '/dic/index', 'http://admin.tp6.cn/dic/index', '{\"page\":\"1\",\"limit\":\"20\"}', '字典管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623771332, 1);
INSERT INTO `think_action_log_2021_06` VALUES (228, 0, 1, '相约在冬季', 'POST', 'admin', '/layoutdesc/index', 'http://admin.tp6.cn/layoutdesc/index', '{\"page\":\"1\",\"limit\":\"20\"}', '布局推荐描述', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623771573, 1);
INSERT INTO `think_action_log_2021_06` VALUES (229, 0, 1, '相约在冬季', 'POST', 'admin', '/dictype/index', 'http://admin.tp6.cn/dictype/index', '{\"page\":\"1\",\"limit\":\"20\"}', '字典类型', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623771573, 1);
INSERT INTO `think_action_log_2021_06` VALUES (230, 0, 1, '相约在冬季', 'POST', 'admin', '/dic/index', 'http://admin.tp6.cn/dic/index', '{\"page\":\"1\",\"limit\":\"20\"}', '字典管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623771574, 1);
INSERT INTO `think_action_log_2021_06` VALUES (231, 0, 1, '相约在冬季', 'POST', 'admin', '/database/index', 'http://admin.tp6.cn/database/index', '{\"page\":\"1\",\"limit\":\"20\"}', '数据库管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623771575, 1);
INSERT INTO `think_action_log_2021_06` VALUES (232, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623771716, 1);
INSERT INTO `think_action_log_2021_06` VALUES (233, 0, 1, '相约在冬季', 'POST', 'admin', '/layoutdesc/index', 'http://admin.tp6.cn/layoutdesc/index', '{\"page\":\"1\",\"limit\":\"20\"}', '布局推荐描述', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623771982, 1);
INSERT INTO `think_action_log_2021_06` VALUES (234, 0, 1, '相约在冬季', 'POST', 'admin', '/dictype/index', 'http://admin.tp6.cn/dictype/index', '{\"page\":\"1\",\"limit\":\"20\"}', '字典类型', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623771983, 1);
INSERT INTO `think_action_log_2021_06` VALUES (235, 0, 1, '相约在冬季', 'POST', 'admin', '/database/index', 'http://admin.tp6.cn/database/index', '{\"page\":\"1\",\"limit\":\"20\"}', '数据库管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623771983, 1);
INSERT INTO `think_action_log_2021_06` VALUES (236, 0, 1, '相约在冬季', 'POST', 'admin', '/dic/index', 'http://admin.tp6.cn/dic/index', '{\"page\":\"1\",\"limit\":\"20\"}', '字典管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623772051, 1);
INSERT INTO `think_action_log_2021_06` VALUES (237, 0, 1, '相约在冬季', 'POST', 'admin', '/layoutdesc/index', 'http://admin.tp6.cn/layoutdesc/index', '{\"page\":\"1\",\"limit\":\"20\"}', '布局推荐描述', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623772051, 1);
INSERT INTO `think_action_log_2021_06` VALUES (238, 0, 1, '相约在冬季', 'POST', 'admin', '/database/index', 'http://admin.tp6.cn/database/index', '{\"page\":\"1\",\"limit\":\"20\"}', '数据库管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623772051, 1);
INSERT INTO `think_action_log_2021_06` VALUES (239, 0, 1, '相约在冬季', 'POST', 'admin', '/dictype/index', 'http://admin.tp6.cn/dictype/index', '{\"page\":\"1\",\"limit\":\"20\"}', '字典类型', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623772051, 1);
INSERT INTO `think_action_log_2021_06` VALUES (240, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623772051, 1);
INSERT INTO `think_action_log_2021_06` VALUES (241, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623772691, 1);
INSERT INTO `think_action_log_2021_06` VALUES (242, 0, 1, '相约在冬季', 'POST', 'admin', '/item/index', 'http://admin.tp6.cn/item/index', '{\"page\":\"1\",\"limit\":\"20\"}', '站点管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623773051, 1);
INSERT INTO `think_action_log_2021_06` VALUES (243, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623773060, 1);
INSERT INTO `think_action_log_2021_06` VALUES (244, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623773084, 1);
INSERT INTO `think_action_log_2021_06` VALUES (245, 0, 1, '相约在冬季', 'POST', 'admin', '/role/index', 'http://admin.tp6.cn/role/index', '{\"page\":\"1\",\"limit\":\"20\"}', '角色管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623773303, 1);
INSERT INTO `think_action_log_2021_06` VALUES (246, 0, 1, '相约在冬季', 'POST', 'admin', '/role/index', 'http://admin.tp6.cn/role/index', '{\"page\":\"1\",\"limit\":\"20\"}', '角色管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623773350, 1);
INSERT INTO `think_action_log_2021_06` VALUES (247, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623773489, 1);
INSERT INTO `think_action_log_2021_06` VALUES (248, 0, 1, '相约在冬季', 'POST', 'admin', '/login/login', 'http://admin.tp6.cn/login/login', '{\"username\":\"admin\",\"password\":\"admin123\",\"captcha\":\"520\",\"remember\":\"on\"}', '系统登录', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623776345, 1);
INSERT INTO `think_action_log_2021_06` VALUES (249, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623776457, 1);
INSERT INTO `think_action_log_2021_06` VALUES (250, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623776980, 1);
INSERT INTO `think_action_log_2021_06` VALUES (251, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623777009, 1);
INSERT INTO `think_action_log_2021_06` VALUES (252, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623777043, 1);
INSERT INTO `think_action_log_2021_06` VALUES (253, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623777310, 1);
INSERT INTO `think_action_log_2021_06` VALUES (254, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623777350, 1);
INSERT INTO `think_action_log_2021_06` VALUES (255, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623777425, 1);
INSERT INTO `think_action_log_2021_06` VALUES (256, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623777482, 1);
INSERT INTO `think_action_log_2021_06` VALUES (257, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623778005, 1);
INSERT INTO `think_action_log_2021_06` VALUES (258, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623778035, 1);
INSERT INTO `think_action_log_2021_06` VALUES (259, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623778681, 1);
INSERT INTO `think_action_log_2021_06` VALUES (260, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623779819, 1);
INSERT INTO `think_action_log_2021_06` VALUES (261, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623779861, 1);
INSERT INTO `think_action_log_2021_06` VALUES (262, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623779878, 1);
INSERT INTO `think_action_log_2021_06` VALUES (263, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623779966, 1);
INSERT INTO `think_action_log_2021_06` VALUES (264, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623780023, 1);
INSERT INTO `think_action_log_2021_06` VALUES (265, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623780033, 1);
INSERT INTO `think_action_log_2021_06` VALUES (266, 0, 1, '相约在冬季', 'POST', 'admin', '/role/index', 'http://admin.tp6.cn/role/index', '{\"page\":\"1\",\"limit\":\"20\"}', '角色管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623780118, 1);
INSERT INTO `think_action_log_2021_06` VALUES (267, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623780121, 1);
INSERT INTO `think_action_log_2021_06` VALUES (268, 0, 1, '相约在冬季', 'POST', 'admin', '/actionlog/index', 'http://admin.tp6.cn/actionlog/index', '{\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623780124, 1);
INSERT INTO `think_action_log_2021_06` VALUES (269, 0, 1, '相约在冬季', 'POST', 'admin', '/adminlog/index', 'http://admin.tp6.cn/adminlog/index', '{\"page\":\"1\",\"limit\":\"20\"}', '登录日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623780129, 1);
INSERT INTO `think_action_log_2021_06` VALUES (270, 0, 1, '相约在冬季', 'POST', 'admin', '/configgroup/index', 'http://admin.tp6.cn/configgroup/index', '{\"page\":\"1\",\"limit\":\"20\"}', '配置分组', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623780132, 1);
INSERT INTO `think_action_log_2021_06` VALUES (271, 0, 1, '相约在冬季', 'POST', 'admin', '/config/index?group_id=1', 'http://admin.tp6.cn/config/index?group_id=1', '{\"group_id\":\"1\",\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623780135, 1);
INSERT INTO `think_action_log_2021_06` VALUES (272, 0, 1, '相约在冬季', 'POST', 'admin', '/dictype/index', 'http://admin.tp6.cn/dictype/index', '{\"page\":\"1\",\"limit\":\"20\"}', '字典类型', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623780138, 1);
INSERT INTO `think_action_log_2021_06` VALUES (273, 0, 1, '相约在冬季', 'POST', 'admin', '/login/login', 'http://admin.tp6.cn/login/login', '{\"username\":\"admin\",\"password\":\"admin123\",\"captcha\":\"520\",\"remember\":\"on\"}', '系统登录', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623857098, 1);
INSERT INTO `think_action_log_2021_06` VALUES (274, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623857104, 1);
INSERT INTO `think_action_log_2021_06` VALUES (275, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623857301, 1);
INSERT INTO `think_action_log_2021_06` VALUES (276, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623857393, 1);
INSERT INTO `think_action_log_2021_06` VALUES (277, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623857404, 1);
INSERT INTO `think_action_log_2021_06` VALUES (278, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623857489, 1);
INSERT INTO `think_action_log_2021_06` VALUES (279, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623858685, 1);
INSERT INTO `think_action_log_2021_06` VALUES (280, 0, 1, '相约在冬季', 'POST', 'admin', '/role/index', 'http://admin.tp6.cn/role/index', '{\"page\":\"1\",\"limit\":\"20\"}', '角色管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623858690, 1);
INSERT INTO `think_action_log_2021_06` VALUES (281, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623858692, 1);
INSERT INTO `think_action_log_2021_06` VALUES (282, 0, 1, '相约在冬季', 'POST', 'admin', '/actionlog/index', 'http://admin.tp6.cn/actionlog/index', '{\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623859197, 1);
INSERT INTO `think_action_log_2021_06` VALUES (283, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623859201, 1);
INSERT INTO `think_action_log_2021_06` VALUES (284, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623859293, 1);
INSERT INTO `think_action_log_2021_06` VALUES (285, 0, 1, '相约在冬季', 'POST', 'admin', '/adminlog/index', 'http://admin.tp6.cn/adminlog/index', '{\"page\":\"1\",\"limit\":\"20\"}', '登录日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623859319, 1);
INSERT INTO `think_action_log_2021_06` VALUES (286, 0, 1, '相约在冬季', 'POST', 'admin', '/actionlog/index', 'http://admin.tp6.cn/actionlog/index', '{\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623859321, 1);
INSERT INTO `think_action_log_2021_06` VALUES (287, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623859324, 1);
INSERT INTO `think_action_log_2021_06` VALUES (288, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623859360, 1);
INSERT INTO `think_action_log_2021_06` VALUES (289, 0, 1, '相约在冬季', 'POST', 'admin', '/database/index', 'http://admin.tp6.cn/database/index', '{\"page\":\"1\",\"limit\":\"20\"}', '数据库管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623859381, 1);
INSERT INTO `think_action_log_2021_06` VALUES (290, 0, 1, '相约在冬季', 'POST', 'admin', '/item/index', 'http://admin.tp6.cn/item/index', '{\"page\":\"1\",\"limit\":\"20\"}', '站点管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623859409, 1);
INSERT INTO `think_action_log_2021_06` VALUES (291, 0, 1, '相约在冬季', 'POST', 'admin', '/itemcate/index', 'http://admin.tp6.cn/itemcate/index', '', '栏目管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623859413, 1);
INSERT INTO `think_action_log_2021_06` VALUES (292, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623859417, 1);
INSERT INTO `think_action_log_2021_06` VALUES (293, 0, 1, '相约在冬季', 'POST', 'admin', '/login/login', 'http://admin.tp6.cn/login/login', '{\"username\":\"admin\",\"password\":\"admin123\",\"captcha\":\"520\",\"remember\":\"on\"}', '系统登录', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623861622, 1);
INSERT INTO `think_action_log_2021_06` VALUES (294, 0, 1, '相约在冬季', 'POST', 'admin', '/itemcate/index', 'http://admin.tp6.cn/itemcate/index', '', '栏目管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623861638, 1);
INSERT INTO `think_action_log_2021_06` VALUES (295, 0, 1, '相约在冬季', 'POST', 'admin', '/itemcate/index', 'http://admin.tp6.cn/itemcate/index', '', '栏目管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623861714, 1);
INSERT INTO `think_action_log_2021_06` VALUES (296, 0, 1, '相约在冬季', 'POST', 'admin', '/itemcate/index', 'http://admin.tp6.cn/itemcate/index', '', '栏目管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623861804, 1);
INSERT INTO `think_action_log_2021_06` VALUES (297, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623861814, 1);
INSERT INTO `think_action_log_2021_06` VALUES (298, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623862064, 1);
INSERT INTO `think_action_log_2021_06` VALUES (299, 0, 1, '相约在冬季', 'POST', 'admin', '/item/index', 'http://admin.tp6.cn/item/index', '{\"page\":\"1\",\"limit\":\"20\"}', '站点管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623862073, 1);
INSERT INTO `think_action_log_2021_06` VALUES (300, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623862075, 1);
INSERT INTO `think_action_log_2021_06` VALUES (301, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623862409, 1);
INSERT INTO `think_action_log_2021_06` VALUES (302, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623862450, 1);
INSERT INTO `think_action_log_2021_06` VALUES (303, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623862590, 1);
INSERT INTO `think_action_log_2021_06` VALUES (304, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623862845, 1);
INSERT INTO `think_action_log_2021_06` VALUES (305, 0, 1, '相约在冬季', 'POST', 'admin', '/login/login', 'http://admin.tp6.cn/login/login', '{\"username\":\"admin\",\"password\":\"admin123\",\"captcha\":\"520\",\"remember\":\"on\"}', '系统登录', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623933389, 1);
INSERT INTO `think_action_log_2021_06` VALUES (306, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623933452, 1);
INSERT INTO `think_action_log_2021_06` VALUES (307, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623934313, 1);
INSERT INTO `think_action_log_2021_06` VALUES (308, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623937253, 1);
INSERT INTO `think_action_log_2021_06` VALUES (309, 0, 1, '相约在冬季', 'POST', 'admin', '/itemcate/index', 'http://admin.tp6.cn/itemcate/index', '', '栏目管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623937269, 1);
INSERT INTO `think_action_log_2021_06` VALUES (310, 0, 1, '相约在冬季', 'POST', 'admin', '/login/login', 'http://admin.tp6.cn/login/login', '{\"username\":\"admin\",\"password\":\"admin123\",\"captcha\":\"520\",\"remember\":\"on\"}', '系统登录', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623943998, 1);
INSERT INTO `think_action_log_2021_06` VALUES (311, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623944003, 1);
INSERT INTO `think_action_log_2021_06` VALUES (312, 0, 1, '相约在冬季', 'POST', 'admin', '/login/login', 'http://admin.tp6.cn/login/login', '{\"username\":\"admin\",\"password\":\"admin123\",\"captcha\":\"520\",\"remember\":\"on\"}', '系统登录', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623945927, 1);
INSERT INTO `think_action_log_2021_06` VALUES (313, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623946257, 1);
INSERT INTO `think_action_log_2021_06` VALUES (314, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623947460, 1);
INSERT INTO `think_action_log_2021_06` VALUES (315, 0, 1, '相约在冬季', 'POST', 'admin', '/item/index', 'http://admin.tp6.cn/item/index', '{\"page\":\"1\",\"limit\":\"20\"}', '站点管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623948044, 1);
INSERT INTO `think_action_log_2021_06` VALUES (316, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623948348, 1);
INSERT INTO `think_action_log_2021_06` VALUES (317, 0, 1, '相约在冬季', 'POST', 'admin', '/item/index', 'http://admin.tp6.cn/item/index', '{\"page\":\"1\",\"limit\":\"20\"}', '站点管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623948349, 1);
INSERT INTO `think_action_log_2021_06` VALUES (318, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623948369, 1);
INSERT INTO `think_action_log_2021_06` VALUES (319, 0, 1, '相约在冬季', 'POST', 'admin', '/item/index', 'http://admin.tp6.cn/item/index', '{\"page\":\"1\",\"limit\":\"20\"}', '站点管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623948369, 1);
INSERT INTO `think_action_log_2021_06` VALUES (320, 0, 1, '相约在冬季', 'POST', 'admin', '/itemcate/index', 'http://admin.tp6.cn/itemcate/index', '', '栏目管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623948380, 1);
INSERT INTO `think_action_log_2021_06` VALUES (321, 0, 1, '相约在冬季', 'POST', 'admin', '/adsort/index', 'http://admin.tp6.cn/adsort/index', '{\"page\":\"1\",\"limit\":\"20\"}', '幻灯片位置管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623948385, 1);
INSERT INTO `think_action_log_2021_06` VALUES (322, 0, 1, '相约在冬季', 'POST', 'admin', '/ad/index', 'http://admin.tp6.cn/ad/index', '{\"page\":\"1\",\"limit\":\"20\"}', '幻灯片管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623948387, 1);
INSERT INTO `think_action_log_2021_06` VALUES (323, 0, 1, '相约在冬季', 'POST', 'admin', '/notice/index', 'http://admin.tp6.cn/notice/index', '{\"page\":\"1\",\"limit\":\"20\"}', '通知公告', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623948394, 1);
INSERT INTO `think_action_log_2021_06` VALUES (324, 0, 1, '相约在冬季', 'POST', 'admin', '/notice/index', 'http://admin.tp6.cn/notice/index', '{\"page\":\"1\",\"limit\":\"20\",\"title\":\"\"}', '通知公告', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623948403, 1);
INSERT INTO `think_action_log_2021_06` VALUES (325, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/index', 'http://admin.tp6.cn/userlevel/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623948475, 1);
INSERT INTO `think_action_log_2021_06` VALUES (326, 0, 1, '相约在冬季', 'POST', 'admin', '/user/index', 'http://admin.tp6.cn/user/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1623948480, 1);
INSERT INTO `think_action_log_2021_06` VALUES (327, 0, 1, '相约在冬季', 'POST', 'admin', '/login/login', 'http://admin.tp6.cn/login/login', '{\"username\":\"admin\",\"password\":\"admin123\",\"captcha\":\"520\",\"remember\":\"on\"}', '系统登录', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624068221, 1);
INSERT INTO `think_action_log_2021_06` VALUES (328, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/index', 'http://admin.tp6.cn/userlevel/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624068227, 1);
INSERT INTO `think_action_log_2021_06` VALUES (329, 0, 1, '相约在冬季', 'POST', 'admin', '/user/index', 'http://admin.tp6.cn/user/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624068233, 1);
INSERT INTO `think_action_log_2021_06` VALUES (330, 0, 1, '相约在冬季', 'POST', 'admin', '/user/index', 'http://admin.tp6.cn/user/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624068361, 1);
INSERT INTO `think_action_log_2021_06` VALUES (331, 0, 1, '相约在冬季', 'POST', 'admin', '/user/index', 'http://admin.tp6.cn/user/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624069010, 1);
INSERT INTO `think_action_log_2021_06` VALUES (332, 0, 1, '相约在冬季', 'POST', 'admin', '/user/index', 'http://admin.tp6.cn/user/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624069158, 1);
INSERT INTO `think_action_log_2021_06` VALUES (333, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/index', 'http://admin.tp6.cn/userlevel/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624069158, 1);
INSERT INTO `think_action_log_2021_06` VALUES (334, 0, 1, '相约在冬季', 'POST', 'admin', '/user/index', 'http://admin.tp6.cn/user/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624070062, 1);
INSERT INTO `think_action_log_2021_06` VALUES (335, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/index', 'http://admin.tp6.cn/userlevel/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624070062, 1);
INSERT INTO `think_action_log_2021_06` VALUES (336, 0, 1, '相约在冬季', 'POST', 'admin', '/user/index', 'http://admin.tp6.cn/user/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624070705, 1);
INSERT INTO `think_action_log_2021_06` VALUES (337, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/index', 'http://admin.tp6.cn/userlevel/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624070706, 1);
INSERT INTO `think_action_log_2021_06` VALUES (338, 0, 1, '相约在冬季', 'POST', 'admin', '/user/index', 'http://admin.tp6.cn/user/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624071593, 1);
INSERT INTO `think_action_log_2021_06` VALUES (339, 0, 1, '相约在冬季', 'POST', 'admin', '/user/index', 'http://admin.tp6.cn/user/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624075941, 1);
INSERT INTO `think_action_log_2021_06` VALUES (340, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/index', 'http://admin.tp6.cn/userlevel/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624075942, 1);
INSERT INTO `think_action_log_2021_06` VALUES (341, 0, 1, '相约在冬季', 'POST', 'admin', '/user/index', 'http://admin.tp6.cn/user/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624076071, 1);
INSERT INTO `think_action_log_2021_06` VALUES (342, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/index', 'http://admin.tp6.cn/userlevel/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624076071, 1);
INSERT INTO `think_action_log_2021_06` VALUES (343, 0, 1, '相约在冬季', 'POST', 'admin', '/city/index', 'http://admin.tp6.cn/city/index', '', '行政区域', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624076097, 1);
INSERT INTO `think_action_log_2021_06` VALUES (344, 0, 1, '相约在冬季', 'POST', 'admin', '/city/index', 'http://admin.tp6.cn/city/index', '', '行政区域', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624076106, 1);
INSERT INTO `think_action_log_2021_06` VALUES (345, 0, 1, '相约在冬季', 'POST', 'admin', '/city/index', 'http://admin.tp6.cn/city/index', '', '行政区域', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624076227, 1);
INSERT INTO `think_action_log_2021_06` VALUES (346, 0, 1, '相约在冬季', 'POST', 'admin', '/city/index', 'http://admin.tp6.cn/city/index', '', '行政区域', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624076250, 1);
INSERT INTO `think_action_log_2021_06` VALUES (347, 0, 1, '相约在冬季', 'POST', 'admin', '/city/index', 'http://admin.tp6.cn/city/index', '', '行政区域', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624076297, 1);
INSERT INTO `think_action_log_2021_06` VALUES (348, 0, 1, '相约在冬季', 'POST', 'admin', '/city/index', 'http://admin.tp6.cn/city/index', '', '行政区域', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624076316, 1);
INSERT INTO `think_action_log_2021_06` VALUES (349, 0, 1, '相约在冬季', 'POST', 'admin', '/city/index', 'http://admin.tp6.cn/city/index', '{\"pid\":\"1\"}', '行政区域', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624076319, 1);
INSERT INTO `think_action_log_2021_06` VALUES (350, 0, 1, '相约在冬季', 'POST', 'admin', '/city/index', 'http://admin.tp6.cn/city/index', '', '行政区域', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624076364, 1);
INSERT INTO `think_action_log_2021_06` VALUES (351, 0, 1, '相约在冬季', 'POST', 'admin', '/city/index', 'http://admin.tp6.cn/city/index', '{\"pid\":\"1\"}', '行政区域', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624076366, 1);
INSERT INTO `think_action_log_2021_06` VALUES (352, 0, 1, '相约在冬季', 'POST', 'admin', '/city/index', 'http://admin.tp6.cn/city/index', '', '行政区域', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624076450, 1);
INSERT INTO `think_action_log_2021_06` VALUES (353, 0, 1, '相约在冬季', 'POST', 'admin', '/city/index', 'http://admin.tp6.cn/city/index', '{\"pid\":\"1\"}', '行政区域', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624076451, 1);
INSERT INTO `think_action_log_2021_06` VALUES (354, 0, 1, '相约在冬季', 'POST', 'admin', '/city/index', 'http://admin.tp6.cn/city/index', '{\"pid\":\"2\"}', '行政区域', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624076453, 1);
INSERT INTO `think_action_log_2021_06` VALUES (355, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/index', 'http://admin.tp6.cn/userlevel/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624076460, 1);
INSERT INTO `think_action_log_2021_06` VALUES (356, 0, 1, '相约在冬季', 'POST', 'admin', '/user/index', 'http://admin.tp6.cn/user/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624076461, 1);
INSERT INTO `think_action_log_2021_06` VALUES (357, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/index', 'http://admin.tp6.cn/userlevel/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624077603, 1);
INSERT INTO `think_action_log_2021_06` VALUES (358, 0, 1, '相约在冬季', 'POST', 'admin', '/city/index', 'http://admin.tp6.cn/city/index', '', '行政区域', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624077603, 1);
INSERT INTO `think_action_log_2021_06` VALUES (359, 0, 1, '相约在冬季', 'POST', 'admin', '/user/index', 'http://admin.tp6.cn/user/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624077603, 1);
INSERT INTO `think_action_log_2021_06` VALUES (360, 0, 1, '相约在冬季', 'POST', 'admin', '/user/index', 'http://admin.tp6.cn/user/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624077631, 1);
INSERT INTO `think_action_log_2021_06` VALUES (361, 0, 1, '相约在冬季', 'POST', 'admin', '/city/getChilds', 'http://admin.tp6.cn/city/getChilds', '{\"id\":\"1\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624077655, 1);
INSERT INTO `think_action_log_2021_06` VALUES (362, 0, 1, '相约在冬季', 'POST', 'admin', '/city/getChilds', 'http://admin.tp6.cn/city/getChilds', '{\"id\":\"2\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624077661, 1);
INSERT INTO `think_action_log_2021_06` VALUES (363, 0, 1, '相约在冬季', 'POST', 'admin', '/user/index', 'http://admin.tp6.cn/user/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624078254, 1);
INSERT INTO `think_action_log_2021_06` VALUES (364, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624078533, 1);
INSERT INTO `think_action_log_2021_06` VALUES (365, 0, 1, '相约在冬季', 'POST', 'admin', '/itemcate/index', 'http://admin.tp6.cn/itemcate/index', '', '栏目管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624078673, 1);
INSERT INTO `think_action_log_2021_06` VALUES (366, 0, 1, '相约在冬季', 'POST', 'admin', '/itemcate/edit', 'http://admin.tp6.cn/itemcate/edit', '{\"id\":\"2\",\"pid\":\"1\",\"name\":\"\\u5e7f\\u544a\\u63a8\\u8350\",\"item_id\":\"1\",\"pinyin\":\"guanggaotuijian\",\"code\":\"ggtj\",\"is_cover\":\"1\",\"sort\":\"125\",\"cover\":\"http:\\/\\/images.pro6.rxthink.cn\\/images\\/itemcate\\/20210124\\/0492828769975054155.png\",\"note\":\"\\u5e7f\\u544a\\u63a8\\u8350\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624078697, 1);
INSERT INTO `think_action_log_2021_06` VALUES (367, 0, 1, '相约在冬季', 'POST', 'admin', '/itemcate/edit', 'http://admin.tp6.cn/itemcate/edit', '{\"id\":\"2\",\"pid\":\"1\",\"name\":\"\\u5e7f\\u544a\\u63a8\\u8350\",\"item_id\":\"1\",\"pinyin\":\"guanggaotuijian\",\"code\":\"ggtj\",\"is_cover\":\"1\",\"sort\":\"125\",\"cover\":\"http:\\/\\/images.pro6.rxthink.cn\\/images\\/itemcate\\/20210124\\/0492828769975054155.png\",\"note\":\"\\u5e7f\\u544a\\u63a8\\u8350\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624078705, 1);
INSERT INTO `think_action_log_2021_06` VALUES (368, 0, 1, '相约在冬季', 'POST', 'admin', '/login/login', 'http://admin.tp6.cn/login/login', '{\"username\":\"admin\",\"password\":\"admin123\",\"captcha\":\"520\",\"remember\":\"on\"}', '系统登录', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624105815, 1);
INSERT INTO `think_action_log_2021_06` VALUES (369, 0, 1, '相约在冬季', 'POST', 'admin', '/login/login', 'http://admin.tp6.cn/login/login', '{\"username\":\"admin\",\"password\":\"admin123\",\"captcha\":\"520\",\"remember\":\"on\"}', '系统登录', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624110540, 1);
INSERT INTO `think_action_log_2021_06` VALUES (370, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/index', 'http://admin.tp6.cn/userlevel/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624110546, 1);
INSERT INTO `think_action_log_2021_06` VALUES (371, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/edit', 'http://admin.tp6.cn/userlevel/edit', '{\"id\":\"0\",\"name\":\"\\u9ec4\\u91d1\\u4f1a\\u5458\",\"sort\":\"125\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624110707, 1);
INSERT INTO `think_action_log_2021_06` VALUES (372, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/edit', 'http://admin.tp6.cn/userlevel/edit', '{\"id\":\"0\",\"name\":\"\\u9ec4\\u91d1\\u4f1a\\u5458\",\"sort\":\"125\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624110714, 1);
INSERT INTO `think_action_log_2021_06` VALUES (373, 0, 1, '相约在冬季', 'POST', 'admin', '/user/index', 'http://admin.tp6.cn/user/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624110734, 1);
INSERT INTO `think_action_log_2021_06` VALUES (374, 0, 1, '相约在冬季', 'POST', 'admin', '/login/login', 'http://admin.tp6.cn/login/login', '{\"username\":\"admin\",\"password\":\"admin123\",\"captcha\":\"520\",\"remember\":\"on\"}', '系统登录', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624110804, 1);
INSERT INTO `think_action_log_2021_06` VALUES (375, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624110812, 1);
INSERT INTO `think_action_log_2021_06` VALUES (376, 0, 1, '相约在冬季', 'POST', 'admin', '/actionlog/index', 'http://admin.tp6.cn/actionlog/index', '{\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624110847, 1);
INSERT INTO `think_action_log_2021_06` VALUES (377, 0, 1, '相约在冬季', 'POST', 'admin', '/login/login', 'http://admin.tp6.cn/login/login', '{\"username\":\"admin\",\"password\":\"admin123\",\"captcha\":\"520\",\"remember\":\"on\"}', '系统登录', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624121484, 1);
INSERT INTO `think_action_log_2021_06` VALUES (378, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/index', 'http://admin.tp6.cn/userlevel/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624121492, 1);
INSERT INTO `think_action_log_2021_06` VALUES (379, 0, 1, '相约在冬季', 'POST', 'admin', '/adsort/index', 'http://admin.tp6.cn/adsort/index', '{\"page\":\"1\",\"limit\":\"20\"}', '幻灯片位置管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624121729, 1);
INSERT INTO `think_action_log_2021_06` VALUES (380, 0, 1, '相约在冬季', 'POST', 'admin', '/adsort/index', 'http://admin.tp6.cn/adsort/index', '{\"page\":\"1\",\"limit\":\"20\"}', '幻灯片位置管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624122116, 1);
INSERT INTO `think_action_log_2021_06` VALUES (381, 0, 1, '相约在冬季', 'POST', 'admin', '/adsort/index', 'http://admin.tp6.cn/adsort/index', '{\"page\":\"1\",\"limit\":\"20\"}', '幻灯片位置管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624122244, 1);
INSERT INTO `think_action_log_2021_06` VALUES (382, 0, 1, '相约在冬季', 'POST', 'admin', '/adsort/index', 'http://admin.tp6.cn/adsort/index', '{\"page\":\"1\",\"limit\":\"20\"}', '幻灯片位置管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624122269, 1);
INSERT INTO `think_action_log_2021_06` VALUES (383, 0, 1, '相约在冬季', 'POST', 'admin', '/ad/index', 'http://admin.tp6.cn/ad/index', '{\"page\":\"1\",\"limit\":\"20\"}', '幻灯片管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624122282, 1);
INSERT INTO `think_action_log_2021_06` VALUES (384, 0, 1, '相约在冬季', 'POST', 'admin', '/ad/index', 'http://admin.tp6.cn/ad/index', '{\"page\":\"1\",\"limit\":\"20\"}', '幻灯片管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624122286, 1);
INSERT INTO `think_action_log_2021_06` VALUES (385, 0, 1, '相约在冬季', 'POST', 'admin', '/ad/index', 'http://admin.tp6.cn/ad/index', '{\"page\":\"1\",\"limit\":\"20\"}', '幻灯片管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624122726, 1);
INSERT INTO `think_action_log_2021_06` VALUES (386, 0, 1, '相约在冬季', 'POST', 'admin', '/ad/index', 'http://admin.tp6.cn/ad/index', '{\"page\":\"1\",\"limit\":\"20\"}', '幻灯片管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624123154, 1);
INSERT INTO `think_action_log_2021_06` VALUES (387, 0, 1, '相约在冬季', 'POST', 'admin', '/ad/index', 'http://admin.tp6.cn/ad/index', '{\"page\":\"1\",\"limit\":\"20\"}', '幻灯片管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624123210, 1);
INSERT INTO `think_action_log_2021_06` VALUES (388, 0, 1, '相约在冬季', 'POST', 'admin', '/ad/index', 'http://admin.tp6.cn/ad/index', '{\"page\":\"1\",\"limit\":\"20\"}', '幻灯片管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624123284, 1);
INSERT INTO `think_action_log_2021_06` VALUES (389, 0, 1, '相约在冬季', 'POST', 'admin', '/layoutdesc/index', 'http://admin.tp6.cn/layoutdesc/index', '{\"page\":\"1\",\"limit\":\"20\"}', '布局推荐描述', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624123285, 1);
INSERT INTO `think_action_log_2021_06` VALUES (390, 0, 1, '相约在冬季', 'POST', 'admin', '/layout/index', 'http://admin.tp6.cn/layout/index', '{\"page\":\"1\",\"limit\":\"20\"}', '布局推荐管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624123287, 1);
INSERT INTO `think_action_log_2021_06` VALUES (391, 0, 1, '相约在冬季', 'POST', 'admin', '/notice/index', 'http://admin.tp6.cn/notice/index', '{\"page\":\"1\",\"limit\":\"20\"}', '通知公告', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624123290, 1);
INSERT INTO `think_action_log_2021_06` VALUES (392, 0, 1, '相约在冬季', 'POST', 'admin', '/layout/index', 'http://admin.tp6.cn/layout/index', '{\"page\":\"1\",\"limit\":\"20\"}', '布局推荐管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624123471, 1);
INSERT INTO `think_action_log_2021_06` VALUES (393, 0, 1, '相约在冬季', 'POST', 'admin', '/notice/index', 'http://admin.tp6.cn/notice/index', '{\"page\":\"1\",\"limit\":\"20\"}', '通知公告', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624123479, 1);
INSERT INTO `think_action_log_2021_06` VALUES (394, 0, 1, '相约在冬季', 'POST', 'admin', '/notice/index', 'http://admin.tp6.cn/notice/index', '{\"page\":\"1\",\"limit\":\"20\"}', '通知公告', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624123563, 1);
INSERT INTO `think_action_log_2021_06` VALUES (395, 0, 1, '相约在冬季', 'POST', 'admin', '/notice/edit', 'http://admin.tp6.cn/notice/edit', '{\"id\":\"1\",\"title\":\"112020\\u5e74\\u56fd\\u5e86\\u8282\\u653e\\u5047\\u901a\\u77e5\\u53ca\\u5b89\\u6392\",\"source\":\"1\",\"is_top\":\"2\",\"view_num\":\"1000\",\"status\":\"2\",\"publish_time\":\"\",\"content\":\"11\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624123575, 1);
INSERT INTO `think_action_log_2021_06` VALUES (396, 0, 1, '相约在冬季', 'POST', 'admin', '/notice/edit', 'http://admin.tp6.cn/notice/edit', '{\"id\":\"1\",\"title\":\"112020\\u5e74\\u56fd\\u5e86\\u8282\\u653e\\u5047\\u901a\\u77e5\\u53ca\\u5b89\\u6392\",\"source\":\"1\",\"is_top\":\"2\",\"view_num\":\"1000\",\"status\":\"2\",\"publish_time\":\"\",\"content\":\"11\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624124146, 1);
INSERT INTO `think_action_log_2021_06` VALUES (397, 0, 1, '相约在冬季', 'POST', 'admin', '/notice/edit', 'http://admin.tp6.cn/notice/edit', '{\"id\":\"1\",\"title\":\"112020\\u5e74\\u56fd\\u5e86\\u8282\\u653e\\u5047\\u901a\\u77e5\\u53ca\\u5b89\\u6392\",\"source\":\"1\",\"is_top\":\"2\",\"view_num\":\"1000\",\"status\":\"2\",\"publish_time\":\"\",\"content\":\"11\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624124188, 1);
INSERT INTO `think_action_log_2021_06` VALUES (398, 0, 1, '相约在冬季', 'POST', 'admin', '/notice/edit', 'http://admin.tp6.cn/notice/edit', '{\"id\":\"1\",\"title\":\"112020\\u5e74\\u56fd\\u5e86\\u8282\\u653e\\u5047\\u901a\\u77e5\\u53ca\\u5b89\\u6392\",\"source\":\"1\",\"is_top\":\"2\",\"view_num\":\"1000\",\"status\":\"2\",\"publish_time\":\"\",\"content\":\"11\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624124421, 1);
INSERT INTO `think_action_log_2021_06` VALUES (399, 0, 1, '相约在冬季', 'POST', 'admin', '/notice/edit', 'http://admin.tp6.cn/notice/edit', '{\"id\":\"1\",\"title\":\"112020\\u5e74\\u56fd\\u5e86\\u8282\\u653e\\u5047\\u901a\\u77e5\\u53ca\\u5b89\\u6392\",\"source\":\"1\",\"is_top\":\"2\",\"view_num\":\"1000\",\"status\":\"2\",\"publish_time\":\"\",\"content\":\"11\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624124462, 1);
INSERT INTO `think_action_log_2021_06` VALUES (400, 0, 1, '相约在冬季', 'POST', 'admin', '/notice/edit', 'http://admin.tp6.cn/notice/edit', '{\"id\":\"1\",\"title\":\"112020\\u5e74\\u56fd\\u5e86\\u8282\\u653e\\u5047\\u901a\\u77e5\\u53ca\\u5b89\\u6392\",\"source\":\"1\",\"is_top\":\"2\",\"view_num\":\"1000\",\"status\":\"2\",\"publish_time\":\"\",\"content\":\"11\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624124493, 1);
INSERT INTO `think_action_log_2021_06` VALUES (401, 0, 1, '相约在冬季', 'POST', 'admin', '/notice/edit', 'http://admin.tp6.cn/notice/edit', '{\"id\":\"1\",\"title\":\"112020\\u5e74\\u56fd\\u5e86\\u8282\\u653e\\u5047\\u901a\\u77e5\\u53ca\\u5b89\\u6392\",\"source\":\"1\",\"is_top\":\"2\",\"view_num\":\"1000\",\"status\":\"2\",\"publish_time\":\"\",\"content\":\"11\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624124660, 1);
INSERT INTO `think_action_log_2021_06` VALUES (402, 0, 1, '相约在冬季', 'POST', 'admin', '/notice/edit', 'http://admin.tp6.cn/notice/edit', '{\"id\":\"1\",\"title\":\"112020\\u5e74\\u56fd\\u5e86\\u8282\\u653e\\u5047\\u901a\\u77e5\\u53ca\\u5b89\\u6392\",\"source\":\"1\",\"is_top\":\"2\",\"view_num\":\"1000\",\"status\":\"2\",\"publish_time\":\"\",\"content\":\"11\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624124706, 1);
INSERT INTO `think_action_log_2021_06` VALUES (403, 0, 1, '相约在冬季', 'POST', 'admin', '/notice/edit', 'http://admin.tp6.cn/notice/edit', '{\"id\":\"1\",\"title\":\"112020\\u5e74\\u56fd\\u5e86\\u8282\\u653e\\u5047\\u901a\\u77e5\\u53ca\\u5b89\\u6392\",\"source\":\"1\",\"is_top\":\"2\",\"view_num\":\"1000\",\"status\":\"2\",\"publish_time\":\"\",\"content\":\"11\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624124733, 1);
INSERT INTO `think_action_log_2021_06` VALUES (404, 0, 1, '相约在冬季', 'POST', 'admin', '/notice/edit', 'http://admin.tp6.cn/notice/edit', '{\"id\":\"1\",\"title\":\"112020\\u5e74\\u56fd\\u5e86\\u8282\\u653e\\u5047\\u901a\\u77e5\\u53ca\\u5b89\\u6392\",\"source\":\"1\",\"is_top\":\"2\",\"view_num\":\"1000\",\"status\":\"2\",\"publish_time\":\"\",\"content\":\"11\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624124954, 1);
INSERT INTO `think_action_log_2021_06` VALUES (405, 0, 1, '相约在冬季', 'POST', 'admin', '/notice/edit', 'http://admin.tp6.cn/notice/edit', '{\"id\":\"1\",\"title\":\"112020\\u5e74\\u56fd\\u5e86\\u8282\\u653e\\u5047\\u901a\\u77e5\\u53ca\\u5b89\\u6392\",\"source\":\"1\",\"is_top\":\"2\",\"view_num\":\"1000\",\"status\":\"2\",\"publish_time\":\"\",\"content\":\"11\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624125041, 1);
INSERT INTO `think_action_log_2021_06` VALUES (406, 0, 1, '相约在冬季', 'POST', 'admin', '/notice/edit', 'http://admin.tp6.cn/notice/edit', '{\"id\":\"1\",\"title\":\"112020\\u5e74\\u56fd\\u5e86\\u8282\\u653e\\u5047\\u901a\\u77e5\\u53ca\\u5b89\\u6392\",\"source\":\"1\",\"is_top\":\"2\",\"view_num\":\"1000\",\"status\":\"2\",\"publish_time\":\"\",\"content\":\"11\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624125060, 1);
INSERT INTO `think_action_log_2021_06` VALUES (407, 0, 1, '相约在冬季', 'POST', 'admin', '/notice/edit', 'http://admin.tp6.cn/notice/edit', '{\"id\":\"1\",\"title\":\"112020\\u5e74\\u56fd\\u5e86\\u8282\\u653e\\u5047\\u901a\\u77e5\\u53ca\\u5b89\\u6392\",\"source\":\"1\",\"is_top\":\"2\",\"view_num\":\"1000\",\"status\":\"2\",\"publish_time\":\"\",\"content\":\"11\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624125230, 1);
INSERT INTO `think_action_log_2021_06` VALUES (408, 0, 1, '相约在冬季', 'POST', 'admin', '/notice/index', 'http://admin.tp6.cn/notice/index', '{\"page\":\"1\",\"limit\":\"20\"}', '通知公告', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624125232, 1);
INSERT INTO `think_action_log_2021_06` VALUES (409, 0, 1, '相约在冬季', 'POST', 'admin', '/login/login', 'http://admin.tp6.cn/login/login', '{\"username\":\"admin\",\"password\":\"admin123\",\"captcha\":\"520\",\"remember\":\"on\"}', '系统登录', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624125247, 1);
INSERT INTO `think_action_log_2021_06` VALUES (410, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624125302, 1);
INSERT INTO `think_action_log_2021_06` VALUES (411, 0, 1, '相约在冬季', 'POST', 'admin', '/user/index', 'http://admin.tp6.cn/user/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624125307, 1);
INSERT INTO `think_action_log_2021_06` VALUES (412, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/index', 'http://admin.tp6.cn/userlevel/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624125315, 1);
INSERT INTO `think_action_log_2021_06` VALUES (413, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/edit', 'http://admin.tp6.cn/userlevel/edit', '{\"id\":\"0\",\"name\":\"\\u9ec4\\u91d1\\u4f1a\\u5458\",\"sort\":\"125\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624125330, 1);
INSERT INTO `think_action_log_2021_06` VALUES (414, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/edit', 'http://admin.tp6.cn/userlevel/edit', '{\"id\":\"0\",\"name\":\"\\u9ec4\\u91d1\\u4f1a\\u5458\",\"sort\":\"125\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624125374, 1);
INSERT INTO `think_action_log_2021_06` VALUES (415, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/index', 'http://admin.tp6.cn/userlevel/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624125376, 1);
INSERT INTO `think_action_log_2021_06` VALUES (416, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624125486, 1);
INSERT INTO `think_action_log_2021_06` VALUES (417, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624125742, 1);
INSERT INTO `think_action_log_2021_06` VALUES (418, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624126107, 1);
INSERT INTO `think_action_log_2021_06` VALUES (419, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624126246, 1);
INSERT INTO `think_action_log_2021_06` VALUES (420, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624127183, 1);
INSERT INTO `think_action_log_2021_06` VALUES (421, 0, 1, '相约在冬季', 'POST', 'admin', '/adsort/index', 'http://admin.tp6.cn/adsort/index', '{\"page\":\"1\",\"limit\":\"20\"}', '幻灯片位置管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624127190, 1);
INSERT INTO `think_action_log_2021_06` VALUES (422, 0, 1, '相约在冬季', 'POST', 'admin', '/adsort/index', 'http://admin.tp6.cn/adsort/index', '{\"page\":\"1\",\"limit\":\"20\"}', '幻灯片位置管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624127195, 1);
INSERT INTO `think_action_log_2021_06` VALUES (423, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624127200, 1);
INSERT INTO `think_action_log_2021_06` VALUES (424, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624127320, 1);
INSERT INTO `think_action_log_2021_06` VALUES (425, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624127828, 1);
INSERT INTO `think_action_log_2021_06` VALUES (426, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624128546, 1);
INSERT INTO `think_action_log_2021_06` VALUES (427, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624128575, 1);
INSERT INTO `think_action_log_2021_06` VALUES (428, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624128592, 1);
INSERT INTO `think_action_log_2021_06` VALUES (429, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624128724, 1);
INSERT INTO `think_action_log_2021_06` VALUES (430, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624128767, 1);
INSERT INTO `think_action_log_2021_06` VALUES (431, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624128782, 1);
INSERT INTO `think_action_log_2021_06` VALUES (432, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624129021, 1);
INSERT INTO `think_action_log_2021_06` VALUES (433, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624129177, 1);
INSERT INTO `think_action_log_2021_06` VALUES (434, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624129258, 1);
INSERT INTO `think_action_log_2021_06` VALUES (435, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624129270, 1);
INSERT INTO `think_action_log_2021_06` VALUES (436, 0, 1, '相约在冬季', 'POST', 'admin', '/actionlog/index', 'http://admin.tp6.cn/actionlog/index', '{\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624129277, 1);
INSERT INTO `think_action_log_2021_06` VALUES (437, 0, 1, '相约在冬季', 'POST', 'admin', '/dep/index', 'http://admin.tp6.cn/dep/index', '', '部门管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624129277, 1);
INSERT INTO `think_action_log_2021_06` VALUES (438, 0, 1, '相约在冬季', 'POST', 'admin', '/city/index', 'http://admin.tp6.cn/city/index', '', '行政区域', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624129295, 1);
INSERT INTO `think_action_log_2021_06` VALUES (439, 0, 1, '相约在冬季', 'POST', 'admin', '/link/index', 'http://admin.tp6.cn/link/index', '{\"page\":\"1\",\"limit\":\"20\"}', '友链管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624129313, 1);
INSERT INTO `think_action_log_2021_06` VALUES (440, 0, 1, '相约在冬季', 'POST', 'admin', '/link/index', 'http://admin.tp6.cn/link/index', '{\"page\":\"1\",\"limit\":\"20\"}', '友链管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 1, 1624129329, 1);
INSERT INTO `think_action_log_2021_06` VALUES (441, 0, 1, '相约在冬季', 'POST', 'admin', '/login/login', 'http://admin.tp6.cn/login/login', '{\"username\":\"admin\",\"password\":\"admin123\",\"captcha\":\"520\",\"remember\":\"on\"}', '系统登录', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1624375673, 1);
INSERT INTO `think_action_log_2021_06` VALUES (442, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1624375686, 1);
INSERT INTO `think_action_log_2021_06` VALUES (443, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/index', 'http://admin.tp6.cn/userlevel/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1624375842, 1);
INSERT INTO `think_action_log_2021_06` VALUES (444, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/index', 'http://admin.tp6.cn/userlevel/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1624376291, 1);
INSERT INTO `think_action_log_2021_06` VALUES (445, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/index', 'http://admin.tp6.cn/userlevel/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1624376315, 1);
INSERT INTO `think_action_log_2021_06` VALUES (446, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/index', 'http://admin.tp6.cn/userlevel/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1624376321, 1);
INSERT INTO `think_action_log_2021_06` VALUES (447, 0, 1, '相约在冬季', 'POST', 'admin', '/user/index', 'http://admin.tp6.cn/user/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1624376328, 1);
INSERT INTO `think_action_log_2021_06` VALUES (448, 0, 1, '相约在冬季', 'POST', 'admin', '/login/login', 'http://admin.tp6.cn/login/login', '{\"username\":\"admin\",\"password\":\"admin123\",\"captcha\":\"520\",\"remember\":\"on\"}', '系统登录', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1624377893, 1);
INSERT INTO `think_action_log_2021_06` VALUES (449, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1624377900, 1);
INSERT INTO `think_action_log_2021_06` VALUES (450, 0, 1, '相约在冬季', 'POST', 'admin', '/login/login', 'http://admin.tp6.cn/login/login', '{\"username\":\"admin\",\"password\":\"admin123\",\"captcha\":\"520\",\"remember\":\"on\"}', '系统登录', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1624379641, 1);
INSERT INTO `think_action_log_2021_06` VALUES (451, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1624379663, 1);
INSERT INTO `think_action_log_2021_06` VALUES (452, 0, 1, '相约在冬季', 'POST', 'admin', '/item/index', 'http://admin.tp6.cn/item/index', '{\"page\":\"1\",\"limit\":\"20\"}', '站点管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1624379668, 1);
INSERT INTO `think_action_log_2021_06` VALUES (453, 0, 1, '相约在冬季', 'POST', 'admin', '/itemcate/index', 'http://admin.tp6.cn/itemcate/index', '', '栏目管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1624379754, 1);

-- ----------------------------
-- Table structure for think_action_log_2021_07
-- ----------------------------
DROP TABLE IF EXISTS `think_action_log_2021_07`;
CREATE TABLE `think_action_log_2021_07`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '唯一性标识',
  `action_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '行为ID',
  `is_admin` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否后台操作：1是 2否',
  `username` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '操作人用户名',
  `method` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '请求类型',
  `module` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '模型',
  `action` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作方法',
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '操作页面',
  `param` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '请求参数(JSON格式)',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '日志标题',
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '内容',
  `ip` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'IP地址',
  `user_agent` varchar(360) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'User-Agent',
  `create_user` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加人',
  `create_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加时间',
  `mark` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '有效标识：1正常 0删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统行为日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_action_log_2021_07
-- ----------------------------
INSERT INTO `think_action_log_2021_07` VALUES (1, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626502826, 1);
INSERT INTO `think_action_log_2021_07` VALUES (2, 0, 1, '相约在冬季', 'POST', 'admin', '/role/index', 'http://admin.tp6.cn/role/index', '{\"page\":\"1\",\"limit\":\"20\"}', '角色管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626502901, 1);
INSERT INTO `think_action_log_2021_07` VALUES (3, 0, 1, '相约在冬季', 'POST', 'admin', '/level/index', 'http://admin.tp6.cn/level/index', '{\"page\":\"1\",\"limit\":\"20\"}', '职级管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626502903, 1);
INSERT INTO `think_action_log_2021_07` VALUES (4, 0, 1, '相约在冬季', 'POST', 'admin', '/level/index', 'http://admin.tp6.cn/level/index', '{\"page\":\"1\",\"limit\":\"20\"}', '职级管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626502910, 1);
INSERT INTO `think_action_log_2021_07` VALUES (5, 0, 1, '相约在冬季', 'POST', 'admin', '/level/index', 'http://admin.tp6.cn/level/index', '{\"page\":\"1\",\"limit\":\"20\"}', '职级管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626502982, 1);
INSERT INTO `think_action_log_2021_07` VALUES (6, 0, 1, '相约在冬季', 'POST', 'admin', '/level/index', 'http://admin.tp6.cn/level/index', '{\"page\":\"1\",\"limit\":\"20\"}', '职级管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626503003, 1);
INSERT INTO `think_action_log_2021_07` VALUES (7, 0, 1, '相约在冬季', 'POST', 'admin', '/level/edit', 'http://admin.tp6.cn/level/edit', '{\"id\":\"0\",\"name\":\"\\u603b\\u7ecf\\u7406\",\"status\":\"1\",\"sort\":\"125\"}', '职级管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626503286, 1);
INSERT INTO `think_action_log_2021_07` VALUES (8, 0, 1, '相约在冬季', 'POST', 'admin', '/level/index', 'http://admin.tp6.cn/level/index', '{\"page\":\"1\",\"limit\":\"20\"}', '职级管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626503289, 1);
INSERT INTO `think_action_log_2021_07` VALUES (9, 0, 1, '相约在冬季', 'POST', 'admin', '/level/index', 'http://admin.tp6.cn/level/index', '{\"page\":\"1\",\"limit\":\"20\"}', '职级管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626503517, 1);
INSERT INTO `think_action_log_2021_07` VALUES (10, 0, 1, '相约在冬季', 'POST', 'admin', '/role/index', 'http://admin.tp6.cn/role/index', '{\"page\":\"1\",\"limit\":\"20\"}', '角色管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626503517, 1);
INSERT INTO `think_action_log_2021_07` VALUES (11, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626503518, 1);
INSERT INTO `think_action_log_2021_07` VALUES (12, 0, 1, '相约在冬季', 'POST', 'admin', '/position/index', 'http://admin.tp6.cn/position/index', '{\"page\":\"1\",\"limit\":\"20\"}', '岗位管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626503553, 1);
INSERT INTO `think_action_log_2021_07` VALUES (13, 0, 1, '相约在冬季', 'POST', 'admin', '/position/index', 'http://admin.tp6.cn/position/index', '{\"page\":\"1\",\"limit\":\"20\"}', '岗位管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626503720, 1);
INSERT INTO `think_action_log_2021_07` VALUES (14, 0, 1, '相约在冬季', 'POST', 'admin', '/login/login', 'http://admin.tp6.cn/login/login', '{\"username\":\"admin\",\"password\":\"admin123\",\"captcha\":\"520\",\"remember\":\"on\"}', '系统登录', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626507750, 1);
INSERT INTO `think_action_log_2021_07` VALUES (15, 0, 1, '相约在冬季', 'POST', 'admin', '/dep/index', 'http://admin.tp6.cn/dep/index', '', '部门管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626507759, 1);
INSERT INTO `think_action_log_2021_07` VALUES (16, 0, 1, '相约在冬季', 'POST', 'admin', '/dep/index', 'http://admin.tp6.cn/dep/index', '', '部门管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626507767, 1);
INSERT INTO `think_action_log_2021_07` VALUES (17, 0, 1, '相约在冬季', 'POST', 'admin', '/position/index', 'http://admin.tp6.cn/position/index', '{\"page\":\"1\",\"limit\":\"20\"}', '岗位管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626507775, 1);
INSERT INTO `think_action_log_2021_07` VALUES (18, 0, 1, '相约在冬季', 'POST', 'admin', '/position/index', 'http://admin.tp6.cn/position/index', '{\"page\":\"1\",\"limit\":\"20\"}', '岗位管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626507873, 1);
INSERT INTO `think_action_log_2021_07` VALUES (19, 0, 1, '相约在冬季', 'POST', 'admin', '/position/edit', 'http://admin.tp6.cn/position/edit', '{\"id\":\"0\",\"name\":\"\\u603b\\u7ecf\\u7406\",\"status\":\"1\",\"sort\":\"125\"}', '岗位管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626507888, 1);
INSERT INTO `think_action_log_2021_07` VALUES (20, 0, 1, '相约在冬季', 'POST', 'admin', '/position/index', 'http://admin.tp6.cn/position/index', '{\"page\":\"1\",\"limit\":\"20\"}', '岗位管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626507890, 1);
INSERT INTO `think_action_log_2021_07` VALUES (21, 0, 1, '相约在冬季', 'POST', 'admin', '/position/index', 'http://admin.tp6.cn/position/index', '{\"page\":\"1\",\"limit\":\"20\"}', '岗位管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626507916, 1);
INSERT INTO `think_action_log_2021_07` VALUES (22, 0, 1, '相约在冬季', 'POST', 'admin', '/dep/index', 'http://admin.tp6.cn/dep/index', '', '部门管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626507916, 1);
INSERT INTO `think_action_log_2021_07` VALUES (23, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626507941, 1);
INSERT INTO `think_action_log_2021_07` VALUES (24, 0, 1, '相约在冬季', 'POST', 'admin', '/actionlog/index', 'http://admin.tp6.cn/actionlog/index', '{\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626507942, 1);
INSERT INTO `think_action_log_2021_07` VALUES (25, 0, 1, '相约在冬季', 'POST', 'admin', '/adminlog/index', 'http://admin.tp6.cn/adminlog/index', '{\"page\":\"1\",\"limit\":\"20\"}', '登录日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626507945, 1);
INSERT INTO `think_action_log_2021_07` VALUES (26, 0, 1, '相约在冬季', 'POST', 'admin', '/dep/edit', 'http://admin.tp6.cn/dep/edit', '{\"id\":\"0\",\"pid\":\"0\",\"name\":\"\\u7814\\u53d1\\u4e2d\\u5fc3\",\"type\":\"1\",\"has_child\":\"1\",\"sort\":\"125\"}', '部门管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626508036, 1);
INSERT INTO `think_action_log_2021_07` VALUES (27, 0, 1, '相约在冬季', 'POST', 'admin', '/dep/index', 'http://admin.tp6.cn/dep/index', '', '部门管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626508039, 1);
INSERT INTO `think_action_log_2021_07` VALUES (28, 0, 1, '相约在冬季', 'POST', 'admin', '/dep/index', 'http://admin.tp6.cn/dep/index', '', '部门管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626508137, 1);
INSERT INTO `think_action_log_2021_07` VALUES (29, 0, 1, '相约在冬季', 'POST', 'admin', '/dep/edit', 'http://admin.tp6.cn/dep/edit', '{\"id\":\"0\",\"pid\":\"1\",\"name\":\"\\u6280\\u672f\\u4e2d\\u5fc3\",\"type\":\"2\",\"has_child\":\"2\",\"sort\":\"125\"}', '部门管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626508153, 1);
INSERT INTO `think_action_log_2021_07` VALUES (30, 0, 1, '相约在冬季', 'POST', 'admin', '/dep/index', 'http://admin.tp6.cn/dep/index', '', '部门管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626508156, 1);
INSERT INTO `think_action_log_2021_07` VALUES (31, 0, 1, '相约在冬季', 'POST', 'admin', '/dep/index', 'http://admin.tp6.cn/dep/index', '', '部门管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626508558, 1);
INSERT INTO `think_action_log_2021_07` VALUES (32, 0, 1, '相约在冬季', 'POST', 'admin', '/admin/index', 'http://admin.tp6.cn/admin/index', '{\"page\":\"1\",\"limit\":\"20\"}', '人员管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626508611, 1);
INSERT INTO `think_action_log_2021_07` VALUES (33, 0, 1, '相约在冬季', 'POST', 'admin', '/position/index', 'http://admin.tp6.cn/position/index', '{\"page\":\"1\",\"limit\":\"20\"}', '岗位管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626509233, 1);
INSERT INTO `think_action_log_2021_07` VALUES (34, 0, 1, '相约在冬季', 'POST', 'admin', '/adminlog/index', 'http://admin.tp6.cn/adminlog/index', '{\"page\":\"1\",\"limit\":\"20\"}', '登录日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626509234, 1);
INSERT INTO `think_action_log_2021_07` VALUES (35, 0, 1, '相约在冬季', 'POST', 'admin', '/dep/index', 'http://admin.tp6.cn/dep/index', '', '部门管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626509234, 1);
INSERT INTO `think_action_log_2021_07` VALUES (36, 0, 1, '相约在冬季', 'POST', 'admin', '/actionlog/index', 'http://admin.tp6.cn/actionlog/index', '{\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626509234, 1);
INSERT INTO `think_action_log_2021_07` VALUES (37, 0, 1, '相约在冬季', 'POST', 'admin', '/role/index', 'http://admin.tp6.cn/role/index', '{\"page\":\"1\",\"limit\":\"20\"}', '角色管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626509234, 1);
INSERT INTO `think_action_log_2021_07` VALUES (38, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626509234, 1);
INSERT INTO `think_action_log_2021_07` VALUES (39, 0, 1, '相约在冬季', 'POST', 'admin', '/level/index', 'http://admin.tp6.cn/level/index', '{\"page\":\"1\",\"limit\":\"20\"}', '职级管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626509240, 1);
INSERT INTO `think_action_log_2021_07` VALUES (40, 0, 1, '相约在冬季', 'POST', 'admin', '/dictype/index', 'http://admin.tp6.cn/dictype/index', '{\"page\":\"1\",\"limit\":\"20\"}', '字典类型', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626509562, 1);
INSERT INTO `think_action_log_2021_07` VALUES (41, 0, 1, '相约在冬季', 'POST', 'admin', '/dic/index', 'http://admin.tp6.cn/dic/index', '{\"page\":\"1\",\"limit\":\"20\"}', '字典管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626509564, 1);
INSERT INTO `think_action_log_2021_07` VALUES (42, 0, 1, '相约在冬季', 'POST', 'admin', '/link/index', 'http://admin.tp6.cn/link/index', '{\"page\":\"1\",\"limit\":\"20\"}', '友链管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626509567, 1);
INSERT INTO `think_action_log_2021_07` VALUES (43, 0, 1, '相约在冬季', 'POST', 'admin', '/link/index', 'http://admin.tp6.cn/link/index', '{\"page\":\"1\",\"limit\":\"20\"}', '友链管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626509641, 1);
INSERT INTO `think_action_log_2021_07` VALUES (44, 0, 1, '相约在冬季', 'POST', 'admin', '/link/edit', 'http://admin.tp6.cn/link/edit', '{\"id\":\"0\",\"name\":\"\\u767e\\u5ea6\\u5b98\\u7f51\",\"url\":\"https:\\/\\/www.baidu.com\\/\",\"type\":\"1\",\"platform\":\"1\",\"form\":\"2\",\"status\":\"1\",\"image\":\"\",\"sort\":\"125\"}', '友链管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626509877, 1);
INSERT INTO `think_action_log_2021_07` VALUES (45, 0, 1, '相约在冬季', 'POST', 'admin', '/link/edit', 'http://admin.tp6.cn/link/edit', '{\"id\":\"0\",\"name\":\"\\u767e\\u5ea6\\u5b98\\u7f51\",\"url\":\"https:\\/\\/www.baidu.com\\/\",\"type\":\"1\",\"platform\":\"1\",\"form\":\"1\",\"status\":\"1\",\"image\":\"\",\"sort\":\"125\"}', '友链管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626509883, 1);
INSERT INTO `think_action_log_2021_07` VALUES (46, 0, 1, '相约在冬季', 'POST', 'admin', '/link/index', 'http://admin.tp6.cn/link/index', '{\"page\":\"1\",\"limit\":\"20\"}', '友链管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626509885, 1);
INSERT INTO `think_action_log_2021_07` VALUES (47, 0, 1, '相约在冬季', 'POST', 'admin', '/link/index', 'http://admin.tp6.cn/link/index', '{\"page\":\"1\",\"limit\":\"20\"}', '友链管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626509907, 1);
INSERT INTO `think_action_log_2021_07` VALUES (48, 0, 1, '相约在冬季', 'POST', 'admin', '/link/index', 'http://admin.tp6.cn/link/index', '{\"page\":\"1\",\"limit\":\"20\"}', '友链管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626509949, 1);
INSERT INTO `think_action_log_2021_07` VALUES (49, 0, 1, '相约在冬季', 'POST', 'admin', '/city/index', 'http://admin.tp6.cn/city/index', '', '行政区域', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626509989, 1);
INSERT INTO `think_action_log_2021_07` VALUES (50, 0, 1, '相约在冬季', 'POST', 'admin', '/city/index', 'http://admin.tp6.cn/city/index', '{\"pid\":\"1\"}', '行政区域', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626509991, 1);
INSERT INTO `think_action_log_2021_07` VALUES (51, 0, 1, '相约在冬季', 'POST', 'admin', '/city/index', 'http://admin.tp6.cn/city/index', '{\"pid\":\"2\"}', '行政区域', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626509992, 1);
INSERT INTO `think_action_log_2021_07` VALUES (52, 0, 1, '相约在冬季', 'POST', 'admin', '/city/index', 'http://admin.tp6.cn/city/index', '', '行政区域', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626510521, 1);
INSERT INTO `think_action_log_2021_07` VALUES (53, 0, 1, '相约在冬季', 'POST', 'admin', '/city/index', 'http://admin.tp6.cn/city/index', '', '行政区域', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626510532, 1);
INSERT INTO `think_action_log_2021_07` VALUES (54, 0, 1, '相约在冬季', 'POST', 'admin', '/city/index', 'http://admin.tp6.cn/city/index', '', '行政区域', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626510967, 1);
INSERT INTO `think_action_log_2021_07` VALUES (55, 0, 1, '相约在冬季', 'POST', 'admin', '/city/index', 'http://admin.tp6.cn/city/index', '', '行政区域', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626511176, 1);
INSERT INTO `think_action_log_2021_07` VALUES (56, 0, 1, '相约在冬季', 'POST', 'admin', '/city/index', 'http://admin.tp6.cn/city/index', '', '行政区域', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 0, 1626511754, 1);
INSERT INTO `think_action_log_2021_07` VALUES (57, 0, 1, '相约在冬季', 'POST', 'admin', '/login/login', 'http://admin.tp6.cn/login/login', '{\"username\":\"admin\",\"password\":\"admin123\",\"captcha\":\"520\",\"remember\":\"on\"}', '系统登录', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626511759, 1);
INSERT INTO `think_action_log_2021_07` VALUES (58, 0, 1, '相约在冬季', 'POST', 'admin', '/city/index', 'http://admin.tp6.cn/city/index', '', '行政区域', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626511802, 1);
INSERT INTO `think_action_log_2021_07` VALUES (59, 0, 1, '相约在冬季', 'POST', 'admin', '/city/index', 'http://admin.tp6.cn/city/index', '{\"pid\":\"1\"}', '行政区域', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626511833, 1);
INSERT INTO `think_action_log_2021_07` VALUES (60, 0, 1, '相约在冬季', 'POST', 'admin', '/city/index', 'http://admin.tp6.cn/city/index', '{\"pid\":\"1\"}', '行政区域', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626512218, 1);
INSERT INTO `think_action_log_2021_07` VALUES (61, 0, 1, '相约在冬季', 'POST', 'admin', '/city/index', 'http://admin.tp6.cn/city/index', '{\"pid\":\"1\"}', '行政区域', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626512507, 1);
INSERT INTO `think_action_log_2021_07` VALUES (62, 0, 1, '相约在冬季', 'POST', 'admin', '/city/index', 'http://admin.tp6.cn/city/index', '{\"pid\":\"1\"}', '行政区域', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626512983, 1);
INSERT INTO `think_action_log_2021_07` VALUES (63, 0, 1, '相约在冬季', 'POST', 'admin', '/login/login', 'http://admin.tp6.cn/login/login', '{\"username\":\"admin\",\"password\":\"admin123\",\"captcha\":\"520\",\"remember\":\"on\"}', '系统登录', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626515783, 1);
INSERT INTO `think_action_log_2021_07` VALUES (64, 0, 1, '相约在冬季', 'POST', 'admin', '/city/index', 'http://admin.tp6.cn/city/index', '', '行政区域', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626515937, 1);
INSERT INTO `think_action_log_2021_07` VALUES (65, 0, 1, '相约在冬季', 'POST', 'admin', '/city/index', 'http://admin.tp6.cn/city/index', '', '行政区域', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626516073, 1);
INSERT INTO `think_action_log_2021_07` VALUES (66, 0, 1, '相约在冬季', 'POST', 'admin', '/city/index', 'http://admin.tp6.cn/city/index', '{\"pid\":\"3213\"}', '行政区域', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626516077, 1);
INSERT INTO `think_action_log_2021_07` VALUES (67, 0, 1, '相约在冬季', 'POST', 'admin', '/city/index', 'http://admin.tp6.cn/city/index', '', '行政区域', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626516112, 1);
INSERT INTO `think_action_log_2021_07` VALUES (68, 0, 1, '相约在冬季', 'POST', 'admin', '/city/index', 'http://admin.tp6.cn/city/index', '', '行政区域', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626516173, 1);
INSERT INTO `think_action_log_2021_07` VALUES (69, 0, 1, '相约在冬季', 'POST', 'admin', '/city/index', 'http://admin.tp6.cn/city/index', '{\"pid\":\"1\"}', '行政区域', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626516186, 1);
INSERT INTO `think_action_log_2021_07` VALUES (70, 0, 1, '相约在冬季', 'POST', 'admin', '/city/index', 'http://admin.tp6.cn/city/index', '{\"pid\":\"2\"}', '行政区域', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626516187, 1);
INSERT INTO `think_action_log_2021_07` VALUES (71, 0, 1, '相约在冬季', 'POST', 'admin', '/database/index', 'http://admin.tp6.cn/database/index', '{\"page\":\"1\",\"limit\":\"20\"}', '数据库管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626516237, 1);
INSERT INTO `think_action_log_2021_07` VALUES (72, 0, 1, '相约在冬季', 'POST', 'admin', '/database/index', 'http://admin.tp6.cn/database/index', '{\"page\":\"1\",\"limit\":\"20\"}', '数据库管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626516295, 1);
INSERT INTO `think_action_log_2021_07` VALUES (73, 0, 1, '相约在冬季', 'POST', 'admin', '/adsort/index', 'http://admin.tp6.cn/adsort/index', '{\"page\":\"1\",\"limit\":\"20\"}', '幻灯片位置管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626516368, 1);
INSERT INTO `think_action_log_2021_07` VALUES (74, 0, 1, '相约在冬季', 'POST', 'admin', '/ad/index', 'http://admin.tp6.cn/ad/index', '{\"page\":\"1\",\"limit\":\"20\"}', '幻灯片管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626516371, 1);
INSERT INTO `think_action_log_2021_07` VALUES (75, 0, 1, '相约在冬季', 'POST', 'admin', '/layoutdesc/index', 'http://admin.tp6.cn/layoutdesc/index', '{\"page\":\"1\",\"limit\":\"20\"}', '布局推荐描述', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626516374, 1);
INSERT INTO `think_action_log_2021_07` VALUES (76, 0, 1, '相约在冬季', 'POST', 'admin', '/notice/index', 'http://admin.tp6.cn/notice/index', '{\"page\":\"1\",\"limit\":\"20\"}', '通知公告', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626516379, 1);
INSERT INTO `think_action_log_2021_07` VALUES (77, 0, 1, '相约在冬季', 'POST', 'admin', '/item/index', 'http://admin.tp6.cn/item/index', '{\"page\":\"1\",\"limit\":\"20\"}', '站点管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626516386, 1);
INSERT INTO `think_action_log_2021_07` VALUES (78, 0, 1, '相约在冬季', 'POST', 'admin', '/itemcate/index', 'http://admin.tp6.cn/itemcate/index', '', '栏目管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626516388, 1);
INSERT INTO `think_action_log_2021_07` VALUES (79, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626516391, 1);
INSERT INTO `think_action_log_2021_07` VALUES (80, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/index', 'http://admin.tp6.cn/userlevel/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626516396, 1);
INSERT INTO `think_action_log_2021_07` VALUES (81, 0, 1, '相约在冬季', 'POST', 'admin', '/user/index', 'http://admin.tp6.cn/user/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626516399, 1);
INSERT INTO `think_action_log_2021_07` VALUES (82, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/edit', 'http://admin.tp6.cn/userlevel/edit', '{\"id\":\"0\",\"name\":\"\\u94bb\\u77f3\\u4f1a\\u5458\",\"sort\":\"125\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626516440, 1);
INSERT INTO `think_action_log_2021_07` VALUES (83, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/index', 'http://admin.tp6.cn/userlevel/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626516443, 1);
INSERT INTO `think_action_log_2021_07` VALUES (84, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/index', 'http://admin.tp6.cn/userlevel/index', '{\"page\":\"1\",\"limit\":\"20\",\"name\":\"\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626516446, 1);
INSERT INTO `think_action_log_2021_07` VALUES (85, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/edit', 'http://admin.tp6.cn/userlevel/edit', '{\"id\":\"0\",\"name\":\"\\u9ed1\\u91d1\\u4f1a\\u5458\",\"sort\":\"125\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626516448, 1);
INSERT INTO `think_action_log_2021_07` VALUES (86, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/index', 'http://admin.tp6.cn/userlevel/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626516450, 1);
INSERT INTO `think_action_log_2021_07` VALUES (87, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/edit', 'http://admin.tp6.cn/userlevel/edit', '{\"id\":\"14\",\"name\":\"\\u9ed1\\u91d1\\u4f1a\\u54581\",\"sort\":\"125\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626516456, 1);
INSERT INTO `think_action_log_2021_07` VALUES (88, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/index', 'http://admin.tp6.cn/userlevel/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626516458, 1);
INSERT INTO `think_action_log_2021_07` VALUES (89, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/edit', 'http://admin.tp6.cn/userlevel/edit', '{\"id\":\"14\",\"name\":\"\\u9ed1\\u91d1\\u4f1a\\u5458\",\"sort\":\"125\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626516461, 1);
INSERT INTO `think_action_log_2021_07` VALUES (90, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/index', 'http://admin.tp6.cn/userlevel/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626516463, 1);
INSERT INTO `think_action_log_2021_07` VALUES (91, 0, 1, '相约在冬季', 'POST', 'admin', '/configgroup/index', 'http://admin.tp6.cn/configgroup/index', '{\"page\":\"1\",\"limit\":\"20\"}', '配置分组', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626516547, 1);
INSERT INTO `think_action_log_2021_07` VALUES (92, 0, 1, '相约在冬季', 'POST', 'admin', '/login/login', 'http://admin.tp6.cn/login/login', '{\"username\":\"admin\",\"password\":\"admin123\",\"captcha\":\"520\",\"remember\":\"on\"}', '系统登录', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626534787, 1);
INSERT INTO `think_action_log_2021_07` VALUES (93, 0, 1, '相约在冬季', 'POST', 'admin', '/userlevel/index', 'http://admin.tp6.cn/userlevel/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户等级', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626534804, 1);
INSERT INTO `think_action_log_2021_07` VALUES (94, 0, 1, '相约在冬季', 'POST', 'admin', '/user/index', 'http://admin.tp6.cn/user/index', '{\"page\":\"1\",\"limit\":\"20\"}', '用户管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626534885, 1);
INSERT INTO `think_action_log_2021_07` VALUES (95, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626534902, 1);
INSERT INTO `think_action_log_2021_07` VALUES (96, 0, 1, '相约在冬季', 'POST', 'admin', '/layoutdesc/index', 'http://admin.tp6.cn/layoutdesc/index', '{\"page\":\"1\",\"limit\":\"20\"}', '布局推荐描述', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626535236, 1);
INSERT INTO `think_action_log_2021_07` VALUES (97, 0, 1, '相约在冬季', 'POST', 'admin', '/layout/index', 'http://admin.tp6.cn/layout/index', '{\"page\":\"1\",\"limit\":\"20\"}', '布局推荐管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626535243, 1);
INSERT INTO `think_action_log_2021_07` VALUES (98, 0, 1, '相约在冬季', 'POST', 'admin', '/notice/index', 'http://admin.tp6.cn/notice/index', '{\"page\":\"1\",\"limit\":\"20\"}', '通知公告', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626535249, 1);
INSERT INTO `think_action_log_2021_07` VALUES (99, 0, 1, '相约在冬季', 'POST', 'admin', '/notice/edit', 'http://admin.tp6.cn/notice/edit', '{\"id\":\"1\",\"title\":\"2020\\u5e74\\u56fd\\u5e86\\u8282\\u653e\\u5047\\u901a\\u77e5\\u53ca\\u5b89\\u6392\",\"source\":\"1\",\"is_top\":\"2\",\"view_num\":\"1000\",\"status\":\"2\",\"publish_time\":\"\",\"content\":\"11\"}', '通知公告', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626535529, 1);
INSERT INTO `think_action_log_2021_07` VALUES (100, 0, 1, '相约在冬季', 'POST', 'admin', '/notice/index', 'http://admin.tp6.cn/notice/index', '{\"page\":\"1\",\"limit\":\"20\"}', '通知公告', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626535531, 1);
INSERT INTO `think_action_log_2021_07` VALUES (101, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626536369, 1);
INSERT INTO `think_action_log_2021_07` VALUES (102, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626536564, 1);
INSERT INTO `think_action_log_2021_07` VALUES (103, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626537573, 1);
INSERT INTO `think_action_log_2021_07` VALUES (104, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626537630, 1);
INSERT INTO `think_action_log_2021_07` VALUES (105, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626537691, 1);
INSERT INTO `think_action_log_2021_07` VALUES (106, 0, 1, '相约在冬季', 'POST', 'admin', '/login/login', 'http://admin.tp6.cn/login/login', '{\"username\":\"admin\",\"password\":\"admin123\",\"captcha\":\"520\",\"remember\":\"on\"}', '系统登录', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626539391, 1);
INSERT INTO `think_action_log_2021_07` VALUES (107, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626539410, 1);
INSERT INTO `think_action_log_2021_07` VALUES (108, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626539464, 1);
INSERT INTO `think_action_log_2021_07` VALUES (109, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626539484, 1);
INSERT INTO `think_action_log_2021_07` VALUES (110, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626539509, 1);
INSERT INTO `think_action_log_2021_07` VALUES (111, 0, 1, '相约在冬季', 'POST', 'admin', '/dep/index', 'http://admin.tp6.cn/dep/index', '', '部门管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626539536, 1);
INSERT INTO `think_action_log_2021_07` VALUES (112, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626539541, 1);
INSERT INTO `think_action_log_2021_07` VALUES (113, 0, 1, '相约在冬季', 'POST', 'admin', '/dep/index', 'http://admin.tp6.cn/dep/index', '', '部门管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626539590, 1);
INSERT INTO `think_action_log_2021_07` VALUES (114, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626539592, 1);
INSERT INTO `think_action_log_2021_07` VALUES (115, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626539602, 1);
INSERT INTO `think_action_log_2021_07` VALUES (116, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626539743, 1);
INSERT INTO `think_action_log_2021_07` VALUES (117, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626539782, 1);
INSERT INTO `think_action_log_2021_07` VALUES (118, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626539854, 1);
INSERT INTO `think_action_log_2021_07` VALUES (119, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626539893, 1);
INSERT INTO `think_action_log_2021_07` VALUES (120, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626539973, 1);
INSERT INTO `think_action_log_2021_07` VALUES (121, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626540065, 1);
INSERT INTO `think_action_log_2021_07` VALUES (122, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626540085, 1);
INSERT INTO `think_action_log_2021_07` VALUES (123, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626540200, 1);
INSERT INTO `think_action_log_2021_07` VALUES (124, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626540238, 1);
INSERT INTO `think_action_log_2021_07` VALUES (125, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626540343, 1);
INSERT INTO `think_action_log_2021_07` VALUES (126, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626540373, 1);
INSERT INTO `think_action_log_2021_07` VALUES (127, 0, 1, '相约在冬季', 'POST', 'admin', '/menu/index', 'http://admin.tp6.cn/menu/index', '', '菜单管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626540480, 1);
INSERT INTO `think_action_log_2021_07` VALUES (128, 0, 1, '相约在冬季', 'POST', 'admin', '/configgroup/index', 'http://admin.tp6.cn/configgroup/index', '{\"page\":\"1\",\"limit\":\"20\"}', '配置分组', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626540582, 1);
INSERT INTO `think_action_log_2021_07` VALUES (129, 0, 1, '相约在冬季', 'POST', 'admin', '/config/index?group_id=1', 'http://admin.tp6.cn/config/index?group_id=1', '{\"group_id\":\"1\",\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626540588, 1);
INSERT INTO `think_action_log_2021_07` VALUES (130, 0, 1, '相约在冬季', 'POST', 'admin', '/login/login', 'http://admin.tp6.cn/login/login', '{\"username\":\"admin\",\"password\":\"admin123\",\"captcha\":\"520\",\"remember\":\"on\"}', '系统登录', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626540602, 1);
INSERT INTO `think_action_log_2021_07` VALUES (131, 0, 1, '相约在冬季', 'POST', 'admin', '/config/index?group_id=1', 'http://admin.tp6.cn/config/index?group_id=1', '{\"group_id\":\"1\",\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626540638, 1);
INSERT INTO `think_action_log_2021_07` VALUES (132, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626542479, 1);
INSERT INTO `think_action_log_2021_07` VALUES (133, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626542571, 1);
INSERT INTO `think_action_log_2021_07` VALUES (134, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626543296, 1);
INSERT INTO `think_action_log_2021_07` VALUES (135, 0, 1, '相约在冬季', 'POST', 'admin', '/config/index?group_id=1', 'http://admin.tp6.cn/config/index?group_id=1', '{\"group_id\":\"1\",\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626543515, 1);
INSERT INTO `think_action_log_2021_07` VALUES (136, 0, 1, '相约在冬季', 'POST', 'admin', '/config/index?group_id=1', 'http://admin.tp6.cn/config/index?group_id=1', '{\"group_id\":\"1\",\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626543603, 1);
INSERT INTO `think_action_log_2021_07` VALUES (137, 0, 1, '相约在冬季', 'POST', 'admin', '/config/index?group_id=1', 'http://admin.tp6.cn/config/index?group_id=1', '{\"group_id\":\"1\",\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626543789, 1);
INSERT INTO `think_action_log_2021_07` VALUES (138, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626544061, 1);
INSERT INTO `think_action_log_2021_07` VALUES (139, 0, 1, '相约在冬季', 'POST', 'admin', '/config/index?group_id=1', 'http://admin.tp6.cn/config/index?group_id=1', '{\"group_id\":\"1\",\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626544863, 1);
INSERT INTO `think_action_log_2021_07` VALUES (140, 0, 1, '相约在冬季', 'POST', 'admin', '/config/index?group_id=2', 'http://admin.tp6.cn/config/index?group_id=2', '{\"group_id\":\"2\",\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626544865, 1);
INSERT INTO `think_action_log_2021_07` VALUES (141, 0, 1, '相约在冬季', 'POST', 'admin', '/config/index?group_id=3', 'http://admin.tp6.cn/config/index?group_id=3', '{\"group_id\":\"3\",\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626544866, 1);
INSERT INTO `think_action_log_2021_07` VALUES (142, 0, 1, '相约在冬季', 'POST', 'admin', '/config/index?group_id=4', 'http://admin.tp6.cn/config/index?group_id=4', '{\"group_id\":\"4\",\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626544873, 1);
INSERT INTO `think_action_log_2021_07` VALUES (143, 0, 1, '相约在冬季', 'POST', 'admin', '/config/index?group_id=2', 'http://admin.tp6.cn/config/index?group_id=2', '{\"group_id\":\"2\",\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626544880, 1);
INSERT INTO `think_action_log_2021_07` VALUES (144, 0, 1, '相约在冬季', 'POST', 'admin', '/config/index?group_id=1', 'http://admin.tp6.cn/config/index?group_id=1', '{\"group_id\":\"1\",\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626544888, 1);
INSERT INTO `think_action_log_2021_07` VALUES (145, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626544895, 1);
INSERT INTO `think_action_log_2021_07` VALUES (146, 0, 1, '相约在冬季', 'POST', 'admin', '/config/index?group_id=1', 'http://admin.tp6.cn/config/index?group_id=1', '{\"group_id\":\"1\",\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626546245, 1);
INSERT INTO `think_action_log_2021_07` VALUES (147, 0, 1, '相约在冬季', 'POST', 'admin', '/config/index?group_id=1', 'http://admin.tp6.cn/config/index?group_id=1', '{\"group_id\":\"1\",\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626546271, 1);
INSERT INTO `think_action_log_2021_07` VALUES (148, 0, 1, '相约在冬季', 'POST', 'admin', '/config/index?group_id=1', 'http://admin.tp6.cn/config/index?group_id=1', '{\"group_id\":\"1\",\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626546297, 1);
INSERT INTO `think_action_log_2021_07` VALUES (149, 0, 1, '相约在冬季', 'POST', 'admin', '/config/index?group_id=1', 'http://admin.tp6.cn/config/index?group_id=1', '{\"group_id\":\"1\",\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626546376, 1);
INSERT INTO `think_action_log_2021_07` VALUES (150, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626546408, 1);
INSERT INTO `think_action_log_2021_07` VALUES (151, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626546628, 1);
INSERT INTO `think_action_log_2021_07` VALUES (152, 0, 1, '相约在冬季', 'POST', 'admin', '/config/index?group_id=1', 'http://admin.tp6.cn/config/index?group_id=1', '{\"group_id\":\"1\",\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626546658, 1);
INSERT INTO `think_action_log_2021_07` VALUES (153, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626546659, 1);
INSERT INTO `think_action_log_2021_07` VALUES (154, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626546673, 1);
INSERT INTO `think_action_log_2021_07` VALUES (155, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626546714, 1);
INSERT INTO `think_action_log_2021_07` VALUES (156, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626546794, 1);
INSERT INTO `think_action_log_2021_07` VALUES (157, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626546873, 1);
INSERT INTO `think_action_log_2021_07` VALUES (158, 0, 1, '相约在冬季', 'POST', 'admin', '/item/index', 'http://admin.tp6.cn/item/index', '{\"page\":\"1\",\"limit\":\"20\"}', '站点管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626546886, 1);
INSERT INTO `think_action_log_2021_07` VALUES (159, 0, 1, '相约在冬季', 'POST', 'admin', '/item/index', 'http://admin.tp6.cn/item/index', '{\"page\":\"1\",\"limit\":\"20\"}', '站点管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626547496, 1);
INSERT INTO `think_action_log_2021_07` VALUES (160, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626547559, 1);
INSERT INTO `think_action_log_2021_07` VALUES (161, 0, 1, '相约在冬季', 'POST', 'admin', '/article/index', 'http://admin.tp6.cn/article/index', '{\"page\":\"1\",\"limit\":\"20\"}', '文章管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626547593, 1);
INSERT INTO `think_action_log_2021_07` VALUES (162, 0, 1, '相约在冬季', 'POST', 'admin', '/config/index?group_id=1', 'http://admin.tp6.cn/config/index?group_id=1', '{\"group_id\":\"1\",\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626548160, 1);
INSERT INTO `think_action_log_2021_07` VALUES (163, 0, 1, '相约在冬季', 'POST', 'admin', '/itemcate/index', 'http://admin.tp6.cn/itemcate/index', '', '栏目管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626548317, 1);
INSERT INTO `think_action_log_2021_07` VALUES (164, 0, 1, '相约在冬季', 'POST', 'admin', '/itemcate/index', 'http://admin.tp6.cn/itemcate/index', '', '栏目管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626548396, 1);
INSERT INTO `think_action_log_2021_07` VALUES (165, 0, 1, '相约在冬季', 'POST', 'admin', '/config/index?group_id=1', 'http://admin.tp6.cn/config/index?group_id=1', '{\"group_id\":\"1\",\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626548617, 1);
INSERT INTO `think_action_log_2021_07` VALUES (166, 0, 1, '相约在冬季', 'POST', 'admin', '/itemcate/index', 'http://admin.tp6.cn/itemcate/index', '', '栏目管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626548617, 1);
INSERT INTO `think_action_log_2021_07` VALUES (167, 0, 1, '相约在冬季', 'POST', 'admin', '/adsort/index', 'http://admin.tp6.cn/adsort/index', '{\"page\":\"1\",\"limit\":\"20\"}', '幻灯片位置管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626548852, 1);
INSERT INTO `think_action_log_2021_07` VALUES (168, 0, 1, '相约在冬季', 'POST', 'admin', '/ad/index', 'http://admin.tp6.cn/ad/index', '{\"page\":\"1\",\"limit\":\"20\"}', '幻灯片管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626549041, 1);
INSERT INTO `think_action_log_2021_07` VALUES (169, 0, 1, '相约在冬季', 'POST', 'admin', '/itemcate/index', 'http://admin.tp6.cn/itemcate/index', '', '栏目管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626549049, 1);
INSERT INTO `think_action_log_2021_07` VALUES (170, 0, 1, '相约在冬季', 'POST', 'admin', '/config/index?group_id=1', 'http://admin.tp6.cn/config/index?group_id=1', '{\"group_id\":\"1\",\"page\":\"1\",\"limit\":\"20\"}', '操作日志', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626549050, 1);
INSERT INTO `think_action_log_2021_07` VALUES (171, 0, 1, '相约在冬季', 'POST', 'admin', '/adsort/index', 'http://admin.tp6.cn/adsort/index', '{\"page\":\"1\",\"limit\":\"20\"}', '幻灯片位置管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626549050, 1);
INSERT INTO `think_action_log_2021_07` VALUES (172, 0, 1, '相约在冬季', 'POST', 'admin', '/login/login', 'http://admin.tp6.cn/login/login', '{\"username\":\"admin\",\"password\":\"admin123\",\"captcha\":\"520\",\"remember\":\"on\"}', '系统登录', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626585929, 1);
INSERT INTO `think_action_log_2021_07` VALUES (173, 0, 1, '相约在冬季', 'POST', 'admin', '/database/index', 'http://admin.tp6.cn/database/index', '{\"page\":\"1\",\"limit\":\"20\"}', '数据库管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626585940, 1);
INSERT INTO `think_action_log_2021_07` VALUES (174, 0, 1, '相约在冬季', 'POST', 'admin', '/crontab/index', 'http://admin.tp6.cn/crontab/index', '{\"page\":\"1\",\"limit\":\"20\"}', '定时任务', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626586215, 1);
INSERT INTO `think_action_log_2021_07` VALUES (175, 0, 1, '相约在冬季', 'POST', 'admin', '/login/login', 'http://admin.tp6.cn/login/login', '{\"username\":\"admin\",\"password\":\"admin123\",\"captcha\":\"520\",\"remember\":\"on\"}', '系统登录', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626589141, 1);
INSERT INTO `think_action_log_2021_07` VALUES (176, 0, 1, '相约在冬季', 'POST', 'admin', '/demo3/index', 'http://admin.tp6.cn/demo3/index', '{\"page\":\"1\",\"limit\":\"20\"}', '演示管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626589208, 1);
INSERT INTO `think_action_log_2021_07` VALUES (177, 0, 1, '相约在冬季', 'POST', 'admin', '/demo3/index', 'http://admin.tp6.cn/demo3/index', '{\"page\":\"1\",\"limit\":\"20\"}', '演示管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626590434, 1);
INSERT INTO `think_action_log_2021_07` VALUES (178, 0, 1, '相约在冬季', 'POST', 'admin', '/demo3/index', 'http://admin.tp6.cn/demo3/index', '{\"page\":\"1\",\"limit\":\"20\"}', '演示管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626590622, 1);
INSERT INTO `think_action_log_2021_07` VALUES (179, 0, 1, '相约在冬季', 'POST', 'admin', '/demo3/index', 'http://admin.tp6.cn/demo3/index', '{\"page\":\"1\",\"limit\":\"20\"}', '演示管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626590686, 1);
INSERT INTO `think_action_log_2021_07` VALUES (180, 0, 1, '相约在冬季', 'POST', 'admin', '/demo3/setStatus', 'http://admin.tp6.cn/demo3/setStatus', '{\"id\":\"1\",\"status\":\"2\"}', '演示管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626590719, 1);
INSERT INTO `think_action_log_2021_07` VALUES (181, 0, 1, '相约在冬季', 'POST', 'admin', '/demo3/index', 'http://admin.tp6.cn/demo3/index', '{\"page\":\"1\",\"limit\":\"20\"}', '演示管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626590798, 1);
INSERT INTO `think_action_log_2021_07` VALUES (182, 0, 1, '相约在冬季', 'POST', 'admin', '/database/index', 'http://admin.tp6.cn/database/index', '{\"page\":\"1\",\"limit\":\"20\"}', '数据库管理', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626590924, 1);
INSERT INTO `think_action_log_2021_07` VALUES (183, 0, 1, '相约在冬季', 'POST', 'admin', '/generate/index', 'http://admin.tp6.cn/generate/index', '{\"page\":\"1\",\"limit\":\"20\"}', '代码生成', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626591621, 1);
INSERT INTO `think_action_log_2021_07` VALUES (184, 0, 1, '相约在冬季', 'POST', 'admin', '/generate/index', 'http://admin.tp6.cn/generate/index', '{\"page\":\"1\",\"limit\":\"20\"}', '代码生成', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626591643, 1);
INSERT INTO `think_action_log_2021_07` VALUES (185, 0, 1, '相约在冬季', 'POST', 'admin', '/generate/generate', 'http://admin.tp6.cn/generate/generate', '{\"name\":\"think_action\",\"comment\":\"\"}', '代码生成', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626591655, 1);
INSERT INTO `think_action_log_2021_07` VALUES (186, 0, 1, '相约在冬季', 'POST', 'admin', '/generate/generate', 'http://admin.tp6.cn/generate/generate', '{\"name\":\"think_action\",\"comment\":\"\"}', '代码生成', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626591667, 1);
INSERT INTO `think_action_log_2021_07` VALUES (187, 0, 1, '相约在冬季', 'POST', 'admin', '/generate/generate', 'http://admin.tp6.cn/generate/generate', '{\"name\":\"think_action\",\"comment\":\"\"}', '代码生成', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626591855, 1);
INSERT INTO `think_action_log_2021_07` VALUES (188, 0, 1, '相约在冬季', 'POST', 'admin', '/generate/index', 'http://admin.tp6.cn/generate/index', '{\"page\":\"1\",\"limit\":\"20\",\"name\":\"action\"}', '代码生成', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626592138, 1);
INSERT INTO `think_action_log_2021_07` VALUES (189, 0, 1, '相约在冬季', 'POST', 'admin', '/generate/index', 'http://admin.tp6.cn/generate/index', '{\"page\":\"1\",\"limit\":\"20\",\"name\":\"action\"}', '代码生成', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626592164, 1);
INSERT INTO `think_action_log_2021_07` VALUES (190, 0, 1, '相约在冬季', 'POST', 'admin', '/generate/index', 'http://admin.tp6.cn/generate/index', '{\"page\":\"1\",\"limit\":\"20\",\"name\":\"action\"}', '代码生成', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626592170, 1);
INSERT INTO `think_action_log_2021_07` VALUES (191, 0, 1, '相约在冬季', 'POST', 'admin', '/generate/index', 'http://admin.tp6.cn/generate/index', '{\"page\":\"1\",\"limit\":\"20\",\"name\":\"action\"}', '代码生成', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626593096, 1);
INSERT INTO `think_action_log_2021_07` VALUES (192, 0, 1, '相约在冬季', 'POST', 'admin', '/crontab/index', 'http://admin.tp6.cn/crontab/index', '{\"page\":\"1\",\"limit\":\"20\"}', '定时任务', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626593812, 1);
INSERT INTO `think_action_log_2021_07` VALUES (193, 0, 1, '相约在冬季', 'POST', 'admin', '/crontab/index', 'http://admin.tp6.cn/crontab/index', '{\"page\":\"1\",\"limit\":\"20\"}', '定时任务', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626593912, 1);
INSERT INTO `think_action_log_2021_07` VALUES (194, 0, 1, '相约在冬季', 'POST', 'admin', '/crontab/index', 'http://admin.tp6.cn/crontab/index', '{\"page\":\"1\",\"limit\":\"20\"}', '定时任务', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626594461, 1);
INSERT INTO `think_action_log_2021_07` VALUES (195, 0, 1, '相约在冬季', 'POST', 'admin', '/crontab/index', 'http://admin.tp6.cn/crontab/index', '{\"page\":\"1\",\"limit\":\"20\"}', '定时任务', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626594493, 1);
INSERT INTO `think_action_log_2021_07` VALUES (196, 0, 1, '相约在冬季', 'POST', 'admin', '/crontab/index', 'http://admin.tp6.cn/crontab/index', '{\"page\":\"1\",\"limit\":\"20\"}', '定时任务', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626594665, 1);
INSERT INTO `think_action_log_2021_07` VALUES (197, 0, 1, '相约在冬季', 'POST', 'admin', '/crontab/index', 'http://admin.tp6.cn/crontab/index', '{\"page\":\"1\",\"limit\":\"20\"}', '定时任务', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626594741, 1);
INSERT INTO `think_action_log_2021_07` VALUES (198, 0, 1, '相约在冬季', 'POST', 'admin', '/crontab/index', 'http://admin.tp6.cn/crontab/index', '{\"page\":\"1\",\"limit\":\"20\"}', '定时任务', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626594801, 1);
INSERT INTO `think_action_log_2021_07` VALUES (199, 0, 1, '相约在冬季', 'POST', 'admin', '/crontab/setStatus', 'http://admin.tp6.cn/crontab/setStatus', '{\"id\":\"33\",\"status\":\"1\"}', '定时任务', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626594808, 1);
INSERT INTO `think_action_log_2021_07` VALUES (200, 0, 1, '相约在冬季', 'POST', 'admin', '/crontab/index', 'http://admin.tp6.cn/crontab/index', '{\"page\":\"1\",\"limit\":\"20\"}', '定时任务', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 1, 1626594822, 1);

-- ----------------------------
-- Table structure for think_ad
-- ----------------------------
DROP TABLE IF EXISTS `think_ad`;
CREATE TABLE `think_ad`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cover` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `type` int(10) NULL DEFAULT NULL,
  `sort_id` int(10) NULL DEFAULT NULL,
  `mark` tinyint(3) NULL DEFAULT 1,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `create_user` int(10) NULL DEFAULT NULL,
  `create_user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `view_num` int(10) NULL DEFAULT NULL,
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `start_time` int(10) NULL DEFAULT NULL,
  `endt_ime` int(10) NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `sort` int(10) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `weight` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_ad
-- ----------------------------
INSERT INTO `think_ad` VALUES (1, '/images/ad/20210124/c1d3cfcfc235d0fa912.pn', 1, 1, 1, '网站平台双十一狂欢节', '网站平台双十一狂欢节', '网站平台双十一狂欢节', 1, '管理员', 1, 'http://baidu.com', 0, 0, '2021-06-20 01:19:58', NULL, 0, 0);

-- ----------------------------
-- Table structure for think_ad_sort
-- ----------------------------
DROP TABLE IF EXISTS `think_ad_sort`;
CREATE TABLE `think_ad_sort`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `item_id` int(10) NULL DEFAULT NULL,
  `cate_id` int(10) NULL DEFAULT NULL,
  `loc_id` int(10) NULL DEFAULT NULL,
  `platform` int(10) NULL DEFAULT NULL,
  `mark` tinyint(3) NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `sort` int(10) NULL DEFAULT NULL,
  `create_user` int(10) NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_ad_sort
-- ----------------------------
INSERT INTO `think_ad_sort` VALUES (1, '网站上部系统广告推荐', 1, 1, 1, 1, 1, '网站上部系统广告推荐', 125, 1, '2021-06-20 01:04:14', NULL);

-- ----------------------------
-- Table structure for think_admin
-- ----------------------------
DROP TABLE IF EXISTS `think_admin`;
CREATE TABLE `think_admin`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `role_ids` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `status` tinyint(2) NULL DEFAULT 1,
  `entry_date` int(11) NULL DEFAULT NULL,
  `gender` tinyint(3) NULL DEFAULT NULL,
  `position_id` int(10) NULL DEFAULT NULL,
  `level_id` int(10) NULL DEFAULT NULL,
  `district_id` int(10) NULL DEFAULT NULL,
  `mark` tinyint(3) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_admin
-- ----------------------------
INSERT INTO `think_admin` VALUES (1, 'admin', 'admin', '99526fac85ce02f5ba23d3688ef15c63', NULL, '1,2,3,4', 1, NULL, NULL, NULL, NULL, NULL, 1);

-- ----------------------------
-- Table structure for think_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `think_admin_log`;
CREATE TABLE `think_admin_log`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for think_admin_role
-- ----------------------------
DROP TABLE IF EXISTS `think_admin_role`;
CREATE TABLE `think_admin_role`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_admin_role
-- ----------------------------

-- ----------------------------
-- Table structure for think_admin_rom
-- ----------------------------
DROP TABLE IF EXISTS `think_admin_rom`;
CREATE TABLE `think_admin_rom`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) NULL DEFAULT NULL,
  `type` int(10) NULL DEFAULT NULL,
  `type_id` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_admin_rom
-- ----------------------------

-- ----------------------------
-- Table structure for think_article
-- ----------------------------
DROP TABLE IF EXISTS `think_article`;
CREATE TABLE `think_article`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cate_id` int(10) NULL DEFAULT NULL,
  `guide` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `imgs` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `cover` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `mark` tinyint(3) NULL DEFAULT 1,
  `status` tinyint(3) NULL DEFAULT 1,
  `is_top` tinyint(3) NULL DEFAULT 0,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `view_num` int(10) NULL DEFAULT 0,
  `create_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_article
-- ----------------------------
INSERT INTO `think_article` VALUES (1, '如何处理好文案和图片之间的层级关系，看这篇文章就够啦！', 2, '今天继续为大家带来新一期的《拍一张照片，就是一幅海报》系列文章，重点跟大家讲一下如何处理好文案和图片之间的层级关系。', 'a:2:{i:0;s:77:\"http://images.pro6.rxthink.cn/images/article/20210124/ee560fae69545dc6537.jpg\";i:1;s:77:\"http://images.pro6.rxthink.cn/images/article/20210124/ee560fae69545dc6537.jpg\";}', 'http://images.pro6.rxthink.cn/images/article/20210124/98f74d4311e8a0bb727.jpg', 1, 1, 1, '<h4>\r\n	<span class=\"auto_menu\" id=\"menu_0\">照片一</span> \r\n</h4>\r\n<p>\r\n	<span class=\"img-zoom\"><img alt=\"如何处理好文案和图片之间的层级关系，看这篇文章就够啦！\" class=\"alignnone size-full wp-image-369002\" src=\"http://images.pro6.rxthink.cn/images/article/20210124/82a6d8b9a7369a18363.jpg\" width=\"600\" height=\"800\" /></span> \r\n</p>\r\n<p>\r\n	熟悉我的面粉以及看过我很多照片海报系列文章的人应该发现了，我非常喜欢拍照，尤其是拍自己走路时的影子。\r\n</p>\r\n<p>\r\n	像上面这张就是 3 月份滞留在云南的时候拍的，那时候我已经过了隔离期一个多月了，但还是哪也不方便去，只能窝在民宿里，有时候憋久了也会想出去溜达一下透透气，所以就在附近马路边拍了上面这张影子照片。\r\n</p>\r\n<p>\r\n	拍完才发现，颇有一种云游四海的侠客的韵味。\r\n</p>\r\n<p>\r\n	于是当时就回到住所打开 ps 整了下面这幅海报：\r\n</p>\r\n<p>\r\n	<span class=\"img-zoom\"><img alt=\"如何处理好文案和图片之间的层级关系，看这篇文章就够啦！\" class=\"alignnone size-full wp-image-368984\" src=\"http://images.pro6.rxthink.cn/images/article/20210124/49ffc15ceaa92070282.jpg\" width=\"600\" height=\"800\" /></span> \r\n</p>\r\n<p>\r\n	其实按理这幅海报的文案如果改用潇洒毛笔字会更好，但是当时条件有限，身边只有一个笔记本，手绘板也没带，有点不好搞，所以干脆偷懒用了免费又通用的思源黑体了。\r\n</p>\r\n<p>\r\n	后来发现其实也勉强可以看，简简单单的字体和简简单单的排版，看起来比较现代，有点像书籍封面了。\r\n</p>\r\n<p>\r\n	至于右边的两个圆形，一方面是让画面更平衡，另一方面就是跟当时的心境有关吧，身在异乡太久了，很想回家，就想到了足迹地球之类的。然后为了避免太具象，所以用了圆形代替，有个方向指引的意味。\r\n</p>\r\n<p>\r\n	文字选择排在右边也是为了平衡，因为我的影子很靠左，如果文字不放右边会失衡，但我并没有完全右对齐文字，因为太对齐了也会显得呆板，所以我在大标题那块的排版稍微做了点变化，也不影响整体的秩序感。\r\n</p>\r\n<p>\r\n	至于颜色，有些人可能觉得略微诡异了点，那你也可以理解为我当时确实心态无法跟普通人一样了，所以色彩上会比较情绪化。\r\n</p>\r\n<p>\r\n	再一个因为影子这类东西本来就是比较神秘、抽象的东西，有人拿来撒狗粮，有人拿来耍可爱，还有电影里关于影子的画面大多也都比较诡异，所以设计者想怎么表达，观众想怎么理解都是可以的。\r\n</p>\r\n<p>\r\n	就像我以前的系列影子海报，每一幅画面给人的感受也不一样，我设计它们的时候是自由的，你们看的时候也是。\r\n</p>\r\n<p>\r\n	<span class=\"img-zoom\"><img alt=\"如何处理好文案和图片之间的层级关系，看这篇文章就够啦！\" class=\"alignnone size-full wp-image-368985\" src=\"http://images.pro6.rxthink.cn/images/article/20210124/2005602df72f6694866.jpg\" width=\"600\" height=\"1584\" /></span> \r\n</p>\r\n<p>\r\n	<span class=\"img-zoom\"><img alt=\"如何处理好文案和图片之间的层级关系，看这篇文章就够啦！\" class=\"alignnone size-full wp-image-368986\" src=\"http://images.pro6.rxthink.cn/images/article/20210124/32ca4cff70164f36123.jpg\" width=\"713\" height=\"800\" /></span> \r\n</p>\r\n<h4>\r\n	<span class=\"auto_menu\" id=\"menu_1\">照片二</span> \r\n</h4>\r\n<p>\r\n	<span class=\"img-zoom\"><img alt=\"如何处理好文案和图片之间的层级关系，看这篇文章就够啦！\" class=\"alignnone size-full wp-image-368987\" src=\"http://images.pro6.rxthink.cn/images/article/20210124/27a070f133f8802a961.jpg\" width=\"600\" height=\"800\" /></span> \r\n</p>\r\n<p>\r\n	这张照片是在普吉岛的酒店拍的，酒店的园林布置和装修风格都很好，所以几乎是随便拍一张照片就很美了。\r\n</p>\r\n<p>\r\n	比如上面这张，当时并没有想过要设计海报，就是觉得想给它大量留白，会显得很夏天，很清爽。\r\n</p>\r\n<p>\r\n	这些旅游时拍的照片已经在我的手机里躺好几个月了，等回到家整理出来，发现这张照片拿来设计海报应该会很不错。\r\n</p>\r\n<p>\r\n	于是就有了下面这幅海报，取名《普吉岛的一抹绿》。\r\n</p>\r\n<p>\r\n	<span class=\"img-zoom\"><img alt=\"如何处理好文案和图片之间的层级关系，看这篇文章就够啦！\" class=\"alignnone size-full wp-image-368988\" src=\"http://images.pro6.rxthink.cn/images/article/20210124/e74f3071f9ddfd52723.jpg\" width=\"600\" height=\"800\" /></span> \r\n</p>\r\n<p>\r\n	看上去是不是跟前面一幅海报的感觉完全不一样啦？\r\n</p>\r\n<p>\r\n	前一幅海报看起来会有点不开心、有点压抑的样子，但是这一幅海报立马就变得很清爽，很随性的样子。因为在疫情暴发以前，我在泰国旅游的那几天就是我这几个月最开心的时候啦。\r\n</p>\r\n<p>\r\n	所以自然而然地想用那种很自由的字体形式，正好我回到家也有大屏幕电脑和手绘板了，工具齐全，做起设计来自然也会得心应手和开心一些，所以就用钢笔工具和手绘板配合着设计了这几个字。\r\n</p>\r\n<p>\r\n	文字选择竖版排版放在右边，是因为原照片左边饱满，右边很空，而且中间有一条由叶子边缘组成的分割线，方向性已经有了，所以这么排版整体会比较协调，比较平衡。\r\n</p>\r\n<p>\r\n	另外，这些不是现成的字体，也没有特定的规律在里面，就是随心去写，文字排版也是大大小小的，有些节奏感和韵律在里面就好了。\r\n</p>\r\n<p>\r\n	然后设计的时候就假想是自己穿着清凉的吊带长裙，打着赤脚，拿着一只画笔在洁白的墙上乱涂乱画，很惬意的样子，所以文字效果的处理就是这么来的。\r\n</p>\r\n<h4>\r\n	<span class=\"auto_menu\" id=\"menu_2\">照片三</span> \r\n</h4>\r\n<p>\r\n	<span class=\"img-zoom\"><img alt=\"如何处理好文案和图片之间的层级关系，看这篇文章就够啦！\" class=\"alignnone size-full wp-image-368989\" src=\"http://images.pro6.rxthink.cn/images/article/20210124/aeb1a7045fce6eae285.jpg\" width=\"600\" height=\"800\" /></span> \r\n</p>\r\n<p>\r\n	这张照片也是滞留在云南昆明的时候拍的。\r\n</p>\r\n<p>\r\n	虽然之前一直听说昆明是花城，但我那时候几乎不怎么出门，所以也体会不到，直到后来有一天民宿老板突然发消息告诉我，附近有个景点可以去看看，步行十几分钟就到了。\r\n</p>\r\n<p>\r\n	于是真的看到很多花了，而我又是一个特别喜欢花的人，尤其是上面这种虞美人，平时都很难在花店买到，虽然我去看的时候花都凋谢得差不多了，但还是很开心的，因为我好久好久没有看到花了。\r\n</p>\r\n<p>\r\n	拍完花发朋友圈，好多人都说漂亮，又喊着要我设计海报，于是就有了下面这幅《虞美人》。\r\n</p>\r\n<p>\r\n	<span class=\"img-zoom\"><img alt=\"如何处理好文案和图片之间的层级关系，看这篇文章就够啦！\" class=\"alignnone size-full wp-image-368990\" src=\"http://images.pro6.rxthink.cn/images/article/20210124/62c5fa0cfb32fde0215.jpg\" width=\"600\" height=\"800\" /></span> \r\n</p>\r\n<p>\r\n	为什么会把好好的一幅风景照片调成这种颜色，因为当时看到这种五颜六色的花的时候，很自然而然地联想到了日本摄影蜷川实花的摄影作品，她的作品多以花为主题，而且色彩非常丰富浓郁，很有个人特色，我个人也是很喜欢。\r\n</p>\r\n<p>\r\n	所以就尝试着调了个色，以蓝色为主调，点缀一些橙红、玫红、白色的花，画面立马丰富起来了，而且还有点像一幅画了。\r\n</p>\r\n<p>\r\n	另外，虞美人这几个字是用的现成的字体，但是什么字体我也忘了，因为这幅海报也是当时在云南的时候用笔记本设计的，源文件在笔记本上，但自从回家后我都没有打开过笔记本了，所以，等我哪天心血来潮了再打开笔记本看看是啥字体吧。\r\n</p>\r\n<p>\r\n	之所以选择这种字体，是因为有一种日式的随性和毛笔字的厚重感在里面，跟我整个海报浓郁的色调还比较搭。\r\n</p>\r\n<p>\r\n	<span class=\"img-zoom\"><img alt=\"如何处理好文案和图片之间的层级关系，看这篇文章就够啦！\" class=\"alignnone size-full wp-image-369003\" src=\"http://images.pro6.rxthink.cn/images/article/20210124/1c45d84a55d6c09f473.jpg\" width=\"881\" height=\"800\" /></span> \r\n</p>\r\n<p>\r\n	△ 花瓣可以搜索蜷川实花的摄影作品\r\n</p>\r\n<p>\r\n	那有人可能会问，为什么大标题文字会放在左下角的位置呢？按理原照片它本身的构图是重心偏左下角的，文字不是应该放到右上角才会比较平衡吗？\r\n</p>\r\n<p>\r\n	我想说，做设计不能太呆板地思考平衡和节奏感，还应该考虑色彩的影响。\r\n</p>\r\n<p>\r\n	因为我这里把原图大面积的绿色调成了蓝色，而蓝色和橙色是互补色，这两个颜色放一起对比非常强烈，而且调色后的画面对角线构图更加明显了，橙色的颜色范围又基本都分布在了对角线周围，所以我需要一个超大面积的文字压在左下角的对角线上，才能让整体画面平衡起来。\r\n</p>\r\n<ul>\r\n	<li>\r\n		做设计的时候思维灵活一点；\r\n	</li>\r\n	<li>\r\n		不同的色彩是有不同的重量感的，如果你改变了其中一种色彩，那么整体的重心可能会发生改变；\r\n	</li>\r\n	<li>\r\n		如果要在原本就比较平衡的画面里增加其他元素，诸如文字、图形之类的，可以通过改变这些元素的大小、位置、色彩来达到一个新的平衡。\r\n	</li>\r\n</ul>\r\n<p>\r\n	总而言之，我们不管是设计海报也好，还是设计页面或 banner 也好，都相当于是在一个容器里把玩里面各种元素的平衡感，而我们就是这种平衡感的掌控者。\r\n</p>\r\n<p>\r\n	这么听起来，成为一枚<a href=\"https://www.uisdc.com/tag/%e8%ae%be%e8%ae%a1%e5%b8%88\" class=\"tag_a\" target=\"_blank\">设计师</a>是不是爽爆了？这也是为什么当你完成一幅满意的作品之后，会有一种成就感的原因之一。\r\n</p>\r\n<h4>\r\n	<span class=\"auto_menu\" id=\"menu_3\">照片四</span> \r\n</h4>\r\n<p>\r\n	<span class=\"img-zoom\"><img alt=\"如何处理好文案和图片之间的层级关系，看这篇文章就够啦！\" class=\"alignnone size-full wp-image-368991\" src=\"http://images.pro6.rxthink.cn/images/article/20210124/04bbcdcfda7589ea865.jpg\" width=\"600\" height=\"800\" /></span> \r\n</p>\r\n<p>\r\n	又到了吃小龙虾的季节了，身为湖北人的我当然是少不了吃小龙虾，并且作为一枚摄影爱好者，见什么拍什么早已成为了习惯，于是就有了上面这张照片。\r\n</p>\r\n<p>\r\n	拍完才发现，怎么平平无奇的小龙虾被我拍出了一种别样的美感？于是我就琢磨着是不是也可以拿来做一幅海报呢？所以就有了下面这幅海报。\r\n</p>\r\n<p>\r\n	<span class=\"img-zoom\"><img alt=\"如何处理好文案和图片之间的层级关系，看这篇文章就够啦！\" class=\"alignnone size-full wp-image-368992\" src=\"http://images.pro6.rxthink.cn/images/article/20210124/09e1695f8e92b0ff364.jpg\" width=\"600\" height=\"800\" /></span> \r\n</p>\r\n<p>\r\n	原照片虽然好看，小龙虾看起来也可口又新鲜，但是把它拿来做海报还是需要花点心思去考量的，主要问题在于以下几个方面：\r\n</p>\r\n<ul>\r\n	<li>\r\n		原图画面很饱满，没有多少空地可以放文字了；\r\n	</li>\r\n	<li>\r\n		原图里龙虾的摆放很随意，所以画面看起来其实有点乱；\r\n	</li>\r\n	<li>\r\n		渔网的虚化效果太狠太多了，如果做龙虾海报会有点视觉干扰。\r\n	</li>\r\n</ul>\r\n<p>\r\n	而我们设计海报，尤其是当你把主题定为了卖货和新品宣传海报类型，那你是不可能不放文案信息的，所以如何解决在这种画面比较乱、干扰比较多的画面上保证文案能清晰展示，成了首要解决的问题。\r\n</p>\r\n<p>\r\n	所以大家会发现，为了突出文案，我把画面压暗了，同时要保留虾的质感给人新鲜的感觉，并且主题文案占面积很大，压在了主角龙虾的身上。\r\n</p>\r\n<p>\r\n	另外那些虚化网通过调色变成了蓝色的光斑，跟虾本身的颜色形成了冷暖对比，画面视觉会更有冲击力，虽然很多人会觉得食物应该用暖色更有食欲，但是我这是活虾，水生物，我觉得冷色调才更符合新鲜水生物的感觉，所以就这么处理了。\r\n</p>\r\n<p>\r\n	不过，我在设计完之后才发现，其实我应该把文案改成「深夜小龙虾」或者「蹦迪小龙虾」更合适。但是后来我转念一想，不能每次都光看我做，改文案这种事情就交给你们吧，就按我的排版方式来改文案，正好给你们练手文案排版。\r\n</p>', NULL, NULL);

-- ----------------------------
-- Table structure for think_article_1
-- ----------------------------
DROP TABLE IF EXISTS `think_article_1`;
CREATE TABLE `think_article_1`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cate_id` int(10) NULL DEFAULT NULL,
  `guide` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `imgs` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `cover` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `mark` tinyint(3) NULL DEFAULT 1,
  `status` tinyint(3) NULL DEFAULT 1,
  `is_top` tinyint(3) NULL DEFAULT 0,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `view_num` int(10) NULL DEFAULT 0,
  `create_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_article_1
-- ----------------------------
INSERT INTO `think_article_1` VALUES (1, '如何处理好文案和图片之间的层级关系，看这篇文章就够啦！', 2, '今天继续为大家带来新一期的《拍一张照片，就是一幅海报》系列文章，重点跟大家讲一下如何处理好文案和图片之间的层级关系。', 'a:2:{i:0;s:77:\"http://images.pro6.rxthink.cn/images/article/20210124/ee560fae69545dc6537.jpg\";i:1;s:77:\"http://images.pro6.rxthink.cn/images/article/20210124/ee560fae69545dc6537.jpg\";}', 'http://images.pro6.rxthink.cn/images/article/20210124/98f74d4311e8a0bb727.jpg', 1, 1, 1, '<h4>\r\n	<span class=\"auto_menu\" id=\"menu_0\">照片一</span> \r\n</h4>\r\n<p>\r\n	<span class=\"img-zoom\"><img alt=\"如何处理好文案和图片之间的层级关系，看这篇文章就够啦！\" class=\"alignnone size-full wp-image-369002\" src=\"http://images.pro6.rxthink.cn/images/article/20210124/82a6d8b9a7369a18363.jpg\" width=\"600\" height=\"800\" /></span> \r\n</p>\r\n<p>\r\n	熟悉我的面粉以及看过我很多照片海报系列文章的人应该发现了，我非常喜欢拍照，尤其是拍自己走路时的影子。\r\n</p>\r\n<p>\r\n	像上面这张就是 3 月份滞留在云南的时候拍的，那时候我已经过了隔离期一个多月了，但还是哪也不方便去，只能窝在民宿里，有时候憋久了也会想出去溜达一下透透气，所以就在附近马路边拍了上面这张影子照片。\r\n</p>\r\n<p>\r\n	拍完才发现，颇有一种云游四海的侠客的韵味。\r\n</p>\r\n<p>\r\n	于是当时就回到住所打开 ps 整了下面这幅海报：\r\n</p>\r\n<p>\r\n	<span class=\"img-zoom\"><img alt=\"如何处理好文案和图片之间的层级关系，看这篇文章就够啦！\" class=\"alignnone size-full wp-image-368984\" src=\"http://images.pro6.rxthink.cn/images/article/20210124/49ffc15ceaa92070282.jpg\" width=\"600\" height=\"800\" /></span> \r\n</p>\r\n<p>\r\n	其实按理这幅海报的文案如果改用潇洒毛笔字会更好，但是当时条件有限，身边只有一个笔记本，手绘板也没带，有点不好搞，所以干脆偷懒用了免费又通用的思源黑体了。\r\n</p>\r\n<p>\r\n	后来发现其实也勉强可以看，简简单单的字体和简简单单的排版，看起来比较现代，有点像书籍封面了。\r\n</p>\r\n<p>\r\n	至于右边的两个圆形，一方面是让画面更平衡，另一方面就是跟当时的心境有关吧，身在异乡太久了，很想回家，就想到了足迹地球之类的。然后为了避免太具象，所以用了圆形代替，有个方向指引的意味。\r\n</p>\r\n<p>\r\n	文字选择排在右边也是为了平衡，因为我的影子很靠左，如果文字不放右边会失衡，但我并没有完全右对齐文字，因为太对齐了也会显得呆板，所以我在大标题那块的排版稍微做了点变化，也不影响整体的秩序感。\r\n</p>\r\n<p>\r\n	至于颜色，有些人可能觉得略微诡异了点，那你也可以理解为我当时确实心态无法跟普通人一样了，所以色彩上会比较情绪化。\r\n</p>\r\n<p>\r\n	再一个因为影子这类东西本来就是比较神秘、抽象的东西，有人拿来撒狗粮，有人拿来耍可爱，还有电影里关于影子的画面大多也都比较诡异，所以设计者想怎么表达，观众想怎么理解都是可以的。\r\n</p>\r\n<p>\r\n	就像我以前的系列影子海报，每一幅画面给人的感受也不一样，我设计它们的时候是自由的，你们看的时候也是。\r\n</p>\r\n<p>\r\n	<span class=\"img-zoom\"><img alt=\"如何处理好文案和图片之间的层级关系，看这篇文章就够啦！\" class=\"alignnone size-full wp-image-368985\" src=\"http://images.pro6.rxthink.cn/images/article/20210124/2005602df72f6694866.jpg\" width=\"600\" height=\"1584\" /></span> \r\n</p>\r\n<p>\r\n	<span class=\"img-zoom\"><img alt=\"如何处理好文案和图片之间的层级关系，看这篇文章就够啦！\" class=\"alignnone size-full wp-image-368986\" src=\"http://images.pro6.rxthink.cn/images/article/20210124/32ca4cff70164f36123.jpg\" width=\"713\" height=\"800\" /></span> \r\n</p>\r\n<h4>\r\n	<span class=\"auto_menu\" id=\"menu_1\">照片二</span> \r\n</h4>\r\n<p>\r\n	<span class=\"img-zoom\"><img alt=\"如何处理好文案和图片之间的层级关系，看这篇文章就够啦！\" class=\"alignnone size-full wp-image-368987\" src=\"http://images.pro6.rxthink.cn/images/article/20210124/27a070f133f8802a961.jpg\" width=\"600\" height=\"800\" /></span> \r\n</p>\r\n<p>\r\n	这张照片是在普吉岛的酒店拍的，酒店的园林布置和装修风格都很好，所以几乎是随便拍一张照片就很美了。\r\n</p>\r\n<p>\r\n	比如上面这张，当时并没有想过要设计海报，就是觉得想给它大量留白，会显得很夏天，很清爽。\r\n</p>\r\n<p>\r\n	这些旅游时拍的照片已经在我的手机里躺好几个月了，等回到家整理出来，发现这张照片拿来设计海报应该会很不错。\r\n</p>\r\n<p>\r\n	于是就有了下面这幅海报，取名《普吉岛的一抹绿》。\r\n</p>\r\n<p>\r\n	<span class=\"img-zoom\"><img alt=\"如何处理好文案和图片之间的层级关系，看这篇文章就够啦！\" class=\"alignnone size-full wp-image-368988\" src=\"http://images.pro6.rxthink.cn/images/article/20210124/e74f3071f9ddfd52723.jpg\" width=\"600\" height=\"800\" /></span> \r\n</p>\r\n<p>\r\n	看上去是不是跟前面一幅海报的感觉完全不一样啦？\r\n</p>\r\n<p>\r\n	前一幅海报看起来会有点不开心、有点压抑的样子，但是这一幅海报立马就变得很清爽，很随性的样子。因为在疫情暴发以前，我在泰国旅游的那几天就是我这几个月最开心的时候啦。\r\n</p>\r\n<p>\r\n	所以自然而然地想用那种很自由的字体形式，正好我回到家也有大屏幕电脑和手绘板了，工具齐全，做起设计来自然也会得心应手和开心一些，所以就用钢笔工具和手绘板配合着设计了这几个字。\r\n</p>\r\n<p>\r\n	文字选择竖版排版放在右边，是因为原照片左边饱满，右边很空，而且中间有一条由叶子边缘组成的分割线，方向性已经有了，所以这么排版整体会比较协调，比较平衡。\r\n</p>\r\n<p>\r\n	另外，这些不是现成的字体，也没有特定的规律在里面，就是随心去写，文字排版也是大大小小的，有些节奏感和韵律在里面就好了。\r\n</p>\r\n<p>\r\n	然后设计的时候就假想是自己穿着清凉的吊带长裙，打着赤脚，拿着一只画笔在洁白的墙上乱涂乱画，很惬意的样子，所以文字效果的处理就是这么来的。\r\n</p>\r\n<h4>\r\n	<span class=\"auto_menu\" id=\"menu_2\">照片三</span> \r\n</h4>\r\n<p>\r\n	<span class=\"img-zoom\"><img alt=\"如何处理好文案和图片之间的层级关系，看这篇文章就够啦！\" class=\"alignnone size-full wp-image-368989\" src=\"http://images.pro6.rxthink.cn/images/article/20210124/aeb1a7045fce6eae285.jpg\" width=\"600\" height=\"800\" /></span> \r\n</p>\r\n<p>\r\n	这张照片也是滞留在云南昆明的时候拍的。\r\n</p>\r\n<p>\r\n	虽然之前一直听说昆明是花城，但我那时候几乎不怎么出门，所以也体会不到，直到后来有一天民宿老板突然发消息告诉我，附近有个景点可以去看看，步行十几分钟就到了。\r\n</p>\r\n<p>\r\n	于是真的看到很多花了，而我又是一个特别喜欢花的人，尤其是上面这种虞美人，平时都很难在花店买到，虽然我去看的时候花都凋谢得差不多了，但还是很开心的，因为我好久好久没有看到花了。\r\n</p>\r\n<p>\r\n	拍完花发朋友圈，好多人都说漂亮，又喊着要我设计海报，于是就有了下面这幅《虞美人》。\r\n</p>\r\n<p>\r\n	<span class=\"img-zoom\"><img alt=\"如何处理好文案和图片之间的层级关系，看这篇文章就够啦！\" class=\"alignnone size-full wp-image-368990\" src=\"http://images.pro6.rxthink.cn/images/article/20210124/62c5fa0cfb32fde0215.jpg\" width=\"600\" height=\"800\" /></span> \r\n</p>\r\n<p>\r\n	为什么会把好好的一幅风景照片调成这种颜色，因为当时看到这种五颜六色的花的时候，很自然而然地联想到了日本摄影蜷川实花的摄影作品，她的作品多以花为主题，而且色彩非常丰富浓郁，很有个人特色，我个人也是很喜欢。\r\n</p>\r\n<p>\r\n	所以就尝试着调了个色，以蓝色为主调，点缀一些橙红、玫红、白色的花，画面立马丰富起来了，而且还有点像一幅画了。\r\n</p>\r\n<p>\r\n	另外，虞美人这几个字是用的现成的字体，但是什么字体我也忘了，因为这幅海报也是当时在云南的时候用笔记本设计的，源文件在笔记本上，但自从回家后我都没有打开过笔记本了，所以，等我哪天心血来潮了再打开笔记本看看是啥字体吧。\r\n</p>\r\n<p>\r\n	之所以选择这种字体，是因为有一种日式的随性和毛笔字的厚重感在里面，跟我整个海报浓郁的色调还比较搭。\r\n</p>\r\n<p>\r\n	<span class=\"img-zoom\"><img alt=\"如何处理好文案和图片之间的层级关系，看这篇文章就够啦！\" class=\"alignnone size-full wp-image-369003\" src=\"http://images.pro6.rxthink.cn/images/article/20210124/1c45d84a55d6c09f473.jpg\" width=\"881\" height=\"800\" /></span> \r\n</p>\r\n<p>\r\n	△ 花瓣可以搜索蜷川实花的摄影作品\r\n</p>\r\n<p>\r\n	那有人可能会问，为什么大标题文字会放在左下角的位置呢？按理原照片它本身的构图是重心偏左下角的，文字不是应该放到右上角才会比较平衡吗？\r\n</p>\r\n<p>\r\n	我想说，做设计不能太呆板地思考平衡和节奏感，还应该考虑色彩的影响。\r\n</p>\r\n<p>\r\n	因为我这里把原图大面积的绿色调成了蓝色，而蓝色和橙色是互补色，这两个颜色放一起对比非常强烈，而且调色后的画面对角线构图更加明显了，橙色的颜色范围又基本都分布在了对角线周围，所以我需要一个超大面积的文字压在左下角的对角线上，才能让整体画面平衡起来。\r\n</p>\r\n<ul>\r\n	<li>\r\n		做设计的时候思维灵活一点；\r\n	</li>\r\n	<li>\r\n		不同的色彩是有不同的重量感的，如果你改变了其中一种色彩，那么整体的重心可能会发生改变；\r\n	</li>\r\n	<li>\r\n		如果要在原本就比较平衡的画面里增加其他元素，诸如文字、图形之类的，可以通过改变这些元素的大小、位置、色彩来达到一个新的平衡。\r\n	</li>\r\n</ul>\r\n<p>\r\n	总而言之，我们不管是设计海报也好，还是设计页面或 banner 也好，都相当于是在一个容器里把玩里面各种元素的平衡感，而我们就是这种平衡感的掌控者。\r\n</p>\r\n<p>\r\n	这么听起来，成为一枚<a href=\"https://www.uisdc.com/tag/%e8%ae%be%e8%ae%a1%e5%b8%88\" class=\"tag_a\" target=\"_blank\">设计师</a>是不是爽爆了？这也是为什么当你完成一幅满意的作品之后，会有一种成就感的原因之一。\r\n</p>\r\n<h4>\r\n	<span class=\"auto_menu\" id=\"menu_3\">照片四</span> \r\n</h4>\r\n<p>\r\n	<span class=\"img-zoom\"><img alt=\"如何处理好文案和图片之间的层级关系，看这篇文章就够啦！\" class=\"alignnone size-full wp-image-368991\" src=\"http://images.pro6.rxthink.cn/images/article/20210124/04bbcdcfda7589ea865.jpg\" width=\"600\" height=\"800\" /></span> \r\n</p>\r\n<p>\r\n	又到了吃小龙虾的季节了，身为湖北人的我当然是少不了吃小龙虾，并且作为一枚摄影爱好者，见什么拍什么早已成为了习惯，于是就有了上面这张照片。\r\n</p>\r\n<p>\r\n	拍完才发现，怎么平平无奇的小龙虾被我拍出了一种别样的美感？于是我就琢磨着是不是也可以拿来做一幅海报呢？所以就有了下面这幅海报。\r\n</p>\r\n<p>\r\n	<span class=\"img-zoom\"><img alt=\"如何处理好文案和图片之间的层级关系，看这篇文章就够啦！\" class=\"alignnone size-full wp-image-368992\" src=\"http://images.pro6.rxthink.cn/images/article/20210124/09e1695f8e92b0ff364.jpg\" width=\"600\" height=\"800\" /></span> \r\n</p>\r\n<p>\r\n	原照片虽然好看，小龙虾看起来也可口又新鲜，但是把它拿来做海报还是需要花点心思去考量的，主要问题在于以下几个方面：\r\n</p>\r\n<ul>\r\n	<li>\r\n		原图画面很饱满，没有多少空地可以放文字了；\r\n	</li>\r\n	<li>\r\n		原图里龙虾的摆放很随意，所以画面看起来其实有点乱；\r\n	</li>\r\n	<li>\r\n		渔网的虚化效果太狠太多了，如果做龙虾海报会有点视觉干扰。\r\n	</li>\r\n</ul>\r\n<p>\r\n	而我们设计海报，尤其是当你把主题定为了卖货和新品宣传海报类型，那你是不可能不放文案信息的，所以如何解决在这种画面比较乱、干扰比较多的画面上保证文案能清晰展示，成了首要解决的问题。\r\n</p>\r\n<p>\r\n	所以大家会发现，为了突出文案，我把画面压暗了，同时要保留虾的质感给人新鲜的感觉，并且主题文案占面积很大，压在了主角龙虾的身上。\r\n</p>\r\n<p>\r\n	另外那些虚化网通过调色变成了蓝色的光斑，跟虾本身的颜色形成了冷暖对比，画面视觉会更有冲击力，虽然很多人会觉得食物应该用暖色更有食欲，但是我这是活虾，水生物，我觉得冷色调才更符合新鲜水生物的感觉，所以就这么处理了。\r\n</p>\r\n<p>\r\n	不过，我在设计完之后才发现，其实我应该把文案改成「深夜小龙虾」或者「蹦迪小龙虾」更合适。但是后来我转念一想，不能每次都光看我做，改文案这种事情就交给你们吧，就按我的排版方式来改文案，正好给你们练手文案排版。\r\n</p>', 1, NULL);

-- ----------------------------
-- Table structure for think_city
-- ----------------------------
DROP TABLE IF EXISTS `think_city`;
CREATE TABLE `think_city`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pid` int(10) NULL DEFAULT NULL,
  `level` int(10) NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `citycode` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `sort` tinyint(3) NULL DEFAULT NULL,
  `mark` tinyint(3) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3215 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_city
-- ----------------------------
INSERT INTO `think_city` VALUES (1, 0, 1, '北京市', '110000', NULL, 1);
INSERT INTO `think_city` VALUES (2, 1, 2, '北京市', '110100', NULL, 1);
INSERT INTO `think_city` VALUES (3, 2, 3, '东城区', '110101', NULL, 1);
INSERT INTO `think_city` VALUES (4, 2, 3, '西城区', '110102', NULL, 1);
INSERT INTO `think_city` VALUES (5, 2, 3, '朝阳区', '110105', NULL, 1);
INSERT INTO `think_city` VALUES (6, 2, 3, '丰台区', '110106', NULL, 1);
INSERT INTO `think_city` VALUES (7, 2, 3, '石景山区', '110107', NULL, 1);
INSERT INTO `think_city` VALUES (8, 2, 3, '海淀区', '110108', NULL, 1);
INSERT INTO `think_city` VALUES (9, 2, 3, '门头沟区', '110109', NULL, 1);
INSERT INTO `think_city` VALUES (10, 2, 3, '房山区', '110111', NULL, 1);
INSERT INTO `think_city` VALUES (11, 2, 3, '通州区', '110112', NULL, 1);
INSERT INTO `think_city` VALUES (12, 2, 3, '顺义区', '110113', NULL, 1);
INSERT INTO `think_city` VALUES (13, 2, 3, '昌平区', '110114', NULL, 1);
INSERT INTO `think_city` VALUES (14, 2, 3, '大兴区', '110115', NULL, 1);
INSERT INTO `think_city` VALUES (15, 2, 3, '怀柔区', '110116', NULL, 1);
INSERT INTO `think_city` VALUES (16, 2, 3, '平谷区', '110117', NULL, 1);
INSERT INTO `think_city` VALUES (17, 2, 3, '密云区', '110118', NULL, 1);
INSERT INTO `think_city` VALUES (18, 2, 3, '延庆区', '110119', NULL, 1);
INSERT INTO `think_city` VALUES (19, 0, 1, '天津市', '120000', NULL, 1);
INSERT INTO `think_city` VALUES (20, 19, 2, '天津市', '120100', NULL, 1);
INSERT INTO `think_city` VALUES (21, 20, 3, '和平区', '120101', NULL, 1);
INSERT INTO `think_city` VALUES (22, 20, 3, '河东区', '120102', NULL, 1);
INSERT INTO `think_city` VALUES (23, 20, 3, '河西区', '120103', NULL, 1);
INSERT INTO `think_city` VALUES (24, 20, 3, '南开区', '120104', NULL, 1);
INSERT INTO `think_city` VALUES (25, 20, 3, '河北区', '120105', NULL, 1);
INSERT INTO `think_city` VALUES (26, 20, 3, '红桥区', '120106', NULL, 1);
INSERT INTO `think_city` VALUES (27, 20, 3, '东丽区', '120110', NULL, 1);
INSERT INTO `think_city` VALUES (28, 20, 3, '西青区', '120111', NULL, 1);
INSERT INTO `think_city` VALUES (29, 20, 3, '津南区', '120112', NULL, 1);
INSERT INTO `think_city` VALUES (30, 20, 3, '北辰区', '120113', NULL, 1);
INSERT INTO `think_city` VALUES (31, 20, 3, '武清区', '120114', NULL, 1);
INSERT INTO `think_city` VALUES (32, 20, 3, '宝坻区', '120115', NULL, 1);
INSERT INTO `think_city` VALUES (33, 20, 3, '滨海新区', '120116', NULL, 1);
INSERT INTO `think_city` VALUES (34, 20, 3, '宁河区', '120117', NULL, 1);
INSERT INTO `think_city` VALUES (35, 20, 3, '静海区', '120118', NULL, 1);
INSERT INTO `think_city` VALUES (36, 20, 3, '蓟州区', '120119', NULL, 1);
INSERT INTO `think_city` VALUES (37, 0, 1, '河北省', '130000', NULL, 1);
INSERT INTO `think_city` VALUES (38, 37, 2, '石家庄市', '130100', NULL, 1);
INSERT INTO `think_city` VALUES (39, 38, 3, '长安区', '130102', NULL, 1);
INSERT INTO `think_city` VALUES (40, 38, 3, '桥西区', '130104', NULL, 1);
INSERT INTO `think_city` VALUES (41, 38, 3, '新华区', '130105', NULL, 1);
INSERT INTO `think_city` VALUES (42, 38, 3, '井陉矿区', '130107', NULL, 1);
INSERT INTO `think_city` VALUES (43, 38, 3, '裕华区', '130108', NULL, 1);
INSERT INTO `think_city` VALUES (44, 38, 3, '藁城区', '130109', NULL, 1);
INSERT INTO `think_city` VALUES (45, 38, 3, '鹿泉区', '130110', NULL, 1);
INSERT INTO `think_city` VALUES (46, 38, 3, '栾城区', '130111', NULL, 1);
INSERT INTO `think_city` VALUES (47, 38, 3, '井陉县', '130121', NULL, 1);
INSERT INTO `think_city` VALUES (48, 38, 3, '正定县', '130123', NULL, 1);
INSERT INTO `think_city` VALUES (49, 38, 3, '行唐县', '130125', NULL, 1);
INSERT INTO `think_city` VALUES (50, 38, 3, '灵寿县', '130126', NULL, 1);
INSERT INTO `think_city` VALUES (51, 38, 3, '高邑县', '130127', NULL, 1);
INSERT INTO `think_city` VALUES (52, 38, 3, '深泽县', '130128', NULL, 1);
INSERT INTO `think_city` VALUES (53, 38, 3, '赞皇县', '130129', NULL, 1);
INSERT INTO `think_city` VALUES (54, 38, 3, '无极县', '130130', NULL, 1);
INSERT INTO `think_city` VALUES (55, 38, 3, '平山县', '130131', NULL, 1);
INSERT INTO `think_city` VALUES (56, 38, 3, '元氏县', '130132', NULL, 1);
INSERT INTO `think_city` VALUES (57, 38, 3, '赵县', '130133', NULL, 1);
INSERT INTO `think_city` VALUES (58, 38, 3, '辛集市', '130181', NULL, 1);
INSERT INTO `think_city` VALUES (59, 38, 3, '晋州市', '130183', NULL, 1);
INSERT INTO `think_city` VALUES (60, 38, 3, '新乐市', '130184', NULL, 1);
INSERT INTO `think_city` VALUES (61, 37, 2, '唐山市', '130200', NULL, 1);
INSERT INTO `think_city` VALUES (62, 61, 3, '路南区', '130202', NULL, 1);
INSERT INTO `think_city` VALUES (63, 61, 3, '路北区', '130203', NULL, 1);
INSERT INTO `think_city` VALUES (64, 61, 3, '古冶区', '130204', NULL, 1);
INSERT INTO `think_city` VALUES (65, 61, 3, '开平区', '130205', NULL, 1);
INSERT INTO `think_city` VALUES (66, 61, 3, '丰南区', '130207', NULL, 1);
INSERT INTO `think_city` VALUES (67, 61, 3, '丰润区', '130208', NULL, 1);
INSERT INTO `think_city` VALUES (68, 61, 3, '曹妃甸区', '130209', NULL, 1);
INSERT INTO `think_city` VALUES (69, 61, 3, '滦南县', '130224', NULL, 1);
INSERT INTO `think_city` VALUES (70, 61, 3, '乐亭县', '130225', NULL, 1);
INSERT INTO `think_city` VALUES (71, 61, 3, '迁西县', '130227', NULL, 1);
INSERT INTO `think_city` VALUES (72, 61, 3, '玉田县', '130229', NULL, 1);
INSERT INTO `think_city` VALUES (73, 61, 3, '遵化市', '130281', NULL, 1);
INSERT INTO `think_city` VALUES (74, 61, 3, '迁安市', '130283', NULL, 1);
INSERT INTO `think_city` VALUES (75, 61, 3, '滦州市', '130284', NULL, 1);
INSERT INTO `think_city` VALUES (76, 37, 2, '秦皇岛市', '130300', NULL, 1);
INSERT INTO `think_city` VALUES (77, 76, 3, '海港区', '130302', NULL, 1);
INSERT INTO `think_city` VALUES (78, 76, 3, '山海关区', '130303', NULL, 1);
INSERT INTO `think_city` VALUES (79, 76, 3, '北戴河区', '130304', NULL, 1);
INSERT INTO `think_city` VALUES (80, 76, 3, '抚宁区', '130306', NULL, 1);
INSERT INTO `think_city` VALUES (81, 76, 3, '青龙满族自治县', '130321', NULL, 1);
INSERT INTO `think_city` VALUES (82, 76, 3, '昌黎县', '130322', NULL, 1);
INSERT INTO `think_city` VALUES (83, 76, 3, '卢龙县', '130324', NULL, 1);
INSERT INTO `think_city` VALUES (84, 37, 2, '邯郸市', '130400', NULL, 1);
INSERT INTO `think_city` VALUES (85, 84, 3, '邯山区', '130402', NULL, 1);
INSERT INTO `think_city` VALUES (86, 84, 3, '丛台区', '130403', NULL, 1);
INSERT INTO `think_city` VALUES (87, 84, 3, '复兴区', '130404', NULL, 1);
INSERT INTO `think_city` VALUES (88, 84, 3, '峰峰矿区', '130406', NULL, 1);
INSERT INTO `think_city` VALUES (89, 84, 3, '肥乡区', '130407', NULL, 1);
INSERT INTO `think_city` VALUES (90, 84, 3, '永年区', '130408', NULL, 1);
INSERT INTO `think_city` VALUES (91, 84, 3, '临漳县', '130423', NULL, 1);
INSERT INTO `think_city` VALUES (92, 84, 3, '成安县', '130424', NULL, 1);
INSERT INTO `think_city` VALUES (93, 84, 3, '大名县', '130425', NULL, 1);
INSERT INTO `think_city` VALUES (94, 84, 3, '涉县', '130426', NULL, 1);
INSERT INTO `think_city` VALUES (95, 84, 3, '磁县', '130427', NULL, 1);
INSERT INTO `think_city` VALUES (96, 84, 3, '邱县', '130430', NULL, 1);
INSERT INTO `think_city` VALUES (97, 84, 3, '鸡泽县', '130431', NULL, 1);
INSERT INTO `think_city` VALUES (98, 84, 3, '广平县', '130432', NULL, 1);
INSERT INTO `think_city` VALUES (99, 84, 3, '馆陶县', '130433', NULL, 1);
INSERT INTO `think_city` VALUES (100, 84, 3, '魏县', '130434', NULL, 1);
INSERT INTO `think_city` VALUES (101, 84, 3, '曲周县', '130435', NULL, 1);
INSERT INTO `think_city` VALUES (102, 84, 3, '武安市', '130481', NULL, 1);
INSERT INTO `think_city` VALUES (103, 37, 2, '邢台市', '130500', NULL, 1);
INSERT INTO `think_city` VALUES (104, 103, 3, '襄都区', '130502', NULL, 1);
INSERT INTO `think_city` VALUES (105, 103, 3, '信都区', '130503', NULL, 1);
INSERT INTO `think_city` VALUES (106, 103, 3, '任泽区', '130505', NULL, 1);
INSERT INTO `think_city` VALUES (107, 103, 3, '南和区', '130506', NULL, 1);
INSERT INTO `think_city` VALUES (108, 103, 3, '临城县', '130522', NULL, 1);
INSERT INTO `think_city` VALUES (109, 103, 3, '内丘县', '130523', NULL, 1);
INSERT INTO `think_city` VALUES (110, 103, 3, '柏乡县', '130524', NULL, 1);
INSERT INTO `think_city` VALUES (111, 103, 3, '隆尧县', '130525', NULL, 1);
INSERT INTO `think_city` VALUES (112, 103, 3, '宁晋县', '130528', NULL, 1);
INSERT INTO `think_city` VALUES (113, 103, 3, '巨鹿县', '130529', NULL, 1);
INSERT INTO `think_city` VALUES (114, 103, 3, '新河县', '130530', NULL, 1);
INSERT INTO `think_city` VALUES (115, 103, 3, '广宗县', '130531', NULL, 1);
INSERT INTO `think_city` VALUES (116, 103, 3, '平乡县', '130532', NULL, 1);
INSERT INTO `think_city` VALUES (117, 103, 3, '威县', '130533', NULL, 1);
INSERT INTO `think_city` VALUES (118, 103, 3, '清河县', '130534', NULL, 1);
INSERT INTO `think_city` VALUES (119, 103, 3, '临西县', '130535', NULL, 1);
INSERT INTO `think_city` VALUES (120, 103, 3, '南宫市', '130581', NULL, 1);
INSERT INTO `think_city` VALUES (121, 103, 3, '沙河市', '130582', NULL, 1);
INSERT INTO `think_city` VALUES (122, 37, 2, '保定市', '130600', NULL, 1);
INSERT INTO `think_city` VALUES (123, 122, 3, '竞秀区', '130602', NULL, 1);
INSERT INTO `think_city` VALUES (124, 122, 3, '莲池区', '130606', NULL, 1);
INSERT INTO `think_city` VALUES (125, 122, 3, '满城区', '130607', NULL, 1);
INSERT INTO `think_city` VALUES (126, 122, 3, '清苑区', '130608', NULL, 1);
INSERT INTO `think_city` VALUES (127, 122, 3, '徐水区', '130609', NULL, 1);
INSERT INTO `think_city` VALUES (128, 122, 3, '涞水县', '130623', NULL, 1);
INSERT INTO `think_city` VALUES (129, 122, 3, '阜平县', '130624', NULL, 1);
INSERT INTO `think_city` VALUES (130, 122, 3, '定兴县', '130626', NULL, 1);
INSERT INTO `think_city` VALUES (131, 122, 3, '唐县', '130627', NULL, 1);
INSERT INTO `think_city` VALUES (132, 122, 3, '高阳县', '130628', NULL, 1);
INSERT INTO `think_city` VALUES (133, 122, 3, '容城县', '130629', NULL, 1);
INSERT INTO `think_city` VALUES (134, 122, 3, '涞源县', '130630', NULL, 1);
INSERT INTO `think_city` VALUES (135, 122, 3, '望都县', '130631', NULL, 1);
INSERT INTO `think_city` VALUES (136, 122, 3, '安新县', '130632', NULL, 1);
INSERT INTO `think_city` VALUES (137, 122, 3, '易县', '130633', NULL, 1);
INSERT INTO `think_city` VALUES (138, 122, 3, '曲阳县', '130634', NULL, 1);
INSERT INTO `think_city` VALUES (139, 122, 3, '蠡县', '130635', NULL, 1);
INSERT INTO `think_city` VALUES (140, 122, 3, '顺平县', '130636', NULL, 1);
INSERT INTO `think_city` VALUES (141, 122, 3, '博野县', '130637', NULL, 1);
INSERT INTO `think_city` VALUES (142, 122, 3, '雄县', '130638', NULL, 1);
INSERT INTO `think_city` VALUES (143, 122, 3, '涿州市', '130681', NULL, 1);
INSERT INTO `think_city` VALUES (144, 122, 3, '定州市', '130682', NULL, 1);
INSERT INTO `think_city` VALUES (145, 122, 3, '安国市', '130683', NULL, 1);
INSERT INTO `think_city` VALUES (146, 122, 3, '高碑店市', '130684', NULL, 1);
INSERT INTO `think_city` VALUES (147, 37, 2, '张家口市', '130700', NULL, 1);
INSERT INTO `think_city` VALUES (148, 147, 3, '桥东区', '130702', NULL, 1);
INSERT INTO `think_city` VALUES (149, 147, 3, '桥西区', '130703', NULL, 1);
INSERT INTO `think_city` VALUES (150, 147, 3, '宣化区', '130705', NULL, 1);
INSERT INTO `think_city` VALUES (151, 147, 3, '下花园区', '130706', NULL, 1);
INSERT INTO `think_city` VALUES (152, 147, 3, '万全区', '130708', NULL, 1);
INSERT INTO `think_city` VALUES (153, 147, 3, '崇礼区', '130709', NULL, 1);
INSERT INTO `think_city` VALUES (154, 147, 3, '张北县', '130722', NULL, 1);
INSERT INTO `think_city` VALUES (155, 147, 3, '康保县', '130723', NULL, 1);
INSERT INTO `think_city` VALUES (156, 147, 3, '沽源县', '130724', NULL, 1);
INSERT INTO `think_city` VALUES (157, 147, 3, '尚义县', '130725', NULL, 1);
INSERT INTO `think_city` VALUES (158, 147, 3, '蔚县', '130726', NULL, 1);
INSERT INTO `think_city` VALUES (159, 147, 3, '阳原县', '130727', NULL, 1);
INSERT INTO `think_city` VALUES (160, 147, 3, '怀安县', '130728', NULL, 1);
INSERT INTO `think_city` VALUES (161, 147, 3, '怀来县', '130730', NULL, 1);
INSERT INTO `think_city` VALUES (162, 147, 3, '涿鹿县', '130731', NULL, 1);
INSERT INTO `think_city` VALUES (163, 147, 3, '赤城县', '130732', NULL, 1);
INSERT INTO `think_city` VALUES (164, 37, 2, '承德市', '130800', NULL, 1);
INSERT INTO `think_city` VALUES (165, 164, 3, '双桥区', '130802', NULL, 1);
INSERT INTO `think_city` VALUES (166, 164, 3, '双滦区', '130803', NULL, 1);
INSERT INTO `think_city` VALUES (167, 164, 3, '鹰手营子矿区', '130804', NULL, 1);
INSERT INTO `think_city` VALUES (168, 164, 3, '承德县', '130821', NULL, 1);
INSERT INTO `think_city` VALUES (169, 164, 3, '兴隆县', '130822', NULL, 1);
INSERT INTO `think_city` VALUES (170, 164, 3, '滦平县', '130824', NULL, 1);
INSERT INTO `think_city` VALUES (171, 164, 3, '隆化县', '130825', NULL, 1);
INSERT INTO `think_city` VALUES (172, 164, 3, '丰宁满族自治县', '130826', NULL, 1);
INSERT INTO `think_city` VALUES (173, 164, 3, '宽城满族自治县', '130827', NULL, 1);
INSERT INTO `think_city` VALUES (174, 164, 3, '围场满族蒙古族自治县', '130828', NULL, 1);
INSERT INTO `think_city` VALUES (175, 164, 3, '平泉市', '130881', NULL, 1);
INSERT INTO `think_city` VALUES (176, 37, 2, '沧州市', '130900', NULL, 1);
INSERT INTO `think_city` VALUES (177, 176, 3, '新华区', '130902', NULL, 1);
INSERT INTO `think_city` VALUES (178, 176, 3, '运河区', '130903', NULL, 1);
INSERT INTO `think_city` VALUES (179, 176, 3, '沧县', '130921', NULL, 1);
INSERT INTO `think_city` VALUES (180, 176, 3, '青县', '130922', NULL, 1);
INSERT INTO `think_city` VALUES (181, 176, 3, '东光县', '130923', NULL, 1);
INSERT INTO `think_city` VALUES (182, 176, 3, '海兴县', '130924', NULL, 1);
INSERT INTO `think_city` VALUES (183, 176, 3, '盐山县', '130925', NULL, 1);
INSERT INTO `think_city` VALUES (184, 176, 3, '肃宁县', '130926', NULL, 1);
INSERT INTO `think_city` VALUES (185, 176, 3, '南皮县', '130927', NULL, 1);
INSERT INTO `think_city` VALUES (186, 176, 3, '吴桥县', '130928', NULL, 1);
INSERT INTO `think_city` VALUES (187, 176, 3, '献县', '130929', NULL, 1);
INSERT INTO `think_city` VALUES (188, 176, 3, '孟村回族自治县', '130930', NULL, 1);
INSERT INTO `think_city` VALUES (189, 176, 3, '泊头市', '130981', NULL, 1);
INSERT INTO `think_city` VALUES (190, 176, 3, '任丘市', '130982', NULL, 1);
INSERT INTO `think_city` VALUES (191, 176, 3, '黄骅市', '130983', NULL, 1);
INSERT INTO `think_city` VALUES (192, 176, 3, '河间市', '130984', NULL, 1);
INSERT INTO `think_city` VALUES (193, 37, 2, '廊坊市', '131000', NULL, 1);
INSERT INTO `think_city` VALUES (194, 193, 3, '安次区', '131002', NULL, 1);
INSERT INTO `think_city` VALUES (195, 193, 3, '广阳区', '131003', NULL, 1);
INSERT INTO `think_city` VALUES (196, 193, 3, '固安县', '131022', NULL, 1);
INSERT INTO `think_city` VALUES (197, 193, 3, '永清县', '131023', NULL, 1);
INSERT INTO `think_city` VALUES (198, 193, 3, '香河县', '131024', NULL, 1);
INSERT INTO `think_city` VALUES (199, 193, 3, '大城县', '131025', NULL, 1);
INSERT INTO `think_city` VALUES (200, 193, 3, '文安县', '131026', NULL, 1);
INSERT INTO `think_city` VALUES (201, 193, 3, '大厂回族自治县', '131028', NULL, 1);
INSERT INTO `think_city` VALUES (202, 193, 3, '霸州市', '131081', NULL, 1);
INSERT INTO `think_city` VALUES (203, 193, 3, '三河市', '131082', NULL, 1);
INSERT INTO `think_city` VALUES (204, 37, 2, '衡水市', '131100', NULL, 1);
INSERT INTO `think_city` VALUES (205, 204, 3, '桃城区', '131102', NULL, 1);
INSERT INTO `think_city` VALUES (206, 204, 3, '冀州区', '131103', NULL, 1);
INSERT INTO `think_city` VALUES (207, 204, 3, '枣强县', '131121', NULL, 1);
INSERT INTO `think_city` VALUES (208, 204, 3, '武邑县', '131122', NULL, 1);
INSERT INTO `think_city` VALUES (209, 204, 3, '武强县', '131123', NULL, 1);
INSERT INTO `think_city` VALUES (210, 204, 3, '饶阳县', '131124', NULL, 1);
INSERT INTO `think_city` VALUES (211, 204, 3, '安平县', '131125', NULL, 1);
INSERT INTO `think_city` VALUES (212, 204, 3, '故城县', '131126', NULL, 1);
INSERT INTO `think_city` VALUES (213, 204, 3, '景县', '131127', NULL, 1);
INSERT INTO `think_city` VALUES (214, 204, 3, '阜城县', '131128', NULL, 1);
INSERT INTO `think_city` VALUES (215, 204, 3, '深州市', '131182', NULL, 1);
INSERT INTO `think_city` VALUES (216, 0, 1, '山西省', '140000', NULL, 1);
INSERT INTO `think_city` VALUES (217, 216, 2, '太原市', '140100', NULL, 1);
INSERT INTO `think_city` VALUES (218, 217, 3, '小店区', '140105', NULL, 1);
INSERT INTO `think_city` VALUES (219, 217, 3, '迎泽区', '140106', NULL, 1);
INSERT INTO `think_city` VALUES (220, 217, 3, '杏花岭区', '140107', NULL, 1);
INSERT INTO `think_city` VALUES (221, 217, 3, '尖草坪区', '140108', NULL, 1);
INSERT INTO `think_city` VALUES (222, 217, 3, '万柏林区', '140109', NULL, 1);
INSERT INTO `think_city` VALUES (223, 217, 3, '晋源区', '140110', NULL, 1);
INSERT INTO `think_city` VALUES (224, 217, 3, '清徐县', '140121', NULL, 1);
INSERT INTO `think_city` VALUES (225, 217, 3, '阳曲县', '140122', NULL, 1);
INSERT INTO `think_city` VALUES (226, 217, 3, '娄烦县', '140123', NULL, 1);
INSERT INTO `think_city` VALUES (227, 217, 3, '古交市', '140181', NULL, 1);
INSERT INTO `think_city` VALUES (228, 216, 2, '大同市', '140200', NULL, 1);
INSERT INTO `think_city` VALUES (229, 228, 3, '新荣区', '140212', NULL, 1);
INSERT INTO `think_city` VALUES (230, 228, 3, '平城区', '140213', NULL, 1);
INSERT INTO `think_city` VALUES (231, 228, 3, '云冈区', '140214', NULL, 1);
INSERT INTO `think_city` VALUES (232, 228, 3, '云州区', '140215', NULL, 1);
INSERT INTO `think_city` VALUES (233, 228, 3, '阳高县', '140221', NULL, 1);
INSERT INTO `think_city` VALUES (234, 228, 3, '天镇县', '140222', NULL, 1);
INSERT INTO `think_city` VALUES (235, 228, 3, '广灵县', '140223', NULL, 1);
INSERT INTO `think_city` VALUES (236, 228, 3, '灵丘县', '140224', NULL, 1);
INSERT INTO `think_city` VALUES (237, 228, 3, '浑源县', '140225', NULL, 1);
INSERT INTO `think_city` VALUES (238, 228, 3, '左云县', '140226', NULL, 1);
INSERT INTO `think_city` VALUES (239, 216, 2, '阳泉市', '140300', NULL, 1);
INSERT INTO `think_city` VALUES (240, 239, 3, '城区', '140302', NULL, 1);
INSERT INTO `think_city` VALUES (241, 239, 3, '矿区', '140303', NULL, 1);
INSERT INTO `think_city` VALUES (242, 239, 3, '郊区', '140311', NULL, 1);
INSERT INTO `think_city` VALUES (243, 239, 3, '平定县', '140321', NULL, 1);
INSERT INTO `think_city` VALUES (244, 239, 3, '盂县', '140322', NULL, 1);
INSERT INTO `think_city` VALUES (245, 216, 2, '长治市', '140400', NULL, 1);
INSERT INTO `think_city` VALUES (246, 245, 3, '潞州区', '140403', NULL, 1);
INSERT INTO `think_city` VALUES (247, 245, 3, '上党区', '140404', NULL, 1);
INSERT INTO `think_city` VALUES (248, 245, 3, '屯留区', '140405', NULL, 1);
INSERT INTO `think_city` VALUES (249, 245, 3, '潞城区', '140406', NULL, 1);
INSERT INTO `think_city` VALUES (250, 245, 3, '襄垣县', '140423', NULL, 1);
INSERT INTO `think_city` VALUES (251, 245, 3, '平顺县', '140425', NULL, 1);
INSERT INTO `think_city` VALUES (252, 245, 3, '黎城县', '140426', NULL, 1);
INSERT INTO `think_city` VALUES (253, 245, 3, '壶关县', '140427', NULL, 1);
INSERT INTO `think_city` VALUES (254, 245, 3, '长子县', '140428', NULL, 1);
INSERT INTO `think_city` VALUES (255, 245, 3, '武乡县', '140429', NULL, 1);
INSERT INTO `think_city` VALUES (256, 245, 3, '沁县', '140430', NULL, 1);
INSERT INTO `think_city` VALUES (257, 245, 3, '沁源县', '140431', NULL, 1);
INSERT INTO `think_city` VALUES (258, 216, 2, '晋城市', '140500', NULL, 1);
INSERT INTO `think_city` VALUES (259, 258, 3, '城区', '140502', NULL, 1);
INSERT INTO `think_city` VALUES (260, 258, 3, '沁水县', '140521', NULL, 1);
INSERT INTO `think_city` VALUES (261, 258, 3, '阳城县', '140522', NULL, 1);
INSERT INTO `think_city` VALUES (262, 258, 3, '陵川县', '140524', NULL, 1);
INSERT INTO `think_city` VALUES (263, 258, 3, '泽州县', '140525', NULL, 1);
INSERT INTO `think_city` VALUES (264, 258, 3, '高平市', '140581', NULL, 1);
INSERT INTO `think_city` VALUES (265, 216, 2, '朔州市', '140600', NULL, 1);
INSERT INTO `think_city` VALUES (266, 265, 3, '朔城区', '140602', NULL, 1);
INSERT INTO `think_city` VALUES (267, 265, 3, '平鲁区', '140603', NULL, 1);
INSERT INTO `think_city` VALUES (268, 265, 3, '山阴县', '140621', NULL, 1);
INSERT INTO `think_city` VALUES (269, 265, 3, '应县', '140622', NULL, 1);
INSERT INTO `think_city` VALUES (270, 265, 3, '右玉县', '140623', NULL, 1);
INSERT INTO `think_city` VALUES (271, 265, 3, '怀仁市', '140681', NULL, 1);
INSERT INTO `think_city` VALUES (272, 216, 2, '晋中市', '140700', NULL, 1);
INSERT INTO `think_city` VALUES (273, 272, 3, '榆次区', '140702', NULL, 1);
INSERT INTO `think_city` VALUES (274, 272, 3, '太谷区', '140703', NULL, 1);
INSERT INTO `think_city` VALUES (275, 272, 3, '榆社县', '140721', NULL, 1);
INSERT INTO `think_city` VALUES (276, 272, 3, '左权县', '140722', NULL, 1);
INSERT INTO `think_city` VALUES (277, 272, 3, '和顺县', '140723', NULL, 1);
INSERT INTO `think_city` VALUES (278, 272, 3, '昔阳县', '140724', NULL, 1);
INSERT INTO `think_city` VALUES (279, 272, 3, '寿阳县', '140725', NULL, 1);
INSERT INTO `think_city` VALUES (280, 272, 3, '祁县', '140727', NULL, 1);
INSERT INTO `think_city` VALUES (281, 272, 3, '平遥县', '140728', NULL, 1);
INSERT INTO `think_city` VALUES (282, 272, 3, '灵石县', '140729', NULL, 1);
INSERT INTO `think_city` VALUES (283, 272, 3, '介休市', '140781', NULL, 1);
INSERT INTO `think_city` VALUES (284, 216, 2, '运城市', '140800', NULL, 1);
INSERT INTO `think_city` VALUES (285, 284, 3, '盐湖区', '140802', NULL, 1);
INSERT INTO `think_city` VALUES (286, 284, 3, '临猗县', '140821', NULL, 1);
INSERT INTO `think_city` VALUES (287, 284, 3, '万荣县', '140822', NULL, 1);
INSERT INTO `think_city` VALUES (288, 284, 3, '闻喜县', '140823', NULL, 1);
INSERT INTO `think_city` VALUES (289, 284, 3, '稷山县', '140824', NULL, 1);
INSERT INTO `think_city` VALUES (290, 284, 3, '新绛县', '140825', NULL, 1);
INSERT INTO `think_city` VALUES (291, 284, 3, '绛县', '140826', NULL, 1);
INSERT INTO `think_city` VALUES (292, 284, 3, '垣曲县', '140827', NULL, 1);
INSERT INTO `think_city` VALUES (293, 284, 3, '夏县', '140828', NULL, 1);
INSERT INTO `think_city` VALUES (294, 284, 3, '平陆县', '140829', NULL, 1);
INSERT INTO `think_city` VALUES (295, 284, 3, '芮城县', '140830', NULL, 1);
INSERT INTO `think_city` VALUES (296, 284, 3, '永济市', '140881', NULL, 1);
INSERT INTO `think_city` VALUES (297, 284, 3, '河津市', '140882', NULL, 1);
INSERT INTO `think_city` VALUES (298, 216, 2, '忻州市', '140900', NULL, 1);
INSERT INTO `think_city` VALUES (299, 298, 3, '忻府区', '140902', NULL, 1);
INSERT INTO `think_city` VALUES (300, 298, 3, '定襄县', '140921', NULL, 1);
INSERT INTO `think_city` VALUES (301, 298, 3, '五台县', '140922', NULL, 1);
INSERT INTO `think_city` VALUES (302, 298, 3, '代县', '140923', NULL, 1);
INSERT INTO `think_city` VALUES (303, 298, 3, '繁峙县', '140924', NULL, 1);
INSERT INTO `think_city` VALUES (304, 298, 3, '宁武县', '140925', NULL, 1);
INSERT INTO `think_city` VALUES (305, 298, 3, '静乐县', '140926', NULL, 1);
INSERT INTO `think_city` VALUES (306, 298, 3, '神池县', '140927', NULL, 1);
INSERT INTO `think_city` VALUES (307, 298, 3, '五寨县', '140928', NULL, 1);
INSERT INTO `think_city` VALUES (308, 298, 3, '岢岚县', '140929', NULL, 1);
INSERT INTO `think_city` VALUES (309, 298, 3, '河曲县', '140930', NULL, 1);
INSERT INTO `think_city` VALUES (310, 298, 3, '保德县', '140931', NULL, 1);
INSERT INTO `think_city` VALUES (311, 298, 3, '偏关县', '140932', NULL, 1);
INSERT INTO `think_city` VALUES (312, 298, 3, '原平市', '140981', NULL, 1);
INSERT INTO `think_city` VALUES (313, 216, 2, '临汾市', '141000', NULL, 1);
INSERT INTO `think_city` VALUES (314, 313, 3, '尧都区', '141002', NULL, 1);
INSERT INTO `think_city` VALUES (315, 313, 3, '曲沃县', '141021', NULL, 1);
INSERT INTO `think_city` VALUES (316, 313, 3, '翼城县', '141022', NULL, 1);
INSERT INTO `think_city` VALUES (317, 313, 3, '襄汾县', '141023', NULL, 1);
INSERT INTO `think_city` VALUES (318, 313, 3, '洪洞县', '141024', NULL, 1);
INSERT INTO `think_city` VALUES (319, 313, 3, '古县', '141025', NULL, 1);
INSERT INTO `think_city` VALUES (320, 313, 3, '安泽县', '141026', NULL, 1);
INSERT INTO `think_city` VALUES (321, 313, 3, '浮山县', '141027', NULL, 1);
INSERT INTO `think_city` VALUES (322, 313, 3, '吉县', '141028', NULL, 1);
INSERT INTO `think_city` VALUES (323, 313, 3, '乡宁县', '141029', NULL, 1);
INSERT INTO `think_city` VALUES (324, 313, 3, '大宁县', '141030', NULL, 1);
INSERT INTO `think_city` VALUES (325, 313, 3, '隰县', '141031', NULL, 1);
INSERT INTO `think_city` VALUES (326, 313, 3, '永和县', '141032', NULL, 1);
INSERT INTO `think_city` VALUES (327, 313, 3, '蒲县', '141033', NULL, 1);
INSERT INTO `think_city` VALUES (328, 313, 3, '汾西县', '141034', NULL, 1);
INSERT INTO `think_city` VALUES (329, 313, 3, '侯马市', '141081', NULL, 1);
INSERT INTO `think_city` VALUES (330, 313, 3, '霍州市', '141082', NULL, 1);
INSERT INTO `think_city` VALUES (331, 216, 2, '吕梁市', '141100', NULL, 1);
INSERT INTO `think_city` VALUES (332, 331, 3, '离石区', '141102', NULL, 1);
INSERT INTO `think_city` VALUES (333, 331, 3, '文水县', '141121', NULL, 1);
INSERT INTO `think_city` VALUES (334, 331, 3, '交城县', '141122', NULL, 1);
INSERT INTO `think_city` VALUES (335, 331, 3, '兴县', '141123', NULL, 1);
INSERT INTO `think_city` VALUES (336, 331, 3, '临县', '141124', NULL, 1);
INSERT INTO `think_city` VALUES (337, 331, 3, '柳林县', '141125', NULL, 1);
INSERT INTO `think_city` VALUES (338, 331, 3, '石楼县', '141126', NULL, 1);
INSERT INTO `think_city` VALUES (339, 331, 3, '岚县', '141127', NULL, 1);
INSERT INTO `think_city` VALUES (340, 331, 3, '方山县', '141128', NULL, 1);
INSERT INTO `think_city` VALUES (341, 331, 3, '中阳县', '141129', NULL, 1);
INSERT INTO `think_city` VALUES (342, 331, 3, '交口县', '141130', NULL, 1);
INSERT INTO `think_city` VALUES (343, 331, 3, '孝义市', '141181', NULL, 1);
INSERT INTO `think_city` VALUES (344, 331, 3, '汾阳市', '141182', NULL, 1);
INSERT INTO `think_city` VALUES (345, 0, 1, '内蒙古自治区', '150000', NULL, 1);
INSERT INTO `think_city` VALUES (346, 345, 2, '呼和浩特市', '150100', NULL, 1);
INSERT INTO `think_city` VALUES (347, 346, 3, '新城区', '150102', NULL, 1);
INSERT INTO `think_city` VALUES (348, 346, 3, '回民区', '150103', NULL, 1);
INSERT INTO `think_city` VALUES (349, 346, 3, '玉泉区', '150104', NULL, 1);
INSERT INTO `think_city` VALUES (350, 346, 3, '赛罕区', '150105', NULL, 1);
INSERT INTO `think_city` VALUES (351, 346, 3, '土默特左旗', '150121', NULL, 1);
INSERT INTO `think_city` VALUES (352, 346, 3, '托克托县', '150122', NULL, 1);
INSERT INTO `think_city` VALUES (353, 346, 3, '和林格尔县', '150123', NULL, 1);
INSERT INTO `think_city` VALUES (354, 346, 3, '清水河县', '150124', NULL, 1);
INSERT INTO `think_city` VALUES (355, 346, 3, '武川县', '150125', NULL, 1);
INSERT INTO `think_city` VALUES (356, 345, 2, '包头市', '150200', NULL, 1);
INSERT INTO `think_city` VALUES (357, 356, 3, '东河区', '150202', NULL, 1);
INSERT INTO `think_city` VALUES (358, 356, 3, '昆都仑区', '150203', NULL, 1);
INSERT INTO `think_city` VALUES (359, 356, 3, '青山区', '150204', NULL, 1);
INSERT INTO `think_city` VALUES (360, 356, 3, '石拐区', '150205', NULL, 1);
INSERT INTO `think_city` VALUES (361, 356, 3, '白云鄂博矿区', '150206', NULL, 1);
INSERT INTO `think_city` VALUES (362, 356, 3, '九原区', '150207', NULL, 1);
INSERT INTO `think_city` VALUES (363, 356, 3, '土默特右旗', '150221', NULL, 1);
INSERT INTO `think_city` VALUES (364, 356, 3, '固阳县', '150222', NULL, 1);
INSERT INTO `think_city` VALUES (365, 356, 3, '达尔罕茂明安联合旗', '150223', NULL, 1);
INSERT INTO `think_city` VALUES (366, 345, 2, '乌海市', '150300', NULL, 1);
INSERT INTO `think_city` VALUES (367, 366, 3, '海勃湾区', '150302', NULL, 1);
INSERT INTO `think_city` VALUES (368, 366, 3, '海南区', '150303', NULL, 1);
INSERT INTO `think_city` VALUES (369, 366, 3, '乌达区', '150304', NULL, 1);
INSERT INTO `think_city` VALUES (370, 345, 2, '赤峰市', '150400', NULL, 1);
INSERT INTO `think_city` VALUES (371, 370, 3, '红山区', '150402', NULL, 1);
INSERT INTO `think_city` VALUES (372, 370, 3, '元宝山区', '150403', NULL, 1);
INSERT INTO `think_city` VALUES (373, 370, 3, '松山区', '150404', NULL, 1);
INSERT INTO `think_city` VALUES (374, 370, 3, '阿鲁科尔沁旗', '150421', NULL, 1);
INSERT INTO `think_city` VALUES (375, 370, 3, '巴林左旗', '150422', NULL, 1);
INSERT INTO `think_city` VALUES (376, 370, 3, '巴林右旗', '150423', NULL, 1);
INSERT INTO `think_city` VALUES (377, 370, 3, '林西县', '150424', NULL, 1);
INSERT INTO `think_city` VALUES (378, 370, 3, '克什克腾旗', '150425', NULL, 1);
INSERT INTO `think_city` VALUES (379, 370, 3, '翁牛特旗', '150426', NULL, 1);
INSERT INTO `think_city` VALUES (380, 370, 3, '喀喇沁旗', '150428', NULL, 1);
INSERT INTO `think_city` VALUES (381, 370, 3, '宁城县', '150429', NULL, 1);
INSERT INTO `think_city` VALUES (382, 370, 3, '敖汉旗', '150430', NULL, 1);
INSERT INTO `think_city` VALUES (383, 345, 2, '通辽市', '150500', NULL, 1);
INSERT INTO `think_city` VALUES (384, 383, 3, '科尔沁区', '150502', NULL, 1);
INSERT INTO `think_city` VALUES (385, 383, 3, '科尔沁左翼中旗', '150521', NULL, 1);
INSERT INTO `think_city` VALUES (386, 383, 3, '科尔沁左翼后旗', '150522', NULL, 1);
INSERT INTO `think_city` VALUES (387, 383, 3, '开鲁县', '150523', NULL, 1);
INSERT INTO `think_city` VALUES (388, 383, 3, '库伦旗', '150524', NULL, 1);
INSERT INTO `think_city` VALUES (389, 383, 3, '奈曼旗', '150525', NULL, 1);
INSERT INTO `think_city` VALUES (390, 383, 3, '扎鲁特旗', '150526', NULL, 1);
INSERT INTO `think_city` VALUES (391, 383, 3, '霍林郭勒市', '150581', NULL, 1);
INSERT INTO `think_city` VALUES (392, 345, 2, '鄂尔多斯市', '150600', NULL, 1);
INSERT INTO `think_city` VALUES (393, 392, 3, '东胜区', '150602', NULL, 1);
INSERT INTO `think_city` VALUES (394, 392, 3, '康巴什区', '150603', NULL, 1);
INSERT INTO `think_city` VALUES (395, 392, 3, '达拉特旗', '150621', NULL, 1);
INSERT INTO `think_city` VALUES (396, 392, 3, '准格尔旗', '150622', NULL, 1);
INSERT INTO `think_city` VALUES (397, 392, 3, '鄂托克前旗', '150623', NULL, 1);
INSERT INTO `think_city` VALUES (398, 392, 3, '鄂托克旗', '150624', NULL, 1);
INSERT INTO `think_city` VALUES (399, 392, 3, '杭锦旗', '150625', NULL, 1);
INSERT INTO `think_city` VALUES (400, 392, 3, '乌审旗', '150626', NULL, 1);
INSERT INTO `think_city` VALUES (401, 392, 3, '伊金霍洛旗', '150627', NULL, 1);
INSERT INTO `think_city` VALUES (402, 345, 2, '呼伦贝尔市', '150700', NULL, 1);
INSERT INTO `think_city` VALUES (403, 402, 3, '海拉尔区', '150702', NULL, 1);
INSERT INTO `think_city` VALUES (404, 402, 3, '扎赉诺尔区', '150703', NULL, 1);
INSERT INTO `think_city` VALUES (405, 402, 3, '阿荣旗', '150721', NULL, 1);
INSERT INTO `think_city` VALUES (406, 402, 3, '莫力达瓦达斡尔族自治旗', '150722', NULL, 1);
INSERT INTO `think_city` VALUES (407, 402, 3, '鄂伦春自治旗', '150723', NULL, 1);
INSERT INTO `think_city` VALUES (408, 402, 3, '鄂温克族自治旗', '150724', NULL, 1);
INSERT INTO `think_city` VALUES (409, 402, 3, '陈巴尔虎旗', '150725', NULL, 1);
INSERT INTO `think_city` VALUES (410, 402, 3, '新巴尔虎左旗', '150726', NULL, 1);
INSERT INTO `think_city` VALUES (411, 402, 3, '新巴尔虎右旗', '150727', NULL, 1);
INSERT INTO `think_city` VALUES (412, 402, 3, '满洲里市', '150781', NULL, 1);
INSERT INTO `think_city` VALUES (413, 402, 3, '牙克石市', '150782', NULL, 1);
INSERT INTO `think_city` VALUES (414, 402, 3, '扎兰屯市', '150783', NULL, 1);
INSERT INTO `think_city` VALUES (415, 402, 3, '额尔古纳市', '150784', NULL, 1);
INSERT INTO `think_city` VALUES (416, 402, 3, '根河市', '150785', NULL, 1);
INSERT INTO `think_city` VALUES (417, 345, 2, '巴彦淖尔市', '150800', NULL, 1);
INSERT INTO `think_city` VALUES (418, 417, 3, '临河区', '150802', NULL, 1);
INSERT INTO `think_city` VALUES (419, 417, 3, '五原县', '150821', NULL, 1);
INSERT INTO `think_city` VALUES (420, 417, 3, '磴口县', '150822', NULL, 1);
INSERT INTO `think_city` VALUES (421, 417, 3, '乌拉特前旗', '150823', NULL, 1);
INSERT INTO `think_city` VALUES (422, 417, 3, '乌拉特中旗', '150824', NULL, 1);
INSERT INTO `think_city` VALUES (423, 417, 3, '乌拉特后旗', '150825', NULL, 1);
INSERT INTO `think_city` VALUES (424, 417, 3, '杭锦后旗', '150826', NULL, 1);
INSERT INTO `think_city` VALUES (425, 345, 2, '乌兰察布市', '150900', NULL, 1);
INSERT INTO `think_city` VALUES (426, 425, 3, '集宁区', '150902', NULL, 1);
INSERT INTO `think_city` VALUES (427, 425, 3, '卓资县', '150921', NULL, 1);
INSERT INTO `think_city` VALUES (428, 425, 3, '化德县', '150922', NULL, 1);
INSERT INTO `think_city` VALUES (429, 425, 3, '商都县', '150923', NULL, 1);
INSERT INTO `think_city` VALUES (430, 425, 3, '兴和县', '150924', NULL, 1);
INSERT INTO `think_city` VALUES (431, 425, 3, '凉城县', '150925', NULL, 1);
INSERT INTO `think_city` VALUES (432, 425, 3, '察哈尔右翼前旗', '150926', NULL, 1);
INSERT INTO `think_city` VALUES (433, 425, 3, '察哈尔右翼中旗', '150927', NULL, 1);
INSERT INTO `think_city` VALUES (434, 425, 3, '察哈尔右翼后旗', '150928', NULL, 1);
INSERT INTO `think_city` VALUES (435, 425, 3, '四子王旗', '150929', NULL, 1);
INSERT INTO `think_city` VALUES (436, 425, 3, '丰镇市', '150981', NULL, 1);
INSERT INTO `think_city` VALUES (437, 345, 2, '兴安盟', '152200', NULL, 1);
INSERT INTO `think_city` VALUES (438, 437, 3, '乌兰浩特市', '152201', NULL, 1);
INSERT INTO `think_city` VALUES (439, 437, 3, '阿尔山市', '152202', NULL, 1);
INSERT INTO `think_city` VALUES (440, 437, 3, '科尔沁右翼前旗', '152221', NULL, 1);
INSERT INTO `think_city` VALUES (441, 437, 3, '科尔沁右翼中旗', '152222', NULL, 1);
INSERT INTO `think_city` VALUES (442, 437, 3, '扎赉特旗', '152223', NULL, 1);
INSERT INTO `think_city` VALUES (443, 437, 3, '突泉县', '152224', NULL, 1);
INSERT INTO `think_city` VALUES (444, 345, 2, '锡林郭勒盟', '152500', NULL, 1);
INSERT INTO `think_city` VALUES (445, 444, 3, '二连浩特市', '152501', NULL, 1);
INSERT INTO `think_city` VALUES (446, 444, 3, '锡林浩特市', '152502', NULL, 1);
INSERT INTO `think_city` VALUES (447, 444, 3, '阿巴嘎旗', '152522', NULL, 1);
INSERT INTO `think_city` VALUES (448, 444, 3, '苏尼特左旗', '152523', NULL, 1);
INSERT INTO `think_city` VALUES (449, 444, 3, '苏尼特右旗', '152524', NULL, 1);
INSERT INTO `think_city` VALUES (450, 444, 3, '东乌珠穆沁旗', '152525', NULL, 1);
INSERT INTO `think_city` VALUES (451, 444, 3, '西乌珠穆沁旗', '152526', NULL, 1);
INSERT INTO `think_city` VALUES (452, 444, 3, '太仆寺旗', '152527', NULL, 1);
INSERT INTO `think_city` VALUES (453, 444, 3, '镶黄旗', '152528', NULL, 1);
INSERT INTO `think_city` VALUES (454, 444, 3, '正镶白旗', '152529', NULL, 1);
INSERT INTO `think_city` VALUES (455, 444, 3, '正蓝旗', '152530', NULL, 1);
INSERT INTO `think_city` VALUES (456, 444, 3, '多伦县', '152531', NULL, 1);
INSERT INTO `think_city` VALUES (457, 345, 2, '阿拉善盟', '152900', NULL, 1);
INSERT INTO `think_city` VALUES (458, 457, 3, '阿拉善左旗', '152921', NULL, 1);
INSERT INTO `think_city` VALUES (459, 457, 3, '阿拉善右旗', '152922', NULL, 1);
INSERT INTO `think_city` VALUES (460, 457, 3, '额济纳旗', '152923', NULL, 1);
INSERT INTO `think_city` VALUES (461, 0, 1, '辽宁省', '210000', NULL, 1);
INSERT INTO `think_city` VALUES (462, 461, 2, '沈阳市', '210100', NULL, 1);
INSERT INTO `think_city` VALUES (463, 462, 3, '和平区', '210102', NULL, 1);
INSERT INTO `think_city` VALUES (464, 462, 3, '沈河区', '210103', NULL, 1);
INSERT INTO `think_city` VALUES (465, 462, 3, '大东区', '210104', NULL, 1);
INSERT INTO `think_city` VALUES (466, 462, 3, '皇姑区', '210105', NULL, 1);
INSERT INTO `think_city` VALUES (467, 462, 3, '铁西区', '210106', NULL, 1);
INSERT INTO `think_city` VALUES (468, 462, 3, '苏家屯区', '210111', NULL, 1);
INSERT INTO `think_city` VALUES (469, 462, 3, '浑南区', '210112', NULL, 1);
INSERT INTO `think_city` VALUES (470, 462, 3, '沈北新区', '210113', NULL, 1);
INSERT INTO `think_city` VALUES (471, 462, 3, '于洪区', '210114', NULL, 1);
INSERT INTO `think_city` VALUES (472, 462, 3, '辽中区', '210115', NULL, 1);
INSERT INTO `think_city` VALUES (473, 462, 3, '康平县', '210123', NULL, 1);
INSERT INTO `think_city` VALUES (474, 462, 3, '法库县', '210124', NULL, 1);
INSERT INTO `think_city` VALUES (475, 462, 3, '新民市', '210181', NULL, 1);
INSERT INTO `think_city` VALUES (476, 461, 2, '大连市', '210200', NULL, 1);
INSERT INTO `think_city` VALUES (477, 476, 3, '中山区', '210202', NULL, 1);
INSERT INTO `think_city` VALUES (478, 476, 3, '西岗区', '210203', NULL, 1);
INSERT INTO `think_city` VALUES (479, 476, 3, '沙河口区', '210204', NULL, 1);
INSERT INTO `think_city` VALUES (480, 476, 3, '甘井子区', '210211', NULL, 1);
INSERT INTO `think_city` VALUES (481, 476, 3, '旅顺口区', '210212', NULL, 1);
INSERT INTO `think_city` VALUES (482, 476, 3, '金州区', '210213', NULL, 1);
INSERT INTO `think_city` VALUES (483, 476, 3, '普兰店区', '210214', NULL, 1);
INSERT INTO `think_city` VALUES (484, 476, 3, '长海县', '210224', NULL, 1);
INSERT INTO `think_city` VALUES (485, 476, 3, '瓦房店市', '210281', NULL, 1);
INSERT INTO `think_city` VALUES (486, 476, 3, '庄河市', '210283', NULL, 1);
INSERT INTO `think_city` VALUES (487, 461, 2, '鞍山市', '210300', NULL, 1);
INSERT INTO `think_city` VALUES (488, 487, 3, '铁东区', '210302', NULL, 1);
INSERT INTO `think_city` VALUES (489, 487, 3, '铁西区', '210303', NULL, 1);
INSERT INTO `think_city` VALUES (490, 487, 3, '立山区', '210304', NULL, 1);
INSERT INTO `think_city` VALUES (491, 487, 3, '千山区', '210311', NULL, 1);
INSERT INTO `think_city` VALUES (492, 487, 3, '台安县', '210321', NULL, 1);
INSERT INTO `think_city` VALUES (493, 487, 3, '岫岩满族自治县', '210323', NULL, 1);
INSERT INTO `think_city` VALUES (494, 487, 3, '海城市', '210381', NULL, 1);
INSERT INTO `think_city` VALUES (495, 461, 2, '抚顺市', '210400', NULL, 1);
INSERT INTO `think_city` VALUES (496, 495, 3, '新抚区', '210402', NULL, 1);
INSERT INTO `think_city` VALUES (497, 495, 3, '东洲区', '210403', NULL, 1);
INSERT INTO `think_city` VALUES (498, 495, 3, '望花区', '210404', NULL, 1);
INSERT INTO `think_city` VALUES (499, 495, 3, '顺城区', '210411', NULL, 1);
INSERT INTO `think_city` VALUES (500, 495, 3, '抚顺县', '210421', NULL, 1);
INSERT INTO `think_city` VALUES (501, 495, 3, '新宾满族自治县', '210422', NULL, 1);
INSERT INTO `think_city` VALUES (502, 495, 3, '清原满族自治县', '210423', NULL, 1);
INSERT INTO `think_city` VALUES (503, 461, 2, '本溪市', '210500', NULL, 1);
INSERT INTO `think_city` VALUES (504, 503, 3, '平山区', '210502', NULL, 1);
INSERT INTO `think_city` VALUES (505, 503, 3, '溪湖区', '210503', NULL, 1);
INSERT INTO `think_city` VALUES (506, 503, 3, '明山区', '210504', NULL, 1);
INSERT INTO `think_city` VALUES (507, 503, 3, '南芬区', '210505', NULL, 1);
INSERT INTO `think_city` VALUES (508, 503, 3, '本溪满族自治县', '210521', NULL, 1);
INSERT INTO `think_city` VALUES (509, 503, 3, '桓仁满族自治县', '210522', NULL, 1);
INSERT INTO `think_city` VALUES (510, 461, 2, '丹东市', '210600', NULL, 1);
INSERT INTO `think_city` VALUES (511, 510, 3, '元宝区', '210602', NULL, 1);
INSERT INTO `think_city` VALUES (512, 510, 3, '振兴区', '210603', NULL, 1);
INSERT INTO `think_city` VALUES (513, 510, 3, '振安区', '210604', NULL, 1);
INSERT INTO `think_city` VALUES (514, 510, 3, '宽甸满族自治县', '210624', NULL, 1);
INSERT INTO `think_city` VALUES (515, 510, 3, '东港市', '210681', NULL, 1);
INSERT INTO `think_city` VALUES (516, 510, 3, '凤城市', '210682', NULL, 1);
INSERT INTO `think_city` VALUES (517, 461, 2, '锦州市', '210700', NULL, 1);
INSERT INTO `think_city` VALUES (518, 517, 3, '古塔区', '210702', NULL, 1);
INSERT INTO `think_city` VALUES (519, 517, 3, '凌河区', '210703', NULL, 1);
INSERT INTO `think_city` VALUES (520, 517, 3, '太和区', '210711', NULL, 1);
INSERT INTO `think_city` VALUES (521, 517, 3, '黑山县', '210726', NULL, 1);
INSERT INTO `think_city` VALUES (522, 517, 3, '义县', '210727', NULL, 1);
INSERT INTO `think_city` VALUES (523, 517, 3, '凌海市', '210781', NULL, 1);
INSERT INTO `think_city` VALUES (524, 517, 3, '北镇市', '210782', NULL, 1);
INSERT INTO `think_city` VALUES (525, 461, 2, '营口市', '210800', NULL, 1);
INSERT INTO `think_city` VALUES (526, 525, 3, '站前区', '210802', NULL, 1);
INSERT INTO `think_city` VALUES (527, 525, 3, '西市区', '210803', NULL, 1);
INSERT INTO `think_city` VALUES (528, 525, 3, '鲅鱼圈区', '210804', NULL, 1);
INSERT INTO `think_city` VALUES (529, 525, 3, '老边区', '210811', NULL, 1);
INSERT INTO `think_city` VALUES (530, 525, 3, '盖州市', '210881', NULL, 1);
INSERT INTO `think_city` VALUES (531, 525, 3, '大石桥市', '210882', NULL, 1);
INSERT INTO `think_city` VALUES (532, 461, 2, '阜新市', '210900', NULL, 1);
INSERT INTO `think_city` VALUES (533, 532, 3, '海州区', '210902', NULL, 1);
INSERT INTO `think_city` VALUES (534, 532, 3, '新邱区', '210903', NULL, 1);
INSERT INTO `think_city` VALUES (535, 532, 3, '太平区', '210904', NULL, 1);
INSERT INTO `think_city` VALUES (536, 532, 3, '清河门区', '210905', NULL, 1);
INSERT INTO `think_city` VALUES (537, 532, 3, '细河区', '210911', NULL, 1);
INSERT INTO `think_city` VALUES (538, 532, 3, '阜新蒙古族自治县', '210921', NULL, 1);
INSERT INTO `think_city` VALUES (539, 532, 3, '彰武县', '210922', NULL, 1);
INSERT INTO `think_city` VALUES (540, 461, 2, '辽阳市', '211000', NULL, 1);
INSERT INTO `think_city` VALUES (541, 540, 3, '白塔区', '211002', NULL, 1);
INSERT INTO `think_city` VALUES (542, 540, 3, '文圣区', '211003', NULL, 1);
INSERT INTO `think_city` VALUES (543, 540, 3, '宏伟区', '211004', NULL, 1);
INSERT INTO `think_city` VALUES (544, 540, 3, '弓长岭区', '211005', NULL, 1);
INSERT INTO `think_city` VALUES (545, 540, 3, '太子河区', '211011', NULL, 1);
INSERT INTO `think_city` VALUES (546, 540, 3, '辽阳县', '211021', NULL, 1);
INSERT INTO `think_city` VALUES (547, 540, 3, '灯塔市', '211081', NULL, 1);
INSERT INTO `think_city` VALUES (548, 461, 2, '盘锦市', '211100', NULL, 1);
INSERT INTO `think_city` VALUES (549, 548, 3, '双台子区', '211102', NULL, 1);
INSERT INTO `think_city` VALUES (550, 548, 3, '兴隆台区', '211103', NULL, 1);
INSERT INTO `think_city` VALUES (551, 548, 3, '大洼区', '211104', NULL, 1);
INSERT INTO `think_city` VALUES (552, 548, 3, '盘山县', '211122', NULL, 1);
INSERT INTO `think_city` VALUES (553, 461, 2, '铁岭市', '211200', NULL, 1);
INSERT INTO `think_city` VALUES (554, 553, 3, '银州区', '211202', NULL, 1);
INSERT INTO `think_city` VALUES (555, 553, 3, '清河区', '211204', NULL, 1);
INSERT INTO `think_city` VALUES (556, 553, 3, '铁岭县', '211221', NULL, 1);
INSERT INTO `think_city` VALUES (557, 553, 3, '西丰县', '211223', NULL, 1);
INSERT INTO `think_city` VALUES (558, 553, 3, '昌图县', '211224', NULL, 1);
INSERT INTO `think_city` VALUES (559, 553, 3, '调兵山市', '211281', NULL, 1);
INSERT INTO `think_city` VALUES (560, 553, 3, '开原市', '211282', NULL, 1);
INSERT INTO `think_city` VALUES (561, 461, 2, '朝阳市', '211300', NULL, 1);
INSERT INTO `think_city` VALUES (562, 561, 3, '双塔区', '211302', NULL, 1);
INSERT INTO `think_city` VALUES (563, 561, 3, '龙城区', '211303', NULL, 1);
INSERT INTO `think_city` VALUES (564, 561, 3, '朝阳县', '211321', NULL, 1);
INSERT INTO `think_city` VALUES (565, 561, 3, '建平县', '211322', NULL, 1);
INSERT INTO `think_city` VALUES (566, 561, 3, '喀喇沁左翼蒙古族自治县', '211324', NULL, 1);
INSERT INTO `think_city` VALUES (567, 561, 3, '北票市', '211381', NULL, 1);
INSERT INTO `think_city` VALUES (568, 561, 3, '凌源市', '211382', NULL, 1);
INSERT INTO `think_city` VALUES (569, 461, 2, '葫芦岛市', '211400', NULL, 1);
INSERT INTO `think_city` VALUES (570, 569, 3, '连山区', '211402', NULL, 1);
INSERT INTO `think_city` VALUES (571, 569, 3, '龙港区', '211403', NULL, 1);
INSERT INTO `think_city` VALUES (572, 569, 3, '南票区', '211404', NULL, 1);
INSERT INTO `think_city` VALUES (573, 569, 3, '绥中县', '211421', NULL, 1);
INSERT INTO `think_city` VALUES (574, 569, 3, '建昌县', '211422', NULL, 1);
INSERT INTO `think_city` VALUES (575, 569, 3, '兴城市', '211481', NULL, 1);
INSERT INTO `think_city` VALUES (576, 0, 1, '吉林省', '220000', NULL, 1);
INSERT INTO `think_city` VALUES (577, 576, 2, '长春市', '220100', NULL, 1);
INSERT INTO `think_city` VALUES (578, 577, 3, '南关区', '220102', NULL, 1);
INSERT INTO `think_city` VALUES (579, 577, 3, '宽城区', '220103', NULL, 1);
INSERT INTO `think_city` VALUES (580, 577, 3, '朝阳区', '220104', NULL, 1);
INSERT INTO `think_city` VALUES (581, 577, 3, '二道区', '220105', NULL, 1);
INSERT INTO `think_city` VALUES (582, 577, 3, '绿园区', '220106', NULL, 1);
INSERT INTO `think_city` VALUES (583, 577, 3, '双阳区', '220112', NULL, 1);
INSERT INTO `think_city` VALUES (584, 577, 3, '九台区', '220113', NULL, 1);
INSERT INTO `think_city` VALUES (585, 577, 3, '农安县', '220122', NULL, 1);
INSERT INTO `think_city` VALUES (586, 577, 3, '榆树市', '220182', NULL, 1);
INSERT INTO `think_city` VALUES (587, 577, 3, '德惠市', '220183', NULL, 1);
INSERT INTO `think_city` VALUES (588, 577, 3, '公主岭市', '220184', NULL, 1);
INSERT INTO `think_city` VALUES (589, 576, 2, '吉林市', '220200', NULL, 1);
INSERT INTO `think_city` VALUES (590, 589, 3, '昌邑区', '220202', NULL, 1);
INSERT INTO `think_city` VALUES (591, 589, 3, '龙潭区', '220203', NULL, 1);
INSERT INTO `think_city` VALUES (592, 589, 3, '船营区', '220204', NULL, 1);
INSERT INTO `think_city` VALUES (593, 589, 3, '丰满区', '220211', NULL, 1);
INSERT INTO `think_city` VALUES (594, 589, 3, '永吉县', '220221', NULL, 1);
INSERT INTO `think_city` VALUES (595, 589, 3, '蛟河市', '220281', NULL, 1);
INSERT INTO `think_city` VALUES (596, 589, 3, '桦甸市', '220282', NULL, 1);
INSERT INTO `think_city` VALUES (597, 589, 3, '舒兰市', '220283', NULL, 1);
INSERT INTO `think_city` VALUES (598, 589, 3, '磐石市', '220284', NULL, 1);
INSERT INTO `think_city` VALUES (599, 576, 2, '四平市', '220300', NULL, 1);
INSERT INTO `think_city` VALUES (600, 599, 3, '铁西区', '220302', NULL, 1);
INSERT INTO `think_city` VALUES (601, 599, 3, '铁东区', '220303', NULL, 1);
INSERT INTO `think_city` VALUES (602, 599, 3, '梨树县', '220322', NULL, 1);
INSERT INTO `think_city` VALUES (603, 599, 3, '伊通满族自治县', '220323', NULL, 1);
INSERT INTO `think_city` VALUES (604, 599, 3, '双辽市', '220382', NULL, 1);
INSERT INTO `think_city` VALUES (605, 576, 2, '辽源市', '220400', NULL, 1);
INSERT INTO `think_city` VALUES (606, 605, 3, '龙山区', '220402', NULL, 1);
INSERT INTO `think_city` VALUES (607, 605, 3, '西安区', '220403', NULL, 1);
INSERT INTO `think_city` VALUES (608, 605, 3, '东丰县', '220421', NULL, 1);
INSERT INTO `think_city` VALUES (609, 605, 3, '东辽县', '220422', NULL, 1);
INSERT INTO `think_city` VALUES (610, 576, 2, '通化市', '220500', NULL, 1);
INSERT INTO `think_city` VALUES (611, 610, 3, '东昌区', '220502', NULL, 1);
INSERT INTO `think_city` VALUES (612, 610, 3, '二道江区', '220503', NULL, 1);
INSERT INTO `think_city` VALUES (613, 610, 3, '通化县', '220521', NULL, 1);
INSERT INTO `think_city` VALUES (614, 610, 3, '辉南县', '220523', NULL, 1);
INSERT INTO `think_city` VALUES (615, 610, 3, '柳河县', '220524', NULL, 1);
INSERT INTO `think_city` VALUES (616, 610, 3, '梅河口市', '220581', NULL, 1);
INSERT INTO `think_city` VALUES (617, 610, 3, '集安市', '220582', NULL, 1);
INSERT INTO `think_city` VALUES (618, 576, 2, '白山市', '220600', NULL, 1);
INSERT INTO `think_city` VALUES (619, 618, 3, '浑江区', '220602', NULL, 1);
INSERT INTO `think_city` VALUES (620, 618, 3, '江源区', '220605', NULL, 1);
INSERT INTO `think_city` VALUES (621, 618, 3, '抚松县', '220621', NULL, 1);
INSERT INTO `think_city` VALUES (622, 618, 3, '靖宇县', '220622', NULL, 1);
INSERT INTO `think_city` VALUES (623, 618, 3, '长白朝鲜族自治县', '220623', NULL, 1);
INSERT INTO `think_city` VALUES (624, 618, 3, '临江市', '220681', NULL, 1);
INSERT INTO `think_city` VALUES (625, 576, 2, '松原市', '220700', NULL, 1);
INSERT INTO `think_city` VALUES (626, 625, 3, '宁江区', '220702', NULL, 1);
INSERT INTO `think_city` VALUES (627, 625, 3, '前郭尔罗斯蒙古族自治县', '220721', NULL, 1);
INSERT INTO `think_city` VALUES (628, 625, 3, '长岭县', '220722', NULL, 1);
INSERT INTO `think_city` VALUES (629, 625, 3, '乾安县', '220723', NULL, 1);
INSERT INTO `think_city` VALUES (630, 625, 3, '扶余市', '220781', NULL, 1);
INSERT INTO `think_city` VALUES (631, 576, 2, '白城市', '220800', NULL, 1);
INSERT INTO `think_city` VALUES (632, 631, 3, '洮北区', '220802', NULL, 1);
INSERT INTO `think_city` VALUES (633, 631, 3, '镇赉县', '220821', NULL, 1);
INSERT INTO `think_city` VALUES (634, 631, 3, '通榆县', '220822', NULL, 1);
INSERT INTO `think_city` VALUES (635, 631, 3, '洮南市', '220881', NULL, 1);
INSERT INTO `think_city` VALUES (636, 631, 3, '大安市', '220882', NULL, 1);
INSERT INTO `think_city` VALUES (637, 576, 2, '延边朝鲜族自治州', '222400', NULL, 1);
INSERT INTO `think_city` VALUES (638, 637, 3, '延吉市', '222401', NULL, 1);
INSERT INTO `think_city` VALUES (639, 637, 3, '图们市', '222402', NULL, 1);
INSERT INTO `think_city` VALUES (640, 637, 3, '敦化市', '222403', NULL, 1);
INSERT INTO `think_city` VALUES (641, 637, 3, '珲春市', '222404', NULL, 1);
INSERT INTO `think_city` VALUES (642, 637, 3, '龙井市', '222405', NULL, 1);
INSERT INTO `think_city` VALUES (643, 637, 3, '和龙市', '222406', NULL, 1);
INSERT INTO `think_city` VALUES (644, 637, 3, '汪清县', '222424', NULL, 1);
INSERT INTO `think_city` VALUES (645, 637, 3, '安图县', '222426', NULL, 1);
INSERT INTO `think_city` VALUES (646, 0, 1, '黑龙江省', '230000', NULL, 1);
INSERT INTO `think_city` VALUES (647, 646, 2, '哈尔滨市', '230100', NULL, 1);
INSERT INTO `think_city` VALUES (648, 647, 3, '道里区', '230102', NULL, 1);
INSERT INTO `think_city` VALUES (649, 647, 3, '南岗区', '230103', NULL, 1);
INSERT INTO `think_city` VALUES (650, 647, 3, '道外区', '230104', NULL, 1);
INSERT INTO `think_city` VALUES (651, 647, 3, '平房区', '230108', NULL, 1);
INSERT INTO `think_city` VALUES (652, 647, 3, '松北区', '230109', NULL, 1);
INSERT INTO `think_city` VALUES (653, 647, 3, '香坊区', '230110', NULL, 1);
INSERT INTO `think_city` VALUES (654, 647, 3, '呼兰区', '230111', NULL, 1);
INSERT INTO `think_city` VALUES (655, 647, 3, '阿城区', '230112', NULL, 1);
INSERT INTO `think_city` VALUES (656, 647, 3, '双城区', '230113', NULL, 1);
INSERT INTO `think_city` VALUES (657, 647, 3, '依兰县', '230123', NULL, 1);
INSERT INTO `think_city` VALUES (658, 647, 3, '方正县', '230124', NULL, 1);
INSERT INTO `think_city` VALUES (659, 647, 3, '宾县', '230125', NULL, 1);
INSERT INTO `think_city` VALUES (660, 647, 3, '巴彦县', '230126', NULL, 1);
INSERT INTO `think_city` VALUES (661, 647, 3, '木兰县', '230127', NULL, 1);
INSERT INTO `think_city` VALUES (662, 647, 3, '通河县', '230128', NULL, 1);
INSERT INTO `think_city` VALUES (663, 647, 3, '延寿县', '230129', NULL, 1);
INSERT INTO `think_city` VALUES (664, 647, 3, '尚志市', '230183', NULL, 1);
INSERT INTO `think_city` VALUES (665, 647, 3, '五常市', '230184', NULL, 1);
INSERT INTO `think_city` VALUES (666, 646, 2, '齐齐哈尔市', '230200', NULL, 1);
INSERT INTO `think_city` VALUES (667, 666, 3, '龙沙区', '230202', NULL, 1);
INSERT INTO `think_city` VALUES (668, 666, 3, '建华区', '230203', NULL, 1);
INSERT INTO `think_city` VALUES (669, 666, 3, '铁锋区', '230204', NULL, 1);
INSERT INTO `think_city` VALUES (670, 666, 3, '昂昂溪区', '230205', NULL, 1);
INSERT INTO `think_city` VALUES (671, 666, 3, '富拉尔基区', '230206', NULL, 1);
INSERT INTO `think_city` VALUES (672, 666, 3, '碾子山区', '230207', NULL, 1);
INSERT INTO `think_city` VALUES (673, 666, 3, '梅里斯达斡尔族区', '230208', NULL, 1);
INSERT INTO `think_city` VALUES (674, 666, 3, '龙江县', '230221', NULL, 1);
INSERT INTO `think_city` VALUES (675, 666, 3, '依安县', '230223', NULL, 1);
INSERT INTO `think_city` VALUES (676, 666, 3, '泰来县', '230224', NULL, 1);
INSERT INTO `think_city` VALUES (677, 666, 3, '甘南县', '230225', NULL, 1);
INSERT INTO `think_city` VALUES (678, 666, 3, '富裕县', '230227', NULL, 1);
INSERT INTO `think_city` VALUES (679, 666, 3, '克山县', '230229', NULL, 1);
INSERT INTO `think_city` VALUES (680, 666, 3, '克东县', '230230', NULL, 1);
INSERT INTO `think_city` VALUES (681, 666, 3, '拜泉县', '230231', NULL, 1);
INSERT INTO `think_city` VALUES (682, 666, 3, '讷河市', '230281', NULL, 1);
INSERT INTO `think_city` VALUES (683, 646, 2, '鸡西市', '230300', NULL, 1);
INSERT INTO `think_city` VALUES (684, 683, 3, '鸡冠区', '230302', NULL, 1);
INSERT INTO `think_city` VALUES (685, 683, 3, '恒山区', '230303', NULL, 1);
INSERT INTO `think_city` VALUES (686, 683, 3, '滴道区', '230304', NULL, 1);
INSERT INTO `think_city` VALUES (687, 683, 3, '梨树区', '230305', NULL, 1);
INSERT INTO `think_city` VALUES (688, 683, 3, '城子河区', '230306', NULL, 1);
INSERT INTO `think_city` VALUES (689, 683, 3, '麻山区', '230307', NULL, 1);
INSERT INTO `think_city` VALUES (690, 683, 3, '鸡东县', '230321', NULL, 1);
INSERT INTO `think_city` VALUES (691, 683, 3, '虎林市', '230381', NULL, 1);
INSERT INTO `think_city` VALUES (692, 683, 3, '密山市', '230382', NULL, 1);
INSERT INTO `think_city` VALUES (693, 646, 2, '鹤岗市', '230400', NULL, 1);
INSERT INTO `think_city` VALUES (694, 693, 3, '向阳区', '230402', NULL, 1);
INSERT INTO `think_city` VALUES (695, 693, 3, '工农区', '230403', NULL, 1);
INSERT INTO `think_city` VALUES (696, 693, 3, '南山区', '230404', NULL, 1);
INSERT INTO `think_city` VALUES (697, 693, 3, '兴安区', '230405', NULL, 1);
INSERT INTO `think_city` VALUES (698, 693, 3, '东山区', '230406', NULL, 1);
INSERT INTO `think_city` VALUES (699, 693, 3, '兴山区', '230407', NULL, 1);
INSERT INTO `think_city` VALUES (700, 693, 3, '萝北县', '230421', NULL, 1);
INSERT INTO `think_city` VALUES (701, 693, 3, '绥滨县', '230422', NULL, 1);
INSERT INTO `think_city` VALUES (702, 646, 2, '双鸭山市', '230500', NULL, 1);
INSERT INTO `think_city` VALUES (703, 702, 3, '尖山区', '230502', NULL, 1);
INSERT INTO `think_city` VALUES (704, 702, 3, '岭东区', '230503', NULL, 1);
INSERT INTO `think_city` VALUES (705, 702, 3, '四方台区', '230505', NULL, 1);
INSERT INTO `think_city` VALUES (706, 702, 3, '宝山区', '230506', NULL, 1);
INSERT INTO `think_city` VALUES (707, 702, 3, '集贤县', '230521', NULL, 1);
INSERT INTO `think_city` VALUES (708, 702, 3, '友谊县', '230522', NULL, 1);
INSERT INTO `think_city` VALUES (709, 702, 3, '宝清县', '230523', NULL, 1);
INSERT INTO `think_city` VALUES (710, 702, 3, '饶河县', '230524', NULL, 1);
INSERT INTO `think_city` VALUES (711, 646, 2, '大庆市', '230600', NULL, 1);
INSERT INTO `think_city` VALUES (712, 711, 3, '萨尔图区', '230602', NULL, 1);
INSERT INTO `think_city` VALUES (713, 711, 3, '龙凤区', '230603', NULL, 1);
INSERT INTO `think_city` VALUES (714, 711, 3, '让胡路区', '230604', NULL, 1);
INSERT INTO `think_city` VALUES (715, 711, 3, '红岗区', '230605', NULL, 1);
INSERT INTO `think_city` VALUES (716, 711, 3, '大同区', '230606', NULL, 1);
INSERT INTO `think_city` VALUES (717, 711, 3, '肇州县', '230621', NULL, 1);
INSERT INTO `think_city` VALUES (718, 711, 3, '肇源县', '230622', NULL, 1);
INSERT INTO `think_city` VALUES (719, 711, 3, '林甸县', '230623', NULL, 1);
INSERT INTO `think_city` VALUES (720, 711, 3, '杜尔伯特蒙古族自治县', '230624', NULL, 1);
INSERT INTO `think_city` VALUES (721, 646, 2, '伊春市', '230700', NULL, 1);
INSERT INTO `think_city` VALUES (722, 721, 3, '伊美区', '230717', NULL, 1);
INSERT INTO `think_city` VALUES (723, 721, 3, '乌翠区', '230718', NULL, 1);
INSERT INTO `think_city` VALUES (724, 721, 3, '友好区', '230719', NULL, 1);
INSERT INTO `think_city` VALUES (725, 721, 3, '嘉荫县', '230722', NULL, 1);
INSERT INTO `think_city` VALUES (726, 721, 3, '汤旺县', '230723', NULL, 1);
INSERT INTO `think_city` VALUES (727, 721, 3, '丰林县', '230724', NULL, 1);
INSERT INTO `think_city` VALUES (728, 721, 3, '大箐山县', '230725', NULL, 1);
INSERT INTO `think_city` VALUES (729, 721, 3, '南岔县', '230726', NULL, 1);
INSERT INTO `think_city` VALUES (730, 721, 3, '金林区', '230751', NULL, 1);
INSERT INTO `think_city` VALUES (731, 721, 3, '铁力市', '230781', NULL, 1);
INSERT INTO `think_city` VALUES (732, 646, 2, '佳木斯市', '230800', NULL, 1);
INSERT INTO `think_city` VALUES (733, 732, 3, '向阳区', '230803', NULL, 1);
INSERT INTO `think_city` VALUES (734, 732, 3, '前进区', '230804', NULL, 1);
INSERT INTO `think_city` VALUES (735, 732, 3, '东风区', '230805', NULL, 1);
INSERT INTO `think_city` VALUES (736, 732, 3, '郊区', '230811', NULL, 1);
INSERT INTO `think_city` VALUES (737, 732, 3, '桦南县', '230822', NULL, 1);
INSERT INTO `think_city` VALUES (738, 732, 3, '桦川县', '230826', NULL, 1);
INSERT INTO `think_city` VALUES (739, 732, 3, '汤原县', '230828', NULL, 1);
INSERT INTO `think_city` VALUES (740, 732, 3, '同江市', '230881', NULL, 1);
INSERT INTO `think_city` VALUES (741, 732, 3, '富锦市', '230882', NULL, 1);
INSERT INTO `think_city` VALUES (742, 732, 3, '抚远市', '230883', NULL, 1);
INSERT INTO `think_city` VALUES (743, 646, 2, '七台河市', '230900', NULL, 1);
INSERT INTO `think_city` VALUES (744, 743, 3, '新兴区', '230902', NULL, 1);
INSERT INTO `think_city` VALUES (745, 743, 3, '桃山区', '230903', NULL, 1);
INSERT INTO `think_city` VALUES (746, 743, 3, '茄子河区', '230904', NULL, 1);
INSERT INTO `think_city` VALUES (747, 743, 3, '勃利县', '230921', NULL, 1);
INSERT INTO `think_city` VALUES (748, 646, 2, '牡丹江市', '231000', NULL, 1);
INSERT INTO `think_city` VALUES (749, 748, 3, '东安区', '231002', NULL, 1);
INSERT INTO `think_city` VALUES (750, 748, 3, '阳明区', '231003', NULL, 1);
INSERT INTO `think_city` VALUES (751, 748, 3, '爱民区', '231004', NULL, 1);
INSERT INTO `think_city` VALUES (752, 748, 3, '西安区', '231005', NULL, 1);
INSERT INTO `think_city` VALUES (753, 748, 3, '林口县', '231025', NULL, 1);
INSERT INTO `think_city` VALUES (754, 748, 3, '绥芬河市', '231081', NULL, 1);
INSERT INTO `think_city` VALUES (755, 748, 3, '海林市', '231083', NULL, 1);
INSERT INTO `think_city` VALUES (756, 748, 3, '宁安市', '231084', NULL, 1);
INSERT INTO `think_city` VALUES (757, 748, 3, '穆棱市', '231085', NULL, 1);
INSERT INTO `think_city` VALUES (758, 748, 3, '东宁市', '231086', NULL, 1);
INSERT INTO `think_city` VALUES (759, 646, 2, '黑河市', '231100', NULL, 1);
INSERT INTO `think_city` VALUES (760, 759, 3, '爱辉区', '231102', NULL, 1);
INSERT INTO `think_city` VALUES (761, 759, 3, '逊克县', '231123', NULL, 1);
INSERT INTO `think_city` VALUES (762, 759, 3, '孙吴县', '231124', NULL, 1);
INSERT INTO `think_city` VALUES (763, 759, 3, '北安市', '231181', NULL, 1);
INSERT INTO `think_city` VALUES (764, 759, 3, '五大连池市', '231182', NULL, 1);
INSERT INTO `think_city` VALUES (765, 759, 3, '嫩江市', '231183', NULL, 1);
INSERT INTO `think_city` VALUES (766, 646, 2, '绥化市', '231200', NULL, 1);
INSERT INTO `think_city` VALUES (767, 766, 3, '北林区', '231202', NULL, 1);
INSERT INTO `think_city` VALUES (768, 766, 3, '望奎县', '231221', NULL, 1);
INSERT INTO `think_city` VALUES (769, 766, 3, '兰西县', '231222', NULL, 1);
INSERT INTO `think_city` VALUES (770, 766, 3, '青冈县', '231223', NULL, 1);
INSERT INTO `think_city` VALUES (771, 766, 3, '庆安县', '231224', NULL, 1);
INSERT INTO `think_city` VALUES (772, 766, 3, '明水县', '231225', NULL, 1);
INSERT INTO `think_city` VALUES (773, 766, 3, '绥棱县', '231226', NULL, 1);
INSERT INTO `think_city` VALUES (774, 766, 3, '安达市', '231281', NULL, 1);
INSERT INTO `think_city` VALUES (775, 766, 3, '肇东市', '231282', NULL, 1);
INSERT INTO `think_city` VALUES (776, 766, 3, '海伦市', '231283', NULL, 1);
INSERT INTO `think_city` VALUES (777, 646, 2, '大兴安岭地区', '232700', NULL, 1);
INSERT INTO `think_city` VALUES (778, 777, 3, '漠河市', '232701', NULL, 1);
INSERT INTO `think_city` VALUES (779, 777, 3, '呼玛县', '232721', NULL, 1);
INSERT INTO `think_city` VALUES (780, 777, 3, '塔河县', '232722', NULL, 1);
INSERT INTO `think_city` VALUES (781, 0, 1, '上海市', '310000', NULL, 1);
INSERT INTO `think_city` VALUES (782, 781, 2, '上海市', '310100', NULL, 1);
INSERT INTO `think_city` VALUES (783, 782, 3, '黄浦区', '310101', NULL, 1);
INSERT INTO `think_city` VALUES (784, 782, 3, '徐汇区', '310104', NULL, 1);
INSERT INTO `think_city` VALUES (785, 782, 3, '长宁区', '310105', NULL, 1);
INSERT INTO `think_city` VALUES (786, 782, 3, '静安区', '310106', NULL, 1);
INSERT INTO `think_city` VALUES (787, 782, 3, '普陀区', '310107', NULL, 1);
INSERT INTO `think_city` VALUES (788, 782, 3, '虹口区', '310109', NULL, 1);
INSERT INTO `think_city` VALUES (789, 782, 3, '杨浦区', '310110', NULL, 1);
INSERT INTO `think_city` VALUES (790, 782, 3, '闵行区', '310112', NULL, 1);
INSERT INTO `think_city` VALUES (791, 782, 3, '宝山区', '310113', NULL, 1);
INSERT INTO `think_city` VALUES (792, 782, 3, '嘉定区', '310114', NULL, 1);
INSERT INTO `think_city` VALUES (793, 782, 3, '浦东新区', '310115', NULL, 1);
INSERT INTO `think_city` VALUES (794, 782, 3, '金山区', '310116', NULL, 1);
INSERT INTO `think_city` VALUES (795, 782, 3, '松江区', '310117', NULL, 1);
INSERT INTO `think_city` VALUES (796, 782, 3, '青浦区', '310118', NULL, 1);
INSERT INTO `think_city` VALUES (797, 782, 3, '奉贤区', '310120', NULL, 1);
INSERT INTO `think_city` VALUES (798, 782, 3, '崇明区', '310151', NULL, 1);
INSERT INTO `think_city` VALUES (799, 0, 1, '江苏省', '320000', NULL, 1);
INSERT INTO `think_city` VALUES (800, 799, 2, '南京市', '320100', NULL, 1);
INSERT INTO `think_city` VALUES (801, 800, 3, '玄武区', '320102', NULL, 1);
INSERT INTO `think_city` VALUES (802, 800, 3, '秦淮区', '320104', NULL, 1);
INSERT INTO `think_city` VALUES (803, 800, 3, '建邺区', '320105', NULL, 1);
INSERT INTO `think_city` VALUES (804, 800, 3, '鼓楼区', '320106', NULL, 1);
INSERT INTO `think_city` VALUES (805, 800, 3, '浦口区', '320111', NULL, 1);
INSERT INTO `think_city` VALUES (806, 800, 3, '栖霞区', '320113', NULL, 1);
INSERT INTO `think_city` VALUES (807, 800, 3, '雨花台区', '320114', NULL, 1);
INSERT INTO `think_city` VALUES (808, 800, 3, '江宁区', '320115', NULL, 1);
INSERT INTO `think_city` VALUES (809, 800, 3, '六合区', '320116', NULL, 1);
INSERT INTO `think_city` VALUES (810, 800, 3, '溧水区', '320117', NULL, 1);
INSERT INTO `think_city` VALUES (811, 800, 3, '高淳区', '320118', NULL, 1);
INSERT INTO `think_city` VALUES (812, 799, 2, '无锡市', '320200', NULL, 1);
INSERT INTO `think_city` VALUES (813, 812, 3, '锡山区', '320205', NULL, 1);
INSERT INTO `think_city` VALUES (814, 812, 3, '惠山区', '320206', NULL, 1);
INSERT INTO `think_city` VALUES (815, 812, 3, '滨湖区', '320211', NULL, 1);
INSERT INTO `think_city` VALUES (816, 812, 3, '梁溪区', '320213', NULL, 1);
INSERT INTO `think_city` VALUES (817, 812, 3, '新吴区', '320214', NULL, 1);
INSERT INTO `think_city` VALUES (818, 812, 3, '江阴市', '320281', NULL, 1);
INSERT INTO `think_city` VALUES (819, 812, 3, '宜兴市', '320282', NULL, 1);
INSERT INTO `think_city` VALUES (820, 799, 2, '徐州市', '320300', NULL, 1);
INSERT INTO `think_city` VALUES (821, 820, 3, '鼓楼区', '320302', NULL, 1);
INSERT INTO `think_city` VALUES (822, 820, 3, '云龙区', '320303', NULL, 1);
INSERT INTO `think_city` VALUES (823, 820, 3, '贾汪区', '320305', NULL, 1);
INSERT INTO `think_city` VALUES (824, 820, 3, '泉山区', '320311', NULL, 1);
INSERT INTO `think_city` VALUES (825, 820, 3, '铜山区', '320312', NULL, 1);
INSERT INTO `think_city` VALUES (826, 820, 3, '丰县', '320321', NULL, 1);
INSERT INTO `think_city` VALUES (827, 820, 3, '沛县', '320322', NULL, 1);
INSERT INTO `think_city` VALUES (828, 820, 3, '睢宁县', '320324', NULL, 1);
INSERT INTO `think_city` VALUES (829, 820, 3, '新沂市', '320381', NULL, 1);
INSERT INTO `think_city` VALUES (830, 820, 3, '邳州市', '320382', NULL, 1);
INSERT INTO `think_city` VALUES (831, 799, 2, '常州市', '320400', NULL, 1);
INSERT INTO `think_city` VALUES (832, 831, 3, '天宁区', '320402', NULL, 1);
INSERT INTO `think_city` VALUES (833, 831, 3, '钟楼区', '320404', NULL, 1);
INSERT INTO `think_city` VALUES (834, 831, 3, '新北区', '320411', NULL, 1);
INSERT INTO `think_city` VALUES (835, 831, 3, '武进区', '320412', NULL, 1);
INSERT INTO `think_city` VALUES (836, 831, 3, '金坛区', '320413', NULL, 1);
INSERT INTO `think_city` VALUES (837, 831, 3, '溧阳市', '320481', NULL, 1);
INSERT INTO `think_city` VALUES (838, 799, 2, '苏州市', '320500', NULL, 1);
INSERT INTO `think_city` VALUES (839, 838, 3, '虎丘区', '320505', NULL, 1);
INSERT INTO `think_city` VALUES (840, 838, 3, '吴中区', '320506', NULL, 1);
INSERT INTO `think_city` VALUES (841, 838, 3, '相城区', '320507', NULL, 1);
INSERT INTO `think_city` VALUES (842, 838, 3, '姑苏区', '320508', NULL, 1);
INSERT INTO `think_city` VALUES (843, 838, 3, '吴江区', '320509', NULL, 1);
INSERT INTO `think_city` VALUES (844, 838, 3, '常熟市', '320581', NULL, 1);
INSERT INTO `think_city` VALUES (845, 838, 3, '张家港市', '320582', NULL, 1);
INSERT INTO `think_city` VALUES (846, 838, 3, '昆山市', '320583', NULL, 1);
INSERT INTO `think_city` VALUES (847, 838, 3, '太仓市', '320585', NULL, 1);
INSERT INTO `think_city` VALUES (848, 799, 2, '南通市', '320600', NULL, 1);
INSERT INTO `think_city` VALUES (849, 848, 3, '崇川区', '320602', NULL, 1);
INSERT INTO `think_city` VALUES (850, 848, 3, '港闸区', '320611', NULL, 1);
INSERT INTO `think_city` VALUES (851, 848, 3, '通州区', '320612', NULL, 1);
INSERT INTO `think_city` VALUES (852, 848, 3, '如东县', '320623', NULL, 1);
INSERT INTO `think_city` VALUES (853, 848, 3, '启东市', '320681', NULL, 1);
INSERT INTO `think_city` VALUES (854, 848, 3, '如皋市', '320682', NULL, 1);
INSERT INTO `think_city` VALUES (855, 848, 3, '海门市', '320684', NULL, 1);
INSERT INTO `think_city` VALUES (856, 848, 3, '海安市', '320685', NULL, 1);
INSERT INTO `think_city` VALUES (857, 799, 2, '连云港市', '320700', NULL, 1);
INSERT INTO `think_city` VALUES (858, 857, 3, '连云区', '320703', NULL, 1);
INSERT INTO `think_city` VALUES (859, 857, 3, '海州区', '320706', NULL, 1);
INSERT INTO `think_city` VALUES (860, 857, 3, '赣榆区', '320707', NULL, 1);
INSERT INTO `think_city` VALUES (861, 857, 3, '东海县', '320722', NULL, 1);
INSERT INTO `think_city` VALUES (862, 857, 3, '灌云县', '320723', NULL, 1);
INSERT INTO `think_city` VALUES (863, 857, 3, '灌南县', '320724', NULL, 1);
INSERT INTO `think_city` VALUES (864, 799, 2, '淮安市', '320800', NULL, 1);
INSERT INTO `think_city` VALUES (865, 864, 3, '淮安区', '320803', NULL, 1);
INSERT INTO `think_city` VALUES (866, 864, 3, '淮阴区', '320804', NULL, 1);
INSERT INTO `think_city` VALUES (867, 864, 3, '清江浦区', '320812', NULL, 1);
INSERT INTO `think_city` VALUES (868, 864, 3, '洪泽区', '320813', NULL, 1);
INSERT INTO `think_city` VALUES (869, 864, 3, '涟水县', '320826', NULL, 1);
INSERT INTO `think_city` VALUES (870, 864, 3, '盱眙县', '320830', NULL, 1);
INSERT INTO `think_city` VALUES (871, 864, 3, '金湖县', '320831', NULL, 1);
INSERT INTO `think_city` VALUES (872, 799, 2, '盐城市', '320900', NULL, 1);
INSERT INTO `think_city` VALUES (873, 872, 3, '亭湖区', '320902', NULL, 1);
INSERT INTO `think_city` VALUES (874, 872, 3, '盐都区', '320903', NULL, 1);
INSERT INTO `think_city` VALUES (875, 872, 3, '大丰区', '320904', NULL, 1);
INSERT INTO `think_city` VALUES (876, 872, 3, '响水县', '320921', NULL, 1);
INSERT INTO `think_city` VALUES (877, 872, 3, '滨海县', '320922', NULL, 1);
INSERT INTO `think_city` VALUES (878, 872, 3, '阜宁县', '320923', NULL, 1);
INSERT INTO `think_city` VALUES (879, 872, 3, '射阳县', '320924', NULL, 1);
INSERT INTO `think_city` VALUES (880, 872, 3, '建湖县', '320925', NULL, 1);
INSERT INTO `think_city` VALUES (881, 872, 3, '东台市', '320981', NULL, 1);
INSERT INTO `think_city` VALUES (882, 799, 2, '扬州市', '321000', NULL, 1);
INSERT INTO `think_city` VALUES (883, 882, 3, '广陵区', '321002', NULL, 1);
INSERT INTO `think_city` VALUES (884, 882, 3, '邗江区', '321003', NULL, 1);
INSERT INTO `think_city` VALUES (885, 882, 3, '江都区', '321012', NULL, 1);
INSERT INTO `think_city` VALUES (886, 882, 3, '宝应县', '321023', NULL, 1);
INSERT INTO `think_city` VALUES (887, 882, 3, '仪征市', '321081', NULL, 1);
INSERT INTO `think_city` VALUES (888, 882, 3, '高邮市', '321084', NULL, 1);
INSERT INTO `think_city` VALUES (889, 799, 2, '镇江市', '321100', NULL, 1);
INSERT INTO `think_city` VALUES (890, 889, 3, '京口区', '321102', NULL, 1);
INSERT INTO `think_city` VALUES (891, 889, 3, '润州区', '321111', NULL, 1);
INSERT INTO `think_city` VALUES (892, 889, 3, '丹徒区', '321112', NULL, 1);
INSERT INTO `think_city` VALUES (893, 889, 3, '丹阳市', '321181', NULL, 1);
INSERT INTO `think_city` VALUES (894, 889, 3, '扬中市', '321182', NULL, 1);
INSERT INTO `think_city` VALUES (895, 889, 3, '句容市', '321183', NULL, 1);
INSERT INTO `think_city` VALUES (896, 799, 2, '泰州市', '321200', NULL, 1);
INSERT INTO `think_city` VALUES (897, 896, 3, '海陵区', '321202', NULL, 1);
INSERT INTO `think_city` VALUES (898, 896, 3, '高港区', '321203', NULL, 1);
INSERT INTO `think_city` VALUES (899, 896, 3, '姜堰区', '321204', NULL, 1);
INSERT INTO `think_city` VALUES (900, 896, 3, '兴化市', '321281', NULL, 1);
INSERT INTO `think_city` VALUES (901, 896, 3, '靖江市', '321282', NULL, 1);
INSERT INTO `think_city` VALUES (902, 896, 3, '泰兴市', '321283', NULL, 1);
INSERT INTO `think_city` VALUES (903, 799, 2, '宿迁市', '321300', NULL, 1);
INSERT INTO `think_city` VALUES (904, 903, 3, '宿城区', '321302', NULL, 1);
INSERT INTO `think_city` VALUES (905, 903, 3, '宿豫区', '321311', NULL, 1);
INSERT INTO `think_city` VALUES (906, 903, 3, '沭阳县', '321322', NULL, 1);
INSERT INTO `think_city` VALUES (907, 903, 3, '泗阳县', '321323', NULL, 1);
INSERT INTO `think_city` VALUES (908, 903, 3, '泗洪县', '321324', NULL, 1);
INSERT INTO `think_city` VALUES (909, 0, 1, '浙江省', '330000', NULL, 1);
INSERT INTO `think_city` VALUES (910, 909, 2, '杭州市', '330100', NULL, 1);
INSERT INTO `think_city` VALUES (911, 910, 3, '上城区', '330102', NULL, 1);
INSERT INTO `think_city` VALUES (912, 910, 3, '下城区', '330103', NULL, 1);
INSERT INTO `think_city` VALUES (913, 910, 3, '江干区', '330104', NULL, 1);
INSERT INTO `think_city` VALUES (914, 910, 3, '拱墅区', '330105', NULL, 1);
INSERT INTO `think_city` VALUES (915, 910, 3, '西湖区', '330106', NULL, 1);
INSERT INTO `think_city` VALUES (916, 910, 3, '滨江区', '330108', NULL, 1);
INSERT INTO `think_city` VALUES (917, 910, 3, '萧山区', '330109', NULL, 1);
INSERT INTO `think_city` VALUES (918, 910, 3, '余杭区', '330110', NULL, 1);
INSERT INTO `think_city` VALUES (919, 910, 3, '富阳区', '330111', NULL, 1);
INSERT INTO `think_city` VALUES (920, 910, 3, '临安区', '330112', NULL, 1);
INSERT INTO `think_city` VALUES (921, 910, 3, '桐庐县', '330122', NULL, 1);
INSERT INTO `think_city` VALUES (922, 910, 3, '淳安县', '330127', NULL, 1);
INSERT INTO `think_city` VALUES (923, 910, 3, '建德市', '330182', NULL, 1);
INSERT INTO `think_city` VALUES (924, 909, 2, '宁波市', '330200', NULL, 1);
INSERT INTO `think_city` VALUES (925, 924, 3, '海曙区', '330203', NULL, 1);
INSERT INTO `think_city` VALUES (926, 924, 3, '江北区', '330205', NULL, 1);
INSERT INTO `think_city` VALUES (927, 924, 3, '北仑区', '330206', NULL, 1);
INSERT INTO `think_city` VALUES (928, 924, 3, '镇海区', '330211', NULL, 1);
INSERT INTO `think_city` VALUES (929, 924, 3, '鄞州区', '330212', NULL, 1);
INSERT INTO `think_city` VALUES (930, 924, 3, '奉化区', '330213', NULL, 1);
INSERT INTO `think_city` VALUES (931, 924, 3, '象山县', '330225', NULL, 1);
INSERT INTO `think_city` VALUES (932, 924, 3, '宁海县', '330226', NULL, 1);
INSERT INTO `think_city` VALUES (933, 924, 3, '余姚市', '330281', NULL, 1);
INSERT INTO `think_city` VALUES (934, 924, 3, '慈溪市', '330282', NULL, 1);
INSERT INTO `think_city` VALUES (935, 909, 2, '温州市', '330300', NULL, 1);
INSERT INTO `think_city` VALUES (936, 935, 3, '鹿城区', '330302', NULL, 1);
INSERT INTO `think_city` VALUES (937, 935, 3, '龙湾区', '330303', NULL, 1);
INSERT INTO `think_city` VALUES (938, 935, 3, '瓯海区', '330304', NULL, 1);
INSERT INTO `think_city` VALUES (939, 935, 3, '洞头区', '330305', NULL, 1);
INSERT INTO `think_city` VALUES (940, 935, 3, '永嘉县', '330324', NULL, 1);
INSERT INTO `think_city` VALUES (941, 935, 3, '平阳县', '330326', NULL, 1);
INSERT INTO `think_city` VALUES (942, 935, 3, '苍南县', '330327', NULL, 1);
INSERT INTO `think_city` VALUES (943, 935, 3, '文成县', '330328', NULL, 1);
INSERT INTO `think_city` VALUES (944, 935, 3, '泰顺县', '330329', NULL, 1);
INSERT INTO `think_city` VALUES (945, 935, 3, '瑞安市', '330381', NULL, 1);
INSERT INTO `think_city` VALUES (946, 935, 3, '乐清市', '330382', NULL, 1);
INSERT INTO `think_city` VALUES (947, 935, 3, '龙港市', '330383', NULL, 1);
INSERT INTO `think_city` VALUES (948, 909, 2, '嘉兴市', '330400', NULL, 1);
INSERT INTO `think_city` VALUES (949, 948, 3, '南湖区', '330402', NULL, 1);
INSERT INTO `think_city` VALUES (950, 948, 3, '秀洲区', '330411', NULL, 1);
INSERT INTO `think_city` VALUES (951, 948, 3, '嘉善县', '330421', NULL, 1);
INSERT INTO `think_city` VALUES (952, 948, 3, '海盐县', '330424', NULL, 1);
INSERT INTO `think_city` VALUES (953, 948, 3, '海宁市', '330481', NULL, 1);
INSERT INTO `think_city` VALUES (954, 948, 3, '平湖市', '330482', NULL, 1);
INSERT INTO `think_city` VALUES (955, 948, 3, '桐乡市', '330483', NULL, 1);
INSERT INTO `think_city` VALUES (956, 909, 2, '湖州市', '330500', NULL, 1);
INSERT INTO `think_city` VALUES (957, 956, 3, '吴兴区', '330502', NULL, 1);
INSERT INTO `think_city` VALUES (958, 956, 3, '南浔区', '330503', NULL, 1);
INSERT INTO `think_city` VALUES (959, 956, 3, '德清县', '330521', NULL, 1);
INSERT INTO `think_city` VALUES (960, 956, 3, '长兴县', '330522', NULL, 1);
INSERT INTO `think_city` VALUES (961, 956, 3, '安吉县', '330523', NULL, 1);
INSERT INTO `think_city` VALUES (962, 909, 2, '绍兴市', '330600', NULL, 1);
INSERT INTO `think_city` VALUES (963, 962, 3, '越城区', '330602', NULL, 1);
INSERT INTO `think_city` VALUES (964, 962, 3, '柯桥区', '330603', NULL, 1);
INSERT INTO `think_city` VALUES (965, 962, 3, '上虞区', '330604', NULL, 1);
INSERT INTO `think_city` VALUES (966, 962, 3, '新昌县', '330624', NULL, 1);
INSERT INTO `think_city` VALUES (967, 962, 3, '诸暨市', '330681', NULL, 1);
INSERT INTO `think_city` VALUES (968, 962, 3, '嵊州市', '330683', NULL, 1);
INSERT INTO `think_city` VALUES (969, 909, 2, '金华市', '330700', NULL, 1);
INSERT INTO `think_city` VALUES (970, 969, 3, '婺城区', '330702', NULL, 1);
INSERT INTO `think_city` VALUES (971, 969, 3, '金东区', '330703', NULL, 1);
INSERT INTO `think_city` VALUES (972, 969, 3, '武义县', '330723', NULL, 1);
INSERT INTO `think_city` VALUES (973, 969, 3, '浦江县', '330726', NULL, 1);
INSERT INTO `think_city` VALUES (974, 969, 3, '磐安县', '330727', NULL, 1);
INSERT INTO `think_city` VALUES (975, 969, 3, '兰溪市', '330781', NULL, 1);
INSERT INTO `think_city` VALUES (976, 969, 3, '义乌市', '330782', NULL, 1);
INSERT INTO `think_city` VALUES (977, 969, 3, '东阳市', '330783', NULL, 1);
INSERT INTO `think_city` VALUES (978, 969, 3, '永康市', '330784', NULL, 1);
INSERT INTO `think_city` VALUES (979, 909, 2, '衢州市', '330800', NULL, 1);
INSERT INTO `think_city` VALUES (980, 979, 3, '柯城区', '330802', NULL, 1);
INSERT INTO `think_city` VALUES (981, 979, 3, '衢江区', '330803', NULL, 1);
INSERT INTO `think_city` VALUES (982, 979, 3, '常山县', '330822', NULL, 1);
INSERT INTO `think_city` VALUES (983, 979, 3, '开化县', '330824', NULL, 1);
INSERT INTO `think_city` VALUES (984, 979, 3, '龙游县', '330825', NULL, 1);
INSERT INTO `think_city` VALUES (985, 979, 3, '江山市', '330881', NULL, 1);
INSERT INTO `think_city` VALUES (986, 909, 2, '舟山市', '330900', NULL, 1);
INSERT INTO `think_city` VALUES (987, 986, 3, '定海区', '330902', NULL, 1);
INSERT INTO `think_city` VALUES (988, 986, 3, '普陀区', '330903', NULL, 1);
INSERT INTO `think_city` VALUES (989, 986, 3, '岱山县', '330921', NULL, 1);
INSERT INTO `think_city` VALUES (990, 986, 3, '嵊泗县', '330922', NULL, 1);
INSERT INTO `think_city` VALUES (991, 909, 2, '台州市', '331000', NULL, 1);
INSERT INTO `think_city` VALUES (992, 991, 3, '椒江区', '331002', NULL, 1);
INSERT INTO `think_city` VALUES (993, 991, 3, '黄岩区', '331003', NULL, 1);
INSERT INTO `think_city` VALUES (994, 991, 3, '路桥区', '331004', NULL, 1);
INSERT INTO `think_city` VALUES (995, 991, 3, '三门县', '331022', NULL, 1);
INSERT INTO `think_city` VALUES (996, 991, 3, '天台县', '331023', NULL, 1);
INSERT INTO `think_city` VALUES (997, 991, 3, '仙居县', '331024', NULL, 1);
INSERT INTO `think_city` VALUES (998, 991, 3, '温岭市', '331081', NULL, 1);
INSERT INTO `think_city` VALUES (999, 991, 3, '临海市', '331082', NULL, 1);
INSERT INTO `think_city` VALUES (1000, 991, 3, '玉环市', '331083', NULL, 1);
INSERT INTO `think_city` VALUES (1001, 909, 2, '丽水市', '331100', NULL, 1);
INSERT INTO `think_city` VALUES (1002, 1001, 3, '莲都区', '331102', NULL, 1);
INSERT INTO `think_city` VALUES (1003, 1001, 3, '青田县', '331121', NULL, 1);
INSERT INTO `think_city` VALUES (1004, 1001, 3, '缙云县', '331122', NULL, 1);
INSERT INTO `think_city` VALUES (1005, 1001, 3, '遂昌县', '331123', NULL, 1);
INSERT INTO `think_city` VALUES (1006, 1001, 3, '松阳县', '331124', NULL, 1);
INSERT INTO `think_city` VALUES (1007, 1001, 3, '云和县', '331125', NULL, 1);
INSERT INTO `think_city` VALUES (1008, 1001, 3, '庆元县', '331126', NULL, 1);
INSERT INTO `think_city` VALUES (1009, 1001, 3, '景宁畲族自治县', '331127', NULL, 1);
INSERT INTO `think_city` VALUES (1010, 1001, 3, '龙泉市', '331181', NULL, 1);
INSERT INTO `think_city` VALUES (1011, 0, 1, '安徽省', '340000', NULL, 1);
INSERT INTO `think_city` VALUES (1012, 1011, 2, '合肥市', '340100', NULL, 1);
INSERT INTO `think_city` VALUES (1013, 1012, 3, '瑶海区', '340102', NULL, 1);
INSERT INTO `think_city` VALUES (1014, 1012, 3, '庐阳区', '340103', NULL, 1);
INSERT INTO `think_city` VALUES (1015, 1012, 3, '蜀山区', '340104', NULL, 1);
INSERT INTO `think_city` VALUES (1016, 1012, 3, '包河区', '340111', NULL, 1);
INSERT INTO `think_city` VALUES (1017, 1012, 3, '长丰县', '340121', NULL, 1);
INSERT INTO `think_city` VALUES (1018, 1012, 3, '肥东县', '340122', NULL, 1);
INSERT INTO `think_city` VALUES (1019, 1012, 3, '肥西县', '340123', NULL, 1);
INSERT INTO `think_city` VALUES (1020, 1012, 3, '庐江县', '340124', NULL, 1);
INSERT INTO `think_city` VALUES (1021, 1012, 3, '巢湖市', '340181', NULL, 1);
INSERT INTO `think_city` VALUES (1022, 1011, 2, '芜湖市', '340200', NULL, 1);
INSERT INTO `think_city` VALUES (1023, 1022, 3, '镜湖区', '340202', NULL, 1);
INSERT INTO `think_city` VALUES (1024, 1022, 3, '鸠江区', '340207', NULL, 1);
INSERT INTO `think_city` VALUES (1025, 1022, 3, '弋江区', '340209', NULL, 1);
INSERT INTO `think_city` VALUES (1026, 1022, 3, '湾沚区', '340210', NULL, 1);
INSERT INTO `think_city` VALUES (1027, 1022, 3, '繁昌区', '340211', NULL, 1);
INSERT INTO `think_city` VALUES (1028, 1022, 3, '南陵县', '340223', NULL, 1);
INSERT INTO `think_city` VALUES (1029, 1022, 3, '无为市', '340281', NULL, 1);
INSERT INTO `think_city` VALUES (1030, 1011, 2, '蚌埠市', '340300', NULL, 1);
INSERT INTO `think_city` VALUES (1031, 1030, 3, '龙子湖区', '340302', NULL, 1);
INSERT INTO `think_city` VALUES (1032, 1030, 3, '蚌山区', '340303', NULL, 1);
INSERT INTO `think_city` VALUES (1033, 1030, 3, '禹会区', '340304', NULL, 1);
INSERT INTO `think_city` VALUES (1034, 1030, 3, '淮上区', '340311', NULL, 1);
INSERT INTO `think_city` VALUES (1035, 1030, 3, '怀远县', '340321', NULL, 1);
INSERT INTO `think_city` VALUES (1036, 1030, 3, '五河县', '340322', NULL, 1);
INSERT INTO `think_city` VALUES (1037, 1030, 3, '固镇县', '340323', NULL, 1);
INSERT INTO `think_city` VALUES (1038, 1011, 2, '淮南市', '340400', NULL, 1);
INSERT INTO `think_city` VALUES (1039, 1038, 3, '大通区', '340402', NULL, 1);
INSERT INTO `think_city` VALUES (1040, 1038, 3, '田家庵区', '340403', NULL, 1);
INSERT INTO `think_city` VALUES (1041, 1038, 3, '谢家集区', '340404', NULL, 1);
INSERT INTO `think_city` VALUES (1042, 1038, 3, '八公山区', '340405', NULL, 1);
INSERT INTO `think_city` VALUES (1043, 1038, 3, '潘集区', '340406', NULL, 1);
INSERT INTO `think_city` VALUES (1044, 1038, 3, '凤台县', '340421', NULL, 1);
INSERT INTO `think_city` VALUES (1045, 1038, 3, '寿县', '340422', NULL, 1);
INSERT INTO `think_city` VALUES (1046, 1011, 2, '马鞍山市', '340500', NULL, 1);
INSERT INTO `think_city` VALUES (1047, 1046, 3, '花山区', '340503', NULL, 1);
INSERT INTO `think_city` VALUES (1048, 1046, 3, '雨山区', '340504', NULL, 1);
INSERT INTO `think_city` VALUES (1049, 1046, 3, '博望区', '340506', NULL, 1);
INSERT INTO `think_city` VALUES (1050, 1046, 3, '当涂县', '340521', NULL, 1);
INSERT INTO `think_city` VALUES (1051, 1046, 3, '含山县', '340522', NULL, 1);
INSERT INTO `think_city` VALUES (1052, 1046, 3, '和县', '340523', NULL, 1);
INSERT INTO `think_city` VALUES (1053, 1011, 2, '淮北市', '340600', NULL, 1);
INSERT INTO `think_city` VALUES (1054, 1053, 3, '杜集区', '340602', NULL, 1);
INSERT INTO `think_city` VALUES (1055, 1053, 3, '相山区', '340603', NULL, 1);
INSERT INTO `think_city` VALUES (1056, 1053, 3, '烈山区', '340604', NULL, 1);
INSERT INTO `think_city` VALUES (1057, 1053, 3, '濉溪县', '340621', NULL, 1);
INSERT INTO `think_city` VALUES (1058, 1011, 2, '铜陵市', '340700', NULL, 1);
INSERT INTO `think_city` VALUES (1059, 1058, 3, '铜官区', '340705', NULL, 1);
INSERT INTO `think_city` VALUES (1060, 1058, 3, '义安区', '340706', NULL, 1);
INSERT INTO `think_city` VALUES (1061, 1058, 3, '郊区', '340711', NULL, 1);
INSERT INTO `think_city` VALUES (1062, 1058, 3, '枞阳县', '340722', NULL, 1);
INSERT INTO `think_city` VALUES (1063, 1011, 2, '安庆市', '340800', NULL, 1);
INSERT INTO `think_city` VALUES (1064, 1063, 3, '迎江区', '340802', NULL, 1);
INSERT INTO `think_city` VALUES (1065, 1063, 3, '大观区', '340803', NULL, 1);
INSERT INTO `think_city` VALUES (1066, 1063, 3, '宜秀区', '340811', NULL, 1);
INSERT INTO `think_city` VALUES (1067, 1063, 3, '怀宁县', '340822', NULL, 1);
INSERT INTO `think_city` VALUES (1068, 1063, 3, '太湖县', '340825', NULL, 1);
INSERT INTO `think_city` VALUES (1069, 1063, 3, '宿松县', '340826', NULL, 1);
INSERT INTO `think_city` VALUES (1070, 1063, 3, '望江县', '340827', NULL, 1);
INSERT INTO `think_city` VALUES (1071, 1063, 3, '岳西县', '340828', NULL, 1);
INSERT INTO `think_city` VALUES (1072, 1063, 3, '桐城市', '340881', NULL, 1);
INSERT INTO `think_city` VALUES (1073, 1063, 3, '潜山市', '340882', NULL, 1);
INSERT INTO `think_city` VALUES (1074, 1011, 2, '黄山市', '341000', NULL, 1);
INSERT INTO `think_city` VALUES (1075, 1074, 3, '屯溪区', '341002', NULL, 1);
INSERT INTO `think_city` VALUES (1076, 1074, 3, '黄山区', '341003', NULL, 1);
INSERT INTO `think_city` VALUES (1077, 1074, 3, '徽州区', '341004', NULL, 1);
INSERT INTO `think_city` VALUES (1078, 1074, 3, '歙县', '341021', NULL, 1);
INSERT INTO `think_city` VALUES (1079, 1074, 3, '休宁县', '341022', NULL, 1);
INSERT INTO `think_city` VALUES (1080, 1074, 3, '黟县', '341023', NULL, 1);
INSERT INTO `think_city` VALUES (1081, 1074, 3, '祁门县', '341024', NULL, 1);
INSERT INTO `think_city` VALUES (1082, 1011, 2, '滁州市', '341100', NULL, 1);
INSERT INTO `think_city` VALUES (1083, 1082, 3, '琅琊区', '341102', NULL, 1);
INSERT INTO `think_city` VALUES (1084, 1082, 3, '南谯区', '341103', NULL, 1);
INSERT INTO `think_city` VALUES (1085, 1082, 3, '来安县', '341122', NULL, 1);
INSERT INTO `think_city` VALUES (1086, 1082, 3, '全椒县', '341124', NULL, 1);
INSERT INTO `think_city` VALUES (1087, 1082, 3, '定远县', '341125', NULL, 1);
INSERT INTO `think_city` VALUES (1088, 1082, 3, '凤阳县', '341126', NULL, 1);
INSERT INTO `think_city` VALUES (1089, 1082, 3, '天长市', '341181', NULL, 1);
INSERT INTO `think_city` VALUES (1090, 1082, 3, '明光市', '341182', NULL, 1);
INSERT INTO `think_city` VALUES (1091, 1011, 2, '阜阳市', '341200', NULL, 1);
INSERT INTO `think_city` VALUES (1092, 1091, 3, '颍州区', '341202', NULL, 1);
INSERT INTO `think_city` VALUES (1093, 1091, 3, '颍东区', '341203', NULL, 1);
INSERT INTO `think_city` VALUES (1094, 1091, 3, '颍泉区', '341204', NULL, 1);
INSERT INTO `think_city` VALUES (1095, 1091, 3, '临泉县', '341221', NULL, 1);
INSERT INTO `think_city` VALUES (1096, 1091, 3, '太和县', '341222', NULL, 1);
INSERT INTO `think_city` VALUES (1097, 1091, 3, '阜南县', '341225', NULL, 1);
INSERT INTO `think_city` VALUES (1098, 1091, 3, '颍上县', '341226', NULL, 1);
INSERT INTO `think_city` VALUES (1099, 1091, 3, '界首市', '341282', NULL, 1);
INSERT INTO `think_city` VALUES (1100, 1011, 2, '宿州市', '341300', NULL, 1);
INSERT INTO `think_city` VALUES (1101, 1100, 3, '埇桥区', '341302', NULL, 1);
INSERT INTO `think_city` VALUES (1102, 1100, 3, '砀山县', '341321', NULL, 1);
INSERT INTO `think_city` VALUES (1103, 1100, 3, '萧县', '341322', NULL, 1);
INSERT INTO `think_city` VALUES (1104, 1100, 3, '灵璧县', '341323', NULL, 1);
INSERT INTO `think_city` VALUES (1105, 1100, 3, '泗县', '341324', NULL, 1);
INSERT INTO `think_city` VALUES (1106, 1011, 2, '六安市', '341500', NULL, 1);
INSERT INTO `think_city` VALUES (1107, 1106, 3, '金安区', '341502', NULL, 1);
INSERT INTO `think_city` VALUES (1108, 1106, 3, '裕安区', '341503', NULL, 1);
INSERT INTO `think_city` VALUES (1109, 1106, 3, '叶集区', '341504', NULL, 1);
INSERT INTO `think_city` VALUES (1110, 1106, 3, '霍邱县', '341522', NULL, 1);
INSERT INTO `think_city` VALUES (1111, 1106, 3, '舒城县', '341523', NULL, 1);
INSERT INTO `think_city` VALUES (1112, 1106, 3, '金寨县', '341524', NULL, 1);
INSERT INTO `think_city` VALUES (1113, 1106, 3, '霍山县', '341525', NULL, 1);
INSERT INTO `think_city` VALUES (1114, 1011, 2, '亳州市', '341600', NULL, 1);
INSERT INTO `think_city` VALUES (1115, 1114, 3, '谯城区', '341602', NULL, 1);
INSERT INTO `think_city` VALUES (1116, 1114, 3, '涡阳县', '341621', NULL, 1);
INSERT INTO `think_city` VALUES (1117, 1114, 3, '蒙城县', '341622', NULL, 1);
INSERT INTO `think_city` VALUES (1118, 1114, 3, '利辛县', '341623', NULL, 1);
INSERT INTO `think_city` VALUES (1119, 1011, 2, '池州市', '341700', NULL, 1);
INSERT INTO `think_city` VALUES (1120, 1119, 3, '贵池区', '341702', NULL, 1);
INSERT INTO `think_city` VALUES (1121, 1119, 3, '东至县', '341721', NULL, 1);
INSERT INTO `think_city` VALUES (1122, 1119, 3, '石台县', '341722', NULL, 1);
INSERT INTO `think_city` VALUES (1123, 1119, 3, '青阳县', '341723', NULL, 1);
INSERT INTO `think_city` VALUES (1124, 1011, 2, '宣城市', '341800', NULL, 1);
INSERT INTO `think_city` VALUES (1125, 1124, 3, '宣州区', '341802', NULL, 1);
INSERT INTO `think_city` VALUES (1126, 1124, 3, '郎溪县', '341821', NULL, 1);
INSERT INTO `think_city` VALUES (1127, 1124, 3, '泾县', '341823', NULL, 1);
INSERT INTO `think_city` VALUES (1128, 1124, 3, '绩溪县', '341824', NULL, 1);
INSERT INTO `think_city` VALUES (1129, 1124, 3, '旌德县', '341825', NULL, 1);
INSERT INTO `think_city` VALUES (1130, 1124, 3, '宁国市', '341881', NULL, 1);
INSERT INTO `think_city` VALUES (1131, 1124, 3, '广德市', '341882', NULL, 1);
INSERT INTO `think_city` VALUES (1132, 0, 1, '福建省', '350000', NULL, 1);
INSERT INTO `think_city` VALUES (1133, 1132, 2, '福州市', '350100', NULL, 1);
INSERT INTO `think_city` VALUES (1134, 1133, 3, '鼓楼区', '350102', NULL, 1);
INSERT INTO `think_city` VALUES (1135, 1133, 3, '台江区', '350103', NULL, 1);
INSERT INTO `think_city` VALUES (1136, 1133, 3, '仓山区', '350104', NULL, 1);
INSERT INTO `think_city` VALUES (1137, 1133, 3, '马尾区', '350105', NULL, 1);
INSERT INTO `think_city` VALUES (1138, 1133, 3, '晋安区', '350111', NULL, 1);
INSERT INTO `think_city` VALUES (1139, 1133, 3, '长乐区', '350112', NULL, 1);
INSERT INTO `think_city` VALUES (1140, 1133, 3, '闽侯县', '350121', NULL, 1);
INSERT INTO `think_city` VALUES (1141, 1133, 3, '连江县', '350122', NULL, 1);
INSERT INTO `think_city` VALUES (1142, 1133, 3, '罗源县', '350123', NULL, 1);
INSERT INTO `think_city` VALUES (1143, 1133, 3, '闽清县', '350124', NULL, 1);
INSERT INTO `think_city` VALUES (1144, 1133, 3, '永泰县', '350125', NULL, 1);
INSERT INTO `think_city` VALUES (1145, 1133, 3, '平潭县', '350128', NULL, 1);
INSERT INTO `think_city` VALUES (1146, 1133, 3, '福清市', '350181', NULL, 1);
INSERT INTO `think_city` VALUES (1147, 1132, 2, '厦门市', '350200', NULL, 1);
INSERT INTO `think_city` VALUES (1148, 1147, 3, '思明区', '350203', NULL, 1);
INSERT INTO `think_city` VALUES (1149, 1147, 3, '海沧区', '350205', NULL, 1);
INSERT INTO `think_city` VALUES (1150, 1147, 3, '湖里区', '350206', NULL, 1);
INSERT INTO `think_city` VALUES (1151, 1147, 3, '集美区', '350211', NULL, 1);
INSERT INTO `think_city` VALUES (1152, 1147, 3, '同安区', '350212', NULL, 1);
INSERT INTO `think_city` VALUES (1153, 1147, 3, '翔安区', '350213', NULL, 1);
INSERT INTO `think_city` VALUES (1154, 1132, 2, '莆田市', '350300', NULL, 1);
INSERT INTO `think_city` VALUES (1155, 1154, 3, '城厢区', '350302', NULL, 1);
INSERT INTO `think_city` VALUES (1156, 1154, 3, '涵江区', '350303', NULL, 1);
INSERT INTO `think_city` VALUES (1157, 1154, 3, '荔城区', '350304', NULL, 1);
INSERT INTO `think_city` VALUES (1158, 1154, 3, '秀屿区', '350305', NULL, 1);
INSERT INTO `think_city` VALUES (1159, 1154, 3, '仙游县', '350322', NULL, 1);
INSERT INTO `think_city` VALUES (1160, 1132, 2, '三明市', '350400', NULL, 1);
INSERT INTO `think_city` VALUES (1668, 0, 1, '湖北省', '420000', NULL, 1);
INSERT INTO `think_city` VALUES (1669, 1668, 2, '武汉市', '420100', NULL, 1);
INSERT INTO `think_city` VALUES (1670, 1669, 3, '江岸区', '420102', NULL, 1);
INSERT INTO `think_city` VALUES (1671, 1669, 3, '江汉区', '420103', NULL, 1);
INSERT INTO `think_city` VALUES (1672, 1669, 3, '硚口区', '420104', NULL, 1);
INSERT INTO `think_city` VALUES (1673, 1669, 3, '汉阳区', '420105', NULL, 1);
INSERT INTO `think_city` VALUES (1674, 1669, 3, '武昌区', '420106', NULL, 1);
INSERT INTO `think_city` VALUES (1675, 1669, 3, '青山区', '420107', NULL, 1);
INSERT INTO `think_city` VALUES (1676, 1669, 3, '洪山区', '420111', NULL, 1);
INSERT INTO `think_city` VALUES (1677, 1669, 3, '东西湖区', '420112', NULL, 1);
INSERT INTO `think_city` VALUES (1678, 1669, 3, '汉南区', '420113', NULL, 1);
INSERT INTO `think_city` VALUES (1679, 1669, 3, '蔡甸区', '420114', NULL, 1);
INSERT INTO `think_city` VALUES (1680, 1669, 3, '江夏区', '420115', NULL, 1);
INSERT INTO `think_city` VALUES (1681, 1669, 3, '黄陂区', '420116', NULL, 1);
INSERT INTO `think_city` VALUES (1682, 1669, 3, '新洲区', '420117', NULL, 1);
INSERT INTO `think_city` VALUES (1683, 1668, 2, '黄石市', '420200', NULL, 1);
INSERT INTO `think_city` VALUES (1684, 1683, 3, '黄石港区', '420202', NULL, 1);
INSERT INTO `think_city` VALUES (1685, 1683, 3, '西塞山区', '420203', NULL, 1);
INSERT INTO `think_city` VALUES (1686, 1683, 3, '下陆区', '420204', NULL, 1);
INSERT INTO `think_city` VALUES (1687, 1683, 3, '铁山区', '420205', NULL, 1);
INSERT INTO `think_city` VALUES (1688, 1683, 3, '阳新县', '420222', NULL, 1);
INSERT INTO `think_city` VALUES (1689, 1683, 3, '大冶市', '420281', NULL, 1);
INSERT INTO `think_city` VALUES (1690, 1668, 2, '十堰市', '420300', NULL, 1);
INSERT INTO `think_city` VALUES (1691, 1690, 3, '茅箭区', '420302', NULL, 1);
INSERT INTO `think_city` VALUES (1692, 1690, 3, '张湾区', '420303', NULL, 1);
INSERT INTO `think_city` VALUES (1693, 1690, 3, '郧阳区', '420304', NULL, 1);
INSERT INTO `think_city` VALUES (1694, 1690, 3, '郧西县', '420322', NULL, 1);
INSERT INTO `think_city` VALUES (1695, 1690, 3, '竹山县', '420323', NULL, 1);
INSERT INTO `think_city` VALUES (1696, 1690, 3, '竹溪县', '420324', NULL, 1);
INSERT INTO `think_city` VALUES (1697, 1690, 3, '房县', '420325', NULL, 1);
INSERT INTO `think_city` VALUES (1698, 1690, 3, '丹江口市', '420381', NULL, 1);
INSERT INTO `think_city` VALUES (1699, 1668, 2, '宜昌市', '420500', NULL, 1);
INSERT INTO `think_city` VALUES (1700, 1699, 3, '西陵区', '420502', NULL, 1);
INSERT INTO `think_city` VALUES (1701, 1699, 3, '伍家岗区', '420503', NULL, 1);
INSERT INTO `think_city` VALUES (1702, 1699, 3, '点军区', '420504', NULL, 1);
INSERT INTO `think_city` VALUES (1703, 1699, 3, '猇亭区', '420505', NULL, 1);
INSERT INTO `think_city` VALUES (1704, 1699, 3, '夷陵区', '420506', NULL, 1);
INSERT INTO `think_city` VALUES (1705, 1699, 3, '远安县', '420525', NULL, 1);
INSERT INTO `think_city` VALUES (1706, 1699, 3, '兴山县', '420526', NULL, 1);
INSERT INTO `think_city` VALUES (1707, 1699, 3, '秭归县', '420527', NULL, 1);
INSERT INTO `think_city` VALUES (1708, 1699, 3, '长阳土家族自治县', '420528', NULL, 1);
INSERT INTO `think_city` VALUES (1709, 1699, 3, '五峰土家族自治县', '420529', NULL, 1);
INSERT INTO `think_city` VALUES (1710, 1699, 3, '宜都市', '420581', NULL, 1);
INSERT INTO `think_city` VALUES (1711, 1699, 3, '当阳市', '420582', NULL, 1);
INSERT INTO `think_city` VALUES (1712, 1699, 3, '枝江市', '420583', NULL, 1);
INSERT INTO `think_city` VALUES (1713, 1668, 2, '襄阳市', '420600', NULL, 1);
INSERT INTO `think_city` VALUES (1714, 1713, 3, '襄城区', '420602', NULL, 1);
INSERT INTO `think_city` VALUES (1715, 1713, 3, '樊城区', '420606', NULL, 1);
INSERT INTO `think_city` VALUES (1716, 1713, 3, '襄州区', '420607', NULL, 1);
INSERT INTO `think_city` VALUES (1717, 1713, 3, '南漳县', '420624', NULL, 1);
INSERT INTO `think_city` VALUES (1718, 1713, 3, '谷城县', '420625', NULL, 1);
INSERT INTO `think_city` VALUES (1719, 1713, 3, '保康县', '420626', NULL, 1);
INSERT INTO `think_city` VALUES (1720, 1713, 3, '老河口市', '420682', NULL, 1);
INSERT INTO `think_city` VALUES (1721, 1713, 3, '枣阳市', '420683', NULL, 1);
INSERT INTO `think_city` VALUES (1722, 1713, 3, '宜城市', '420684', NULL, 1);
INSERT INTO `think_city` VALUES (1723, 1668, 2, '鄂州市', '420700', NULL, 1);
INSERT INTO `think_city` VALUES (1724, 1723, 3, '梁子湖区', '420702', NULL, 1);
INSERT INTO `think_city` VALUES (1725, 1723, 3, '华容区', '420703', NULL, 1);
INSERT INTO `think_city` VALUES (1726, 1723, 3, '鄂城区', '420704', NULL, 1);
INSERT INTO `think_city` VALUES (1727, 1668, 2, '荆门市', '420800', NULL, 1);
INSERT INTO `think_city` VALUES (1728, 1727, 3, '东宝区', '420802', NULL, 1);
INSERT INTO `think_city` VALUES (1729, 1727, 3, '掇刀区', '420804', NULL, 1);
INSERT INTO `think_city` VALUES (1730, 1727, 3, '沙洋县', '420822', NULL, 1);
INSERT INTO `think_city` VALUES (1731, 1727, 3, '钟祥市', '420881', NULL, 1);
INSERT INTO `think_city` VALUES (1732, 1727, 3, '京山市', '420882', NULL, 1);
INSERT INTO `think_city` VALUES (1733, 1668, 2, '孝感市', '420900', NULL, 1);
INSERT INTO `think_city` VALUES (1734, 1733, 3, '孝南区', '420902', NULL, 1);
INSERT INTO `think_city` VALUES (1735, 1733, 3, '孝昌县', '420921', NULL, 1);
INSERT INTO `think_city` VALUES (1736, 1733, 3, '大悟县', '420922', NULL, 1);
INSERT INTO `think_city` VALUES (1737, 1733, 3, '云梦县', '420923', NULL, 1);
INSERT INTO `think_city` VALUES (1738, 1733, 3, '应城市', '420981', NULL, 1);
INSERT INTO `think_city` VALUES (1739, 1733, 3, '安陆市', '420982', NULL, 1);
INSERT INTO `think_city` VALUES (1740, 1733, 3, '汉川市', '420984', NULL, 1);
INSERT INTO `think_city` VALUES (1741, 1668, 2, '荆州市', '421000', NULL, 1);
INSERT INTO `think_city` VALUES (1742, 1741, 3, '沙市区', '421002', NULL, 1);
INSERT INTO `think_city` VALUES (1743, 1741, 3, '荆州区', '421003', NULL, 1);
INSERT INTO `think_city` VALUES (1744, 1741, 3, '公安县', '421022', NULL, 1);
INSERT INTO `think_city` VALUES (1745, 1741, 3, '监利县', '421023', NULL, 1);
INSERT INTO `think_city` VALUES (1746, 1741, 3, '江陵县', '421024', NULL, 1);
INSERT INTO `think_city` VALUES (1747, 1741, 3, '石首市', '421081', NULL, 1);
INSERT INTO `think_city` VALUES (1748, 1741, 3, '洪湖市', '421083', NULL, 1);
INSERT INTO `think_city` VALUES (1749, 1741, 3, '松滋市', '421087', NULL, 1);
INSERT INTO `think_city` VALUES (1750, 1668, 2, '黄冈市', '421100', NULL, 1);
INSERT INTO `think_city` VALUES (1751, 1750, 3, '黄州区', '421102', NULL, 1);
INSERT INTO `think_city` VALUES (1752, 1750, 3, '团风县', '421121', NULL, 1);
INSERT INTO `think_city` VALUES (1753, 1750, 3, '红安县', '421122', NULL, 1);
INSERT INTO `think_city` VALUES (1754, 1750, 3, '罗田县', '421123', NULL, 1);
INSERT INTO `think_city` VALUES (1755, 1750, 3, '英山县', '421124', NULL, 1);
INSERT INTO `think_city` VALUES (1756, 1750, 3, '浠水县', '421125', NULL, 1);
INSERT INTO `think_city` VALUES (1757, 1750, 3, '蕲春县', '421126', NULL, 1);
INSERT INTO `think_city` VALUES (1758, 1750, 3, '黄梅县', '421127', NULL, 1);
INSERT INTO `think_city` VALUES (1759, 1750, 3, '麻城市', '421181', NULL, 1);
INSERT INTO `think_city` VALUES (1760, 1750, 3, '武穴市', '421182', NULL, 1);
INSERT INTO `think_city` VALUES (1761, 1668, 2, '咸宁市', '421200', NULL, 1);
INSERT INTO `think_city` VALUES (1762, 1761, 3, '咸安区', '421202', NULL, 1);
INSERT INTO `think_city` VALUES (1763, 1761, 3, '嘉鱼县', '421221', NULL, 1);
INSERT INTO `think_city` VALUES (1764, 1761, 3, '通城县', '421222', NULL, 1);
INSERT INTO `think_city` VALUES (1765, 1761, 3, '崇阳县', '421223', NULL, 1);
INSERT INTO `think_city` VALUES (1766, 1761, 3, '通山县', '421224', NULL, 1);
INSERT INTO `think_city` VALUES (1767, 1761, 3, '赤壁市', '421281', NULL, 1);
INSERT INTO `think_city` VALUES (1768, 1668, 2, '随州市', '421300', NULL, 1);
INSERT INTO `think_city` VALUES (1769, 1768, 3, '曾都区', '421303', NULL, 1);
INSERT INTO `think_city` VALUES (1770, 1768, 3, '随县', '421321', NULL, 1);
INSERT INTO `think_city` VALUES (1771, 1768, 3, '广水市', '421381', NULL, 1);
INSERT INTO `think_city` VALUES (1772, 1668, 2, '恩施土家族苗族自治州', '422800', NULL, 1);
INSERT INTO `think_city` VALUES (1773, 1772, 3, '恩施市', '422801', NULL, 1);
INSERT INTO `think_city` VALUES (1774, 1772, 3, '利川市', '422802', NULL, 1);
INSERT INTO `think_city` VALUES (1775, 1772, 3, '建始县', '422822', NULL, 1);
INSERT INTO `think_city` VALUES (1776, 1772, 3, '巴东县', '422823', NULL, 1);
INSERT INTO `think_city` VALUES (1777, 1772, 3, '宣恩县', '422825', NULL, 1);
INSERT INTO `think_city` VALUES (1778, 1772, 3, '咸丰县', '422826', NULL, 1);
INSERT INTO `think_city` VALUES (1779, 1772, 3, '来凤县', '422827', NULL, 1);
INSERT INTO `think_city` VALUES (1780, 1772, 3, '鹤峰县', '422828', NULL, 1);
INSERT INTO `think_city` VALUES (1781, 1772, 3, '仙桃市', '429004', NULL, 1);
INSERT INTO `think_city` VALUES (1782, 1772, 3, '潜江市', '429005', NULL, 1);
INSERT INTO `think_city` VALUES (1783, 1772, 3, '天门市', '429006', NULL, 1);
INSERT INTO `think_city` VALUES (1784, 1772, 3, '神农架林区', '429021', NULL, 1);
INSERT INTO `think_city` VALUES (1785, 0, 1, '湖南省', '430000', NULL, 1);
INSERT INTO `think_city` VALUES (1786, 1785, 2, '长沙市', '430100', NULL, 1);
INSERT INTO `think_city` VALUES (1787, 1786, 3, '芙蓉区', '430102', NULL, 1);
INSERT INTO `think_city` VALUES (1788, 1786, 3, '天心区', '430103', NULL, 1);
INSERT INTO `think_city` VALUES (1789, 1786, 3, '岳麓区', '430104', NULL, 1);
INSERT INTO `think_city` VALUES (1790, 1786, 3, '开福区', '430105', NULL, 1);
INSERT INTO `think_city` VALUES (1791, 1786, 3, '雨花区', '430111', NULL, 1);
INSERT INTO `think_city` VALUES (1792, 1786, 3, '望城区', '430112', NULL, 1);
INSERT INTO `think_city` VALUES (1793, 1786, 3, '长沙县', '430121', NULL, 1);
INSERT INTO `think_city` VALUES (1794, 1786, 3, '浏阳市', '430181', NULL, 1);
INSERT INTO `think_city` VALUES (1795, 1786, 3, '宁乡市', '430182', NULL, 1);
INSERT INTO `think_city` VALUES (1796, 1785, 2, '株洲市', '430200', NULL, 1);
INSERT INTO `think_city` VALUES (1797, 1796, 3, '荷塘区', '430202', NULL, 1);
INSERT INTO `think_city` VALUES (1798, 1796, 3, '芦淞区', '430203', NULL, 1);
INSERT INTO `think_city` VALUES (1799, 1796, 3, '石峰区', '430204', NULL, 1);
INSERT INTO `think_city` VALUES (1800, 1796, 3, '天元区', '430211', NULL, 1);
INSERT INTO `think_city` VALUES (1801, 1796, 3, '渌口区', '430212', NULL, 1);
INSERT INTO `think_city` VALUES (1802, 1796, 3, '攸县', '430223', NULL, 1);
INSERT INTO `think_city` VALUES (1803, 1796, 3, '茶陵县', '430224', NULL, 1);
INSERT INTO `think_city` VALUES (1804, 1796, 3, '炎陵县', '430225', NULL, 1);
INSERT INTO `think_city` VALUES (1805, 1796, 3, '醴陵市', '430281', NULL, 1);
INSERT INTO `think_city` VALUES (1806, 1785, 2, '湘潭市', '430300', NULL, 1);
INSERT INTO `think_city` VALUES (1807, 1806, 3, '雨湖区', '430302', NULL, 1);
INSERT INTO `think_city` VALUES (1808, 1806, 3, '岳塘区', '430304', NULL, 1);
INSERT INTO `think_city` VALUES (1809, 1806, 3, '湘潭县', '430321', NULL, 1);
INSERT INTO `think_city` VALUES (1810, 1806, 3, '湘乡市', '430381', NULL, 1);
INSERT INTO `think_city` VALUES (1811, 1806, 3, '韶山市', '430382', NULL, 1);
INSERT INTO `think_city` VALUES (1812, 1785, 2, '衡阳市', '430400', NULL, 1);
INSERT INTO `think_city` VALUES (1813, 1812, 3, '珠晖区', '430405', NULL, 1);
INSERT INTO `think_city` VALUES (1814, 1812, 3, '雁峰区', '430406', NULL, 1);
INSERT INTO `think_city` VALUES (1815, 1812, 3, '石鼓区', '430407', NULL, 1);
INSERT INTO `think_city` VALUES (1816, 1812, 3, '蒸湘区', '430408', NULL, 1);
INSERT INTO `think_city` VALUES (1817, 1812, 3, '南岳区', '430412', NULL, 1);
INSERT INTO `think_city` VALUES (1818, 1812, 3, '衡阳县', '430421', NULL, 1);
INSERT INTO `think_city` VALUES (1819, 1812, 3, '衡南县', '430422', NULL, 1);
INSERT INTO `think_city` VALUES (1820, 1812, 3, '衡山县', '430423', NULL, 1);
INSERT INTO `think_city` VALUES (1821, 1812, 3, '衡东县', '430424', NULL, 1);
INSERT INTO `think_city` VALUES (1822, 1812, 3, '祁东县', '430426', NULL, 1);
INSERT INTO `think_city` VALUES (1823, 1812, 3, '耒阳市', '430481', NULL, 1);
INSERT INTO `think_city` VALUES (1824, 1812, 3, '常宁市', '430482', NULL, 1);
INSERT INTO `think_city` VALUES (1825, 1785, 2, '邵阳市', '430500', NULL, 1);
INSERT INTO `think_city` VALUES (1826, 1825, 3, '双清区', '430502', NULL, 1);
INSERT INTO `think_city` VALUES (1827, 1825, 3, '大祥区', '430503', NULL, 1);
INSERT INTO `think_city` VALUES (1828, 1825, 3, '北塔区', '430511', NULL, 1);
INSERT INTO `think_city` VALUES (1829, 1825, 3, '新邵县', '430522', NULL, 1);
INSERT INTO `think_city` VALUES (1830, 1825, 3, '邵阳县', '430523', NULL, 1);
INSERT INTO `think_city` VALUES (1831, 1825, 3, '隆回县', '430524', NULL, 1);
INSERT INTO `think_city` VALUES (1832, 1825, 3, '洞口县', '430525', NULL, 1);
INSERT INTO `think_city` VALUES (1833, 1825, 3, '绥宁县', '430527', NULL, 1);
INSERT INTO `think_city` VALUES (1834, 1825, 3, '新宁县', '430528', NULL, 1);
INSERT INTO `think_city` VALUES (1835, 1825, 3, '城步苗族自治县', '430529', NULL, 1);
INSERT INTO `think_city` VALUES (1836, 1825, 3, '武冈市', '430581', NULL, 1);
INSERT INTO `think_city` VALUES (1837, 1825, 3, '邵东市', '430582', NULL, 1);
INSERT INTO `think_city` VALUES (1838, 1785, 2, '岳阳市', '430600', NULL, 1);
INSERT INTO `think_city` VALUES (1839, 1838, 3, '岳阳楼区', '430602', NULL, 1);
INSERT INTO `think_city` VALUES (1840, 1838, 3, '云溪区', '430603', NULL, 1);
INSERT INTO `think_city` VALUES (1841, 1838, 3, '君山区', '430611', NULL, 1);
INSERT INTO `think_city` VALUES (1842, 1838, 3, '岳阳县', '430621', NULL, 1);
INSERT INTO `think_city` VALUES (1843, 1838, 3, '华容县', '430623', NULL, 1);
INSERT INTO `think_city` VALUES (1844, 1838, 3, '湘阴县', '430624', NULL, 1);
INSERT INTO `think_city` VALUES (1845, 1838, 3, '平江县', '430626', NULL, 1);
INSERT INTO `think_city` VALUES (1846, 1838, 3, '汨罗市', '430681', NULL, 1);
INSERT INTO `think_city` VALUES (1847, 1838, 3, '临湘市', '430682', NULL, 1);
INSERT INTO `think_city` VALUES (1848, 1785, 2, '常德市', '430700', NULL, 1);
INSERT INTO `think_city` VALUES (1849, 1848, 3, '武陵区', '430702', NULL, 1);
INSERT INTO `think_city` VALUES (1850, 1848, 3, '鼎城区', '430703', NULL, 1);
INSERT INTO `think_city` VALUES (1851, 1848, 3, '安乡县', '430721', NULL, 1);
INSERT INTO `think_city` VALUES (1852, 1848, 3, '汉寿县', '430722', NULL, 1);
INSERT INTO `think_city` VALUES (1853, 1848, 3, '澧县', '430723', NULL, 1);
INSERT INTO `think_city` VALUES (1854, 1848, 3, '临澧县', '430724', NULL, 1);
INSERT INTO `think_city` VALUES (1855, 1848, 3, '桃源县', '430725', NULL, 1);
INSERT INTO `think_city` VALUES (1856, 1848, 3, '石门县', '430726', NULL, 1);
INSERT INTO `think_city` VALUES (1857, 1848, 3, '津市市', '430781', NULL, 1);
INSERT INTO `think_city` VALUES (1858, 1785, 2, '张家界市', '430800', NULL, 1);
INSERT INTO `think_city` VALUES (1859, 1858, 3, '永定区', '430802', NULL, 1);
INSERT INTO `think_city` VALUES (1860, 1858, 3, '武陵源区', '430811', NULL, 1);
INSERT INTO `think_city` VALUES (1861, 1858, 3, '慈利县', '430821', NULL, 1);
INSERT INTO `think_city` VALUES (1862, 1858, 3, '桑植县', '430822', NULL, 1);
INSERT INTO `think_city` VALUES (1863, 1785, 2, '益阳市', '430900', NULL, 1);
INSERT INTO `think_city` VALUES (1864, 1863, 3, '资阳区', '430902', NULL, 1);
INSERT INTO `think_city` VALUES (1865, 1863, 3, '赫山区', '430903', NULL, 1);
INSERT INTO `think_city` VALUES (1866, 1863, 3, '南县', '430921', NULL, 1);
INSERT INTO `think_city` VALUES (1867, 1863, 3, '桃江县', '430922', NULL, 1);
INSERT INTO `think_city` VALUES (1868, 1863, 3, '安化县', '430923', NULL, 1);
INSERT INTO `think_city` VALUES (1869, 1863, 3, '沅江市', '430981', NULL, 1);
INSERT INTO `think_city` VALUES (1870, 1785, 2, '郴州市', '431000', NULL, 1);
INSERT INTO `think_city` VALUES (1871, 1870, 3, '北湖区', '431002', NULL, 1);
INSERT INTO `think_city` VALUES (1872, 1870, 3, '苏仙区', '431003', NULL, 1);
INSERT INTO `think_city` VALUES (1873, 1870, 3, '桂阳县', '431021', NULL, 1);
INSERT INTO `think_city` VALUES (1874, 1870, 3, '宜章县', '431022', NULL, 1);
INSERT INTO `think_city` VALUES (1875, 1870, 3, '永兴县', '431023', NULL, 1);
INSERT INTO `think_city` VALUES (1876, 1870, 3, '嘉禾县', '431024', NULL, 1);
INSERT INTO `think_city` VALUES (1877, 1870, 3, '临武县', '431025', NULL, 1);
INSERT INTO `think_city` VALUES (1878, 1870, 3, '汝城县', '431026', NULL, 1);
INSERT INTO `think_city` VALUES (1879, 1870, 3, '桂东县', '431027', NULL, 1);
INSERT INTO `think_city` VALUES (1880, 1870, 3, '安仁县', '431028', NULL, 1);
INSERT INTO `think_city` VALUES (1881, 1870, 3, '资兴市', '431081', NULL, 1);
INSERT INTO `think_city` VALUES (1882, 1785, 2, '永州市', '431100', NULL, 1);
INSERT INTO `think_city` VALUES (1883, 1882, 3, '零陵区', '431102', NULL, 1);
INSERT INTO `think_city` VALUES (1884, 1882, 3, '冷水滩区', '431103', NULL, 1);
INSERT INTO `think_city` VALUES (1885, 1882, 3, '祁阳县', '431121', NULL, 1);
INSERT INTO `think_city` VALUES (1886, 1882, 3, '东安县', '431122', NULL, 1);
INSERT INTO `think_city` VALUES (1887, 1882, 3, '双牌县', '431123', NULL, 1);
INSERT INTO `think_city` VALUES (1888, 1882, 3, '道县', '431124', NULL, 1);
INSERT INTO `think_city` VALUES (1889, 1882, 3, '江永县', '431125', NULL, 1);
INSERT INTO `think_city` VALUES (1890, 1882, 3, '宁远县', '431126', NULL, 1);
INSERT INTO `think_city` VALUES (1891, 1882, 3, '蓝山县', '431127', NULL, 1);
INSERT INTO `think_city` VALUES (1892, 1882, 3, '新田县', '431128', NULL, 1);
INSERT INTO `think_city` VALUES (1893, 1882, 3, '江华瑶族自治县', '431129', NULL, 1);
INSERT INTO `think_city` VALUES (1894, 1785, 2, '怀化市', '431200', NULL, 1);
INSERT INTO `think_city` VALUES (1895, 1894, 3, '鹤城区', '431202', NULL, 1);
INSERT INTO `think_city` VALUES (1896, 1894, 3, '中方县', '431221', NULL, 1);
INSERT INTO `think_city` VALUES (1897, 1894, 3, '沅陵县', '431222', NULL, 1);
INSERT INTO `think_city` VALUES (1898, 1894, 3, '辰溪县', '431223', NULL, 1);
INSERT INTO `think_city` VALUES (1899, 1894, 3, '溆浦县', '431224', NULL, 1);
INSERT INTO `think_city` VALUES (1900, 1894, 3, '会同县', '431225', NULL, 1);
INSERT INTO `think_city` VALUES (1901, 1894, 3, '麻阳苗族自治县', '431226', NULL, 1);
INSERT INTO `think_city` VALUES (1902, 1894, 3, '新晃侗族自治县', '431227', NULL, 1);
INSERT INTO `think_city` VALUES (1903, 1894, 3, '芷江侗族自治县', '431228', NULL, 1);
INSERT INTO `think_city` VALUES (1904, 1894, 3, '靖州苗族侗族自治县', '431229', NULL, 1);
INSERT INTO `think_city` VALUES (1905, 1894, 3, '通道侗族自治县', '431230', NULL, 1);
INSERT INTO `think_city` VALUES (1906, 1894, 3, '洪江市', '431281', NULL, 1);
INSERT INTO `think_city` VALUES (1907, 1785, 2, '娄底市', '431300', NULL, 1);
INSERT INTO `think_city` VALUES (1908, 1907, 3, '娄星区', '431302', NULL, 1);
INSERT INTO `think_city` VALUES (1909, 1907, 3, '双峰县', '431321', NULL, 1);
INSERT INTO `think_city` VALUES (1910, 1907, 3, '新化县', '431322', NULL, 1);
INSERT INTO `think_city` VALUES (1911, 1907, 3, '冷水江市', '431381', NULL, 1);
INSERT INTO `think_city` VALUES (1912, 1907, 3, '涟源市', '431382', NULL, 1);
INSERT INTO `think_city` VALUES (1913, 1785, 2, '湘西土家族苗族自治州', '433100', NULL, 1);
INSERT INTO `think_city` VALUES (1914, 1913, 3, '吉首市', '433101', NULL, 1);
INSERT INTO `think_city` VALUES (1915, 1913, 3, '泸溪县', '433122', NULL, 1);
INSERT INTO `think_city` VALUES (1916, 1913, 3, '凤凰县', '433123', NULL, 1);
INSERT INTO `think_city` VALUES (1917, 1913, 3, '花垣县', '433124', NULL, 1);
INSERT INTO `think_city` VALUES (1918, 1913, 3, '保靖县', '433125', NULL, 1);
INSERT INTO `think_city` VALUES (1919, 1913, 3, '古丈县', '433126', NULL, 1);
INSERT INTO `think_city` VALUES (1920, 1913, 3, '永顺县', '433127', NULL, 1);
INSERT INTO `think_city` VALUES (1921, 1913, 3, '龙山县', '433130', NULL, 1);
INSERT INTO `think_city` VALUES (1922, 0, 1, '广东省', '440000', NULL, 1);
INSERT INTO `think_city` VALUES (1923, 1922, 2, '广州市', '440100', NULL, 1);
INSERT INTO `think_city` VALUES (1924, 1923, 3, '荔湾区', '440103', NULL, 1);
INSERT INTO `think_city` VALUES (1925, 1923, 3, '越秀区', '440104', NULL, 1);
INSERT INTO `think_city` VALUES (1926, 1923, 3, '海珠区', '440105', NULL, 1);
INSERT INTO `think_city` VALUES (1927, 1923, 3, '天河区', '440106', NULL, 1);
INSERT INTO `think_city` VALUES (1928, 1923, 3, '白云区', '440111', NULL, 1);
INSERT INTO `think_city` VALUES (1929, 1923, 3, '黄埔区', '440112', NULL, 1);
INSERT INTO `think_city` VALUES (1930, 1923, 3, '番禺区', '440113', NULL, 1);
INSERT INTO `think_city` VALUES (1931, 1923, 3, '花都区', '440114', NULL, 1);
INSERT INTO `think_city` VALUES (1932, 1923, 3, '南沙区', '440115', NULL, 1);
INSERT INTO `think_city` VALUES (1933, 1923, 3, '从化区', '440117', NULL, 1);
INSERT INTO `think_city` VALUES (1934, 1923, 3, '增城区', '440118', NULL, 1);
INSERT INTO `think_city` VALUES (1935, 1922, 2, '韶关市', '440200', NULL, 1);
INSERT INTO `think_city` VALUES (1936, 1935, 3, '武江区', '440203', NULL, 1);
INSERT INTO `think_city` VALUES (1937, 1935, 3, '浈江区', '440204', NULL, 1);
INSERT INTO `think_city` VALUES (1938, 1935, 3, '曲江区', '440205', NULL, 1);
INSERT INTO `think_city` VALUES (1939, 1935, 3, '始兴县', '440222', NULL, 1);
INSERT INTO `think_city` VALUES (1940, 1935, 3, '仁化县', '440224', NULL, 1);
INSERT INTO `think_city` VALUES (1941, 1935, 3, '翁源县', '440229', NULL, 1);
INSERT INTO `think_city` VALUES (1942, 1935, 3, '乳源瑶族自治县', '440232', NULL, 1);
INSERT INTO `think_city` VALUES (1943, 1935, 3, '新丰县', '440233', NULL, 1);
INSERT INTO `think_city` VALUES (1944, 1935, 3, '乐昌市', '440281', NULL, 1);
INSERT INTO `think_city` VALUES (1945, 1935, 3, '南雄市', '440282', NULL, 1);
INSERT INTO `think_city` VALUES (1946, 1922, 2, '深圳市', '440300', NULL, 1);
INSERT INTO `think_city` VALUES (1947, 1946, 3, '罗湖区', '440303', NULL, 1);
INSERT INTO `think_city` VALUES (1948, 1946, 3, '福田区', '440304', NULL, 1);
INSERT INTO `think_city` VALUES (1949, 1946, 3, '南山区', '440305', NULL, 1);
INSERT INTO `think_city` VALUES (1950, 1946, 3, '宝安区', '440306', NULL, 1);
INSERT INTO `think_city` VALUES (1951, 1946, 3, '龙岗区', '440307', NULL, 1);
INSERT INTO `think_city` VALUES (1952, 1946, 3, '盐田区', '440308', NULL, 1);
INSERT INTO `think_city` VALUES (1953, 1946, 3, '龙华区', '440309', NULL, 1);
INSERT INTO `think_city` VALUES (1954, 1946, 3, '坪山区', '440310', NULL, 1);
INSERT INTO `think_city` VALUES (1955, 1946, 3, '光明区', '440311', NULL, 1);
INSERT INTO `think_city` VALUES (1956, 1922, 2, '珠海市', '440400', NULL, 1);
INSERT INTO `think_city` VALUES (1957, 1956, 3, '香洲区', '440402', NULL, 1);
INSERT INTO `think_city` VALUES (1958, 1956, 3, '斗门区', '440403', NULL, 1);
INSERT INTO `think_city` VALUES (1959, 1956, 3, '金湾区', '440404', NULL, 1);
INSERT INTO `think_city` VALUES (1960, 1922, 2, '汕头市', '440500', NULL, 1);
INSERT INTO `think_city` VALUES (1961, 1960, 3, '龙湖区', '440507', NULL, 1);
INSERT INTO `think_city` VALUES (1962, 1960, 3, '金平区', '440511', NULL, 1);
INSERT INTO `think_city` VALUES (1963, 1960, 3, '濠江区', '440512', NULL, 1);
INSERT INTO `think_city` VALUES (1964, 1960, 3, '潮阳区', '440513', NULL, 1);
INSERT INTO `think_city` VALUES (1965, 1960, 3, '潮南区', '440514', NULL, 1);
INSERT INTO `think_city` VALUES (1966, 1960, 3, '澄海区', '440515', NULL, 1);
INSERT INTO `think_city` VALUES (1967, 1960, 3, '南澳县', '440523', NULL, 1);
INSERT INTO `think_city` VALUES (1968, 1922, 2, '佛山市', '440600', NULL, 1);
INSERT INTO `think_city` VALUES (1969, 1968, 3, '禅城区', '440604', NULL, 1);
INSERT INTO `think_city` VALUES (1970, 1968, 3, '南海区', '440605', NULL, 1);
INSERT INTO `think_city` VALUES (1971, 1968, 3, '顺德区', '440606', NULL, 1);
INSERT INTO `think_city` VALUES (1972, 1968, 3, '三水区', '440607', NULL, 1);
INSERT INTO `think_city` VALUES (1973, 1968, 3, '高明区', '440608', NULL, 1);
INSERT INTO `think_city` VALUES (1974, 1922, 2, '江门市', '440700', NULL, 1);
INSERT INTO `think_city` VALUES (1975, 1974, 3, '蓬江区', '440703', NULL, 1);
INSERT INTO `think_city` VALUES (1976, 1974, 3, '江海区', '440704', NULL, 1);
INSERT INTO `think_city` VALUES (1977, 1974, 3, '新会区', '440705', NULL, 1);
INSERT INTO `think_city` VALUES (1978, 1974, 3, '台山市', '440781', NULL, 1);
INSERT INTO `think_city` VALUES (1979, 1974, 3, '开平市', '440783', NULL, 1);
INSERT INTO `think_city` VALUES (1980, 1974, 3, '鹤山市', '440784', NULL, 1);
INSERT INTO `think_city` VALUES (1981, 1974, 3, '恩平市', '440785', NULL, 1);
INSERT INTO `think_city` VALUES (1982, 1922, 2, '湛江市', '440800', NULL, 1);
INSERT INTO `think_city` VALUES (1983, 1982, 3, '赤坎区', '440802', NULL, 1);
INSERT INTO `think_city` VALUES (1984, 1982, 3, '霞山区', '440803', NULL, 1);
INSERT INTO `think_city` VALUES (1985, 1982, 3, '坡头区', '440804', NULL, 1);
INSERT INTO `think_city` VALUES (1986, 1982, 3, '麻章区', '440811', NULL, 1);
INSERT INTO `think_city` VALUES (1987, 1982, 3, '遂溪县', '440823', NULL, 1);
INSERT INTO `think_city` VALUES (1988, 1982, 3, '徐闻县', '440825', NULL, 1);
INSERT INTO `think_city` VALUES (1989, 1982, 3, '廉江市', '440881', NULL, 1);
INSERT INTO `think_city` VALUES (1990, 1982, 3, '雷州市', '440882', NULL, 1);
INSERT INTO `think_city` VALUES (1991, 1982, 3, '吴川市', '440883', NULL, 1);
INSERT INTO `think_city` VALUES (1992, 1922, 2, '茂名市', '440900', NULL, 1);
INSERT INTO `think_city` VALUES (1993, 1992, 3, '茂南区', '440902', NULL, 1);
INSERT INTO `think_city` VALUES (1994, 1992, 3, '电白区', '440904', NULL, 1);
INSERT INTO `think_city` VALUES (1995, 1992, 3, '高州市', '440981', NULL, 1);
INSERT INTO `think_city` VALUES (1996, 1992, 3, '化州市', '440982', NULL, 1);
INSERT INTO `think_city` VALUES (1997, 1992, 3, '信宜市', '440983', NULL, 1);
INSERT INTO `think_city` VALUES (1998, 1922, 2, '肇庆市', '441200', NULL, 1);
INSERT INTO `think_city` VALUES (1999, 1998, 3, '端州区', '441202', NULL, 1);
INSERT INTO `think_city` VALUES (2000, 1998, 3, '鼎湖区', '441203', NULL, 1);
INSERT INTO `think_city` VALUES (2001, 1998, 3, '高要区', '441204', NULL, 1);
INSERT INTO `think_city` VALUES (2002, 1998, 3, '广宁县', '441223', NULL, 1);
INSERT INTO `think_city` VALUES (2003, 1998, 3, '怀集县', '441224', NULL, 1);
INSERT INTO `think_city` VALUES (2004, 1998, 3, '封开县', '441225', NULL, 1);
INSERT INTO `think_city` VALUES (2005, 1998, 3, '德庆县', '441226', NULL, 1);
INSERT INTO `think_city` VALUES (2006, 1998, 3, '四会市', '441284', NULL, 1);
INSERT INTO `think_city` VALUES (2007, 1922, 2, '惠州市', '441300', NULL, 1);
INSERT INTO `think_city` VALUES (2008, 2007, 3, '惠城区', '441302', NULL, 1);
INSERT INTO `think_city` VALUES (2009, 2007, 3, '惠阳区', '441303', NULL, 1);
INSERT INTO `think_city` VALUES (2010, 2007, 3, '博罗县', '441322', NULL, 1);
INSERT INTO `think_city` VALUES (2011, 2007, 3, '惠东县', '441323', NULL, 1);
INSERT INTO `think_city` VALUES (2012, 2007, 3, '龙门县', '441324', NULL, 1);
INSERT INTO `think_city` VALUES (2013, 1922, 2, '梅州市', '441400', NULL, 1);
INSERT INTO `think_city` VALUES (2014, 2013, 3, '梅江区', '441402', NULL, 1);
INSERT INTO `think_city` VALUES (2015, 2013, 3, '梅县区', '441403', NULL, 1);
INSERT INTO `think_city` VALUES (2016, 2013, 3, '大埔县', '441422', NULL, 1);
INSERT INTO `think_city` VALUES (2017, 2013, 3, '丰顺县', '441423', NULL, 1);
INSERT INTO `think_city` VALUES (2018, 2013, 3, '五华县', '441424', NULL, 1);
INSERT INTO `think_city` VALUES (2019, 2013, 3, '平远县', '441426', NULL, 1);
INSERT INTO `think_city` VALUES (2020, 2013, 3, '蕉岭县', '441427', NULL, 1);
INSERT INTO `think_city` VALUES (2021, 2013, 3, '兴宁市', '441481', NULL, 1);
INSERT INTO `think_city` VALUES (2022, 1922, 2, '汕尾市', '441500', NULL, 1);
INSERT INTO `think_city` VALUES (2023, 2022, 3, '城区', '441502', NULL, 1);
INSERT INTO `think_city` VALUES (2024, 2022, 3, '海丰县', '441521', NULL, 1);
INSERT INTO `think_city` VALUES (2025, 2022, 3, '陆河县', '441523', NULL, 1);
INSERT INTO `think_city` VALUES (2026, 2022, 3, '陆丰市', '441581', NULL, 1);
INSERT INTO `think_city` VALUES (2027, 1922, 2, '河源市', '441600', NULL, 1);
INSERT INTO `think_city` VALUES (2028, 2027, 3, '源城区', '441602', NULL, 1);
INSERT INTO `think_city` VALUES (2029, 2027, 3, '紫金县', '441621', NULL, 1);
INSERT INTO `think_city` VALUES (2030, 2027, 3, '龙川县', '441622', NULL, 1);
INSERT INTO `think_city` VALUES (2031, 2027, 3, '连平县', '441623', NULL, 1);
INSERT INTO `think_city` VALUES (2032, 2027, 3, '和平县', '441624', NULL, 1);
INSERT INTO `think_city` VALUES (2033, 2027, 3, '东源县', '441625', NULL, 1);
INSERT INTO `think_city` VALUES (2034, 1922, 2, '阳江市', '441700', NULL, 1);
INSERT INTO `think_city` VALUES (2035, 2034, 3, '江城区', '441702', NULL, 1);
INSERT INTO `think_city` VALUES (2036, 2034, 3, '阳东区', '441704', NULL, 1);
INSERT INTO `think_city` VALUES (2037, 2034, 3, '阳西县', '441721', NULL, 1);
INSERT INTO `think_city` VALUES (2038, 2034, 3, '阳春市', '441781', NULL, 1);
INSERT INTO `think_city` VALUES (2039, 1922, 2, '清远市', '441800', NULL, 1);
INSERT INTO `think_city` VALUES (2040, 2039, 3, '清城区', '441802', NULL, 1);
INSERT INTO `think_city` VALUES (2041, 2039, 3, '清新区', '441803', NULL, 1);
INSERT INTO `think_city` VALUES (2042, 2039, 3, '佛冈县', '441821', NULL, 1);
INSERT INTO `think_city` VALUES (2043, 2039, 3, '阳山县', '441823', NULL, 1);
INSERT INTO `think_city` VALUES (2044, 2039, 3, '连山壮族瑶族自治县', '441825', NULL, 1);
INSERT INTO `think_city` VALUES (2045, 2039, 3, '连南瑶族自治县', '441826', NULL, 1);
INSERT INTO `think_city` VALUES (2046, 2039, 3, '英德市', '441881', NULL, 1);
INSERT INTO `think_city` VALUES (2047, 2039, 3, '连州市', '441882', NULL, 1);
INSERT INTO `think_city` VALUES (2048, 1922, 2, '东莞市', '441900', NULL, 1);
INSERT INTO `think_city` VALUES (2049, 1922, 2, '中山市', '442000', NULL, 1);
INSERT INTO `think_city` VALUES (2050, 1922, 2, '潮州市', '445100', NULL, 1);
INSERT INTO `think_city` VALUES (2051, 2050, 3, '湘桥区', '445102', NULL, 1);
INSERT INTO `think_city` VALUES (2052, 2050, 3, '潮安区', '445103', NULL, 1);
INSERT INTO `think_city` VALUES (2053, 2050, 3, '饶平县', '445122', NULL, 1);
INSERT INTO `think_city` VALUES (2054, 1922, 2, '揭阳市', '445200', NULL, 1);
INSERT INTO `think_city` VALUES (2055, 2054, 3, '榕城区', '445202', NULL, 1);
INSERT INTO `think_city` VALUES (2056, 2054, 3, '揭东区', '445203', NULL, 1);
INSERT INTO `think_city` VALUES (2057, 2054, 3, '揭西县', '445222', NULL, 1);
INSERT INTO `think_city` VALUES (2058, 2054, 3, '惠来县', '445224', NULL, 1);
INSERT INTO `think_city` VALUES (2059, 2054, 3, '普宁市', '445281', NULL, 1);
INSERT INTO `think_city` VALUES (2060, 1922, 2, '云浮市', '445300', NULL, 1);
INSERT INTO `think_city` VALUES (2061, 2060, 3, '云城区', '445302', NULL, 1);
INSERT INTO `think_city` VALUES (2062, 2060, 3, '云安区', '445303', NULL, 1);
INSERT INTO `think_city` VALUES (2063, 2060, 3, '新兴县', '445321', NULL, 1);
INSERT INTO `think_city` VALUES (2064, 2060, 3, '郁南县', '445322', NULL, 1);
INSERT INTO `think_city` VALUES (2065, 2060, 3, '罗定市', '445381', NULL, 1);
INSERT INTO `think_city` VALUES (2066, 0, 1, '广西壮族自治区', '450000', NULL, 1);
INSERT INTO `think_city` VALUES (2067, 2066, 2, '南宁市', '450100', NULL, 1);
INSERT INTO `think_city` VALUES (2068, 2067, 3, '兴宁区', '450102', NULL, 1);
INSERT INTO `think_city` VALUES (2069, 2067, 3, '青秀区', '450103', NULL, 1);
INSERT INTO `think_city` VALUES (2070, 2067, 3, '江南区', '450105', NULL, 1);
INSERT INTO `think_city` VALUES (2071, 2067, 3, '西乡塘区', '450107', NULL, 1);
INSERT INTO `think_city` VALUES (2072, 2067, 3, '良庆区', '450108', NULL, 1);
INSERT INTO `think_city` VALUES (2073, 2067, 3, '邕宁区', '450109', NULL, 1);
INSERT INTO `think_city` VALUES (2074, 2067, 3, '武鸣区', '450110', NULL, 1);
INSERT INTO `think_city` VALUES (2075, 2067, 3, '隆安县', '450123', NULL, 1);
INSERT INTO `think_city` VALUES (2076, 2067, 3, '马山县', '450124', NULL, 1);
INSERT INTO `think_city` VALUES (2077, 2067, 3, '上林县', '450125', NULL, 1);
INSERT INTO `think_city` VALUES (2078, 2067, 3, '宾阳县', '450126', NULL, 1);
INSERT INTO `think_city` VALUES (2079, 2067, 3, '横县', '450127', NULL, 1);
INSERT INTO `think_city` VALUES (2080, 2066, 2, '柳州市', '450200', NULL, 1);
INSERT INTO `think_city` VALUES (2081, 2080, 3, '城中区', '450202', NULL, 1);
INSERT INTO `think_city` VALUES (2082, 2080, 3, '鱼峰区', '450203', NULL, 1);
INSERT INTO `think_city` VALUES (2083, 2080, 3, '柳南区', '450204', NULL, 1);
INSERT INTO `think_city` VALUES (2084, 2080, 3, '柳北区', '450205', NULL, 1);
INSERT INTO `think_city` VALUES (2085, 2080, 3, '柳江区', '450206', NULL, 1);
INSERT INTO `think_city` VALUES (2086, 2080, 3, '柳城县', '450222', NULL, 1);
INSERT INTO `think_city` VALUES (2087, 2080, 3, '鹿寨县', '450223', NULL, 1);
INSERT INTO `think_city` VALUES (2088, 2080, 3, '融安县', '450224', NULL, 1);
INSERT INTO `think_city` VALUES (2089, 2080, 3, '融水苗族自治县', '450225', NULL, 1);
INSERT INTO `think_city` VALUES (2090, 2080, 3, '三江侗族自治县', '450226', NULL, 1);
INSERT INTO `think_city` VALUES (2091, 2066, 2, '桂林市', '450300', NULL, 1);
INSERT INTO `think_city` VALUES (2092, 2091, 3, '秀峰区', '450302', NULL, 1);
INSERT INTO `think_city` VALUES (2093, 2091, 3, '叠彩区', '450303', NULL, 1);
INSERT INTO `think_city` VALUES (2094, 2091, 3, '象山区', '450304', NULL, 1);
INSERT INTO `think_city` VALUES (2095, 2091, 3, '七星区', '450305', NULL, 1);
INSERT INTO `think_city` VALUES (2096, 2091, 3, '雁山区', '450311', NULL, 1);
INSERT INTO `think_city` VALUES (2097, 2091, 3, '临桂区', '450312', NULL, 1);
INSERT INTO `think_city` VALUES (2098, 2091, 3, '阳朔县', '450321', NULL, 1);
INSERT INTO `think_city` VALUES (2099, 2091, 3, '灵川县', '450323', NULL, 1);
INSERT INTO `think_city` VALUES (2100, 2091, 3, '全州县', '450324', NULL, 1);
INSERT INTO `think_city` VALUES (2101, 2091, 3, '兴安县', '450325', NULL, 1);
INSERT INTO `think_city` VALUES (2102, 2091, 3, '永福县', '450326', NULL, 1);
INSERT INTO `think_city` VALUES (2103, 2091, 3, '灌阳县', '450327', NULL, 1);
INSERT INTO `think_city` VALUES (2104, 2091, 3, '龙胜各族自治县', '450328', NULL, 1);
INSERT INTO `think_city` VALUES (2105, 2091, 3, '资源县', '450329', NULL, 1);
INSERT INTO `think_city` VALUES (2106, 2091, 3, '平乐县', '450330', NULL, 1);
INSERT INTO `think_city` VALUES (2107, 2091, 3, '荔浦市', '450381', NULL, 1);
INSERT INTO `think_city` VALUES (2108, 2091, 3, '恭城瑶族自治县', '450332', NULL, 1);
INSERT INTO `think_city` VALUES (2109, 2066, 2, '梧州市', '450400', NULL, 1);
INSERT INTO `think_city` VALUES (2110, 2109, 3, '万秀区', '450403', NULL, 1);
INSERT INTO `think_city` VALUES (2111, 2109, 3, '长洲区', '450405', NULL, 1);
INSERT INTO `think_city` VALUES (2112, 2109, 3, '龙圩区', '450406', NULL, 1);
INSERT INTO `think_city` VALUES (2113, 2109, 3, '苍梧县', '450421', NULL, 1);
INSERT INTO `think_city` VALUES (2114, 2109, 3, '藤县', '450422', NULL, 1);
INSERT INTO `think_city` VALUES (2115, 2109, 3, '蒙山县', '450423', NULL, 1);
INSERT INTO `think_city` VALUES (2116, 2109, 3, '岑溪市', '450481', NULL, 1);
INSERT INTO `think_city` VALUES (2117, 2066, 2, '北海市', '450500', NULL, 1);
INSERT INTO `think_city` VALUES (2118, 2117, 3, '海城区', '450502', NULL, 1);
INSERT INTO `think_city` VALUES (2119, 2117, 3, '银海区', '450503', NULL, 1);
INSERT INTO `think_city` VALUES (2120, 2117, 3, '铁山港区', '450512', NULL, 1);
INSERT INTO `think_city` VALUES (2121, 2117, 3, '合浦县', '450521', NULL, 1);
INSERT INTO `think_city` VALUES (2122, 2066, 2, '防城港市', '450600', NULL, 1);
INSERT INTO `think_city` VALUES (2123, 2122, 3, '港口区', '450602', NULL, 1);
INSERT INTO `think_city` VALUES (2124, 2122, 3, '防城区', '450603', NULL, 1);
INSERT INTO `think_city` VALUES (2125, 2122, 3, '上思县', '450621', NULL, 1);
INSERT INTO `think_city` VALUES (2126, 2122, 3, '东兴市', '450681', NULL, 1);
INSERT INTO `think_city` VALUES (2127, 2066, 2, '钦州市', '450700', NULL, 1);
INSERT INTO `think_city` VALUES (2128, 2127, 3, '钦南区', '450702', NULL, 1);
INSERT INTO `think_city` VALUES (2129, 2127, 3, '钦北区', '450703', NULL, 1);
INSERT INTO `think_city` VALUES (2130, 2127, 3, '灵山县', '450721', NULL, 1);
INSERT INTO `think_city` VALUES (2131, 2127, 3, '浦北县', '450722', NULL, 1);
INSERT INTO `think_city` VALUES (2132, 2066, 2, '贵港市', '450800', NULL, 1);
INSERT INTO `think_city` VALUES (2133, 2132, 3, '港北区', '450802', NULL, 1);
INSERT INTO `think_city` VALUES (2134, 2132, 3, '港南区', '450803', NULL, 1);
INSERT INTO `think_city` VALUES (2135, 2132, 3, '覃塘区', '450804', NULL, 1);
INSERT INTO `think_city` VALUES (2136, 2132, 3, '平南县', '450821', NULL, 1);
INSERT INTO `think_city` VALUES (2137, 2132, 3, '桂平市', '450881', NULL, 1);
INSERT INTO `think_city` VALUES (2138, 2066, 2, '玉林市', '450900', NULL, 1);
INSERT INTO `think_city` VALUES (2139, 2138, 3, '玉州区', '450902', NULL, 1);
INSERT INTO `think_city` VALUES (2140, 2138, 3, '福绵区', '450903', NULL, 1);
INSERT INTO `think_city` VALUES (2141, 2138, 3, '容县', '450921', NULL, 1);
INSERT INTO `think_city` VALUES (2142, 2138, 3, '陆川县', '450922', NULL, 1);
INSERT INTO `think_city` VALUES (2143, 2138, 3, '博白县', '450923', NULL, 1);
INSERT INTO `think_city` VALUES (2144, 2138, 3, '兴业县', '450924', NULL, 1);
INSERT INTO `think_city` VALUES (2145, 2138, 3, '北流市', '450981', NULL, 1);
INSERT INTO `think_city` VALUES (2146, 2066, 2, '百色市', '451000', NULL, 1);
INSERT INTO `think_city` VALUES (2147, 2146, 3, '右江区', '451002', NULL, 1);
INSERT INTO `think_city` VALUES (2148, 2146, 3, '田阳区', '451003', NULL, 1);
INSERT INTO `think_city` VALUES (2149, 2146, 3, '田东县', '451022', NULL, 1);
INSERT INTO `think_city` VALUES (2150, 2146, 3, '德保县', '451024', NULL, 1);
INSERT INTO `think_city` VALUES (2151, 2146, 3, '那坡县', '451026', NULL, 1);
INSERT INTO `think_city` VALUES (2152, 2146, 3, '凌云县', '451027', NULL, 1);
INSERT INTO `think_city` VALUES (2153, 2146, 3, '乐业县', '451028', NULL, 1);
INSERT INTO `think_city` VALUES (2154, 2146, 3, '田林县', '451029', NULL, 1);
INSERT INTO `think_city` VALUES (2155, 2146, 3, '西林县', '451030', NULL, 1);
INSERT INTO `think_city` VALUES (2156, 2146, 3, '隆林各族自治县', '451031', NULL, 1);
INSERT INTO `think_city` VALUES (2157, 2146, 3, '靖西市', '451081', NULL, 1);
INSERT INTO `think_city` VALUES (2158, 2146, 3, '平果市', '451082', NULL, 1);
INSERT INTO `think_city` VALUES (2159, 2066, 2, '贺州市', '451100', NULL, 1);
INSERT INTO `think_city` VALUES (2160, 2159, 3, '八步区', '451102', NULL, 1);
INSERT INTO `think_city` VALUES (2161, 2159, 3, '平桂区', '451103', NULL, 1);
INSERT INTO `think_city` VALUES (2162, 2159, 3, '昭平县', '451121', NULL, 1);
INSERT INTO `think_city` VALUES (2163, 2159, 3, '钟山县', '451122', NULL, 1);
INSERT INTO `think_city` VALUES (2164, 2159, 3, '富川瑶族自治县', '451123', NULL, 1);
INSERT INTO `think_city` VALUES (2165, 2066, 2, '河池市', '451200', NULL, 1);
INSERT INTO `think_city` VALUES (2166, 2165, 3, '金城江区', '451202', NULL, 1);
INSERT INTO `think_city` VALUES (2167, 2165, 3, '宜州区', '451203', NULL, 1);
INSERT INTO `think_city` VALUES (2168, 2165, 3, '南丹县', '451221', NULL, 1);
INSERT INTO `think_city` VALUES (2169, 2165, 3, '天峨县', '451222', NULL, 1);
INSERT INTO `think_city` VALUES (2170, 2165, 3, '凤山县', '451223', NULL, 1);
INSERT INTO `think_city` VALUES (2171, 2165, 3, '东兰县', '451224', NULL, 1);
INSERT INTO `think_city` VALUES (2172, 2165, 3, '罗城仫佬族自治县', '451225', NULL, 1);
INSERT INTO `think_city` VALUES (2173, 2165, 3, '环江毛南族自治县', '451226', NULL, 1);
INSERT INTO `think_city` VALUES (2174, 2165, 3, '巴马瑶族自治县', '451227', NULL, 1);
INSERT INTO `think_city` VALUES (2175, 2165, 3, '都安瑶族自治县', '451228', NULL, 1);
INSERT INTO `think_city` VALUES (2176, 2165, 3, '大化瑶族自治县', '451229', NULL, 1);
INSERT INTO `think_city` VALUES (2177, 2066, 2, '来宾市', '451300', NULL, 1);
INSERT INTO `think_city` VALUES (2178, 2177, 3, '兴宾区', '451302', NULL, 1);
INSERT INTO `think_city` VALUES (2179, 2177, 3, '忻城县', '451321', NULL, 1);
INSERT INTO `think_city` VALUES (2180, 2177, 3, '象州县', '451322', NULL, 1);
INSERT INTO `think_city` VALUES (2181, 2177, 3, '武宣县', '451323', NULL, 1);
INSERT INTO `think_city` VALUES (2182, 2177, 3, '金秀瑶族自治县', '451324', NULL, 1);
INSERT INTO `think_city` VALUES (2183, 2177, 3, '合山市', '451381', NULL, 1);
INSERT INTO `think_city` VALUES (2184, 2066, 2, '崇左市', '451400', NULL, 1);
INSERT INTO `think_city` VALUES (2185, 2184, 3, '江州区', '451402', NULL, 1);
INSERT INTO `think_city` VALUES (2186, 2184, 3, '扶绥县', '451421', NULL, 1);
INSERT INTO `think_city` VALUES (2187, 2184, 3, '宁明县', '451422', NULL, 1);
INSERT INTO `think_city` VALUES (2188, 2184, 3, '龙州县', '451423', NULL, 1);
INSERT INTO `think_city` VALUES (2189, 2184, 3, '大新县', '451424', NULL, 1);
INSERT INTO `think_city` VALUES (2190, 2184, 3, '天等县', '451425', NULL, 1);
INSERT INTO `think_city` VALUES (2191, 2184, 3, '凭祥市', '451481', NULL, 1);
INSERT INTO `think_city` VALUES (2192, 0, 1, '海南省', '460000', NULL, 1);
INSERT INTO `think_city` VALUES (2193, 2192, 2, '海口市', '460100', NULL, 1);
INSERT INTO `think_city` VALUES (2194, 2193, 3, '秀英区', '460105', NULL, 1);
INSERT INTO `think_city` VALUES (2195, 2193, 3, '龙华区', '460106', NULL, 1);
INSERT INTO `think_city` VALUES (2196, 2193, 3, '琼山区', '460107', NULL, 1);
INSERT INTO `think_city` VALUES (2197, 2193, 3, '美兰区', '460108', NULL, 1);
INSERT INTO `think_city` VALUES (2198, 2192, 2, '三亚市', '460200', NULL, 1);
INSERT INTO `think_city` VALUES (2199, 2198, 3, '海棠区', '460202', NULL, 1);
INSERT INTO `think_city` VALUES (2200, 2198, 3, '吉阳区', '460203', NULL, 1);
INSERT INTO `think_city` VALUES (2201, 2198, 3, '天涯区', '460204', NULL, 1);
INSERT INTO `think_city` VALUES (2202, 2198, 3, '崖州区', '460205', NULL, 1);
INSERT INTO `think_city` VALUES (2203, 2198, 3, '三沙市', '460300', NULL, 1);
INSERT INTO `think_city` VALUES (2204, 2192, 2, '儋州市', '460400', NULL, 1);
INSERT INTO `think_city` VALUES (2205, 2204, 3, '五指山市', '469001', NULL, 1);
INSERT INTO `think_city` VALUES (2206, 2204, 3, '琼海市', '469002', NULL, 1);
INSERT INTO `think_city` VALUES (2207, 2204, 3, '文昌市', '469005', NULL, 1);
INSERT INTO `think_city` VALUES (2208, 2204, 3, '万宁市', '469006', NULL, 1);
INSERT INTO `think_city` VALUES (2209, 2204, 3, '东方市', '469007', NULL, 1);
INSERT INTO `think_city` VALUES (2210, 2204, 3, '定安县', '469021', NULL, 1);
INSERT INTO `think_city` VALUES (2211, 2204, 3, '屯昌县', '469022', NULL, 1);
INSERT INTO `think_city` VALUES (2212, 2204, 3, '澄迈县', '469023', NULL, 1);
INSERT INTO `think_city` VALUES (2213, 2204, 3, '临高县', '469024', NULL, 1);
INSERT INTO `think_city` VALUES (2214, 2204, 3, '白沙黎族自治县', '469025', NULL, 1);
INSERT INTO `think_city` VALUES (2215, 2204, 3, '昌江黎族自治县', '469026', NULL, 1);
INSERT INTO `think_city` VALUES (2216, 2204, 3, '乐东黎族自治县', '469027', NULL, 1);
INSERT INTO `think_city` VALUES (2217, 2204, 3, '陵水黎族自治县', '469028', NULL, 1);
INSERT INTO `think_city` VALUES (2218, 2204, 3, '保亭黎族苗族自治县', '469029', NULL, 1);
INSERT INTO `think_city` VALUES (2219, 2204, 3, '琼中黎族苗族自治县', '469030', NULL, 1);
INSERT INTO `think_city` VALUES (2220, 0, 1, '重庆市', '500000', NULL, 1);
INSERT INTO `think_city` VALUES (2221, 2220, 2, '重庆市', '500100', NULL, 1);
INSERT INTO `think_city` VALUES (2222, 2221, 3, '万州区', '500101', NULL, 1);
INSERT INTO `think_city` VALUES (2223, 2221, 3, '涪陵区', '500102', NULL, 1);
INSERT INTO `think_city` VALUES (2224, 2221, 3, '渝中区', '500103', NULL, 1);
INSERT INTO `think_city` VALUES (2225, 2221, 3, '大渡口区', '500104', NULL, 1);
INSERT INTO `think_city` VALUES (2226, 2221, 3, '江北区', '500105', NULL, 1);
INSERT INTO `think_city` VALUES (2227, 2221, 3, '沙坪坝区', '500106', NULL, 1);
INSERT INTO `think_city` VALUES (2228, 2221, 3, '九龙坡区', '500107', NULL, 1);
INSERT INTO `think_city` VALUES (2229, 2221, 3, '南岸区', '500108', NULL, 1);
INSERT INTO `think_city` VALUES (2230, 2221, 3, '北碚区', '500109', NULL, 1);
INSERT INTO `think_city` VALUES (2231, 2221, 3, '綦江区', '500110', NULL, 1);
INSERT INTO `think_city` VALUES (2232, 2221, 3, '大足区', '500111', NULL, 1);
INSERT INTO `think_city` VALUES (2233, 2221, 3, '渝北区', '500112', NULL, 1);
INSERT INTO `think_city` VALUES (2234, 2221, 3, '巴南区', '500113', NULL, 1);
INSERT INTO `think_city` VALUES (2235, 2221, 3, '黔江区', '500114', NULL, 1);
INSERT INTO `think_city` VALUES (2236, 2221, 3, '长寿区', '500115', NULL, 1);
INSERT INTO `think_city` VALUES (2237, 2221, 3, '江津区', '500116', NULL, 1);
INSERT INTO `think_city` VALUES (2238, 2221, 3, '合川区', '500117', NULL, 1);
INSERT INTO `think_city` VALUES (2239, 2221, 3, '永川区', '500118', NULL, 1);
INSERT INTO `think_city` VALUES (2240, 2221, 3, '南川区', '500119', NULL, 1);
INSERT INTO `think_city` VALUES (2241, 2221, 3, '璧山区', '500120', NULL, 1);
INSERT INTO `think_city` VALUES (2242, 2221, 3, '铜梁区', '500151', NULL, 1);
INSERT INTO `think_city` VALUES (2243, 2221, 3, '潼南区', '500152', NULL, 1);
INSERT INTO `think_city` VALUES (2244, 2221, 3, '荣昌区', '500153', NULL, 1);
INSERT INTO `think_city` VALUES (2245, 2221, 3, '开州区', '500154', NULL, 1);
INSERT INTO `think_city` VALUES (2246, 2221, 3, '梁平区', '500155', NULL, 1);
INSERT INTO `think_city` VALUES (2247, 2221, 3, '武隆区', '500156', NULL, 1);
INSERT INTO `think_city` VALUES (2248, 2221, 3, '城口县', '500229', NULL, 1);
INSERT INTO `think_city` VALUES (2249, 2221, 3, '丰都县', '500230', NULL, 1);
INSERT INTO `think_city` VALUES (2250, 2221, 3, '垫江县', '500231', NULL, 1);
INSERT INTO `think_city` VALUES (2251, 2221, 3, '忠县', '500233', NULL, 1);
INSERT INTO `think_city` VALUES (2252, 2221, 3, '云阳县', '500235', NULL, 1);
INSERT INTO `think_city` VALUES (2253, 2221, 3, '奉节县', '500236', NULL, 1);
INSERT INTO `think_city` VALUES (2254, 2221, 3, '巫山县', '500237', NULL, 1);
INSERT INTO `think_city` VALUES (2255, 2221, 3, '巫溪县', '500238', NULL, 1);
INSERT INTO `think_city` VALUES (2256, 2221, 3, '石柱土家族自治县', '500240', NULL, 1);
INSERT INTO `think_city` VALUES (2257, 2221, 3, '秀山土家族苗族自治县', '500241', NULL, 1);
INSERT INTO `think_city` VALUES (2258, 2221, 3, '酉阳土家族苗族自治县', '500242', NULL, 1);
INSERT INTO `think_city` VALUES (2259, 2221, 3, '彭水苗族土家族自治县', '500243', NULL, 1);
INSERT INTO `think_city` VALUES (2260, 0, 1, '四川省', '510000', NULL, 1);
INSERT INTO `think_city` VALUES (2261, 2260, 2, '成都市', '510100', NULL, 1);
INSERT INTO `think_city` VALUES (2262, 2261, 3, '锦江区', '510104', NULL, 1);
INSERT INTO `think_city` VALUES (2263, 2261, 3, '青羊区', '510105', NULL, 1);
INSERT INTO `think_city` VALUES (2264, 2261, 3, '金牛区', '510106', NULL, 1);
INSERT INTO `think_city` VALUES (2265, 2261, 3, '武侯区', '510107', NULL, 1);
INSERT INTO `think_city` VALUES (2266, 2261, 3, '成华区', '510108', NULL, 1);
INSERT INTO `think_city` VALUES (2267, 2261, 3, '龙泉驿区', '510112', NULL, 1);
INSERT INTO `think_city` VALUES (2268, 2261, 3, '青白江区', '510113', NULL, 1);
INSERT INTO `think_city` VALUES (2269, 2261, 3, '新都区', '510114', NULL, 1);
INSERT INTO `think_city` VALUES (2270, 2261, 3, '温江区', '510115', NULL, 1);
INSERT INTO `think_city` VALUES (2271, 2261, 3, '双流区', '510116', NULL, 1);
INSERT INTO `think_city` VALUES (2272, 2261, 3, '郫都区', '510117', NULL, 1);
INSERT INTO `think_city` VALUES (2273, 2261, 3, '新津区', '510118', NULL, 1);
INSERT INTO `think_city` VALUES (2274, 2261, 3, '金堂县', '510121', NULL, 1);
INSERT INTO `think_city` VALUES (2275, 2261, 3, '大邑县', '510129', NULL, 1);
INSERT INTO `think_city` VALUES (2276, 2261, 3, '蒲江县', '510131', NULL, 1);
INSERT INTO `think_city` VALUES (2277, 2261, 3, '都江堰市', '510181', NULL, 1);
INSERT INTO `think_city` VALUES (2278, 2261, 3, '彭州市', '510182', NULL, 1);
INSERT INTO `think_city` VALUES (2279, 2261, 3, '邛崃市', '510183', NULL, 1);
INSERT INTO `think_city` VALUES (2280, 2261, 3, '崇州市', '510184', NULL, 1);
INSERT INTO `think_city` VALUES (2281, 2261, 3, '简阳市', '510185', NULL, 1);
INSERT INTO `think_city` VALUES (2282, 2260, 2, '自贡市', '510300', NULL, 1);
INSERT INTO `think_city` VALUES (2283, 2282, 3, '自流井区', '510302', NULL, 1);
INSERT INTO `think_city` VALUES (2284, 2282, 3, '贡井区', '510303', NULL, 1);
INSERT INTO `think_city` VALUES (2285, 2282, 3, '大安区', '510304', NULL, 1);
INSERT INTO `think_city` VALUES (2286, 2282, 3, '沿滩区', '510311', NULL, 1);
INSERT INTO `think_city` VALUES (2287, 2282, 3, '荣县', '510321', NULL, 1);
INSERT INTO `think_city` VALUES (2288, 2282, 3, '富顺县', '510322', NULL, 1);
INSERT INTO `think_city` VALUES (2289, 2260, 2, '攀枝花市', '510400', NULL, 1);
INSERT INTO `think_city` VALUES (2290, 2289, 3, '东区', '510402', NULL, 1);
INSERT INTO `think_city` VALUES (2291, 2289, 3, '西区', '510403', NULL, 1);
INSERT INTO `think_city` VALUES (2292, 2289, 3, '仁和区', '510411', NULL, 1);
INSERT INTO `think_city` VALUES (2293, 2289, 3, '米易县', '510421', NULL, 1);
INSERT INTO `think_city` VALUES (2294, 2289, 3, '盐边县', '510422', NULL, 1);
INSERT INTO `think_city` VALUES (2295, 2260, 2, '泸州市', '510500', NULL, 1);
INSERT INTO `think_city` VALUES (2296, 2295, 3, '江阳区', '510502', NULL, 1);
INSERT INTO `think_city` VALUES (2297, 2295, 3, '纳溪区', '510503', NULL, 1);
INSERT INTO `think_city` VALUES (2298, 2295, 3, '龙马潭区', '510504', NULL, 1);
INSERT INTO `think_city` VALUES (2299, 2295, 3, '泸县', '510521', NULL, 1);
INSERT INTO `think_city` VALUES (2300, 2295, 3, '合江县', '510522', NULL, 1);
INSERT INTO `think_city` VALUES (2301, 2295, 3, '叙永县', '510524', NULL, 1);
INSERT INTO `think_city` VALUES (2302, 2295, 3, '古蔺县', '510525', NULL, 1);
INSERT INTO `think_city` VALUES (2303, 2260, 2, '德阳市', '510600', NULL, 1);
INSERT INTO `think_city` VALUES (2304, 2303, 3, '旌阳区', '510603', NULL, 1);
INSERT INTO `think_city` VALUES (2305, 2303, 3, '罗江区', '510604', NULL, 1);
INSERT INTO `think_city` VALUES (2306, 2303, 3, '中江县', '510623', NULL, 1);
INSERT INTO `think_city` VALUES (2307, 2303, 3, '广汉市', '510681', NULL, 1);
INSERT INTO `think_city` VALUES (2308, 2303, 3, '什邡市', '510682', NULL, 1);
INSERT INTO `think_city` VALUES (2309, 2303, 3, '绵竹市', '510683', NULL, 1);
INSERT INTO `think_city` VALUES (2310, 2260, 2, '绵阳市', '510700', NULL, 1);
INSERT INTO `think_city` VALUES (2311, 2310, 3, '涪城区', '510703', NULL, 1);
INSERT INTO `think_city` VALUES (2312, 2310, 3, '游仙区', '510704', NULL, 1);
INSERT INTO `think_city` VALUES (2313, 2310, 3, '安州区', '510705', NULL, 1);
INSERT INTO `think_city` VALUES (2314, 2310, 3, '三台县', '510722', NULL, 1);
INSERT INTO `think_city` VALUES (2315, 2310, 3, '盐亭县', '510723', NULL, 1);
INSERT INTO `think_city` VALUES (2316, 2310, 3, '梓潼县', '510725', NULL, 1);
INSERT INTO `think_city` VALUES (2317, 2310, 3, '北川羌族自治县', '510726', NULL, 1);
INSERT INTO `think_city` VALUES (2318, 2310, 3, '平武县', '510727', NULL, 1);
INSERT INTO `think_city` VALUES (2319, 2310, 3, '江油市', '510781', NULL, 1);
INSERT INTO `think_city` VALUES (2320, 2260, 2, '广元市', '510800', NULL, 1);
INSERT INTO `think_city` VALUES (2321, 2320, 3, '利州区', '510802', NULL, 1);
INSERT INTO `think_city` VALUES (2322, 2320, 3, '昭化区', '510811', NULL, 1);
INSERT INTO `think_city` VALUES (2323, 2320, 3, '朝天区', '510812', NULL, 1);
INSERT INTO `think_city` VALUES (2324, 2320, 3, '旺苍县', '510821', NULL, 1);
INSERT INTO `think_city` VALUES (2325, 2320, 3, '青川县', '510822', NULL, 1);
INSERT INTO `think_city` VALUES (2326, 2320, 3, '剑阁县', '510823', NULL, 1);
INSERT INTO `think_city` VALUES (2327, 2320, 3, '苍溪县', '510824', NULL, 1);
INSERT INTO `think_city` VALUES (2328, 2260, 2, '遂宁市', '510900', NULL, 1);
INSERT INTO `think_city` VALUES (2329, 2328, 3, '船山区', '510903', NULL, 1);
INSERT INTO `think_city` VALUES (2330, 2328, 3, '安居区', '510904', NULL, 1);
INSERT INTO `think_city` VALUES (2331, 2328, 3, '蓬溪县', '510921', NULL, 1);
INSERT INTO `think_city` VALUES (2332, 2328, 3, '大英县', '510923', NULL, 1);
INSERT INTO `think_city` VALUES (2333, 2328, 3, '射洪市', '510981', NULL, 1);
INSERT INTO `think_city` VALUES (2334, 2260, 2, '内江市', '511000', NULL, 1);
INSERT INTO `think_city` VALUES (2335, 2334, 3, '市中区', '511002', NULL, 1);
INSERT INTO `think_city` VALUES (2336, 2334, 3, '东兴区', '511011', NULL, 1);
INSERT INTO `think_city` VALUES (2337, 2334, 3, '威远县', '511024', NULL, 1);
INSERT INTO `think_city` VALUES (2338, 2334, 3, '资中县', '511025', NULL, 1);
INSERT INTO `think_city` VALUES (2339, 2334, 3, '隆昌市', '511083', NULL, 1);
INSERT INTO `think_city` VALUES (2340, 2260, 2, '乐山市', '511100', NULL, 1);
INSERT INTO `think_city` VALUES (2341, 2340, 3, '市中区', '511102', NULL, 1);
INSERT INTO `think_city` VALUES (2342, 2340, 3, '沙湾区', '511111', NULL, 1);
INSERT INTO `think_city` VALUES (2343, 2340, 3, '五通桥区', '511112', NULL, 1);
INSERT INTO `think_city` VALUES (2344, 2340, 3, '金口河区', '511113', NULL, 1);
INSERT INTO `think_city` VALUES (2345, 2340, 3, '犍为县', '511123', NULL, 1);
INSERT INTO `think_city` VALUES (2346, 2340, 3, '井研县', '511124', NULL, 1);
INSERT INTO `think_city` VALUES (2347, 2340, 3, '夹江县', '511126', NULL, 1);
INSERT INTO `think_city` VALUES (2348, 2340, 3, '沐川县', '511129', NULL, 1);
INSERT INTO `think_city` VALUES (2349, 2340, 3, '峨边彝族自治县', '511132', NULL, 1);
INSERT INTO `think_city` VALUES (2350, 2340, 3, '马边彝族自治县', '511133', NULL, 1);
INSERT INTO `think_city` VALUES (2351, 2340, 3, '峨眉山市', '511181', NULL, 1);
INSERT INTO `think_city` VALUES (2352, 2260, 2, '南充市', '511300', NULL, 1);
INSERT INTO `think_city` VALUES (2353, 2352, 3, '顺庆区', '511302', NULL, 1);
INSERT INTO `think_city` VALUES (2354, 2352, 3, '高坪区', '511303', NULL, 1);
INSERT INTO `think_city` VALUES (2355, 2352, 3, '嘉陵区', '511304', NULL, 1);
INSERT INTO `think_city` VALUES (2356, 2352, 3, '南部县', '511321', NULL, 1);
INSERT INTO `think_city` VALUES (2357, 2352, 3, '营山县', '511322', NULL, 1);
INSERT INTO `think_city` VALUES (2358, 2352, 3, '蓬安县', '511323', NULL, 1);
INSERT INTO `think_city` VALUES (2359, 2352, 3, '仪陇县', '511324', NULL, 1);
INSERT INTO `think_city` VALUES (2360, 2352, 3, '西充县', '511325', NULL, 1);
INSERT INTO `think_city` VALUES (2361, 2352, 3, '阆中市', '511381', NULL, 1);
INSERT INTO `think_city` VALUES (2362, 2260, 2, '眉山市', '511400', NULL, 1);
INSERT INTO `think_city` VALUES (2363, 2362, 3, '东坡区', '511402', NULL, 1);
INSERT INTO `think_city` VALUES (2364, 2362, 3, '彭山区', '511403', NULL, 1);
INSERT INTO `think_city` VALUES (2365, 2362, 3, '仁寿县', '511421', NULL, 1);
INSERT INTO `think_city` VALUES (2366, 2362, 3, '洪雅县', '511423', NULL, 1);
INSERT INTO `think_city` VALUES (2367, 2362, 3, '丹棱县', '511424', NULL, 1);
INSERT INTO `think_city` VALUES (2368, 2362, 3, '青神县', '511425', NULL, 1);
INSERT INTO `think_city` VALUES (2369, 2260, 2, '宜宾市', '511500', NULL, 1);
INSERT INTO `think_city` VALUES (2370, 2369, 3, '翠屏区', '511502', NULL, 1);
INSERT INTO `think_city` VALUES (2371, 2369, 3, '南溪区', '511503', NULL, 1);
INSERT INTO `think_city` VALUES (2372, 2369, 3, '叙州区', '511504', NULL, 1);
INSERT INTO `think_city` VALUES (2373, 2369, 3, '江安县', '511523', NULL, 1);
INSERT INTO `think_city` VALUES (2374, 2369, 3, '长宁县', '511524', NULL, 1);
INSERT INTO `think_city` VALUES (2375, 2369, 3, '高县', '511525', NULL, 1);
INSERT INTO `think_city` VALUES (2376, 2369, 3, '珙县', '511526', NULL, 1);
INSERT INTO `think_city` VALUES (2377, 2369, 3, '筠连县', '511527', NULL, 1);
INSERT INTO `think_city` VALUES (2378, 2369, 3, '兴文县', '511528', NULL, 1);
INSERT INTO `think_city` VALUES (2379, 2369, 3, '屏山县', '511529', NULL, 1);
INSERT INTO `think_city` VALUES (2380, 2260, 2, '广安市', '511600', NULL, 1);
INSERT INTO `think_city` VALUES (2381, 2380, 3, '广安区', '511602', NULL, 1);
INSERT INTO `think_city` VALUES (2382, 2380, 3, '前锋区', '511603', NULL, 1);
INSERT INTO `think_city` VALUES (2383, 2380, 3, '岳池县', '511621', NULL, 1);
INSERT INTO `think_city` VALUES (2384, 2380, 3, '武胜县', '511622', NULL, 1);
INSERT INTO `think_city` VALUES (2385, 2380, 3, '邻水县', '511623', NULL, 1);
INSERT INTO `think_city` VALUES (2386, 2380, 3, '华蓥市', '511681', NULL, 1);
INSERT INTO `think_city` VALUES (2387, 2260, 2, '达州市', '511700', NULL, 1);
INSERT INTO `think_city` VALUES (2388, 2387, 3, '通川区', '511702', NULL, 1);
INSERT INTO `think_city` VALUES (2389, 2387, 3, '达川区', '511703', NULL, 1);
INSERT INTO `think_city` VALUES (2390, 2387, 3, '宣汉县', '511722', NULL, 1);
INSERT INTO `think_city` VALUES (2391, 2387, 3, '开江县', '511723', NULL, 1);
INSERT INTO `think_city` VALUES (2392, 2387, 3, '大竹县', '511724', NULL, 1);
INSERT INTO `think_city` VALUES (2393, 2387, 3, '渠县', '511725', NULL, 1);
INSERT INTO `think_city` VALUES (2394, 2387, 3, '万源市', '511781', NULL, 1);
INSERT INTO `think_city` VALUES (2395, 2260, 2, '雅安市', '511800', NULL, 1);
INSERT INTO `think_city` VALUES (2396, 2395, 3, '雨城区', '511802', NULL, 1);
INSERT INTO `think_city` VALUES (2397, 2395, 3, '名山区', '511803', NULL, 1);
INSERT INTO `think_city` VALUES (2398, 2395, 3, '荥经县', '511822', NULL, 1);
INSERT INTO `think_city` VALUES (2399, 2395, 3, '汉源县', '511823', NULL, 1);
INSERT INTO `think_city` VALUES (2400, 2395, 3, '石棉县', '511824', NULL, 1);
INSERT INTO `think_city` VALUES (2401, 2395, 3, '天全县', '511825', NULL, 1);
INSERT INTO `think_city` VALUES (2402, 2395, 3, '芦山县', '511826', NULL, 1);
INSERT INTO `think_city` VALUES (2403, 2395, 3, '宝兴县', '511827', NULL, 1);
INSERT INTO `think_city` VALUES (2404, 2260, 2, '巴中市', '511900', NULL, 1);
INSERT INTO `think_city` VALUES (2405, 2404, 3, '巴州区', '511902', NULL, 1);
INSERT INTO `think_city` VALUES (2406, 2404, 3, '恩阳区', '511903', NULL, 1);
INSERT INTO `think_city` VALUES (2407, 2404, 3, '通江县', '511921', NULL, 1);
INSERT INTO `think_city` VALUES (2408, 2404, 3, '南江县', '511922', NULL, 1);
INSERT INTO `think_city` VALUES (2409, 2404, 3, '平昌县', '511923', NULL, 1);
INSERT INTO `think_city` VALUES (2410, 2260, 2, '资阳市', '512000', NULL, 1);
INSERT INTO `think_city` VALUES (2411, 2410, 3, '雁江区', '512002', NULL, 1);
INSERT INTO `think_city` VALUES (2412, 2410, 3, '安岳县', '512021', NULL, 1);
INSERT INTO `think_city` VALUES (2413, 2410, 3, '乐至县', '512022', NULL, 1);
INSERT INTO `think_city` VALUES (2414, 2260, 2, '阿坝藏族羌族自治州', '513200', NULL, 1);
INSERT INTO `think_city` VALUES (2415, 2414, 3, '马尔康市', '513201', NULL, 1);
INSERT INTO `think_city` VALUES (2416, 2414, 3, '汶川县', '513221', NULL, 1);
INSERT INTO `think_city` VALUES (2417, 2414, 3, '理县', '513222', NULL, 1);
INSERT INTO `think_city` VALUES (2418, 2414, 3, '茂县', '513223', NULL, 1);
INSERT INTO `think_city` VALUES (2419, 2414, 3, '松潘县', '513224', NULL, 1);
INSERT INTO `think_city` VALUES (2420, 2414, 3, '九寨沟县', '513225', NULL, 1);
INSERT INTO `think_city` VALUES (2421, 2414, 3, '金川县', '513226', NULL, 1);
INSERT INTO `think_city` VALUES (2422, 2414, 3, '小金县', '513227', NULL, 1);
INSERT INTO `think_city` VALUES (2423, 2414, 3, '黑水县', '513228', NULL, 1);
INSERT INTO `think_city` VALUES (2424, 2414, 3, '壤塘县', '513230', NULL, 1);
INSERT INTO `think_city` VALUES (2425, 2414, 3, '阿坝县', '513231', NULL, 1);
INSERT INTO `think_city` VALUES (2426, 2414, 3, '若尔盖县', '513232', NULL, 1);
INSERT INTO `think_city` VALUES (2427, 2414, 3, '红原县', '513233', NULL, 1);
INSERT INTO `think_city` VALUES (2428, 2260, 2, '甘孜藏族自治州', '513300', NULL, 1);
INSERT INTO `think_city` VALUES (2429, 2428, 3, '康定市', '513301', NULL, 1);
INSERT INTO `think_city` VALUES (2430, 2428, 3, '泸定县', '513322', NULL, 1);
INSERT INTO `think_city` VALUES (2431, 2428, 3, '丹巴县', '513323', NULL, 1);
INSERT INTO `think_city` VALUES (2432, 2428, 3, '九龙县', '513324', NULL, 1);
INSERT INTO `think_city` VALUES (2433, 2428, 3, '雅江县', '513325', NULL, 1);
INSERT INTO `think_city` VALUES (2434, 2428, 3, '道孚县', '513326', NULL, 1);
INSERT INTO `think_city` VALUES (2435, 2428, 3, '炉霍县', '513327', NULL, 1);
INSERT INTO `think_city` VALUES (2436, 2428, 3, '甘孜县', '513328', NULL, 1);
INSERT INTO `think_city` VALUES (2437, 2428, 3, '新龙县', '513329', NULL, 1);
INSERT INTO `think_city` VALUES (2438, 2428, 3, '德格县', '513330', NULL, 1);
INSERT INTO `think_city` VALUES (2439, 2428, 3, '白玉县', '513331', NULL, 1);
INSERT INTO `think_city` VALUES (2440, 2428, 3, '石渠县', '513332', NULL, 1);
INSERT INTO `think_city` VALUES (2441, 2428, 3, '色达县', '513333', NULL, 1);
INSERT INTO `think_city` VALUES (2442, 2428, 3, '理塘县', '513334', NULL, 1);
INSERT INTO `think_city` VALUES (2443, 2428, 3, '巴塘县', '513335', NULL, 1);
INSERT INTO `think_city` VALUES (2444, 2428, 3, '乡城县', '513336', NULL, 1);
INSERT INTO `think_city` VALUES (2445, 2428, 3, '稻城县', '513337', NULL, 1);
INSERT INTO `think_city` VALUES (2446, 2428, 3, '得荣县', '513338', NULL, 1);
INSERT INTO `think_city` VALUES (2447, 2260, 2, '凉山彝族自治州', '513400', NULL, 1);
INSERT INTO `think_city` VALUES (2448, 2447, 3, '西昌市', '513401', NULL, 1);
INSERT INTO `think_city` VALUES (2449, 2447, 3, '木里藏族自治县', '513422', NULL, 1);
INSERT INTO `think_city` VALUES (2450, 2447, 3, '盐源县', '513423', NULL, 1);
INSERT INTO `think_city` VALUES (2451, 2447, 3, '德昌县', '513424', NULL, 1);
INSERT INTO `think_city` VALUES (2452, 2447, 3, '会理县', '513425', NULL, 1);
INSERT INTO `think_city` VALUES (2453, 2447, 3, '会东县', '513426', NULL, 1);
INSERT INTO `think_city` VALUES (2454, 2447, 3, '宁南县', '513427', NULL, 1);
INSERT INTO `think_city` VALUES (2455, 2447, 3, '普格县', '513428', NULL, 1);
INSERT INTO `think_city` VALUES (2456, 2447, 3, '布拖县', '513429', NULL, 1);
INSERT INTO `think_city` VALUES (2457, 2447, 3, '金阳县', '513430', NULL, 1);
INSERT INTO `think_city` VALUES (2458, 2447, 3, '昭觉县', '513431', NULL, 1);
INSERT INTO `think_city` VALUES (2459, 2447, 3, '喜德县', '513432', NULL, 1);
INSERT INTO `think_city` VALUES (2460, 2447, 3, '冕宁县', '513433', NULL, 1);
INSERT INTO `think_city` VALUES (2461, 2447, 3, '越西县', '513434', NULL, 1);
INSERT INTO `think_city` VALUES (2462, 2447, 3, '甘洛县', '513435', NULL, 1);
INSERT INTO `think_city` VALUES (2463, 2447, 3, '美姑县', '513436', NULL, 1);
INSERT INTO `think_city` VALUES (2464, 2447, 3, '雷波县', '513437', NULL, 1);
INSERT INTO `think_city` VALUES (2465, 0, 1, '贵州省', '520000', NULL, 1);
INSERT INTO `think_city` VALUES (2466, 2465, 2, '贵阳市', '520100', NULL, 1);
INSERT INTO `think_city` VALUES (2467, 2466, 3, '南明区', '520102', NULL, 1);
INSERT INTO `think_city` VALUES (2468, 2466, 3, '云岩区', '520103', NULL, 1);
INSERT INTO `think_city` VALUES (2469, 2466, 3, '花溪区', '520111', NULL, 1);
INSERT INTO `think_city` VALUES (2470, 2466, 3, '乌当区', '520112', NULL, 1);
INSERT INTO `think_city` VALUES (2471, 2466, 3, '白云区', '520113', NULL, 1);
INSERT INTO `think_city` VALUES (2472, 2466, 3, '观山湖区', '520115', NULL, 1);
INSERT INTO `think_city` VALUES (2473, 2466, 3, '开阳县', '520121', NULL, 1);
INSERT INTO `think_city` VALUES (2474, 2466, 3, '息烽县', '520122', NULL, 1);
INSERT INTO `think_city` VALUES (2475, 2466, 3, '修文县', '520123', NULL, 1);
INSERT INTO `think_city` VALUES (2476, 2466, 3, '清镇市', '520181', NULL, 1);
INSERT INTO `think_city` VALUES (2477, 2465, 2, '六盘水市', '520200', NULL, 1);
INSERT INTO `think_city` VALUES (2478, 2477, 3, '钟山区', '520201', NULL, 1);
INSERT INTO `think_city` VALUES (2479, 2477, 3, '六枝特区', '520203', NULL, 1);
INSERT INTO `think_city` VALUES (2480, 2477, 3, '水城县', '520221', NULL, 1);
INSERT INTO `think_city` VALUES (2481, 2477, 3, '盘州市', '520281', NULL, 1);
INSERT INTO `think_city` VALUES (2482, 2465, 2, '遵义市', '520300', NULL, 1);
INSERT INTO `think_city` VALUES (2483, 2482, 3, '红花岗区', '520302', NULL, 1);
INSERT INTO `think_city` VALUES (2484, 2482, 3, '汇川区', '520303', NULL, 1);
INSERT INTO `think_city` VALUES (2485, 2482, 3, '播州区', '520304', NULL, 1);
INSERT INTO `think_city` VALUES (2486, 2482, 3, '桐梓县', '520322', NULL, 1);
INSERT INTO `think_city` VALUES (2487, 2482, 3, '绥阳县', '520323', NULL, 1);
INSERT INTO `think_city` VALUES (2488, 2482, 3, '正安县', '520324', NULL, 1);
INSERT INTO `think_city` VALUES (2489, 2482, 3, '道真仡佬族苗族自治县', '520325', NULL, 1);
INSERT INTO `think_city` VALUES (2490, 2482, 3, '务川仡佬族苗族自治县', '520326', NULL, 1);
INSERT INTO `think_city` VALUES (2491, 2482, 3, '凤冈县', '520327', NULL, 1);
INSERT INTO `think_city` VALUES (2492, 2482, 3, '湄潭县', '520328', NULL, 1);
INSERT INTO `think_city` VALUES (2493, 2482, 3, '余庆县', '520329', NULL, 1);
INSERT INTO `think_city` VALUES (2494, 2482, 3, '习水县', '520330', NULL, 1);
INSERT INTO `think_city` VALUES (2495, 2482, 3, '赤水市', '520381', NULL, 1);
INSERT INTO `think_city` VALUES (2496, 2482, 3, '仁怀市', '520382', NULL, 1);
INSERT INTO `think_city` VALUES (2497, 2465, 2, '安顺市', '520400', NULL, 1);
INSERT INTO `think_city` VALUES (2498, 2497, 3, '西秀区', '520402', NULL, 1);
INSERT INTO `think_city` VALUES (2499, 2497, 3, '平坝区', '520403', NULL, 1);
INSERT INTO `think_city` VALUES (2500, 2497, 3, '普定县', '520422', NULL, 1);
INSERT INTO `think_city` VALUES (2501, 2497, 3, '镇宁布依族苗族自治县', '520423', NULL, 1);
INSERT INTO `think_city` VALUES (2502, 2497, 3, '关岭布依族苗族自治县', '520424', NULL, 1);
INSERT INTO `think_city` VALUES (2503, 2497, 3, '紫云苗族布依族自治县', '520425', NULL, 1);
INSERT INTO `think_city` VALUES (2504, 2465, 2, '毕节市', '520500', NULL, 1);
INSERT INTO `think_city` VALUES (2505, 2504, 3, '七星关区', '520502', NULL, 1);
INSERT INTO `think_city` VALUES (2506, 2504, 3, '大方县', '520521', NULL, 1);
INSERT INTO `think_city` VALUES (2507, 2504, 3, '黔西县', '520522', NULL, 1);
INSERT INTO `think_city` VALUES (2508, 2504, 3, '金沙县', '520523', NULL, 1);
INSERT INTO `think_city` VALUES (2509, 2504, 3, '织金县', '520524', NULL, 1);
INSERT INTO `think_city` VALUES (2510, 2504, 3, '纳雍县', '520525', NULL, 1);
INSERT INTO `think_city` VALUES (2511, 2504, 3, '威宁彝族回族苗族自治县', '520526', NULL, 1);
INSERT INTO `think_city` VALUES (2512, 2504, 3, '赫章县', '520527', NULL, 1);
INSERT INTO `think_city` VALUES (2513, 2465, 2, '铜仁市', '520600', NULL, 1);
INSERT INTO `think_city` VALUES (2514, 2513, 3, '碧江区', '520602', NULL, 1);
INSERT INTO `think_city` VALUES (2515, 2513, 3, '万山区', '520603', NULL, 1);
INSERT INTO `think_city` VALUES (2516, 2513, 3, '江口县', '520621', NULL, 1);
INSERT INTO `think_city` VALUES (2517, 2513, 3, '玉屏侗族自治县', '520622', NULL, 1);
INSERT INTO `think_city` VALUES (2518, 2513, 3, '石阡县', '520623', NULL, 1);
INSERT INTO `think_city` VALUES (2519, 2513, 3, '思南县', '520624', NULL, 1);
INSERT INTO `think_city` VALUES (2520, 2513, 3, '印江土家族苗族自治县', '520625', NULL, 1);
INSERT INTO `think_city` VALUES (2521, 2513, 3, '德江县', '520626', NULL, 1);
INSERT INTO `think_city` VALUES (2522, 2513, 3, '沿河土家族自治县', '520627', NULL, 1);
INSERT INTO `think_city` VALUES (2523, 2513, 3, '松桃苗族自治县', '520628', NULL, 1);
INSERT INTO `think_city` VALUES (2524, 2465, 2, '黔西南布依族苗族自治州', '522300', NULL, 1);
INSERT INTO `think_city` VALUES (2525, 2524, 3, '兴义市', '522301', NULL, 1);
INSERT INTO `think_city` VALUES (2526, 2524, 3, '兴仁市', '522302', NULL, 1);
INSERT INTO `think_city` VALUES (2527, 2524, 3, '普安县', '522323', NULL, 1);
INSERT INTO `think_city` VALUES (2528, 2524, 3, '晴隆县', '522324', NULL, 1);
INSERT INTO `think_city` VALUES (2529, 2524, 3, '贞丰县', '522325', NULL, 1);
INSERT INTO `think_city` VALUES (2530, 2524, 3, '望谟县', '522326', NULL, 1);
INSERT INTO `think_city` VALUES (2531, 2524, 3, '册亨县', '522327', NULL, 1);
INSERT INTO `think_city` VALUES (2532, 2524, 3, '安龙县', '522328', NULL, 1);
INSERT INTO `think_city` VALUES (2533, 2465, 2, '黔东南苗族侗族自治州', '522600', NULL, 1);
INSERT INTO `think_city` VALUES (2534, 2533, 3, '凯里市', '522601', NULL, 1);
INSERT INTO `think_city` VALUES (2535, 2533, 3, '黄平县', '522622', NULL, 1);
INSERT INTO `think_city` VALUES (2536, 2533, 3, '施秉县', '522623', NULL, 1);
INSERT INTO `think_city` VALUES (2537, 2533, 3, '三穗县', '522624', NULL, 1);
INSERT INTO `think_city` VALUES (2538, 2533, 3, '镇远县', '522625', NULL, 1);
INSERT INTO `think_city` VALUES (2539, 2533, 3, '岑巩县', '522626', NULL, 1);
INSERT INTO `think_city` VALUES (2540, 2533, 3, '天柱县', '522627', NULL, 1);
INSERT INTO `think_city` VALUES (2541, 2533, 3, '锦屏县', '522628', NULL, 1);
INSERT INTO `think_city` VALUES (2542, 2533, 3, '剑河县', '522629', NULL, 1);
INSERT INTO `think_city` VALUES (2543, 2533, 3, '台江县', '522630', NULL, 1);
INSERT INTO `think_city` VALUES (2544, 2533, 3, '黎平县', '522631', NULL, 1);
INSERT INTO `think_city` VALUES (2545, 2533, 3, '榕江县', '522632', NULL, 1);
INSERT INTO `think_city` VALUES (2546, 2533, 3, '从江县', '522633', NULL, 1);
INSERT INTO `think_city` VALUES (2547, 2533, 3, '雷山县', '522634', NULL, 1);
INSERT INTO `think_city` VALUES (2548, 2533, 3, '麻江县', '522635', NULL, 1);
INSERT INTO `think_city` VALUES (2549, 2533, 3, '丹寨县', '522636', NULL, 1);
INSERT INTO `think_city` VALUES (2550, 2465, 2, '黔南布依族苗族自治州', '522700', NULL, 1);
INSERT INTO `think_city` VALUES (2551, 2550, 3, '都匀市', '522701', NULL, 1);
INSERT INTO `think_city` VALUES (2552, 2550, 3, '福泉市', '522702', NULL, 1);
INSERT INTO `think_city` VALUES (2553, 2550, 3, '荔波县', '522722', NULL, 1);
INSERT INTO `think_city` VALUES (2554, 2550, 3, '贵定县', '522723', NULL, 1);
INSERT INTO `think_city` VALUES (2555, 2550, 3, '瓮安县', '522725', NULL, 1);
INSERT INTO `think_city` VALUES (2556, 2550, 3, '独山县', '522726', NULL, 1);
INSERT INTO `think_city` VALUES (2557, 2550, 3, '平塘县', '522727', NULL, 1);
INSERT INTO `think_city` VALUES (2558, 2550, 3, '罗甸县', '522728', NULL, 1);
INSERT INTO `think_city` VALUES (2559, 2550, 3, '长顺县', '522729', NULL, 1);
INSERT INTO `think_city` VALUES (2560, 2550, 3, '龙里县', '522730', NULL, 1);
INSERT INTO `think_city` VALUES (2561, 2550, 3, '惠水县', '522731', NULL, 1);
INSERT INTO `think_city` VALUES (2562, 2550, 3, '三都水族自治县', '522732', NULL, 1);
INSERT INTO `think_city` VALUES (2563, 0, 1, '云南省', '530000', NULL, 1);
INSERT INTO `think_city` VALUES (2564, 2563, 2, '昆明市', '530100', NULL, 1);
INSERT INTO `think_city` VALUES (2565, 2564, 3, '五华区', '530102', NULL, 1);
INSERT INTO `think_city` VALUES (2566, 2564, 3, '盘龙区', '530103', NULL, 1);
INSERT INTO `think_city` VALUES (2567, 2564, 3, '官渡区', '530111', NULL, 1);
INSERT INTO `think_city` VALUES (2568, 2564, 3, '西山区', '530112', NULL, 1);
INSERT INTO `think_city` VALUES (2569, 2564, 3, '东川区', '530113', NULL, 1);
INSERT INTO `think_city` VALUES (2570, 2564, 3, '呈贡区', '530114', NULL, 1);
INSERT INTO `think_city` VALUES (2571, 2564, 3, '晋宁区', '530115', NULL, 1);
INSERT INTO `think_city` VALUES (2572, 2564, 3, '富民县', '530124', NULL, 1);
INSERT INTO `think_city` VALUES (2573, 2564, 3, '宜良县', '530125', NULL, 1);
INSERT INTO `think_city` VALUES (2574, 2564, 3, '石林彝族自治县', '530126', NULL, 1);
INSERT INTO `think_city` VALUES (2575, 2564, 3, '嵩明县', '530127', NULL, 1);
INSERT INTO `think_city` VALUES (2576, 2564, 3, '禄劝彝族苗族自治县', '530128', NULL, 1);
INSERT INTO `think_city` VALUES (2577, 2564, 3, '寻甸回族彝族自治县', '530129', NULL, 1);
INSERT INTO `think_city` VALUES (2578, 2564, 3, '安宁市', '530181', NULL, 1);
INSERT INTO `think_city` VALUES (2579, 2563, 2, '曲靖市', '530300', NULL, 1);
INSERT INTO `think_city` VALUES (2580, 2579, 3, '麒麟区', '530302', NULL, 1);
INSERT INTO `think_city` VALUES (2581, 2579, 3, '沾益区', '530303', NULL, 1);
INSERT INTO `think_city` VALUES (2582, 2579, 3, '马龙区', '530304', NULL, 1);
INSERT INTO `think_city` VALUES (2583, 2579, 3, '陆良县', '530322', NULL, 1);
INSERT INTO `think_city` VALUES (2584, 2579, 3, '师宗县', '530323', NULL, 1);
INSERT INTO `think_city` VALUES (2585, 2579, 3, '罗平县', '530324', NULL, 1);
INSERT INTO `think_city` VALUES (2586, 2579, 3, '富源县', '530325', NULL, 1);
INSERT INTO `think_city` VALUES (2587, 2579, 3, '会泽县', '530326', NULL, 1);
INSERT INTO `think_city` VALUES (2588, 2579, 3, '宣威市', '530381', NULL, 1);
INSERT INTO `think_city` VALUES (2589, 2563, 2, '玉溪市', '530400', NULL, 1);
INSERT INTO `think_city` VALUES (2590, 2589, 3, '红塔区', '530402', NULL, 1);
INSERT INTO `think_city` VALUES (2591, 2589, 3, '江川区', '530403', NULL, 1);
INSERT INTO `think_city` VALUES (2592, 2589, 3, '通海县', '530423', NULL, 1);
INSERT INTO `think_city` VALUES (2593, 2589, 3, '华宁县', '530424', NULL, 1);
INSERT INTO `think_city` VALUES (2594, 2589, 3, '易门县', '530425', NULL, 1);
INSERT INTO `think_city` VALUES (2595, 2589, 3, '峨山彝族自治县', '530426', NULL, 1);
INSERT INTO `think_city` VALUES (2596, 2589, 3, '新平彝族傣族自治县', '530427', NULL, 1);
INSERT INTO `think_city` VALUES (2597, 2589, 3, '元江哈尼族彝族傣族自治县', '530428', NULL, 1);
INSERT INTO `think_city` VALUES (2598, 2589, 3, '澄江市', '530481', NULL, 1);
INSERT INTO `think_city` VALUES (2599, 2563, 2, '保山市', '530500', NULL, 1);
INSERT INTO `think_city` VALUES (2600, 2599, 3, '隆阳区', '530502', NULL, 1);
INSERT INTO `think_city` VALUES (2601, 2599, 3, '施甸县', '530521', NULL, 1);
INSERT INTO `think_city` VALUES (2602, 2599, 3, '龙陵县', '530523', NULL, 1);
INSERT INTO `think_city` VALUES (2603, 2599, 3, '昌宁县', '530524', NULL, 1);
INSERT INTO `think_city` VALUES (2604, 2599, 3, '腾冲市', '530581', NULL, 1);
INSERT INTO `think_city` VALUES (2605, 2563, 2, '昭通市', '530600', NULL, 1);
INSERT INTO `think_city` VALUES (2606, 2605, 3, '昭阳区', '530602', NULL, 1);
INSERT INTO `think_city` VALUES (2607, 2605, 3, '鲁甸县', '530621', NULL, 1);
INSERT INTO `think_city` VALUES (2608, 2605, 3, '巧家县', '530622', NULL, 1);
INSERT INTO `think_city` VALUES (2609, 2605, 3, '盐津县', '530623', NULL, 1);
INSERT INTO `think_city` VALUES (2610, 2605, 3, '大关县', '530624', NULL, 1);
INSERT INTO `think_city` VALUES (2611, 2605, 3, '永善县', '530625', NULL, 1);
INSERT INTO `think_city` VALUES (2612, 2605, 3, '绥江县', '530626', NULL, 1);
INSERT INTO `think_city` VALUES (2613, 2605, 3, '镇雄县', '530627', NULL, 1);
INSERT INTO `think_city` VALUES (2614, 2605, 3, '彝良县', '530628', NULL, 1);
INSERT INTO `think_city` VALUES (2615, 2605, 3, '威信县', '530629', NULL, 1);
INSERT INTO `think_city` VALUES (2616, 2605, 3, '水富市', '530681', NULL, 1);
INSERT INTO `think_city` VALUES (2617, 2563, 2, '丽江市', '530700', NULL, 1);
INSERT INTO `think_city` VALUES (2618, 2617, 3, '古城区', '530702', NULL, 1);
INSERT INTO `think_city` VALUES (2619, 2617, 3, '玉龙纳西族自治县', '530721', NULL, 1);
INSERT INTO `think_city` VALUES (2620, 2617, 3, '永胜县', '530722', NULL, 1);
INSERT INTO `think_city` VALUES (2621, 2617, 3, '华坪县', '530723', NULL, 1);
INSERT INTO `think_city` VALUES (2622, 2617, 3, '宁蒗彝族自治县', '530724', NULL, 1);
INSERT INTO `think_city` VALUES (2623, 2563, 2, '普洱市', '530800', NULL, 1);
INSERT INTO `think_city` VALUES (2624, 2623, 3, '思茅区', '530802', NULL, 1);
INSERT INTO `think_city` VALUES (2625, 2623, 3, '宁洱哈尼族彝族自治县', '530821', NULL, 1);
INSERT INTO `think_city` VALUES (2626, 2623, 3, '墨江哈尼族自治县', '530822', NULL, 1);
INSERT INTO `think_city` VALUES (2627, 2623, 3, '景东彝族自治县', '530823', NULL, 1);
INSERT INTO `think_city` VALUES (2628, 2623, 3, '景谷傣族彝族自治县', '530824', NULL, 1);
INSERT INTO `think_city` VALUES (2629, 2623, 3, '镇沅彝族哈尼族拉祜族自治县', '530825', NULL, 1);
INSERT INTO `think_city` VALUES (2630, 2623, 3, '江城哈尼族彝族自治县', '530826', NULL, 1);
INSERT INTO `think_city` VALUES (2631, 2623, 3, '孟连傣族拉祜族佤族自治县', '530827', NULL, 1);
INSERT INTO `think_city` VALUES (2632, 2623, 3, '澜沧拉祜族自治县', '530828', NULL, 1);
INSERT INTO `think_city` VALUES (2633, 2623, 3, '西盟佤族自治县', '530829', NULL, 1);
INSERT INTO `think_city` VALUES (2634, 2563, 2, '临沧市', '530900', NULL, 1);
INSERT INTO `think_city` VALUES (2635, 2634, 3, '临翔区', '530902', NULL, 1);
INSERT INTO `think_city` VALUES (2636, 2634, 3, '凤庆县', '530921', NULL, 1);
INSERT INTO `think_city` VALUES (2637, 2634, 3, '云县', '530922', NULL, 1);
INSERT INTO `think_city` VALUES (2638, 2634, 3, '永德县', '530923', NULL, 1);
INSERT INTO `think_city` VALUES (2639, 2634, 3, '镇康县', '530924', NULL, 1);
INSERT INTO `think_city` VALUES (2640, 2634, 3, '双江拉祜族佤族布朗族傣族自治县', '530925', NULL, 1);
INSERT INTO `think_city` VALUES (2641, 2634, 3, '耿马傣族佤族自治县', '530926', NULL, 1);
INSERT INTO `think_city` VALUES (2642, 2634, 3, '沧源佤族自治县', '530927', NULL, 1);
INSERT INTO `think_city` VALUES (2643, 2563, 2, '楚雄彝族自治州', '532300', NULL, 1);
INSERT INTO `think_city` VALUES (2644, 2643, 3, '楚雄市', '532301', NULL, 1);
INSERT INTO `think_city` VALUES (2645, 2643, 3, '双柏县', '532322', NULL, 1);
INSERT INTO `think_city` VALUES (2646, 2643, 3, '牟定县', '532323', NULL, 1);
INSERT INTO `think_city` VALUES (2647, 2643, 3, '南华县', '532324', NULL, 1);
INSERT INTO `think_city` VALUES (2648, 2643, 3, '姚安县', '532325', NULL, 1);
INSERT INTO `think_city` VALUES (2649, 2643, 3, '大姚县', '532326', NULL, 1);
INSERT INTO `think_city` VALUES (2650, 2643, 3, '永仁县', '532327', NULL, 1);
INSERT INTO `think_city` VALUES (2651, 2643, 3, '元谋县', '532328', NULL, 1);
INSERT INTO `think_city` VALUES (2652, 2643, 3, '武定县', '532329', NULL, 1);
INSERT INTO `think_city` VALUES (2653, 2643, 3, '禄丰县', '532331', NULL, 1);
INSERT INTO `think_city` VALUES (2654, 2563, 2, '红河哈尼族彝族自治州', '532500', NULL, 1);
INSERT INTO `think_city` VALUES (2655, 2654, 3, '个旧市', '532501', NULL, 1);
INSERT INTO `think_city` VALUES (2656, 2654, 3, '开远市', '532502', NULL, 1);
INSERT INTO `think_city` VALUES (2657, 2654, 3, '蒙自市', '532503', NULL, 1);
INSERT INTO `think_city` VALUES (2658, 2654, 3, '弥勒市', '532504', NULL, 1);
INSERT INTO `think_city` VALUES (2659, 2654, 3, '屏边苗族自治县', '532523', NULL, 1);
INSERT INTO `think_city` VALUES (2660, 2654, 3, '建水县', '532524', NULL, 1);
INSERT INTO `think_city` VALUES (2661, 2654, 3, '石屏县', '532525', NULL, 1);
INSERT INTO `think_city` VALUES (2662, 2654, 3, '泸西县', '532527', NULL, 1);
INSERT INTO `think_city` VALUES (2663, 2654, 3, '元阳县', '532528', NULL, 1);
INSERT INTO `think_city` VALUES (2664, 2654, 3, '红河县', '532529', NULL, 1);
INSERT INTO `think_city` VALUES (2665, 2654, 3, '金平苗族瑶族傣族自治县', '532530', NULL, 1);
INSERT INTO `think_city` VALUES (2666, 2654, 3, '绿春县', '532531', NULL, 1);
INSERT INTO `think_city` VALUES (2667, 2654, 3, '河口瑶族自治县', '532532', NULL, 1);
INSERT INTO `think_city` VALUES (2668, 2563, 2, '文山壮族苗族自治州', '532600', NULL, 1);
INSERT INTO `think_city` VALUES (2669, 2668, 3, '文山市', '532601', NULL, 1);
INSERT INTO `think_city` VALUES (2670, 2668, 3, '砚山县', '532622', NULL, 1);
INSERT INTO `think_city` VALUES (2671, 2668, 3, '西畴县', '532623', NULL, 1);
INSERT INTO `think_city` VALUES (2672, 2668, 3, '麻栗坡县', '532624', NULL, 1);
INSERT INTO `think_city` VALUES (2673, 2668, 3, '马关县', '532625', NULL, 1);
INSERT INTO `think_city` VALUES (2674, 2668, 3, '丘北县', '532626', NULL, 1);
INSERT INTO `think_city` VALUES (2675, 2668, 3, '广南县', '532627', NULL, 1);
INSERT INTO `think_city` VALUES (2676, 2668, 3, '富宁县', '532628', NULL, 1);
INSERT INTO `think_city` VALUES (2677, 2563, 2, '西双版纳傣族自治州', '532800', NULL, 1);
INSERT INTO `think_city` VALUES (2678, 2677, 3, '景洪市', '532801', NULL, 1);
INSERT INTO `think_city` VALUES (2679, 2677, 3, '勐海县', '532822', NULL, 1);
INSERT INTO `think_city` VALUES (2680, 2677, 3, '勐腊县', '532823', NULL, 1);
INSERT INTO `think_city` VALUES (2681, 2563, 2, '大理白族自治州', '532900', NULL, 1);
INSERT INTO `think_city` VALUES (2682, 2681, 3, '大理市', '532901', NULL, 1);
INSERT INTO `think_city` VALUES (2683, 2681, 3, '漾濞彝族自治县', '532922', NULL, 1);
INSERT INTO `think_city` VALUES (2684, 2681, 3, '祥云县', '532923', NULL, 1);
INSERT INTO `think_city` VALUES (2685, 2681, 3, '宾川县', '532924', NULL, 1);
INSERT INTO `think_city` VALUES (2686, 2681, 3, '弥渡县', '532925', NULL, 1);
INSERT INTO `think_city` VALUES (2687, 2681, 3, '南涧彝族自治县', '532926', NULL, 1);
INSERT INTO `think_city` VALUES (2688, 2681, 3, '巍山彝族回族自治县', '532927', NULL, 1);
INSERT INTO `think_city` VALUES (2689, 2681, 3, '永平县', '532928', NULL, 1);
INSERT INTO `think_city` VALUES (2690, 2681, 3, '云龙县', '532929', NULL, 1);
INSERT INTO `think_city` VALUES (2691, 2681, 3, '洱源县', '532930', NULL, 1);
INSERT INTO `think_city` VALUES (2692, 2681, 3, '剑川县', '532931', NULL, 1);
INSERT INTO `think_city` VALUES (2693, 2681, 3, '鹤庆县', '532932', NULL, 1);
INSERT INTO `think_city` VALUES (2694, 2563, 2, '德宏傣族景颇族自治州', '533100', NULL, 1);
INSERT INTO `think_city` VALUES (2695, 2694, 3, '瑞丽市', '533102', NULL, 1);
INSERT INTO `think_city` VALUES (2696, 2694, 3, '芒市', '533103', NULL, 1);
INSERT INTO `think_city` VALUES (2697, 2694, 3, '梁河县', '533122', NULL, 1);
INSERT INTO `think_city` VALUES (2698, 2694, 3, '盈江县', '533123', NULL, 1);
INSERT INTO `think_city` VALUES (2699, 2694, 3, '陇川县', '533124', NULL, 1);
INSERT INTO `think_city` VALUES (2700, 2563, 2, '怒江傈僳族自治州', '533300', NULL, 1);
INSERT INTO `think_city` VALUES (2701, 2700, 3, '泸水市', '533301', NULL, 1);
INSERT INTO `think_city` VALUES (2702, 2700, 3, '福贡县', '533323', NULL, 1);
INSERT INTO `think_city` VALUES (2703, 2700, 3, '贡山独龙族怒族自治县', '533324', NULL, 1);
INSERT INTO `think_city` VALUES (2704, 2700, 3, '兰坪白族普米族自治县', '533325', NULL, 1);
INSERT INTO `think_city` VALUES (2705, 2563, 2, '迪庆藏族自治州', '533400', NULL, 1);
INSERT INTO `think_city` VALUES (2706, 2705, 3, '香格里拉市', '533401', NULL, 1);
INSERT INTO `think_city` VALUES (2707, 2705, 3, '德钦县', '533422', NULL, 1);
INSERT INTO `think_city` VALUES (2708, 2705, 3, '维西傈僳族自治县', '533423', NULL, 1);
INSERT INTO `think_city` VALUES (2709, 0, 1, '西藏自治区', '540000', NULL, 1);
INSERT INTO `think_city` VALUES (2710, 2709, 2, '拉萨市', '540100', NULL, 1);
INSERT INTO `think_city` VALUES (2711, 2710, 3, '城关区', '540102', NULL, 1);
INSERT INTO `think_city` VALUES (2712, 2710, 3, '堆龙德庆区', '540103', NULL, 1);
INSERT INTO `think_city` VALUES (2713, 2710, 3, '达孜区', '540104', NULL, 1);
INSERT INTO `think_city` VALUES (2714, 2710, 3, '林周县', '540121', NULL, 1);
INSERT INTO `think_city` VALUES (2715, 2710, 3, '当雄县', '540122', NULL, 1);
INSERT INTO `think_city` VALUES (2716, 2710, 3, '尼木县', '540123', NULL, 1);
INSERT INTO `think_city` VALUES (2717, 2710, 3, '曲水县', '540124', NULL, 1);
INSERT INTO `think_city` VALUES (2718, 2710, 3, '墨竹工卡县', '540127', NULL, 1);
INSERT INTO `think_city` VALUES (2719, 2709, 2, '日喀则市', '540200', NULL, 1);
INSERT INTO `think_city` VALUES (2720, 2719, 3, '桑珠孜区', '540202', NULL, 1);
INSERT INTO `think_city` VALUES (2721, 2719, 3, '南木林县', '540221', NULL, 1);
INSERT INTO `think_city` VALUES (2722, 2719, 3, '江孜县', '540222', NULL, 1);
INSERT INTO `think_city` VALUES (2723, 2719, 3, '定日县', '540223', NULL, 1);
INSERT INTO `think_city` VALUES (2724, 2719, 3, '萨迦县', '540224', NULL, 1);
INSERT INTO `think_city` VALUES (2725, 2719, 3, '拉孜县', '540225', NULL, 1);
INSERT INTO `think_city` VALUES (2726, 2719, 3, '昂仁县', '540226', NULL, 1);
INSERT INTO `think_city` VALUES (2727, 2719, 3, '谢通门县', '540227', NULL, 1);
INSERT INTO `think_city` VALUES (2728, 2719, 3, '白朗县', '540228', NULL, 1);
INSERT INTO `think_city` VALUES (2729, 2719, 3, '仁布县', '540229', NULL, 1);
INSERT INTO `think_city` VALUES (2730, 2719, 3, '康马县', '540230', NULL, 1);
INSERT INTO `think_city` VALUES (2731, 2719, 3, '定结县', '540231', NULL, 1);
INSERT INTO `think_city` VALUES (2732, 2719, 3, '仲巴县', '540232', NULL, 1);
INSERT INTO `think_city` VALUES (2733, 2719, 3, '亚东县', '540233', NULL, 1);
INSERT INTO `think_city` VALUES (2734, 2719, 3, '吉隆县', '540234', NULL, 1);
INSERT INTO `think_city` VALUES (2735, 2719, 3, '聂拉木县', '540235', NULL, 1);
INSERT INTO `think_city` VALUES (2736, 2719, 3, '萨嘎县', '540236', NULL, 1);
INSERT INTO `think_city` VALUES (2737, 2719, 3, '岗巴县', '540237', NULL, 1);
INSERT INTO `think_city` VALUES (2738, 2709, 2, '昌都市', '540300', NULL, 1);
INSERT INTO `think_city` VALUES (2739, 2738, 3, '卡若区', '540302', NULL, 1);
INSERT INTO `think_city` VALUES (2740, 2738, 3, '江达县', '540321', NULL, 1);
INSERT INTO `think_city` VALUES (2741, 2738, 3, '贡觉县', '540322', NULL, 1);
INSERT INTO `think_city` VALUES (2742, 2738, 3, '类乌齐县', '540323', NULL, 1);
INSERT INTO `think_city` VALUES (2743, 2738, 3, '丁青县', '540324', NULL, 1);
INSERT INTO `think_city` VALUES (2744, 2738, 3, '察雅县', '540325', NULL, 1);
INSERT INTO `think_city` VALUES (2745, 2738, 3, '八宿县', '540326', NULL, 1);
INSERT INTO `think_city` VALUES (2746, 2738, 3, '左贡县', '540327', NULL, 1);
INSERT INTO `think_city` VALUES (2747, 2738, 3, '芒康县', '540328', NULL, 1);
INSERT INTO `think_city` VALUES (2748, 2738, 3, '洛隆县', '540329', NULL, 1);
INSERT INTO `think_city` VALUES (2749, 2738, 3, '边坝县', '540330', NULL, 1);
INSERT INTO `think_city` VALUES (2750, 2709, 2, '林芝市', '540400', NULL, 1);
INSERT INTO `think_city` VALUES (2751, 2750, 3, '巴宜区', '540402', NULL, 1);
INSERT INTO `think_city` VALUES (2752, 2750, 3, '工布江达县', '540421', NULL, 1);
INSERT INTO `think_city` VALUES (2753, 2750, 3, '米林县', '540422', NULL, 1);
INSERT INTO `think_city` VALUES (2754, 2750, 3, '墨脱县', '540423', NULL, 1);
INSERT INTO `think_city` VALUES (2755, 2750, 3, '波密县', '540424', NULL, 1);
INSERT INTO `think_city` VALUES (2756, 2750, 3, '察隅县', '540425', NULL, 1);
INSERT INTO `think_city` VALUES (2757, 2750, 3, '朗县', '540426', NULL, 1);
INSERT INTO `think_city` VALUES (2758, 2709, 2, '山南市', '540500', NULL, 1);
INSERT INTO `think_city` VALUES (2759, 2758, 3, '乃东区', '540502', NULL, 1);
INSERT INTO `think_city` VALUES (2760, 2758, 3, '扎囊县', '540521', NULL, 1);
INSERT INTO `think_city` VALUES (2761, 2758, 3, '贡嘎县', '540522', NULL, 1);
INSERT INTO `think_city` VALUES (2762, 2758, 3, '桑日县', '540523', NULL, 1);
INSERT INTO `think_city` VALUES (2763, 2758, 3, '琼结县', '540524', NULL, 1);
INSERT INTO `think_city` VALUES (2764, 2758, 3, '曲松县', '540525', NULL, 1);
INSERT INTO `think_city` VALUES (2765, 2758, 3, '措美县', '540526', NULL, 1);
INSERT INTO `think_city` VALUES (2766, 2758, 3, '洛扎县', '540527', NULL, 1);
INSERT INTO `think_city` VALUES (2767, 2758, 3, '加查县', '540528', NULL, 1);
INSERT INTO `think_city` VALUES (2768, 2758, 3, '隆子县', '540529', NULL, 1);
INSERT INTO `think_city` VALUES (2769, 2758, 3, '错那县', '540530', NULL, 1);
INSERT INTO `think_city` VALUES (2770, 2758, 3, '浪卡子县', '540531', NULL, 1);
INSERT INTO `think_city` VALUES (2771, 2709, 2, '那曲市', '540600', NULL, 1);
INSERT INTO `think_city` VALUES (2772, 2771, 3, '色尼区', '540602', NULL, 1);
INSERT INTO `think_city` VALUES (2773, 2771, 3, '嘉黎县', '540621', NULL, 1);
INSERT INTO `think_city` VALUES (2774, 2771, 3, '比如县', '540622', NULL, 1);
INSERT INTO `think_city` VALUES (2775, 2771, 3, '聂荣县', '540623', NULL, 1);
INSERT INTO `think_city` VALUES (2776, 2771, 3, '安多县', '540624', NULL, 1);
INSERT INTO `think_city` VALUES (2777, 2771, 3, '申扎县', '540625', NULL, 1);
INSERT INTO `think_city` VALUES (2778, 2771, 3, '索县', '540626', NULL, 1);
INSERT INTO `think_city` VALUES (2779, 2771, 3, '班戈县', '540627', NULL, 1);
INSERT INTO `think_city` VALUES (2780, 2771, 3, '巴青县', '540628', NULL, 1);
INSERT INTO `think_city` VALUES (2781, 2771, 3, '尼玛县', '540629', NULL, 1);
INSERT INTO `think_city` VALUES (2782, 2771, 3, '双湖县', '540630', NULL, 1);
INSERT INTO `think_city` VALUES (2783, 2709, 2, '阿里地区', '542500', NULL, 1);
INSERT INTO `think_city` VALUES (2784, 2783, 3, '普兰县', '542521', NULL, 1);
INSERT INTO `think_city` VALUES (2785, 2783, 3, '札达县', '542522', NULL, 1);
INSERT INTO `think_city` VALUES (2786, 2783, 3, '噶尔县', '542523', NULL, 1);
INSERT INTO `think_city` VALUES (2787, 2783, 3, '日土县', '542524', NULL, 1);
INSERT INTO `think_city` VALUES (2788, 2783, 3, '革吉县', '542525', NULL, 1);
INSERT INTO `think_city` VALUES (2789, 2783, 3, '改则县', '542526', NULL, 1);
INSERT INTO `think_city` VALUES (2790, 2783, 3, '措勤县', '542527', NULL, 1);
INSERT INTO `think_city` VALUES (2791, 0, 1, '陕西省', '610000', NULL, 1);
INSERT INTO `think_city` VALUES (2792, 2791, 2, '西安市', '610100', NULL, 1);
INSERT INTO `think_city` VALUES (2793, 2792, 3, '新城区', '610102', NULL, 1);
INSERT INTO `think_city` VALUES (2794, 2792, 3, '碑林区', '610103', NULL, 1);
INSERT INTO `think_city` VALUES (2795, 2792, 3, '莲湖区', '610104', NULL, 1);
INSERT INTO `think_city` VALUES (2796, 2792, 3, '灞桥区', '610111', NULL, 1);
INSERT INTO `think_city` VALUES (2797, 2792, 3, '未央区', '610112', NULL, 1);
INSERT INTO `think_city` VALUES (2798, 2792, 3, '雁塔区', '610113', NULL, 1);
INSERT INTO `think_city` VALUES (2799, 2792, 3, '阎良区', '610114', NULL, 1);
INSERT INTO `think_city` VALUES (2800, 2792, 3, '临潼区', '610115', NULL, 1);
INSERT INTO `think_city` VALUES (2801, 2792, 3, '长安区', '610116', NULL, 1);
INSERT INTO `think_city` VALUES (2802, 2792, 3, '高陵区', '610117', NULL, 1);
INSERT INTO `think_city` VALUES (2803, 2792, 3, '鄠邑区', '610118', NULL, 1);
INSERT INTO `think_city` VALUES (2804, 2792, 3, '蓝田县', '610122', NULL, 1);
INSERT INTO `think_city` VALUES (2805, 2792, 3, '周至县', '610124', NULL, 1);
INSERT INTO `think_city` VALUES (2806, 2791, 2, '铜川市', '610200', NULL, 1);
INSERT INTO `think_city` VALUES (2807, 2806, 3, '王益区', '610202', NULL, 1);
INSERT INTO `think_city` VALUES (2808, 2806, 3, '印台区', '610203', NULL, 1);
INSERT INTO `think_city` VALUES (2809, 2806, 3, '耀州区', '610204', NULL, 1);
INSERT INTO `think_city` VALUES (2810, 2806, 3, '宜君县', '610222', NULL, 1);
INSERT INTO `think_city` VALUES (2811, 2791, 2, '宝鸡市', '610300', NULL, 1);
INSERT INTO `think_city` VALUES (2812, 2811, 3, '渭滨区', '610302', NULL, 1);
INSERT INTO `think_city` VALUES (2813, 2811, 3, '金台区', '610303', NULL, 1);
INSERT INTO `think_city` VALUES (2814, 2811, 3, '陈仓区', '610304', NULL, 1);
INSERT INTO `think_city` VALUES (2815, 2811, 3, '凤翔县', '610322', NULL, 1);
INSERT INTO `think_city` VALUES (2816, 2811, 3, '岐山县', '610323', NULL, 1);
INSERT INTO `think_city` VALUES (2817, 2811, 3, '扶风县', '610324', NULL, 1);
INSERT INTO `think_city` VALUES (2818, 2811, 3, '眉县', '610326', NULL, 1);
INSERT INTO `think_city` VALUES (2819, 2811, 3, '陇县', '610327', NULL, 1);
INSERT INTO `think_city` VALUES (2820, 2811, 3, '千阳县', '610328', NULL, 1);
INSERT INTO `think_city` VALUES (2821, 2811, 3, '麟游县', '610329', NULL, 1);
INSERT INTO `think_city` VALUES (2822, 2811, 3, '凤县', '610330', NULL, 1);
INSERT INTO `think_city` VALUES (2823, 2811, 3, '太白县', '610331', NULL, 1);
INSERT INTO `think_city` VALUES (2824, 2791, 2, '咸阳市', '610400', NULL, 1);
INSERT INTO `think_city` VALUES (2825, 2824, 3, '秦都区', '610402', NULL, 1);
INSERT INTO `think_city` VALUES (2826, 2824, 3, '杨陵区', '610403', NULL, 1);
INSERT INTO `think_city` VALUES (2827, 2824, 3, '渭城区', '610404', NULL, 1);
INSERT INTO `think_city` VALUES (2828, 2824, 3, '三原县', '610422', NULL, 1);
INSERT INTO `think_city` VALUES (2829, 2824, 3, '泾阳县', '610423', NULL, 1);
INSERT INTO `think_city` VALUES (2830, 2824, 3, '乾县', '610424', NULL, 1);
INSERT INTO `think_city` VALUES (2831, 2824, 3, '礼泉县', '610425', NULL, 1);
INSERT INTO `think_city` VALUES (2832, 2824, 3, '永寿县', '610426', NULL, 1);
INSERT INTO `think_city` VALUES (2833, 2824, 3, '长武县', '610428', NULL, 1);
INSERT INTO `think_city` VALUES (2834, 2824, 3, '旬邑县', '610429', NULL, 1);
INSERT INTO `think_city` VALUES (2835, 2824, 3, '淳化县', '610430', NULL, 1);
INSERT INTO `think_city` VALUES (2836, 2824, 3, '武功县', '610431', NULL, 1);
INSERT INTO `think_city` VALUES (2837, 2824, 3, '兴平市', '610481', NULL, 1);
INSERT INTO `think_city` VALUES (2838, 2824, 3, '彬州市', '610482', NULL, 1);
INSERT INTO `think_city` VALUES (2839, 2791, 2, '渭南市', '610500', NULL, 1);
INSERT INTO `think_city` VALUES (2840, 2839, 3, '临渭区', '610502', NULL, 1);
INSERT INTO `think_city` VALUES (2841, 2839, 3, '华州区', '610503', NULL, 1);
INSERT INTO `think_city` VALUES (2842, 2839, 3, '潼关县', '610522', NULL, 1);
INSERT INTO `think_city` VALUES (2843, 2839, 3, '大荔县', '610523', NULL, 1);
INSERT INTO `think_city` VALUES (2844, 2839, 3, '合阳县', '610524', NULL, 1);
INSERT INTO `think_city` VALUES (2845, 2839, 3, '澄城县', '610525', NULL, 1);
INSERT INTO `think_city` VALUES (2846, 2839, 3, '蒲城县', '610526', NULL, 1);
INSERT INTO `think_city` VALUES (2847, 2839, 3, '白水县', '610527', NULL, 1);
INSERT INTO `think_city` VALUES (2848, 2839, 3, '富平县', '610528', NULL, 1);
INSERT INTO `think_city` VALUES (2849, 2839, 3, '韩城市', '610581', NULL, 1);
INSERT INTO `think_city` VALUES (2850, 2839, 3, '华阴市', '610582', NULL, 1);
INSERT INTO `think_city` VALUES (2851, 2791, 2, '延安市', '610600', NULL, 1);
INSERT INTO `think_city` VALUES (2852, 2851, 3, '宝塔区', '610602', NULL, 1);
INSERT INTO `think_city` VALUES (2853, 2851, 3, '安塞区', '610603', NULL, 1);
INSERT INTO `think_city` VALUES (2854, 2851, 3, '延长县', '610621', NULL, 1);
INSERT INTO `think_city` VALUES (2855, 2851, 3, '延川县', '610622', NULL, 1);
INSERT INTO `think_city` VALUES (2856, 2851, 3, '志丹县', '610625', NULL, 1);
INSERT INTO `think_city` VALUES (2857, 2851, 3, '吴起县', '610626', NULL, 1);
INSERT INTO `think_city` VALUES (2858, 2851, 3, '甘泉县', '610627', NULL, 1);
INSERT INTO `think_city` VALUES (2859, 2851, 3, '富县', '610628', NULL, 1);
INSERT INTO `think_city` VALUES (2860, 2851, 3, '洛川县', '610629', NULL, 1);
INSERT INTO `think_city` VALUES (2861, 2851, 3, '宜川县', '610630', NULL, 1);
INSERT INTO `think_city` VALUES (2862, 2851, 3, '黄龙县', '610631', NULL, 1);
INSERT INTO `think_city` VALUES (2863, 2851, 3, '黄陵县', '610632', NULL, 1);
INSERT INTO `think_city` VALUES (2864, 2851, 3, '子长市', '610681', NULL, 1);
INSERT INTO `think_city` VALUES (2865, 2791, 2, '汉中市', '610700', NULL, 1);
INSERT INTO `think_city` VALUES (2866, 2865, 3, '汉台区', '610702', NULL, 1);
INSERT INTO `think_city` VALUES (2867, 2865, 3, '南郑区', '610703', NULL, 1);
INSERT INTO `think_city` VALUES (2868, 2865, 3, '城固县', '610722', NULL, 1);
INSERT INTO `think_city` VALUES (2869, 2865, 3, '洋县', '610723', NULL, 1);
INSERT INTO `think_city` VALUES (2870, 2865, 3, '西乡县', '610724', NULL, 1);
INSERT INTO `think_city` VALUES (2871, 2865, 3, '勉县', '610725', NULL, 1);
INSERT INTO `think_city` VALUES (2872, 2865, 3, '宁强县', '610726', NULL, 1);
INSERT INTO `think_city` VALUES (2873, 2865, 3, '略阳县', '610727', NULL, 1);
INSERT INTO `think_city` VALUES (2874, 2865, 3, '镇巴县', '610728', NULL, 1);
INSERT INTO `think_city` VALUES (2875, 2865, 3, '留坝县', '610729', NULL, 1);
INSERT INTO `think_city` VALUES (2876, 2865, 3, '佛坪县', '610730', NULL, 1);
INSERT INTO `think_city` VALUES (2877, 2791, 2, '榆林市', '610800', NULL, 1);
INSERT INTO `think_city` VALUES (2878, 2877, 3, '榆阳区', '610802', NULL, 1);
INSERT INTO `think_city` VALUES (2879, 2877, 3, '横山区', '610803', NULL, 1);
INSERT INTO `think_city` VALUES (2880, 2877, 3, '府谷县', '610822', NULL, 1);
INSERT INTO `think_city` VALUES (2881, 2877, 3, '靖边县', '610824', NULL, 1);
INSERT INTO `think_city` VALUES (2882, 2877, 3, '定边县', '610825', NULL, 1);
INSERT INTO `think_city` VALUES (2883, 2877, 3, '绥德县', '610826', NULL, 1);
INSERT INTO `think_city` VALUES (2884, 2877, 3, '米脂县', '610827', NULL, 1);
INSERT INTO `think_city` VALUES (2885, 2877, 3, '佳县', '610828', NULL, 1);
INSERT INTO `think_city` VALUES (2886, 2877, 3, '吴堡县', '610829', NULL, 1);
INSERT INTO `think_city` VALUES (2887, 2877, 3, '清涧县', '610830', NULL, 1);
INSERT INTO `think_city` VALUES (2888, 2877, 3, '子洲县', '610831', NULL, 1);
INSERT INTO `think_city` VALUES (2889, 2877, 3, '神木市', '610881', NULL, 1);
INSERT INTO `think_city` VALUES (2890, 2791, 2, '安康市', '610900', NULL, 1);
INSERT INTO `think_city` VALUES (2891, 2890, 3, '汉滨区', '610902', NULL, 1);
INSERT INTO `think_city` VALUES (2892, 2890, 3, '汉阴县', '610921', NULL, 1);
INSERT INTO `think_city` VALUES (2893, 2890, 3, '石泉县', '610922', NULL, 1);
INSERT INTO `think_city` VALUES (2894, 2890, 3, '宁陕县', '610923', NULL, 1);
INSERT INTO `think_city` VALUES (2895, 2890, 3, '紫阳县', '610924', NULL, 1);
INSERT INTO `think_city` VALUES (2896, 2890, 3, '岚皋县', '610925', NULL, 1);
INSERT INTO `think_city` VALUES (2897, 2890, 3, '平利县', '610926', NULL, 1);
INSERT INTO `think_city` VALUES (2898, 2890, 3, '镇坪县', '610927', NULL, 1);
INSERT INTO `think_city` VALUES (2899, 2890, 3, '旬阳县', '610928', NULL, 1);
INSERT INTO `think_city` VALUES (2900, 2890, 3, '白河县', '610929', NULL, 1);
INSERT INTO `think_city` VALUES (2901, 2791, 2, '商洛市', '611000', NULL, 1);
INSERT INTO `think_city` VALUES (2902, 2901, 3, '商州区', '611002', NULL, 1);
INSERT INTO `think_city` VALUES (2903, 2901, 3, '洛南县', '611021', NULL, 1);
INSERT INTO `think_city` VALUES (2904, 2901, 3, '丹凤县', '611022', NULL, 1);
INSERT INTO `think_city` VALUES (2905, 2901, 3, '商南县', '611023', NULL, 1);
INSERT INTO `think_city` VALUES (2906, 2901, 3, '山阳县', '611024', NULL, 1);
INSERT INTO `think_city` VALUES (2907, 2901, 3, '镇安县', '611025', NULL, 1);
INSERT INTO `think_city` VALUES (2908, 2901, 3, '柞水县', '611026', NULL, 1);
INSERT INTO `think_city` VALUES (2909, 0, 1, '甘肃省', '620000', NULL, 1);
INSERT INTO `think_city` VALUES (2910, 2909, 2, '兰州市', '620100', NULL, 1);
INSERT INTO `think_city` VALUES (2911, 2910, 3, '城关区', '620102', NULL, 1);
INSERT INTO `think_city` VALUES (2912, 2910, 3, '七里河区', '620103', NULL, 1);
INSERT INTO `think_city` VALUES (2913, 2910, 3, '西固区', '620104', NULL, 1);
INSERT INTO `think_city` VALUES (2914, 2910, 3, '安宁区', '620105', NULL, 1);
INSERT INTO `think_city` VALUES (2915, 2910, 3, '红古区', '620111', NULL, 1);
INSERT INTO `think_city` VALUES (2916, 2910, 3, '永登县', '620121', NULL, 1);
INSERT INTO `think_city` VALUES (2917, 2910, 3, '皋兰县', '620122', NULL, 1);
INSERT INTO `think_city` VALUES (2918, 2910, 3, '榆中县', '620123', NULL, 1);
INSERT INTO `think_city` VALUES (2919, 2909, 2, '嘉峪关市', '620200', NULL, 1);
INSERT INTO `think_city` VALUES (2920, 2909, 2, '金昌市', '620300', NULL, 1);
INSERT INTO `think_city` VALUES (2921, 2920, 3, '金川区', '620302', NULL, 1);
INSERT INTO `think_city` VALUES (2922, 2920, 3, '永昌县', '620321', NULL, 1);
INSERT INTO `think_city` VALUES (2923, 2909, 2, '白银市', '620400', NULL, 1);
INSERT INTO `think_city` VALUES (2924, 2923, 3, '白银区', '620402', NULL, 1);
INSERT INTO `think_city` VALUES (2925, 2923, 3, '平川区', '620403', NULL, 1);
INSERT INTO `think_city` VALUES (2926, 2923, 3, '靖远县', '620421', NULL, 1);
INSERT INTO `think_city` VALUES (2927, 2923, 3, '会宁县', '620422', NULL, 1);
INSERT INTO `think_city` VALUES (2928, 2923, 3, '景泰县', '620423', NULL, 1);
INSERT INTO `think_city` VALUES (2929, 2909, 2, '天水市', '620500', NULL, 1);
INSERT INTO `think_city` VALUES (2930, 2929, 3, '秦州区', '620502', NULL, 1);
INSERT INTO `think_city` VALUES (2931, 2929, 3, '麦积区', '620503', NULL, 1);
INSERT INTO `think_city` VALUES (2932, 2929, 3, '清水县', '620521', NULL, 1);
INSERT INTO `think_city` VALUES (2933, 2929, 3, '秦安县', '620522', NULL, 1);
INSERT INTO `think_city` VALUES (2934, 2929, 3, '甘谷县', '620523', NULL, 1);
INSERT INTO `think_city` VALUES (2935, 2929, 3, '武山县', '620524', NULL, 1);
INSERT INTO `think_city` VALUES (2936, 2929, 3, '张家川回族自治县', '620525', NULL, 1);
INSERT INTO `think_city` VALUES (2937, 2909, 2, '武威市', '620600', NULL, 1);
INSERT INTO `think_city` VALUES (2938, 2937, 3, '凉州区', '620602', NULL, 1);
INSERT INTO `think_city` VALUES (2939, 2937, 3, '民勤县', '620621', NULL, 1);
INSERT INTO `think_city` VALUES (2940, 2937, 3, '古浪县', '620622', NULL, 1);
INSERT INTO `think_city` VALUES (2941, 2937, 3, '天祝藏族自治县', '620623', NULL, 1);
INSERT INTO `think_city` VALUES (2942, 2909, 2, '张掖市', '620700', NULL, 1);
INSERT INTO `think_city` VALUES (2943, 2942, 3, '甘州区', '620702', NULL, 1);
INSERT INTO `think_city` VALUES (2944, 2942, 3, '肃南裕固族自治县', '620721', NULL, 1);
INSERT INTO `think_city` VALUES (2945, 2942, 3, '民乐县', '620722', NULL, 1);
INSERT INTO `think_city` VALUES (2946, 2942, 3, '临泽县', '620723', NULL, 1);
INSERT INTO `think_city` VALUES (2947, 2942, 3, '高台县', '620724', NULL, 1);
INSERT INTO `think_city` VALUES (2948, 2942, 3, '山丹县', '620725', NULL, 1);
INSERT INTO `think_city` VALUES (2949, 2942, 3, '平凉市', '620800', NULL, 1);
INSERT INTO `think_city` VALUES (2950, 2942, 3, '崆峒区', '620802', NULL, 1);
INSERT INTO `think_city` VALUES (2951, 2942, 3, '泾川县', '620821', NULL, 1);
INSERT INTO `think_city` VALUES (2952, 2942, 3, '灵台县', '620822', NULL, 1);
INSERT INTO `think_city` VALUES (2953, 2942, 3, '崇信县', '620823', NULL, 1);
INSERT INTO `think_city` VALUES (2954, 2942, 3, '庄浪县', '620825', NULL, 1);
INSERT INTO `think_city` VALUES (2955, 2942, 3, '静宁县', '620826', NULL, 1);
INSERT INTO `think_city` VALUES (2956, 2942, 3, '华亭市', '620881', NULL, 1);
INSERT INTO `think_city` VALUES (2957, 2909, 2, '酒泉市', '620900', NULL, 1);
INSERT INTO `think_city` VALUES (2958, 2957, 3, '肃州区', '620902', NULL, 1);
INSERT INTO `think_city` VALUES (2959, 2957, 3, '金塔县', '620921', NULL, 1);
INSERT INTO `think_city` VALUES (2960, 2957, 3, '瓜州县', '620922', NULL, 1);
INSERT INTO `think_city` VALUES (2961, 2957, 3, '肃北蒙古族自治县', '620923', NULL, 1);
INSERT INTO `think_city` VALUES (2962, 2957, 3, '阿克塞哈萨克族自治县', '620924', NULL, 1);
INSERT INTO `think_city` VALUES (2963, 2957, 3, '玉门市', '620981', NULL, 1);
INSERT INTO `think_city` VALUES (2964, 2957, 3, '敦煌市', '620982', NULL, 1);
INSERT INTO `think_city` VALUES (2965, 2909, 2, '庆阳市', '621000', NULL, 1);
INSERT INTO `think_city` VALUES (2966, 2965, 3, '西峰区', '621002', NULL, 1);
INSERT INTO `think_city` VALUES (2967, 2965, 3, '庆城县', '621021', NULL, 1);
INSERT INTO `think_city` VALUES (2968, 2965, 3, '环县', '621022', NULL, 1);
INSERT INTO `think_city` VALUES (2969, 2965, 3, '华池县', '621023', NULL, 1);
INSERT INTO `think_city` VALUES (2970, 2965, 3, '合水县', '621024', NULL, 1);
INSERT INTO `think_city` VALUES (2971, 2965, 3, '正宁县', '621025', NULL, 1);
INSERT INTO `think_city` VALUES (2972, 2965, 3, '宁县', '621026', NULL, 1);
INSERT INTO `think_city` VALUES (2973, 2965, 3, '镇原县', '621027', NULL, 1);
INSERT INTO `think_city` VALUES (2974, 2909, 2, '定西市', '621100', NULL, 1);
INSERT INTO `think_city` VALUES (2975, 2974, 3, '安定区', '621102', NULL, 1);
INSERT INTO `think_city` VALUES (2976, 2974, 3, '通渭县', '621121', NULL, 1);
INSERT INTO `think_city` VALUES (2977, 2974, 3, '陇西县', '621122', NULL, 1);
INSERT INTO `think_city` VALUES (2978, 2974, 3, '渭源县', '621123', NULL, 1);
INSERT INTO `think_city` VALUES (2979, 2974, 3, '临洮县', '621124', NULL, 1);
INSERT INTO `think_city` VALUES (2980, 2974, 3, '漳县', '621125', NULL, 1);
INSERT INTO `think_city` VALUES (2981, 2974, 3, '岷县', '621126', NULL, 1);
INSERT INTO `think_city` VALUES (2982, 2909, 2, '陇南市', '621200', NULL, 1);
INSERT INTO `think_city` VALUES (2983, 2982, 3, '武都区', '621202', NULL, 1);
INSERT INTO `think_city` VALUES (2984, 2982, 3, '成县', '621221', NULL, 1);
INSERT INTO `think_city` VALUES (2985, 2982, 3, '文县', '621222', NULL, 1);
INSERT INTO `think_city` VALUES (2986, 2982, 3, '宕昌县', '621223', NULL, 1);
INSERT INTO `think_city` VALUES (2987, 2982, 3, '康县', '621224', NULL, 1);
INSERT INTO `think_city` VALUES (2988, 2982, 3, '西和县', '621225', NULL, 1);
INSERT INTO `think_city` VALUES (2989, 2982, 3, '礼县', '621226', NULL, 1);
INSERT INTO `think_city` VALUES (2990, 2982, 3, '徽县', '621227', NULL, 1);
INSERT INTO `think_city` VALUES (2991, 2982, 3, '两当县', '621228', NULL, 1);
INSERT INTO `think_city` VALUES (2992, 2909, 2, '临夏回族自治州', '622900', NULL, 1);
INSERT INTO `think_city` VALUES (2993, 2992, 3, '临夏市', '622901', NULL, 1);
INSERT INTO `think_city` VALUES (2994, 2992, 3, '临夏县', '622921', NULL, 1);
INSERT INTO `think_city` VALUES (2995, 2992, 3, '康乐县', '622922', NULL, 1);
INSERT INTO `think_city` VALUES (2996, 2992, 3, '永靖县', '622923', NULL, 1);
INSERT INTO `think_city` VALUES (2997, 2992, 3, '广河县', '622924', NULL, 1);
INSERT INTO `think_city` VALUES (2998, 2992, 3, '和政县', '622925', NULL, 1);
INSERT INTO `think_city` VALUES (2999, 2992, 3, '东乡族自治县', '622926', NULL, 1);
INSERT INTO `think_city` VALUES (3000, 2992, 3, '积石山保安族东乡族撒拉族自治县', '622927', NULL, 1);
INSERT INTO `think_city` VALUES (3001, 2909, 2, '甘南藏族自治州', '623000', NULL, 1);
INSERT INTO `think_city` VALUES (3002, 3001, 3, '合作市', '623001', NULL, 1);
INSERT INTO `think_city` VALUES (3003, 3001, 3, '临潭县', '623021', NULL, 1);
INSERT INTO `think_city` VALUES (3004, 3001, 3, '卓尼县', '623022', NULL, 1);
INSERT INTO `think_city` VALUES (3005, 3001, 3, '舟曲县', '623023', NULL, 1);
INSERT INTO `think_city` VALUES (3006, 3001, 3, '迭部县', '623024', NULL, 1);
INSERT INTO `think_city` VALUES (3007, 3001, 3, '玛曲县', '623025', NULL, 1);
INSERT INTO `think_city` VALUES (3008, 3001, 3, '碌曲县', '623026', NULL, 1);
INSERT INTO `think_city` VALUES (3009, 3001, 3, '夏河县', '623027', NULL, 1);
INSERT INTO `think_city` VALUES (3010, 0, 1, '青海省', '630000', NULL, 1);
INSERT INTO `think_city` VALUES (3011, 3010, 2, '西宁市', '630100', NULL, 1);
INSERT INTO `think_city` VALUES (3012, 3011, 3, '城东区', '630102', NULL, 1);
INSERT INTO `think_city` VALUES (3013, 3011, 3, '城中区', '630103', NULL, 1);
INSERT INTO `think_city` VALUES (3014, 3011, 3, '城西区', '630104', NULL, 1);
INSERT INTO `think_city` VALUES (3015, 3011, 3, '城北区', '630105', NULL, 1);
INSERT INTO `think_city` VALUES (3016, 3011, 3, '湟中区', '630106', NULL, 1);
INSERT INTO `think_city` VALUES (3017, 3011, 3, '大通回族土族自治县', '630121', NULL, 1);
INSERT INTO `think_city` VALUES (3018, 3011, 3, '湟源县', '630123', NULL, 1);
INSERT INTO `think_city` VALUES (3019, 3010, 2, '海东市', '630200', NULL, 1);
INSERT INTO `think_city` VALUES (3020, 3019, 3, '乐都区', '630202', NULL, 1);
INSERT INTO `think_city` VALUES (3021, 3019, 3, '平安区', '630203', NULL, 1);
INSERT INTO `think_city` VALUES (3022, 3019, 3, '民和回族土族自治县', '630222', NULL, 1);
INSERT INTO `think_city` VALUES (3023, 3019, 3, '互助土族自治县', '630223', NULL, 1);
INSERT INTO `think_city` VALUES (3024, 3019, 3, '化隆回族自治县', '630224', NULL, 1);
INSERT INTO `think_city` VALUES (3025, 3019, 3, '循化撒拉族自治县', '630225', NULL, 1);
INSERT INTO `think_city` VALUES (3026, 3010, 2, '海北藏族自治州', '632200', NULL, 1);
INSERT INTO `think_city` VALUES (3027, 3026, 3, '门源回族自治县', '632221', NULL, 1);
INSERT INTO `think_city` VALUES (3028, 3026, 3, '祁连县', '632222', NULL, 1);
INSERT INTO `think_city` VALUES (3029, 3026, 3, '海晏县', '632223', NULL, 1);
INSERT INTO `think_city` VALUES (3030, 3026, 3, '刚察县', '632224', NULL, 1);
INSERT INTO `think_city` VALUES (3031, 3010, 2, '黄南藏族自治州', '632300', NULL, 1);
INSERT INTO `think_city` VALUES (3032, 3031, 3, '同仁市', '632301', NULL, 1);
INSERT INTO `think_city` VALUES (3033, 3031, 3, '尖扎县', '632322', NULL, 1);
INSERT INTO `think_city` VALUES (3034, 3031, 3, '泽库县', '632323', NULL, 1);
INSERT INTO `think_city` VALUES (3035, 3031, 3, '河南蒙古族自治县', '632324', NULL, 1);
INSERT INTO `think_city` VALUES (3036, 3010, 2, '海南藏族自治州', '632500', NULL, 1);
INSERT INTO `think_city` VALUES (3037, 3036, 3, '共和县', '632521', NULL, 1);
INSERT INTO `think_city` VALUES (3038, 3036, 3, '同德县', '632522', NULL, 1);
INSERT INTO `think_city` VALUES (3039, 3036, 3, '贵德县', '632523', NULL, 1);
INSERT INTO `think_city` VALUES (3040, 3036, 3, '兴海县', '632524', NULL, 1);
INSERT INTO `think_city` VALUES (3041, 3036, 3, '贵南县', '632525', NULL, 1);
INSERT INTO `think_city` VALUES (3042, 3010, 2, '果洛藏族自治州', '632600', NULL, 1);
INSERT INTO `think_city` VALUES (3043, 3042, 3, '玛沁县', '632621', NULL, 1);
INSERT INTO `think_city` VALUES (3044, 3042, 3, '班玛县', '632622', NULL, 1);
INSERT INTO `think_city` VALUES (3045, 3042, 3, '甘德县', '632623', NULL, 1);
INSERT INTO `think_city` VALUES (3046, 3042, 3, '达日县', '632624', NULL, 1);
INSERT INTO `think_city` VALUES (3047, 3042, 3, '久治县', '632625', NULL, 1);
INSERT INTO `think_city` VALUES (3048, 3042, 3, '玛多县', '632626', NULL, 1);
INSERT INTO `think_city` VALUES (3049, 3010, 2, '玉树藏族自治州', '632700', NULL, 1);
INSERT INTO `think_city` VALUES (3050, 3049, 3, '玉树市', '632701', NULL, 1);
INSERT INTO `think_city` VALUES (3051, 3049, 3, '杂多县', '632722', NULL, 1);
INSERT INTO `think_city` VALUES (3052, 3049, 3, '称多县', '632723', NULL, 1);
INSERT INTO `think_city` VALUES (3053, 3049, 3, '治多县', '632724', NULL, 1);
INSERT INTO `think_city` VALUES (3054, 3049, 3, '囊谦县', '632725', NULL, 1);
INSERT INTO `think_city` VALUES (3055, 3049, 3, '曲麻莱县', '632726', NULL, 1);
INSERT INTO `think_city` VALUES (3056, 3010, 2, '海西蒙古族藏族自治州', '632800', NULL, 1);
INSERT INTO `think_city` VALUES (3057, 3056, 3, '格尔木市', '632801', NULL, 1);
INSERT INTO `think_city` VALUES (3058, 3056, 3, '德令哈市', '632802', NULL, 1);
INSERT INTO `think_city` VALUES (3059, 3056, 3, '茫崖市', '632803', NULL, 1);
INSERT INTO `think_city` VALUES (3060, 3056, 3, '乌兰县', '632821', NULL, 1);
INSERT INTO `think_city` VALUES (3061, 3056, 3, '都兰县', '632822', NULL, 1);
INSERT INTO `think_city` VALUES (3062, 3056, 3, '天峻县', '632823', NULL, 1);
INSERT INTO `think_city` VALUES (3063, 0, 1, '宁夏回族自治区', '640000', NULL, 1);
INSERT INTO `think_city` VALUES (3064, 3063, 2, '银川市', '640100', NULL, 1);
INSERT INTO `think_city` VALUES (3065, 3064, 3, '兴庆区', '640104', NULL, 1);
INSERT INTO `think_city` VALUES (3066, 3064, 3, '西夏区', '640105', NULL, 1);
INSERT INTO `think_city` VALUES (3067, 3064, 3, '金凤区', '640106', NULL, 1);
INSERT INTO `think_city` VALUES (3068, 3064, 3, '永宁县', '640121', NULL, 1);
INSERT INTO `think_city` VALUES (3069, 3064, 3, '贺兰县', '640122', NULL, 1);
INSERT INTO `think_city` VALUES (3070, 3064, 3, '灵武市', '640181', NULL, 1);
INSERT INTO `think_city` VALUES (3071, 3063, 2, '石嘴山市', '640200', NULL, 1);
INSERT INTO `think_city` VALUES (3072, 3071, 3, '大武口区', '640202', NULL, 1);
INSERT INTO `think_city` VALUES (3073, 3071, 3, '惠农区', '640205', NULL, 1);
INSERT INTO `think_city` VALUES (3074, 3071, 3, '平罗县', '640221', NULL, 1);
INSERT INTO `think_city` VALUES (3075, 3071, 3, '吴忠市', '640300', NULL, 1);
INSERT INTO `think_city` VALUES (3076, 3071, 3, '利通区', '640302', NULL, 1);
INSERT INTO `think_city` VALUES (3077, 3071, 3, '红寺堡区', '640303', NULL, 1);
INSERT INTO `think_city` VALUES (3078, 3071, 3, '盐池县', '640323', NULL, 1);
INSERT INTO `think_city` VALUES (3079, 3071, 3, '同心县', '640324', NULL, 1);
INSERT INTO `think_city` VALUES (3080, 3071, 3, '青铜峡市', '640381', NULL, 1);
INSERT INTO `think_city` VALUES (3081, 3063, 2, '固原市', '640400', NULL, 1);
INSERT INTO `think_city` VALUES (3082, 3081, 3, '原州区', '640402', NULL, 1);
INSERT INTO `think_city` VALUES (3083, 3081, 3, '西吉县', '640422', NULL, 1);
INSERT INTO `think_city` VALUES (3084, 3081, 3, '隆德县', '640423', NULL, 1);
INSERT INTO `think_city` VALUES (3085, 3081, 3, '泾源县', '640424', NULL, 1);
INSERT INTO `think_city` VALUES (3086, 3081, 3, '彭阳县', '640425', NULL, 1);
INSERT INTO `think_city` VALUES (3087, 3063, 2, '中卫市', '640500', NULL, 1);
INSERT INTO `think_city` VALUES (3088, 3087, 3, '沙坡头区', '640502', NULL, 1);
INSERT INTO `think_city` VALUES (3089, 3087, 3, '中宁县', '640521', NULL, 1);
INSERT INTO `think_city` VALUES (3090, 3087, 3, '海原县', '640522', NULL, 1);
INSERT INTO `think_city` VALUES (3091, 0, 1, '新疆维吾尔自治区', '650000', NULL, 1);
INSERT INTO `think_city` VALUES (3092, 3091, 2, '乌鲁木齐市', '650100', NULL, 1);
INSERT INTO `think_city` VALUES (3093, 3092, 3, '天山区', '650102', NULL, 1);
INSERT INTO `think_city` VALUES (3094, 3092, 3, '沙依巴克区', '650103', NULL, 1);
INSERT INTO `think_city` VALUES (3095, 3092, 3, '新市区', '650104', NULL, 1);
INSERT INTO `think_city` VALUES (3096, 3092, 3, '水磨沟区', '650105', NULL, 1);
INSERT INTO `think_city` VALUES (3097, 3092, 3, '头屯河区', '650106', NULL, 1);
INSERT INTO `think_city` VALUES (3098, 3092, 3, '达坂城区', '650107', NULL, 1);
INSERT INTO `think_city` VALUES (3099, 3092, 3, '米东区', '650109', NULL, 1);
INSERT INTO `think_city` VALUES (3100, 3092, 3, '乌鲁木齐县', '650121', NULL, 1);
INSERT INTO `think_city` VALUES (3101, 3091, 2, '克拉玛依市', '650200', NULL, 1);
INSERT INTO `think_city` VALUES (3102, 3101, 3, '独山子区', '650202', NULL, 1);
INSERT INTO `think_city` VALUES (3103, 3101, 3, '克拉玛依区', '650203', NULL, 1);
INSERT INTO `think_city` VALUES (3104, 3101, 3, '白碱滩区', '650204', NULL, 1);
INSERT INTO `think_city` VALUES (3105, 3101, 3, '乌尔禾区', '650205', NULL, 1);
INSERT INTO `think_city` VALUES (3106, 3091, 2, '吐鲁番市', '650400', NULL, 1);
INSERT INTO `think_city` VALUES (3107, 3106, 3, '高昌区', '650402', NULL, 1);
INSERT INTO `think_city` VALUES (3108, 3106, 3, '鄯善县', '650421', NULL, 1);
INSERT INTO `think_city` VALUES (3109, 3106, 3, '托克逊县', '650422', NULL, 1);
INSERT INTO `think_city` VALUES (3110, 3091, 2, '哈密市', '650500', NULL, 1);
INSERT INTO `think_city` VALUES (3111, 3110, 3, '伊州区', '650502', NULL, 1);
INSERT INTO `think_city` VALUES (3112, 3110, 3, '巴里坤哈萨克自治县', '650521', NULL, 1);
INSERT INTO `think_city` VALUES (3113, 3110, 3, '伊吾县', '650522', NULL, 1);
INSERT INTO `think_city` VALUES (3114, 3091, 2, '昌吉回族自治州', '652300', NULL, 1);
INSERT INTO `think_city` VALUES (3115, 3114, 3, '昌吉市', '652301', NULL, 1);
INSERT INTO `think_city` VALUES (3116, 3114, 3, '阜康市', '652302', NULL, 1);
INSERT INTO `think_city` VALUES (3117, 3114, 3, '呼图壁县', '652323', NULL, 1);
INSERT INTO `think_city` VALUES (3118, 3114, 3, '玛纳斯县', '652324', NULL, 1);
INSERT INTO `think_city` VALUES (3119, 3114, 3, '奇台县', '652325', NULL, 1);
INSERT INTO `think_city` VALUES (3120, 3114, 3, '吉木萨尔县', '652327', NULL, 1);
INSERT INTO `think_city` VALUES (3121, 3114, 3, '木垒哈萨克自治县', '652328', NULL, 1);
INSERT INTO `think_city` VALUES (3122, 3091, 2, '博尔塔拉蒙古自治州', '652700', NULL, 1);
INSERT INTO `think_city` VALUES (3123, 3122, 3, '博乐市', '652701', NULL, 1);
INSERT INTO `think_city` VALUES (3124, 3122, 3, '阿拉山口市', '652702', NULL, 1);
INSERT INTO `think_city` VALUES (3125, 3122, 3, '精河县', '652722', NULL, 1);
INSERT INTO `think_city` VALUES (3126, 3122, 3, '温泉县', '652723', NULL, 1);
INSERT INTO `think_city` VALUES (3127, 3091, 2, '巴音郭楞蒙古自治州', '652800', NULL, 1);
INSERT INTO `think_city` VALUES (3128, 3127, 3, '库尔勒市', '652801', NULL, 1);
INSERT INTO `think_city` VALUES (3129, 3127, 3, '轮台县', '652822', NULL, 1);
INSERT INTO `think_city` VALUES (3130, 3127, 3, '尉犁县', '652823', NULL, 1);
INSERT INTO `think_city` VALUES (3131, 3127, 3, '若羌县', '652824', NULL, 1);
INSERT INTO `think_city` VALUES (3132, 3127, 3, '且末县', '652825', NULL, 1);
INSERT INTO `think_city` VALUES (3133, 3127, 3, '焉耆回族自治县', '652826', NULL, 1);
INSERT INTO `think_city` VALUES (3134, 3127, 3, '和静县', '652827', NULL, 1);
INSERT INTO `think_city` VALUES (3135, 3127, 3, '和硕县', '652828', NULL, 1);
INSERT INTO `think_city` VALUES (3136, 3127, 3, '博湖县', '652829', NULL, 1);
INSERT INTO `think_city` VALUES (3137, 3091, 2, '阿克苏地区', '652900', NULL, 1);
INSERT INTO `think_city` VALUES (3138, 3137, 3, '阿克苏市', '652901', NULL, 1);
INSERT INTO `think_city` VALUES (3139, 3137, 3, '库车市', '652902', NULL, 1);
INSERT INTO `think_city` VALUES (3140, 3137, 3, '温宿县', '652922', NULL, 1);
INSERT INTO `think_city` VALUES (3141, 3137, 3, '沙雅县', '652924', NULL, 1);
INSERT INTO `think_city` VALUES (3142, 3137, 3, '新和县', '652925', NULL, 1);
INSERT INTO `think_city` VALUES (3143, 3137, 3, '拜城县', '652926', NULL, 1);
INSERT INTO `think_city` VALUES (3144, 3137, 3, '乌什县', '652927', NULL, 1);
INSERT INTO `think_city` VALUES (3145, 3137, 3, '阿瓦提县', '652928', NULL, 1);
INSERT INTO `think_city` VALUES (3146, 3137, 3, '柯坪县', '652929', NULL, 1);
INSERT INTO `think_city` VALUES (3147, 3091, 2, '克孜勒苏柯尔克孜自治州', '653000', NULL, 1);
INSERT INTO `think_city` VALUES (3148, 3147, 3, '阿图什市', '653001', NULL, 1);
INSERT INTO `think_city` VALUES (3149, 3147, 3, '阿克陶县', '653022', NULL, 1);
INSERT INTO `think_city` VALUES (3150, 3147, 3, '阿合奇县', '653023', NULL, 1);
INSERT INTO `think_city` VALUES (3151, 3147, 3, '乌恰县', '653024', NULL, 1);
INSERT INTO `think_city` VALUES (3152, 3091, 2, '喀什地区', '653100', NULL, 1);
INSERT INTO `think_city` VALUES (3153, 3152, 3, '喀什市', '653101', NULL, 1);
INSERT INTO `think_city` VALUES (3154, 3152, 3, '疏附县', '653121', NULL, 1);
INSERT INTO `think_city` VALUES (3155, 3152, 3, '疏勒县', '653122', NULL, 1);
INSERT INTO `think_city` VALUES (3156, 3152, 3, '英吉沙县', '653123', NULL, 1);
INSERT INTO `think_city` VALUES (3157, 3152, 3, '泽普县', '653124', NULL, 1);
INSERT INTO `think_city` VALUES (3158, 3152, 3, '莎车县', '653125', NULL, 1);
INSERT INTO `think_city` VALUES (3159, 3152, 3, '叶城县', '653126', NULL, 1);
INSERT INTO `think_city` VALUES (3160, 3152, 3, '麦盖提县', '653127', NULL, 1);
INSERT INTO `think_city` VALUES (3161, 3152, 3, '岳普湖县', '653128', NULL, 1);
INSERT INTO `think_city` VALUES (3162, 3152, 3, '伽师县', '653129', NULL, 1);
INSERT INTO `think_city` VALUES (3163, 3152, 3, '巴楚县', '653130', NULL, 1);
INSERT INTO `think_city` VALUES (3164, 3152, 3, '塔什库尔干塔吉克自治县', '653131', NULL, 1);
INSERT INTO `think_city` VALUES (3165, 3091, 2, '和田地区', '653200', NULL, 1);
INSERT INTO `think_city` VALUES (3166, 3165, 3, '和田市', '653201', NULL, 1);
INSERT INTO `think_city` VALUES (3167, 3165, 3, '和田县', '653221', NULL, 1);
INSERT INTO `think_city` VALUES (3168, 3165, 3, '墨玉县', '653222', NULL, 1);
INSERT INTO `think_city` VALUES (3169, 3165, 3, '皮山县', '653223', NULL, 1);
INSERT INTO `think_city` VALUES (3170, 3165, 3, '洛浦县', '653224', NULL, 1);
INSERT INTO `think_city` VALUES (3171, 3165, 3, '策勒县', '653225', NULL, 1);
INSERT INTO `think_city` VALUES (3172, 3165, 3, '于田县', '653226', NULL, 1);
INSERT INTO `think_city` VALUES (3173, 3165, 3, '民丰县', '653227', NULL, 1);
INSERT INTO `think_city` VALUES (3174, 3091, 2, '伊犁哈萨克自治州', '654000', NULL, 1);
INSERT INTO `think_city` VALUES (3175, 3174, 3, '伊宁市', '654002', NULL, 1);
INSERT INTO `think_city` VALUES (3176, 3174, 3, '奎屯市', '654003', NULL, 1);
INSERT INTO `think_city` VALUES (3177, 3174, 3, '霍尔果斯市', '654004', NULL, 1);
INSERT INTO `think_city` VALUES (3178, 3174, 3, '伊宁县', '654021', NULL, 1);
INSERT INTO `think_city` VALUES (3179, 3174, 3, '察布查尔锡伯自治县', '654022', NULL, 1);
INSERT INTO `think_city` VALUES (3180, 3174, 3, '霍城县', '654023', NULL, 1);
INSERT INTO `think_city` VALUES (3181, 3174, 3, '巩留县', '654024', NULL, 1);
INSERT INTO `think_city` VALUES (3182, 3174, 3, '新源县', '654025', NULL, 1);
INSERT INTO `think_city` VALUES (3183, 3174, 3, '昭苏县', '654026', NULL, 1);
INSERT INTO `think_city` VALUES (3184, 3174, 3, '特克斯县', '654027', NULL, 1);
INSERT INTO `think_city` VALUES (3185, 3174, 3, '尼勒克县', '654028', NULL, 1);
INSERT INTO `think_city` VALUES (3186, 3091, 2, '塔城地区', '654200', NULL, 1);
INSERT INTO `think_city` VALUES (3187, 3186, 3, '塔城市', '654201', NULL, 1);
INSERT INTO `think_city` VALUES (3188, 3186, 3, '乌苏市', '654202', NULL, 1);
INSERT INTO `think_city` VALUES (3189, 3186, 3, '额敏县', '654221', NULL, 1);
INSERT INTO `think_city` VALUES (3190, 3186, 3, '沙湾县', '654223', NULL, 1);
INSERT INTO `think_city` VALUES (3191, 3186, 3, '托里县', '654224', NULL, 1);
INSERT INTO `think_city` VALUES (3192, 3186, 3, '裕民县', '654225', NULL, 1);
INSERT INTO `think_city` VALUES (3193, 3186, 3, '和布克赛尔蒙古自治县', '654226', NULL, 1);
INSERT INTO `think_city` VALUES (3194, 3091, 2, '阿勒泰地区', '654300', NULL, 1);
INSERT INTO `think_city` VALUES (3195, 3194, 3, '阿勒泰市', '654301', NULL, 1);
INSERT INTO `think_city` VALUES (3196, 3194, 3, '布尔津县', '654321', NULL, 1);
INSERT INTO `think_city` VALUES (3197, 3194, 3, '富蕴县', '654322', NULL, 1);
INSERT INTO `think_city` VALUES (3198, 3194, 3, '福海县', '654323', NULL, 1);
INSERT INTO `think_city` VALUES (3199, 3194, 3, '哈巴河县', '654324', NULL, 1);
INSERT INTO `think_city` VALUES (3200, 3194, 3, '青河县', '654325', NULL, 1);
INSERT INTO `think_city` VALUES (3201, 3194, 3, '吉木乃县', '654326', NULL, 1);
INSERT INTO `think_city` VALUES (3202, 3194, 3, '石河子市', '659001', NULL, 1);
INSERT INTO `think_city` VALUES (3203, 3194, 3, '阿拉尔市', '659002', NULL, 1);
INSERT INTO `think_city` VALUES (3204, 3194, 3, '图木舒克市', '659003', NULL, 1);
INSERT INTO `think_city` VALUES (3205, 3194, 3, '五家渠市', '659004', NULL, 1);
INSERT INTO `think_city` VALUES (3206, 3194, 3, '北屯市', '659005', NULL, 1);
INSERT INTO `think_city` VALUES (3207, 3194, 3, '铁门关市', '659006', NULL, 1);
INSERT INTO `think_city` VALUES (3208, 3194, 3, '双河市', '659007', NULL, 1);
INSERT INTO `think_city` VALUES (3209, 3194, 3, '可克达拉市', '659008', NULL, 1);
INSERT INTO `think_city` VALUES (3210, 3194, 3, '昆玉市', '659009', NULL, 1);
INSERT INTO `think_city` VALUES (3211, 3194, 3, '胡杨河市', '659010', NULL, 1);
INSERT INTO `think_city` VALUES (3212, 0, 1, '台湾省', '710000', NULL, 1);
INSERT INTO `think_city` VALUES (3213, 0, 1, '香港特别行政区', '810000', NULL, 1);
INSERT INTO `think_city` VALUES (3214, 0, 1, '澳门特别行政区', '820000', NULL, 1);

-- ----------------------------
-- Table structure for think_config
-- ----------------------------
DROP TABLE IF EXISTS `think_config`;
CREATE TABLE `think_config`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `group_id` int(10) NULL DEFAULT NULL,
  `group_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `mark` tinyint(3) NULL DEFAULT 1,
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `value` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `imgs_list` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `sort` int(10) NULL DEFAULT NULL,
  `status` tinyint(3) NULL DEFAULT NULL,
  `options` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `sub_group` int(10) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_user` int(10) NULL DEFAULT NULL,
  `create_user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `update_user` int(10) NULL DEFAULT NULL,
  `update_user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_config
-- ----------------------------
INSERT INTO `think_config` VALUES (1, 'site_name', '网站名称', 1, '基本设置', 1, 'text', '001', NULL, 1, 1, '', 0, '', '2021-01-24 15:23:03', '2021-07-14 17:17:34', 1, '管理员', 1, '管理员');
INSERT INTO `think_config` VALUES (2, 'site_url', '网站网址', 1, '基本设置', 1, 'text', 'http://www.rxthink.cn', NULL, 5, 1, '', 0, '', '2021-01-24 15:23:03', '2021-07-14 17:17:34', 1, '管理员', 1, '管理员');
INSERT INTO `think_config` VALUES (3, 'site_logo', '网站LOGO', 1, '基本设置', 1, 'image', '/images/config/20210604/dae8b4f4c4f434f3648.jpg', NULL, 10, 1, '', 0, '', '2021-01-24 15:23:03', '2021-07-14 17:17:34', 1, '管理员', 1, '管理员');
INSERT INTO `think_config` VALUES (4, 'site_contact_address', '联系地址', 1, '基本设置', 1, 'text', '江苏省南京市建邺区奥体大街168号', NULL, 15, 1, '', 0, '', '2021-01-24 15:23:03', '2021-07-14 17:17:34', 1, '管理员', 1, '管理员');
INSERT INTO `think_config` VALUES (5, 'site_contact_mobile', '联系电话', 1, '基本设置', 1, 'text', '0517-842831790', NULL, 20, 1, '', 0, '', '2021-01-24 15:23:03', '2021-07-14 17:17:34', 1, '管理员', 1, '管理员');
INSERT INTO `think_config` VALUES (6, 'site_post', '邮政编码', 1, '基本设置', 1, 'text', '221000', NULL, 25, 1, '', 0, '', '2021-01-24 15:23:03', '2021-07-14 17:17:34', 1, '管理员', 1, '管理员');
INSERT INTO `think_config` VALUES (7, 'site_email', '电子邮件', 1, '基本设置', 1, 'text', '1708375006@qq.com', NULL, 30, 1, '', 0, '', '2021-01-24 15:23:03', '2021-07-14 17:17:34', 1, '管理员', 1, '管理员');
INSERT INTO `think_config` VALUES (8, 'site_beian', '备案编号', 1, '基本设置', 1, 'text', '无寂科技', NULL, 35, 1, '', 0, '', '2021-01-24 15:23:03', '2021-07-14 17:17:34', 1, '管理员', 1, '管理员');
INSERT INTO `think_config` VALUES (9, 'site_album', '网站图册', 1, '基本设置', 1, 'images', 'a:1:{i:0;s:0:\"\";}', NULL, 40, 2, '', 0, '', '2021-01-24 15:23:03', '2021-01-24 15:23:03', 1, '管理员', 1, '管理员');
INSERT INTO `think_config` VALUES (10, 'smtp_host', 'SMTP地址', 2, '邮件设置', 1, 'text', 'smtp.qq.com', NULL, 1, 1, '', 0, '', '2021-01-24 15:23:03', '2021-07-03 17:46:03', 1, '管理员', 1, '管理员');
INSERT INTO `think_config` VALUES (11, 'smtp_port', 'SMTP端口', 2, '邮件设置', 1, 'text', '8080', NULL, 5, 1, '', 0, '', '2021-01-24 15:23:03', '2021-07-03 17:46:03', 1, '管理员', 1, '管理员');
INSERT INTO `think_config` VALUES (12, 'smtp_username', 'SMTP用户名', 2, '邮件设置', 1, 'text', 'demo', NULL, 10, 1, '', 0, '', '2021-01-24 15:23:03', '2021-07-03 17:46:03', 1, '管理员', 1, '管理员');
INSERT INTO `think_config` VALUES (13, 'smtp_password', 'SMTP密码', 2, '邮件设置', 1, 'text', '123456', NULL, 15, 1, '', 0, '', '2021-01-24 15:23:03', '2021-07-03 17:46:03', 1, '管理员', 1, '管理员');
INSERT INTO `think_config` VALUES (14, 'smtp_ssl', '启用SSL', 2, '邮件设置', 1, 'radio', '1', NULL, 20, 1, '1:启用\n2:停用', 0, '', '2021-01-24 15:23:03', '2021-07-03 17:46:03', 1, '管理员', 1, '管理员');
INSERT INTO `think_config` VALUES (15, 'smtp_from', '发件人', 2, '邮件设置', 1, 'text', '1708375006@qq.com', NULL, 25, 1, '', 0, '', '2021-01-24 15:23:03', '2021-07-03 17:46:03', 1, '管理员', 1, '管理员');
INSERT INTO `think_config` VALUES (16, 'wx_appkey', '微信AppKey', 3, '微信设置', 1, 'text', 'libo451265', NULL, 1, 1, '', 0, '', '2021-01-24 15:23:03', '2021-05-27 18:29:25', 1, '管理员', 1, '管理员');
INSERT INTO `think_config` VALUES (17, 'wx_appsecret', '微信AppSecret', 3, '微信设置', 1, 'text', '42b0e78dba6de7f637d3c7ed7ac21', NULL, 5, 1, '', 0, '', '2021-01-24 15:23:03', '2021-05-27 18:29:25', 1, '管理员', 1, '管理员');
INSERT INTO `think_config` VALUES (18, 'accessKeyId', '短信KeyId', 4, '短信设置', 1, 'text', 'LTAIiiZGTbjvFJKHMAE', NULL, 1, 1, '', 0, '', '2021-01-24 15:23:03', '2021-06-04 14:21:27', 1, '管理员', 1, '管理员');
INSERT INTO `think_config` VALUES (19, 'accessKeySecret', '短信Secret', 4, '短信设置', 1, 'text', 'xkki8v10wV3Ux637mk4eNNykTaMzNFGH', NULL, 5, 1, '', 0, '', '2021-01-24 15:23:03', '2021-06-04 14:21:27', 1, '管理员', 1, '管理员');
INSERT INTO `think_config` VALUES (20, 'signName', '短信签名', 4, '短信设置', 1, 'text', '研发中心', NULL, 10, 1, '', 0, '', '2021-01-24 15:23:03', '2021-06-04 14:21:27', 1, '管理员', 1, '管理员');
INSERT INTO `think_config` VALUES (21, 'templateCode', '模板CODE', 4, '短信设置', 1, 'text', 'SMS_1812234235', NULL, 15, 1, '', 0, '', '2021-01-24 15:23:03', '2021-06-04 14:21:27', 1, '管理员', 1, '管理员');
INSERT INTO `think_config` VALUES (22, 'templateParam', '模板参数', 4, '短信设置', 1, 'text', '{\"code\":\"12346\"}', NULL, 20, 1, '', 0, '', '2021-01-24 15:23:03', '2021-06-04 14:21:27', 1, '管理员', 1, '管理员');
INSERT INTO `think_config` VALUES (23, 'site_register', '注册日期', 1, '基本设置', 1, 'date', '2020-08-22', NULL, 125, 1, '', 0, '', '2021-01-24 15:23:03', '2021-07-14 17:17:34', 1, '管理员', 1, '管理员');
INSERT INTO `think_config` VALUES (24, 'site_register_time', '注册时间', 1, '基本设置', 1, 'datetime', '2020-08-22 05:05:05', NULL, 125, 1, '', 0, '', '2021-01-24 15:23:03', '2021-07-14 17:17:34', 1, '管理员', 1, '管理员');
INSERT INTO `think_config` VALUES (25, 'site_area', '行政区域', 1, '基本设置', 1, 'checkbox', '4,5', NULL, 125, 1, '1:南京\n2:北京\n3:上海\n4:深圳\n5:广州', 0, '', '2021-01-24 15:23:03', '2021-07-14 17:17:34', 1, '管理员', 1, '管理员');
INSERT INTO `think_config` VALUES (26, 'site_select', '下拉单选', 1, '基本设置', 1, 'select', '4', NULL, 125, 1, '1:阿仕顿\n2:阿玛尼\n3:花花公子\n4:啄木鸟', 0, '', '2021-01-24 15:23:03', '2021-07-14 17:17:34', 1, '管理员', 1, '管理员');
INSERT INTO `think_config` VALUES (27, 'site_radio', '单选按钮', 1, '基本设置', 1, 'radio', '2', NULL, 125, 1, '1:江苏省\n2:浙江省\n3:山东省\n4:福建省\n5:广东省\n6:湖北省', 0, '', '2021-01-24 15:23:03', '2021-07-14 17:17:34', 1, '管理员', 1, '管理员');
INSERT INTO `think_config` VALUES (28, 'site_editor', '富文本', 1, '基本设置', 1, 'ueditor', '222', NULL, 125, 2, '', 0, '', '2021-01-24 15:23:03', '2021-01-24 15:23:03', 1, '管理员', 1, '管理员');

-- ----------------------------
-- Table structure for think_config_group
-- ----------------------------
DROP TABLE IF EXISTS `think_config_group`;
CREATE TABLE `think_config_group`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `sort` int(10) NULL DEFAULT NULL,
  `mark` tinyint(3) NULL DEFAULT 1,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_config_group
-- ----------------------------
INSERT INTO `think_config_group` VALUES (1, '基本设置', 1, 1, NULL, NULL);
INSERT INTO `think_config_group` VALUES (2, '邮件设置', 5, 1, NULL, NULL);
INSERT INTO `think_config_group` VALUES (3, '微信设置', 10, 1, NULL, NULL);
INSERT INTO `think_config_group` VALUES (4, '短信设置', 15, 1, NULL, NULL);

-- ----------------------------
-- Table structure for think_crontab
-- ----------------------------
DROP TABLE IF EXISTS `think_crontab`;
CREATE TABLE `think_crontab`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) NULL DEFAULT NULL,
  `sort` int(10) NULL DEFAULT NULL,
  `mark` tinyint(3) NULL DEFAULT 1,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `schedule` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `maximums` int(10) NULL DEFAULT NULL,
  `execute_time` int(10) NULL DEFAULT 0,
  `executes` int(10) NULL DEFAULT 0,
  `sleep` int(10) NULL DEFAULT NULL,
  `start_time` int(10) NULL DEFAULT NULL,
  `end_time` int(10) NULL DEFAULT NULL,
  `weigh` int(10) NULL DEFAULT NULL,
  `status` int(10) NULL DEFAULT 1,
  `create_user` int(10) NULL DEFAULT NULL,
  `create_user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `update_user` int(10) NULL DEFAULT NULL,
  `update_user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_crontab
-- ----------------------------
INSERT INTO `think_crontab` VALUES (33, 3, 125, 1, '订单状态处理', '*/2 * * * * /bin/sh /www/shell/orderstatus.sh ', '订单状态处理', 10, 1, 0, 0, 1594915200, 1595433600, 8, 1, 1, '管理员', 1, '管理员', '2021-07-18 15:47:30', '2021-07-18 15:53:28');

-- ----------------------------
-- Table structure for think_demo3
-- ----------------------------
DROP TABLE IF EXISTS `think_demo3`;
CREATE TABLE `think_demo3`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `type` tinyint(3) NULL DEFAULT NULL,
  `is_vip` tinyint(3) NULL DEFAULT NULL,
  `status` tinyint(3) NULL DEFAULT 1,
  `sort` int(10) NULL DEFAULT NULL,
  `mark` tinyint(3) NULL DEFAULT 1,
  `create_user` int(10) NULL DEFAULT NULL,
  `create_user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `update_user` int(10) NULL DEFAULT NULL,
  `update_user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_demo3
-- ----------------------------
INSERT INTO `think_demo3` VALUES (1, '总经理', 'http://images.pro6.rxthink.cn/images/demo/20210124/1eb860bfde2e16a7557.jpg', 1, 2, 1, 250, 1, 1, '管理员', 1, '管理员', '2021-07-18 14:44:34', '2021-07-18 14:44:37');
INSERT INTO `think_demo3` VALUES (2, '副总经理', 'http://images.pro6.rxthink.cn/images/demo/20210124/1eb860bfde2e16a7557.jpg', 2, 2, 1, 250, 1, 1, '管理员', 1, '管理员', '2021-07-18 14:44:34', '2021-07-18 14:44:37');

-- ----------------------------
-- Table structure for think_dep
-- ----------------------------
DROP TABLE IF EXISTS `think_dep`;
CREATE TABLE `think_dep`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pid` int(10) NULL DEFAULT NULL,
  `type` tinyint(3) NULL DEFAULT 0 COMMENT '1公司 2部门',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `sort` int(10) NULL DEFAULT NULL,
  `mark` tinyint(3) NULL DEFAULT 1,
  `has_child` tinyint(3) NULL DEFAULT 0,
  `create_user` int(10) NULL DEFAULT NULL,
  `create_user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `update_user` int(10) NULL DEFAULT NULL,
  `update_user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_dep
-- ----------------------------
INSERT INTO `think_dep` VALUES (1, 0, 1, '研发中心', 125, 1, 1, NULL, NULL, NULL, NULL, NULL, '2021-07-17 15:48:50');
INSERT INTO `think_dep` VALUES (2, 1, 2, '技术中心', 125, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for think_dic
-- ----------------------------
DROP TABLE IF EXISTS `think_dic`;
CREATE TABLE `think_dic`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `tag` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `value` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `mark` tinyint(3) NULL DEFAULT 1,
  `type_id` int(10) NULL DEFAULT NULL,
  `status` tinyint(3) NULL DEFAULT 1,
  `note` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `sort` int(10) NULL DEFAULT NULL,
  `create_user` int(10) NULL DEFAULT NULL,
  `create_user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_dic
-- ----------------------------
INSERT INTO `think_dic` VALUES (1, '字典类型', 'DIC_SYSTEM_TYPE', '1:系统设置\r\n2:其他', 1, 1, 1, NULL, 125, 1, '管理员', '2021-06-15 23:34:29', '2021-06-15 23:35:27');

-- ----------------------------
-- Table structure for think_dic_type
-- ----------------------------
DROP TABLE IF EXISTS `think_dic_type`;
CREATE TABLE `think_dic_type`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `item_id` int(10) NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `pid` int(10) NULL DEFAULT NULL,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `sort` int(50) NULL DEFAULT NULL,
  `mark` tinyint(3) NULL DEFAULT 1,
  `create_user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_dic_type
-- ----------------------------
INSERT INTO `think_dic_type` VALUES (1, 1, '基础配置', 0, NULL, 125, 1, '管理员', '2021-06-15 23:21:21', '2021-06-15 23:21:24');

-- ----------------------------
-- Table structure for think_item
-- ----------------------------
DROP TABLE IF EXISTS `think_item`;
CREATE TABLE `think_item`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `type` tinyint(3) NULL DEFAULT 1 COMMENT '1普通2其他',
  `image` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `url` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `is_domain` tinyint(3) NULL DEFAULT NULL,
  `status` tinyint(3) NULL DEFAULT 1,
  `sort` int(10) NULL DEFAULT NULL,
  `mark` tinyint(3) NULL DEFAULT 1,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_item
-- ----------------------------
INSERT INTO `think_item` VALUES (1, '系统网站', 1, 'http://images.pro6.rxthink.cn/images/item/20210124/743b7670d8757374392.png', 'http://www.rxthink.cn', 0, 1, 1, 1, '2021-06-15 00:42:39', '2021-06-15 00:42:42');

-- ----------------------------
-- Table structure for think_item_cate
-- ----------------------------
DROP TABLE IF EXISTS `think_item_cate`;
CREATE TABLE `think_item_cate`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pid` int(10) NULL DEFAULT NULL,
  `item_id` int(10) NULL DEFAULT NULL,
  `cover` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `pinyin` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `sort` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `mark` tinyint(3) NULL DEFAULT 1,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_item_cate
-- ----------------------------
INSERT INTO `think_item_cate` VALUES (1, 0, 1, 'http://images.pro6.rxthink.cn/images/itemcate/20210124/0492828769975054155.png', '网站首页', 'wangzhanshouye', 'wzsy', '网站首页', '125', 1, '2021-06-15 00:50:01', '2021-07-18 03:01:05');
INSERT INTO `think_item_cate` VALUES (2, 1, 1, 'http://images.pro6.rxthink.cn/images/itemcate/20210124/0492828769975054155.png', '广告推荐', 'guanggaotuijian', 'ggtj', '广告推荐', '125', 1, '2021-06-15 00:50:39', '2021-07-18 03:01:10');

-- ----------------------------
-- Table structure for think_layout
-- ----------------------------
DROP TABLE IF EXISTS `think_layout`;
CREATE TABLE `think_layout`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `type` tinyint(10) NULL DEFAULT NULL,
  `item_id` int(10) NULL DEFAULT NULL,
  `loc_id` int(10) NULL DEFAULT NULL,
  `mark` tinyint(3) NULL DEFAULT 1,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `sort` int(10) NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_layout
-- ----------------------------
INSERT INTO `think_layout` VALUES (1, '2020年国庆狂欢节平台大促销', '/images/layout/20210124/8a58dd90cf729351485.png', 1, 1, NULL, 1, NULL, 125, '2021-06-15 22:34:31', '2021-06-15 22:36:36');

-- ----------------------------
-- Table structure for think_layout_desc
-- ----------------------------
DROP TABLE IF EXISTS `think_layout_desc`;
CREATE TABLE `think_layout_desc`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `item_id` int(10) NULL DEFAULT NULL,
  `loc_id` int(10) NULL DEFAULT NULL,
  `loc_desc` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `sort` int(10) NULL DEFAULT NULL,
  `mark` tinyint(3) NULL DEFAULT 1,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_layout_desc
-- ----------------------------
INSERT INTO `think_layout_desc` VALUES (1, 1, 1, '网站首页右上角新闻推荐', 125, 1, '2021-06-15 22:28:15', '2021-06-15 22:28:18');

-- ----------------------------
-- Table structure for think_level
-- ----------------------------
DROP TABLE IF EXISTS `think_level`;
CREATE TABLE `think_level`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `create_user` int(10) NULL DEFAULT NULL,
  `create_user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `status` tinyint(3) NULL DEFAULT NULL,
  `sort` int(10) NULL DEFAULT NULL,
  `mark` tinyint(3) NULL DEFAULT 1,
  `update_user` int(10) NULL DEFAULT NULL,
  `update_user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_level
-- ----------------------------
INSERT INTO `think_level` VALUES (1, '总经理', NULL, NULL, 1, 125, 1, NULL, NULL, '2021-07-17 14:30:31', '2021-07-17 14:30:33');

-- ----------------------------
-- Table structure for think_link
-- ----------------------------
DROP TABLE IF EXISTS `think_link`;
CREATE TABLE `think_link`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `form` tinyint(3) NULL DEFAULT NULL,
  `type` tinyint(3) NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `sort` int(10) NULL DEFAULT NULL,
  `mark` tinyint(3) NULL DEFAULT 1,
  `platform` tinyint(3) NULL DEFAULT 1,
  `status` tinyint(3) NULL DEFAULT NULL,
  `create_user` int(10) NULL DEFAULT NULL,
  `create_user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `update_user` int(10) NULL DEFAULT NULL,
  `update_user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_link
-- ----------------------------
INSERT INTO `think_link` VALUES (1, '百度官网', 'https://www.baidu.com/', 1, 2, 'http://images.pro6.rxthink.cn/images/link/20210124/23903be9fa1035c7262.png', 125, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, '2021-07-17 16:19:34');

-- ----------------------------
-- Table structure for think_menu
-- ----------------------------
DROP TABLE IF EXISTS `think_menu`;
CREATE TABLE `think_menu`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pid` int(10) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `param` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `type` int(10) NULL DEFAULT NULL COMMENT '1模块 导航 菜单 4 节点',
  `type_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `permission` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `is_public` tinyint(3) NULL DEFAULT 2 COMMENT '1公共 2不是',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `mark` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '1' COMMENT '？？啥',
  `sort` int(10) NULL DEFAULT NULL,
  `status` tinyint(3) NULL DEFAULT 1,
  `open` tinyint(3) NULL DEFAULT NULL,
  `create_user` int(10) NULL DEFAULT NULL,
  `create_user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_user` int(10) NULL DEFAULT NULL,
  `update_user_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `update_time` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 223 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_menu
-- ----------------------------
INSERT INTO `think_menu` VALUES (1, 0, '系统管理', '#', '', 1, '模块', '', 2, '', 'layui-icon-component', '1', 1, 1, 1, 1, '管理员', '2021-02-05 09:47:22', 1, '管理员', '2021-02-05 09:47:22');
INSERT INTO `think_menu` VALUES (2, 1, '权限管理', '#', '', 2, '导航', '', 2, '', 'layui-icon-component', '1', 1, 1, 1, 1, '管理员', '2021-02-05 09:47:22', 1, '管理员', '2021-02-05 09:47:22');
INSERT INTO `think_menu` VALUES (3, 2, '人员管理', '/admin/index', '', 3, '菜单', 'sys:admin:index', 2, '', 'layui-icon-component', '1', 1, 1, 0, 1, '管理员', '2021-02-05 09:47:22', 1, '管理员', '2021-02-05 09:47:22');
INSERT INTO `think_menu` VALUES (4, 3, '列表', '/admin/list', '', 4, '节点', 'sys:admin:list', 2, '', '', '1', 1, 1, 0, 1, '管理员', '2021-02-05 09:47:22', 1, '管理员', '2021-02-05 09:47:22');
INSERT INTO `think_menu` VALUES (5, 3, '添加', '/admin/edit', '', 4, '节点', 'sys:admin:add', 2, '', '', '1', 5, 1, 0, 1, '管理员', '2021-02-05 09:47:22', 1, '管理员', '2021-02-05 09:47:22');
INSERT INTO `think_menu` VALUES (6, 3, '修改', '/admin/edit', '', 4, '节点', 'sys:admin:edit', 2, '', '', '1', 10, 1, 0, 1, '管理员', '2021-02-05 09:47:22', 1, '管理员', '2021-02-05 09:47:22');
INSERT INTO `think_menu` VALUES (7, 3, '删除', '/admin/drop', '', 4, '节点', 'sys:admin:drop', 2, '', '', '1', 15, 1, 0, 1, '管理员', '2021-02-05 09:47:22', 1, '管理员', '2021-02-05 09:47:22');
INSERT INTO `think_menu` VALUES (8, 3, '状态', '/admin/setStatus', '', 4, '节点', 'sys:admin:status', 2, '', '', '1', 25, 1, 0, 1, '管理员', '2021-02-05 09:47:22', 1, '管理员', '2021-02-05 09:47:22');
INSERT INTO `think_menu` VALUES (9, 3, '批量删除', '/admin/batchDrop', '', 4, '节点', 'sys:admin:dall', 2, '', '', '1', 30, 1, 0, 1, '管理员', '2021-02-05 09:47:22', 1, '管理员', '2021-02-05 09:47:22');
INSERT INTO `think_menu` VALUES (10, 3, '独立权限', '/admin/permission', '', 4, '节点', 'sys:admin:permission', 2, '', 'layui-icon-component', '1', 35, 1, 0, 1, '管理员', '2021-02-05 09:47:23', 1, '管理员', '2021-02-05 09:47:23');
INSERT INTO `think_menu` VALUES (11, 3, '重置密码', '/admin/resetPwd', '', 4, '节点', 'sys:admin:resetPwd', 2, '', 'layui-icon-component', '1', 40, 1, 0, 1, '管理员', '2021-02-05 09:47:23', 1, '管理员', '2021-02-05 09:47:23');
INSERT INTO `think_menu` VALUES (12, 2, '角色管理', '/role/index', '', 3, '菜单', 'sys:role:index', 2, '', 'layui-icon-component', '1', 5, 1, 0, 1, '管理员', '2021-02-05 09:47:23', 1, '管理员', '2021-02-05 09:47:23');
INSERT INTO `think_menu` VALUES (13, 12, '列表', '/role/list', '', 4, '节点', 'sys:role:list', 2, '', '', '1', 1, 1, 0, 1, '管理员', '2021-02-05 09:47:23', 1, '管理员', '2021-02-05 09:47:23');
INSERT INTO `think_menu` VALUES (14, 12, '添加', '/role/edit', '', 4, '节点', 'sys:role:add', 2, '', '', '1', 5, 1, 0, 1, '管理员', '2021-02-05 09:47:23', 1, '管理员', '2021-02-05 09:47:23');
INSERT INTO `think_menu` VALUES (15, 12, '修改', '/role/edit', '', 4, '节点', 'sys:role:edit', 2, '', '', '1', 10, 1, 0, 1, '管理员', '2021-02-05 09:47:23', 1, '管理员', '2021-02-05 09:47:23');
INSERT INTO `think_menu` VALUES (16, 12, '删除', '/role/drop', '', 4, '节点', 'sys:role:drop', 2, '', '', '1', 15, 1, 0, 1, '管理员', '2021-02-05 09:47:23', 1, '管理员', '2021-02-05 09:47:23');
INSERT INTO `think_menu` VALUES (17, 12, '角色权限', '/role/permission', '', 4, '节点', 'sys:role:permission', 2, '', 'layui-icon-component', '1', 20, 1, 0, 1, '管理员', '2021-02-05 09:47:23', 1, '管理员', '2021-02-05 09:47:23');
INSERT INTO `think_menu` VALUES (18, 12, '状态', '/role/setStatus', '', 4, '节点', 'sys:role:status', 2, '', '', '1', 25, 1, 0, 1, '管理员', '2021-02-05 09:47:23', 1, '管理员', '2021-02-05 09:47:23');
INSERT INTO `think_menu` VALUES (19, 12, '批量删除', '/role/batchDrop', '', 4, '节点', 'sys:role:dall', 2, '', '', '1', 30, 1, 0, 1, '管理员', '2021-02-05 09:47:23', 1, '管理员', '2021-02-05 09:47:23');
INSERT INTO `think_menu` VALUES (20, 2, '职级管理', '/level/index', '', 3, '菜单', 'sys:level:index', 2, '', 'layui-icon-component', '1', 10, 1, 0, 1, '管理员', '2021-02-05 09:47:23', 1, '管理员', '2021-02-05 09:47:23');
INSERT INTO `think_menu` VALUES (21, 20, '列表', '/level/list', '', 4, '节点', 'sys:level:list', 2, '', '', '1', 1, 1, 0, 1, '管理员', '2021-02-05 09:47:23', 1, '管理员', '2021-02-05 09:47:23');
INSERT INTO `think_menu` VALUES (22, 20, '添加', '/level/edit', '', 4, '节点', 'sys:level:add', 2, '', '', '1', 5, 1, 0, 1, '管理员', '2021-02-05 09:47:23', 1, '管理员', '2021-02-05 09:47:23');
INSERT INTO `think_menu` VALUES (23, 20, '修改', '/level/edit', '', 4, '节点', 'sys:level:edit', 2, '', '', '1', 10, 1, 0, 1, '管理员', '2021-02-05 09:47:23', 1, '管理员', '2021-02-05 09:47:23');
INSERT INTO `think_menu` VALUES (24, 20, '删除', '/level/drop', '', 4, '节点', 'sys:level:drop', 2, '', '', '1', 15, 1, 0, 1, '管理员', '2021-02-05 09:47:23', 1, '管理员', '2021-02-05 09:47:23');
INSERT INTO `think_menu` VALUES (25, 20, '状态', '/level/setStatus', '', 4, '节点', 'sys:level:status', 2, '', '', '1', 25, 1, 0, 1, '管理员', '2021-02-05 09:47:23', 1, '管理员', '2021-02-05 09:47:23');
INSERT INTO `think_menu` VALUES (26, 20, '批量删除', '/level/batchDrop', '', 4, '节点', 'sys:level:dall', 2, '', '', '1', 30, 1, 0, 1, '管理员', '2021-02-05 09:47:23', 1, '管理员', '2021-02-05 09:47:23');
INSERT INTO `think_menu` VALUES (27, 2, '岗位管理', '/position/index', '', 3, '菜单', 'sys:position:index', 2, '', 'layui-icon-component', '1', 20, 1, 0, 1, '管理员', '2021-02-05 09:47:24', 1, '管理员', '2021-02-05 09:47:24');
INSERT INTO `think_menu` VALUES (28, 27, '列表', '/position/list', '', 4, '节点', 'sys:position:list', 2, '', '', '1', 1, 1, 0, 1, '管理员', '2021-02-05 09:47:24', 1, '管理员', '2021-02-05 09:47:24');
INSERT INTO `think_menu` VALUES (29, 27, '添加', '/position/edit', '', 4, '节点', 'sys:position:add', 2, '', '', '1', 5, 1, 0, 1, '管理员', '2021-02-05 09:47:24', 1, '管理员', '2021-02-05 09:47:24');
INSERT INTO `think_menu` VALUES (30, 27, '修改', '/position/edit', '', 4, '节点', 'sys:position:edit', 2, '', '', '1', 10, 1, 0, 1, '管理员', '2021-02-05 09:47:24', 1, '管理员', '2021-02-05 09:47:24');
INSERT INTO `think_menu` VALUES (31, 27, '删除', '/position/drop', '', 4, '节点', 'sys:position:drop', 2, '', '', '1', 15, 1, 0, 1, '管理员', '2021-02-05 09:47:24', 1, '管理员', '2021-02-05 09:47:24');
INSERT INTO `think_menu` VALUES (32, 27, '状态', '/position/setStatus', '', 4, '节点', 'sys:position:status', 2, '', '', '1', 25, 1, 0, 1, '管理员', '2021-02-05 09:47:24', 1, '管理员', '2021-02-05 09:47:24');
INSERT INTO `think_menu` VALUES (33, 27, '批量删除', '/position/batchDrop', '', 4, '节点', 'sys:position:dall', 2, '', '', '1', 30, 1, 0, 1, '管理员', '2021-02-05 09:47:24', 1, '管理员', '2021-02-05 09:47:24');
INSERT INTO `think_menu` VALUES (34, 2, '部门管理', '/dep/index', '', 3, '菜单', 'sys:dep:index', 2, '', 'layui-icon-component', '1', 25, 1, 0, 1, '管理员', '2021-02-05 09:47:24', 1, '管理员', '2021-02-05 09:47:24');
INSERT INTO `think_menu` VALUES (35, 34, '列表', '/dep/list', '', 4, '节点', 'sys:dep:list', 2, '', '', '1', 1, 1, 0, 1, '管理员', '2021-02-05 09:47:24', 1, '管理员', '2021-02-05 09:47:24');
INSERT INTO `think_menu` VALUES (36, 34, '添加', '/dep/edit', '', 4, '节点', 'sys:dep:add', 2, '', '', '1', 5, 1, 0, 1, '管理员', '2021-02-05 09:47:24', 1, '管理员', '2021-02-05 09:47:24');
INSERT INTO `think_menu` VALUES (37, 34, '修改', '/dep/edit', '', 4, '节点', 'sys:dep:edit', 2, '', '', '1', 10, 1, 0, 1, '管理员', '2021-02-05 09:47:24', 1, '管理员', '2021-02-05 09:47:24');
INSERT INTO `think_menu` VALUES (38, 34, '删除', '/dep/drop', '', 4, '节点', 'sys:dep:drop', 2, '', '', '1', 15, 1, 0, 1, '管理员', '2021-02-05 09:47:24', 1, '管理员', '2021-02-05 09:47:24');
INSERT INTO `think_menu` VALUES (39, 34, '状态', '/dep/setStatus', '', 4, '节点', 'sys:dep:status', 2, '', '', '1', 25, 1, 0, 1, '管理员', '2021-02-05 09:47:24', 1, '管理员', '2021-02-05 09:47:24');
INSERT INTO `think_menu` VALUES (40, 34, '批量删除', '/dep/batchDrop', '', 4, '节点', 'sys:dep:dall', 2, '', '', '1', 30, 1, 0, 1, '管理员', '2021-02-05 09:47:24', 1, '管理员', '2021-02-05 09:47:24');
INSERT INTO `think_menu` VALUES (41, 34, '添加子级', '/dep/addz', '', 4, '节点', 'sys:dep:addz', 2, '', '', '1', 35, 1, 0, 1, '管理员', '2021-02-05 09:47:24', 1, '管理员', '2021-02-05 09:47:24');
INSERT INTO `think_menu` VALUES (42, 34, '全部展开', '/dep/expand', '', 4, '节点', 'sys:dep:expand', 2, '', '', '1', 40, 1, 0, 1, '管理员', '2021-02-05 09:47:24', 1, '管理员', '2021-02-05 09:47:24');
INSERT INTO `think_menu` VALUES (43, 34, '全部折叠', '/dep/collapse', '', 4, '节点', 'sys:dep:collapse', 2, '', '', '1', 45, 1, 0, 1, '管理员', '2021-02-05 09:47:24', 1, '管理员', '2021-02-05 09:47:24');
INSERT INTO `think_menu` VALUES (44, 2, '菜单管理', '/menu/index', '', 3, '菜单', 'sys:menu:index', 2, '', 'layui-icon-component', '1', 30, 1, 0, 1, '管理员', '2021-02-05 09:47:24', 1, '管理员', '2021-02-05 09:47:24');
INSERT INTO `think_menu` VALUES (45, 44, '列表', '/menu/list', '', 4, '节点', 'sys:menu:list', 2, '', '', '1', 1, 1, 0, 1, '管理员', '2021-02-05 09:47:25', 1, '管理员', '2021-02-05 09:47:25');
INSERT INTO `think_menu` VALUES (46, 44, '添加', '/menu/edit', '', 4, '节点', 'sys:menu:add', 2, '', '', '1', 5, 1, 0, 1, '管理员', '2021-02-05 09:47:25', 1, '管理员', '2021-02-05 09:47:25');
INSERT INTO `think_menu` VALUES (47, 44, '修改', '/menu/edit', '', 4, '节点', 'sys:menu:edit', 2, '', '', '1', 10, 1, 0, 1, '管理员', '2021-02-05 09:47:25', 1, '管理员', '2021-02-05 09:47:25');
INSERT INTO `think_menu` VALUES (48, 44, '删除', '/menu/drop', '', 4, '节点', 'sys:menu:drop', 2, '', '', '1', 15, 1, 0, 1, '管理员', '2021-02-05 09:47:25', 1, '管理员', '2021-02-05 09:47:25');
INSERT INTO `think_menu` VALUES (49, 44, '状态', '/menu/setStatus', '', 4, '节点', 'sys:menu:status', 2, '', '', '1', 25, 1, 0, 1, '管理员', '2021-02-05 09:47:25', 1, '管理员', '2021-02-05 09:47:25');
INSERT INTO `think_menu` VALUES (50, 44, '批量删除', '/menu/batchDrop', '', 4, '节点', 'sys:menu:dall', 2, '', '', '1', 30, 1, 0, 1, '管理员', '2021-02-05 09:47:25', 1, '管理员', '2021-02-05 09:47:25');
INSERT INTO `think_menu` VALUES (51, 44, '添加子级', '/menu/addz', '', 4, '节点', 'sys:menu:addz', 2, '', 'layui-icon-component', '1', 35, 1, 0, 1, '管理员', '2021-02-05 09:47:25', 1, '管理员', '2021-02-05 09:47:25');
INSERT INTO `think_menu` VALUES (52, 44, '全部展开', '/menu/expand', '', 4, '节点', 'sys:menu:expand', 2, '', '', '1', 40, 1, 0, 1, '管理员', '2021-02-05 09:47:25', 1, '管理员', '2021-02-05 09:47:25');
INSERT INTO `think_menu` VALUES (53, 44, '全部折叠', '/menu/collapse', '', 4, '节点', 'sys:menu:collapse', 2, '', '', '1', 45, 1, 0, 1, '管理员', '2021-02-05 09:47:25', 1, '管理员', '2021-02-05 09:47:25');
INSERT INTO `think_menu` VALUES (54, 2, '操作日志', '/actionlog/index', '', 3, '菜单', 'sys:actionlog:index', 2, '', 'layui-icon-component', '1', 35, 1, 0, 1, '管理员', '2021-02-05 09:47:25', 1, '管理员', '2021-02-05 09:47:25');
INSERT INTO `think_menu` VALUES (55, 54, '列表', '/actionlog/list', '', 4, '节点', 'sys:actionlog:list', 2, '', '', '1', 1, 1, 0, 1, '管理员', '2021-02-05 09:47:25', 1, '管理员', '2021-02-05 09:47:25');
INSERT INTO `think_menu` VALUES (56, 54, '删除', '/actionlog/drop', '', 4, '节点', 'sys:actionlog:drop', 2, '', '', '1', 15, 1, 0, 1, '管理员', '2021-02-05 09:47:25', 1, '管理员', '2021-02-05 09:47:25');
INSERT INTO `think_menu` VALUES (57, 54, '批量删除', '/actionlog/batchDrop', '', 4, '节点', 'sys:actionlog:dall', 2, '', '', '1', 30, 1, 0, 1, '管理员', '2021-02-05 09:47:25', 1, '管理员', '2021-02-05 09:47:25');
INSERT INTO `think_menu` VALUES (58, 2, '登录日志', '/adminlog/index', '', 3, '菜单', 'sys:adminlog:index', 2, '', 'layui-icon-component', '1', 40, 1, 0, 1, '管理员', '2021-02-05 09:47:25', 1, '管理员', '2021-02-05 09:47:25');
INSERT INTO `think_menu` VALUES (59, 58, '列表', '/adminlog/list', '', 4, '节点', 'sys:adminlog:list', 2, '', '', '1', 1, 1, 0, 1, '管理员', '2021-02-05 09:47:25', 1, '管理员', '2021-02-05 09:47:25');
INSERT INTO `think_menu` VALUES (60, 58, '删除', '/adminlog/drop', '', 4, '节点', 'sys:adminlog:drop', 2, '', '', '1', 15, 1, 0, 1, '管理员', '2021-02-05 09:47:25', 1, '管理员', '2021-02-05 09:47:25');
INSERT INTO `think_menu` VALUES (62, 1, '配置管理', '#', '', 2, '导航', '', 2, '', 'layui-icon-component', '1', 20, 1, 1, 1, '管理员', '2021-02-05 09:47:25', 1, '管理员', '2021-02-05 09:47:25');
INSERT INTO `think_menu` VALUES (63, 62, '配置分组', '/configgroup/index', '', 3, '菜单', 'sys:configgroup:index', 2, '', 'layui-icon-component', '1', 1, 1, 0, 1, '管理员', '2021-02-05 09:47:26', 1, '管理员', '2021-02-05 09:47:26');
INSERT INTO `think_menu` VALUES (64, 63, '列表', '/configgroup/list', '', 4, '节点', 'sys:configgroup:list', 2, '', '', '1', 1, 1, 0, 1, '管理员', '2021-02-05 09:47:26', 1, '管理员', '2021-02-05 09:47:26');
INSERT INTO `think_menu` VALUES (65, 63, '添加', '/configgroup/edit', '', 4, '节点', 'sys:configgroup:add', 2, '', '', '1', 5, 1, 0, 1, '管理员', '2021-02-05 09:47:26', 1, '管理员', '2021-02-05 09:47:26');
INSERT INTO `think_menu` VALUES (66, 63, '修改', '/configgroup/edit', '', 4, '节点', 'sys:configgroup:edit', 2, '', '', '1', 10, 1, 0, 1, '管理员', '2021-02-05 09:47:26', 1, '管理员', '2021-02-05 09:47:26');
INSERT INTO `think_menu` VALUES (67, 63, '删除', '/configgroup/drop', '', 4, '节点', 'sys:configgroup:drop', 2, '', '', '1', 15, 1, 0, 1, '管理员', '2021-02-05 09:47:26', 1, '管理员', '2021-02-05 09:47:26');
INSERT INTO `think_menu` VALUES (68, 63, '状态', '/configgroup/setStatus', '', 4, '节点', 'sys:configgroup:status', 2, '', '', '1', 25, 1, 0, 1, '管理员', '2021-02-05 09:47:26', 1, '管理员', '2021-02-05 09:47:26');
INSERT INTO `think_menu` VALUES (69, 63, '批量删除', '/configgroup/batchDrop', '', 4, '节点', 'sys:configgroup:dall', 2, '', '', '1', 30, 1, 0, 1, '管理员', '2021-02-05 09:47:26', 1, '管理员', '2021-02-05 09:47:26');
INSERT INTO `think_menu` VALUES (70, 62, '配置管理', '/config/index', '', 3, '菜单', 'sys:config:index', 2, '', 'layui-icon-component', '1', 5, 1, 0, 1, '管理员', '2021-02-05 09:47:26', 1, '管理员', '2021-02-05 09:47:26');
INSERT INTO `think_menu` VALUES (71, 70, '列表', '/config/list', '', 4, '节点', 'sys:config:list', 2, '', '', '1', 1, 1, 0, 1, '管理员', '2021-02-05 09:47:26', 1, '管理员', '2021-02-05 09:47:26');
INSERT INTO `think_menu` VALUES (72, 70, '添加', '/config/edit', '', 4, '节点', 'sys:config:add', 2, '', '', '1', 5, 1, 0, 1, '管理员', '2021-02-05 09:47:26', 1, '管理员', '2021-02-05 09:47:26');
INSERT INTO `think_menu` VALUES (73, 70, '修改', '/config/edit', '', 4, '节点', 'sys:config:edit', 2, '', '', '1', 10, 1, 0, 1, '管理员', '2021-02-05 09:47:26', 1, '管理员', '2021-02-05 09:47:26');
INSERT INTO `think_menu` VALUES (74, 70, '删除', '/config/drop', '', 4, '节点', 'sys:config:drop', 2, '', '', '1', 15, 1, 0, 1, '管理员', '2021-02-05 09:47:26', 1, '管理员', '2021-02-05 09:47:26');
INSERT INTO `think_menu` VALUES (75, 70, '状态', '/config/setStatus', '', 4, '节点', 'sys:config:status', 2, '', '', '1', 25, 1, 0, 1, '管理员', '2021-02-05 09:47:26', 1, '管理员', '2021-02-05 09:47:26');
INSERT INTO `think_menu` VALUES (76, 70, '批量删除', '/config/batchDrop', '', 4, '节点', 'sys:config:dall', 2, '', '', '1', 30, 1, 0, 1, '管理员', '2021-02-05 09:47:26', 1, '管理员', '2021-02-05 09:47:26');
INSERT INTO `think_menu` VALUES (77, 1, '字典管理', '#', '', 2, '导航', '', 2, '', 'layui-icon-component', '1', 25, 1, 1, 1, '管理员', '2021-02-05 09:47:27', 1, '管理员', '2021-02-05 09:47:27');
INSERT INTO `think_menu` VALUES (78, 77, '字典类型', '/dictype/index', '', 3, '菜单', 'sys:dictype:index', 2, '', 'layui-icon-component', '1', 1, 1, 0, 1, '管理员', '2021-02-05 09:47:27', 1, '管理员', '2021-02-05 09:47:27');
INSERT INTO `think_menu` VALUES (79, 78, '列表', '/dictype/list', '', 4, '节点', 'sys:dictype:list', 2, '', '', '1', 1, 1, 0, 1, '管理员', '2021-02-05 09:47:27', 1, '管理员', '2021-02-05 09:47:27');
INSERT INTO `think_menu` VALUES (80, 78, '添加', '/dictype/edit', '', 4, '节点', 'sys:dictype:add', 2, '', '', '1', 5, 1, 0, 1, '管理员', '2021-02-05 09:47:27', 1, '管理员', '2021-02-05 09:47:27');
INSERT INTO `think_menu` VALUES (81, 78, '修改', '/dictype/edit', '', 4, '节点', 'sys:dictype:edit', 2, '', '', '1', 10, 1, 0, 1, '管理员', '2021-02-05 09:47:27', 1, '管理员', '2021-02-05 09:47:27');
INSERT INTO `think_menu` VALUES (82, 78, '删除', '/dictype/drop', '', 4, '节点', 'sys:dictype:drop', 2, '', '', '1', 15, 1, 0, 1, '管理员', '2021-02-05 09:47:27', 1, '管理员', '2021-02-05 09:47:27');
INSERT INTO `think_menu` VALUES (83, 78, '状态', '/dictype/setStatus', '', 4, '节点', 'sys:dictype:status', 2, '', '', '1', 25, 1, 0, 1, '管理员', '2021-02-05 09:47:27', 1, '管理员', '2021-02-05 09:47:27');
INSERT INTO `think_menu` VALUES (84, 78, '批量删除', '/dictype/batchDrop', '', 4, '节点', 'sys:dictype:dall', 2, '', '', '1', 30, 1, 0, 1, '管理员', '2021-02-05 09:47:27', 1, '管理员', '2021-02-05 09:47:27');
INSERT INTO `think_menu` VALUES (85, 77, '字典管理', '/dic/index', '', 3, '菜单', 'sys:dic:index', 2, '', 'layui-icon-component', '1', 5, 1, 0, 1, '管理员', '2021-02-05 09:47:27', 1, '管理员', '2021-02-05 09:47:27');
INSERT INTO `think_menu` VALUES (86, 85, '列表', '/dic/list', '', 4, '节点', 'sys:dic:list', 2, '', '', '1', 1, 1, 0, 1, '管理员', '2021-02-05 09:47:27', 1, '管理员', '2021-02-05 09:47:27');
INSERT INTO `think_menu` VALUES (87, 85, '添加', '/dic/edit', '', 4, '节点', 'sys:dic:add', 2, '', '', '1', 5, 1, 0, 1, '管理员', '2021-02-05 09:47:27', 1, '管理员', '2021-02-05 09:47:27');
INSERT INTO `think_menu` VALUES (88, 85, '修改', '/dic/edit', '', 4, '节点', 'sys:dic:edit', 2, '', '', '1', 10, 1, 0, 1, '管理员', '2021-02-05 09:47:27', 1, '管理员', '2021-02-05 09:47:27');
INSERT INTO `think_menu` VALUES (89, 85, '删除', '/dic/drop', '', 4, '节点', 'sys:dic:drop', 2, '', '', '1', 15, 1, 0, 1, '管理员', '2021-02-05 09:47:27', 1, '管理员', '2021-02-05 09:47:27');
INSERT INTO `think_menu` VALUES (90, 85, '状态', '/dic/setStatus', '', 4, '节点', 'sys:dic:status', 2, '', '', '1', 25, 1, 0, 1, '管理员', '2021-02-05 09:47:27', 1, '管理员', '2021-02-05 09:47:27');
INSERT INTO `think_menu` VALUES (91, 85, '批量删除', '/dic/batchDrop', '', 4, '节点', 'sys:dic:dall', 2, '', '', '1', 30, 1, 0, 1, '管理员', '2021-02-05 09:47:27', 1, '管理员', '2021-02-05 09:47:27');
INSERT INTO `think_menu` VALUES (92, 1, '数据管理', '#', '', 2, '导航', '', 2, '', 'layui-icon-component', '1', 30, 1, 1, 1, '管理员', '2021-02-05 09:47:28', 1, '管理员', '2021-02-05 09:47:28');
INSERT INTO `think_menu` VALUES (93, 92, '友链管理', '/link/index', '', 3, '菜单', 'sys:link:index', 2, '', 'layui-icon-component', '1', 1, 1, 0, 1, '管理员', '2021-02-05 09:47:28', 1, '管理员', '2021-02-05 09:47:28');
INSERT INTO `think_menu` VALUES (94, 93, '列表', '/link/list', '', 4, '节点', 'sys:link:list', 2, '', '', '1', 1, 1, 0, 1, '管理员', '2021-02-05 09:47:28', 1, '管理员', '2021-02-05 09:47:28');
INSERT INTO `think_menu` VALUES (95, 93, '添加', '/link/edit', '', 4, '节点', 'sys:link:add', 2, '', '', '1', 5, 1, 0, 1, '管理员', '2021-02-05 09:47:28', 1, '管理员', '2021-02-05 09:47:28');
INSERT INTO `think_menu` VALUES (96, 93, '修改', '/link/edit', '', 4, '节点', 'sys:link:edit', 2, '', '', '1', 10, 1, 0, 1, '管理员', '2021-02-05 09:47:28', 1, '管理员', '2021-02-05 09:47:28');
INSERT INTO `think_menu` VALUES (97, 93, '删除', '/link/drop', '', 4, '节点', 'sys:link:drop', 2, '', '', '1', 15, 1, 0, 1, '管理员', '2021-02-05 09:47:28', 1, '管理员', '2021-02-05 09:47:28');
INSERT INTO `think_menu` VALUES (98, 93, '状态', '/link/setStatus', '', 4, '节点', 'sys:link:status', 2, '', '', '1', 25, 1, 0, 1, '管理员', '2021-02-05 09:47:28', 1, '管理员', '2021-02-05 09:47:28');
INSERT INTO `think_menu` VALUES (99, 93, '批量删除', '/link/batchDrop', '', 4, '节点', 'sys:link:dall', 2, '', '', '1', 30, 1, 0, 1, '管理员', '2021-02-05 09:47:28', 1, '管理员', '2021-02-05 09:47:28');
INSERT INTO `think_menu` VALUES (100, 92, '行政区域', '/city/index', '', 3, '菜单', 'sys:city:index', 2, '', 'layui-icon-component', '1', 5, 1, 0, 1, '管理员', '2021-02-05 09:47:29', 1, '管理员', '2021-02-05 09:47:29');
INSERT INTO `think_menu` VALUES (101, 100, '列表', '/city/list', '', 4, '节点', 'sys:city:list', 2, '', '', '1', 1, 1, 0, 1, '管理员', '2021-02-05 09:47:29', 1, '管理员', '2021-02-05 09:47:29');
INSERT INTO `think_menu` VALUES (102, 100, '添加', '/city/edit', '', 4, '节点', 'sys:city:add', 2, '', '', '1', 5, 1, 0, 1, '管理员', '2021-02-05 09:47:29', 1, '管理员', '2021-02-05 09:47:29');
INSERT INTO `think_menu` VALUES (103, 100, '修改', '/city/edit', '', 4, '节点', 'sys:city:edit', 2, '', '', '1', 10, 1, 0, 1, '管理员', '2021-02-05 09:47:29', 1, '管理员', '2021-02-05 09:47:29');
INSERT INTO `think_menu` VALUES (104, 100, '删除', '/city/drop', '', 4, '节点', 'sys:city:drop', 2, '', '', '1', 15, 1, 0, 1, '管理员', '2021-02-05 09:47:29', 1, '管理员', '2021-02-05 09:47:29');
INSERT INTO `think_menu` VALUES (105, 100, '状态', '/city/setStatus', '', 4, '节点', 'sys:city:status', 2, '', '', '1', 25, 1, 0, 1, '管理员', '2021-02-05 09:47:29', 1, '管理员', '2021-02-05 09:47:29');
INSERT INTO `think_menu` VALUES (106, 100, '添加子级', '/city/addz', '', 4, '节点', 'sys:city:addz', 2, '', '', '1', 35, 1, 0, 1, '管理员', '2021-02-05 09:47:29', 1, '管理员', '2021-02-05 09:47:29');
INSERT INTO `think_menu` VALUES (107, 100, '全部展开', '/city/expand', '', 4, '节点', 'sys:city:expand', 2, '', '', '1', 40, 1, 0, 1, '管理员', '2021-02-05 09:47:29', 1, '管理员', '2021-02-05 09:47:29');
INSERT INTO `think_menu` VALUES (108, 100, '全部折叠', '/city/collapse', '', 4, '节点', 'sys:city:collapse', 2, '', '', '1', 45, 1, 0, 1, '管理员', '2021-02-05 09:47:29', 1, '管理员', '2021-02-05 09:47:29');
INSERT INTO `think_menu` VALUES (109, 92, '网站设置', '/configweb/index', '', 3, '菜单', 'sys:configweb:index', 2, '', 'layui-icon-component', '1', 20, 1, 0, 1, '管理员', '2021-02-05 09:47:29', 1, '管理员', '2021-02-05 09:47:29');
INSERT INTO `think_menu` VALUES (110, 1, '系统工具', '#', '', 2, '导航', '', 2, '', 'layui-icon-component', '1', 35, 1, 1, 1, '管理员', '2021-02-05 09:47:29', 1, '管理员', '2021-02-05 09:47:29');
INSERT INTO `think_menu` VALUES (111, 110, '代码生成', '/generate/index', '', 3, '菜单', 'sys:generate:index', 2, '', 'layui-icon-component', '1', 1, 1, 0, 1, '管理员', '2021-02-05 09:47:29', 1, '管理员', '2021-02-05 09:47:29');
INSERT INTO `think_menu` VALUES (112, 111, '列表', '/generate/list', '', 4, '节点', 'sys:generate:list', 2, '', '', '1', 1, 1, 0, 1, '管理员', '2021-02-05 09:47:29', 1, '管理员', '2021-02-05 09:47:29');
INSERT INTO `think_menu` VALUES (113, 111, '一键生成模块', '/generate/generate', '', 4, '节点', 'sys:generate:generate', 2, '', '', '1', 5, 1, 0, 1, '管理员', '2021-02-05 09:47:30', 1, '管理员', '2021-02-05 09:47:30');
INSERT INTO `think_menu` VALUES (114, 111, '修改', '/generate/edit', '', 4, '节点', 'sys:generate:edit', 2, '', '', '1', 10, 1, 0, 1, '管理员', '2021-02-05 09:47:30', 1, '管理员', '2021-02-05 09:47:30');
INSERT INTO `think_menu` VALUES (115, 111, '删除', '/generate/drop', '', 4, '节点', 'sys:generate:drop', 2, '', '', '1', 15, 1, 0, 1, '管理员', '2021-02-05 09:47:30', 1, '管理员', '2021-02-05 09:47:30');
INSERT INTO `think_menu` VALUES (116, 1, '运维管理', '#', '', 2, '导航', '', 2, '', 'layui-icon-component', '1', 40, 1, 1, 1, '管理员', '2021-02-05 09:47:30', 1, '管理员', '2021-02-05 09:47:30');
INSERT INTO `think_menu` VALUES (117, 116, '定时任务', '/crontab/index', '', 3, '菜单', 'sys:crontab:index', 2, '', 'layui-icon-component', '1', 1, 1, 0, 1, '管理员', '2021-02-05 09:47:30', 1, '管理员', '2021-02-05 09:47:30');
INSERT INTO `think_menu` VALUES (118, 117, '列表', '/crontab/list', '', 4, '节点', 'sys:crontab:list', 2, '', '', '1', 1, 1, 0, 1, '管理员', '2021-02-05 09:47:30', 1, '管理员', '2021-02-05 09:47:30');
INSERT INTO `think_menu` VALUES (119, 117, '添加', '/crontab/edit', '', 4, '节点', 'sys:crontab:add', 2, '', '', '1', 5, 1, 0, 1, '管理员', '2021-02-05 09:47:30', 1, '管理员', '2021-02-05 09:47:30');
INSERT INTO `think_menu` VALUES (120, 117, '修改', '/crontab/edit', '', 4, '节点', 'sys:crontab:edit', 2, '', '', '1', 10, 1, 0, 1, '管理员', '2021-02-05 09:47:30', 1, '管理员', '2021-02-05 09:47:30');
INSERT INTO `think_menu` VALUES (121, 117, '删除', '/crontab/drop', '', 4, '节点', 'sys:crontab:drop', 2, '', '', '1', 15, 1, 0, 1, '管理员', '2021-02-05 09:47:30', 1, '管理员', '2021-02-05 09:47:30');
INSERT INTO `think_menu` VALUES (122, 117, '状态', '/crontab/setStatus', '', 4, '节点', 'sys:crontab:status', 2, '', '', '1', 25, 1, 0, 1, '管理员', '2021-02-05 09:47:30', 1, '管理员', '2021-02-05 09:47:30');
INSERT INTO `think_menu` VALUES (123, 116, '数据库管理', '/database/index', '', 3, '菜单', 'sys:database:index', 2, '', 'layui-icon-component', '1', 5, 1, 0, 1, '管理员', '2021-02-05 09:47:30', 1, '管理员', '2021-02-05 09:47:30');
INSERT INTO `think_menu` VALUES (124, 123, '列表', '/database/list', '', 4, '节点', 'sys:database:list', 2, '', '', '1', 1, 1, 0, 1, '管理员', '2021-02-05 09:47:30', 1, '管理员', '2021-02-05 09:47:30');
INSERT INTO `think_menu` VALUES (125, 123, '添加', '/database/edit', '', 4, '节点', 'sys:database:add', 2, '', '', '1', 5, 1, 0, 1, '管理员', '2021-02-05 09:47:30', 1, '管理员', '2021-02-05 09:47:30');
INSERT INTO `think_menu` VALUES (126, 123, '修改', '/database/edit', '', 4, '节点', 'sys:database:edit', 2, '', '', '1', 10, 1, 0, 1, '管理员', '2021-02-05 09:47:30', 1, '管理员', '2021-02-05 09:47:30');
INSERT INTO `think_menu` VALUES (127, 123, '删除', '/database/drop', '', 4, '节点', 'sys:database:drop', 2, '', '', '1', 15, 1, 0, 1, '管理员', '2021-02-05 09:47:30', 1, '管理员', '2021-02-05 09:47:30');
INSERT INTO `think_menu` VALUES (130, 0, '运营管理', '#', '', 1, '模块', '', 2, '', 'layui-icon-component', '1', 2, 1, 1, 1, '管理员', '2021-02-05 09:47:30', 1, '管理员', '2021-02-05 09:47:30');
INSERT INTO `think_menu` VALUES (131, 130, '幻灯片管理', '#', '', 2, '导航', '', 2, '', 'layui-icon-component', '1', 1, 1, 1, 1, '管理员', '2021-02-05 09:47:31', 1, '管理员', '2021-02-05 09:47:31');
INSERT INTO `think_menu` VALUES (132, 131, '幻灯片位置管理', '/adsort/index', '', 3, '菜单', 'sys:adsort:index', 2, '', 'layui-icon-component', '1', 1, 1, 0, 1, '管理员', '2021-02-05 09:47:31', 1, '管理员', '2021-02-05 09:47:31');
INSERT INTO `think_menu` VALUES (133, 132, '列表', '/adsort/list', '', 4, '节点', 'sys:adsort:list', 2, '', '', '1', 1, 1, 0, 1, '管理员', '2021-02-05 09:47:31', 1, '管理员', '2021-02-05 09:47:31');
INSERT INTO `think_menu` VALUES (134, 132, '添加', '/adsort/edit', '', 4, '节点', 'sys:adsort:add', 2, '', '', '1', 5, 1, 0, 1, '管理员', '2021-02-05 09:47:31', 1, '管理员', '2021-02-05 09:47:31');
INSERT INTO `think_menu` VALUES (135, 132, '修改', '/adsort/edit', '', 4, '节点', 'sys:adsort:edit', 2, '', '', '1', 10, 1, 0, 1, '管理员', '2021-02-05 09:47:31', 1, '管理员', '2021-02-05 09:47:31');
INSERT INTO `think_menu` VALUES (136, 132, '删除', '/adsort/drop', '', 4, '节点', 'sys:adsort:drop', 2, '', '', '1', 15, 1, 0, 1, '管理员', '2021-02-05 09:47:31', 1, '管理员', '2021-02-05 09:47:31');
INSERT INTO `think_menu` VALUES (137, 132, '状态', '/adsort/setStatus', '', 4, '节点', 'sys:adsort:status', 2, '', '', '1', 25, 1, 0, 1, '管理员', '2021-02-05 09:47:31', 1, '管理员', '2021-02-05 09:47:31');
INSERT INTO `think_menu` VALUES (138, 132, '批量删除', '/adsort/batchDrop', '', 4, '节点', 'sys:adsort:dall', 2, '', '', '1', 30, 1, 0, 1, '管理员', '2021-02-05 09:47:31', 1, '管理员', '2021-02-05 09:47:31');
INSERT INTO `think_menu` VALUES (139, 131, '幻灯片管理', '/ad/index', '', 3, '菜单', 'sys:ad:index', 2, '', 'layui-icon-component', '1', 5, 1, 0, 1, '管理员', '2021-02-05 09:47:31', 1, '管理员', '2021-02-05 09:47:31');
INSERT INTO `think_menu` VALUES (140, 139, '列表', '/ad/list', '', 4, '节点', 'sys:ad:list', 2, '', '', '1', 1, 1, 0, 1, '管理员', '2021-02-05 09:47:31', 1, '管理员', '2021-02-05 09:47:31');
INSERT INTO `think_menu` VALUES (141, 139, '添加', '/ad/edit', '', 4, '节点', 'sys:ad:add', 2, '', '', '1', 5, 1, 0, 1, '管理员', '2021-02-05 09:47:31', 1, '管理员', '2021-02-05 09:47:31');
INSERT INTO `think_menu` VALUES (142, 139, '修改', '/ad/edit', '', 4, '节点', 'sys:ad:edit', 2, '', '', '1', 10, 1, 0, 1, '管理员', '2021-02-05 09:47:31', 1, '管理员', '2021-02-05 09:47:31');
INSERT INTO `think_menu` VALUES (143, 139, '删除', '/ad/drop', '', 4, '节点', 'sys:ad:drop', 2, '', '', '1', 15, 1, 0, 1, '管理员', '2021-02-05 09:47:31', 1, '管理员', '2021-02-05 09:47:31');
INSERT INTO `think_menu` VALUES (144, 139, '状态', '/ad/setStatus', '', 4, '节点', 'sys:ad:status', 2, '', '', '1', 25, 1, 0, 1, '管理员', '2021-02-05 09:47:31', 1, '管理员', '2021-02-05 09:47:31');
INSERT INTO `think_menu` VALUES (145, 139, '批量删除', '/ad/batchDrop', '', 4, '节点', 'sys:ad:dall', 2, '', '', '1', 30, 1, 0, 1, '管理员', '2021-02-05 09:47:32', 1, '管理员', '2021-02-05 09:47:32');
INSERT INTO `think_menu` VALUES (146, 130, '布局推荐管理', '#', '', 2, '导航', '', 2, '', 'layui-icon-component', '1', 5, 1, 1, 1, '管理员', '2021-02-05 09:47:32', 1, '管理员', '2021-02-05 09:47:32');
INSERT INTO `think_menu` VALUES (147, 146, '布局推荐描述', '/layoutdesc/index', '', 3, '菜单', 'sys:layoutdesc:index', 2, '', 'layui-icon-component', '1', 1, 1, 0, 1, '管理员', '2021-02-05 09:47:32', 1, '管理员', '2021-02-05 09:47:32');
INSERT INTO `think_menu` VALUES (148, 147, '列表', '/layoutdesc/list', '', 4, '节点', 'sys:layoutdesc:list', 2, '', '', '1', 1, 1, 0, 1, '管理员', '2021-02-05 09:47:32', 1, '管理员', '2021-02-05 09:47:32');
INSERT INTO `think_menu` VALUES (149, 147, '添加', '/layoutdesc/edit', '', 4, '节点', 'sys:layoutdesc:add', 2, '', '', '1', 5, 1, 0, 1, '管理员', '2021-02-05 09:47:32', 1, '管理员', '2021-02-05 09:47:32');
INSERT INTO `think_menu` VALUES (150, 147, '修改', '/layoutdesc/edit', '', 4, '节点', 'sys:layoutdesc:edit', 2, '', '', '1', 10, 1, 0, 1, '管理员', '2021-02-05 09:47:32', 1, '管理员', '2021-02-05 09:47:32');
INSERT INTO `think_menu` VALUES (151, 147, '删除', '/layoutdesc/drop', '', 4, '节点', 'sys:layoutdesc:drop', 2, '', '', '1', 15, 1, 0, 1, '管理员', '2021-02-05 09:47:32', 1, '管理员', '2021-02-05 09:47:32');
INSERT INTO `think_menu` VALUES (152, 147, '状态', '/layoutdesc/setStatus', '', 4, '节点', 'sys:layoutdesc:status', 2, '', '', '1', 25, 1, 0, 1, '管理员', '2021-02-05 09:47:32', 1, '管理员', '2021-02-05 09:47:32');
INSERT INTO `think_menu` VALUES (153, 147, '批量删除', '/layoutdesc/batchDrop', '', 4, '节点', 'sys:layoutdesc:dall', 2, '', '', '1', 30, 1, 0, 1, '管理员', '2021-02-05 09:47:32', 1, '管理员', '2021-02-05 09:47:32');
INSERT INTO `think_menu` VALUES (154, 146, '布局推荐管理', '/layout/index', '', 3, '菜单', 'sys:layout:index', 2, '', 'layui-icon-component', '1', 5, 1, 0, 1, '管理员', '2021-02-05 09:47:32', 1, '管理员', '2021-02-05 09:47:32');
INSERT INTO `think_menu` VALUES (155, 154, '列表', '/layout/list', '', 4, '节点', 'sys:layout:list', 2, '', '', '1', 1, 1, 0, 1, '管理员', '2021-02-05 09:47:32', 1, '管理员', '2021-02-05 09:47:32');
INSERT INTO `think_menu` VALUES (156, 154, '添加', '/layout/edit', '', 4, '节点', 'sys:layout:add', 2, '', '', '1', 5, 1, 0, 1, '管理员', '2021-02-05 09:47:32', 1, '管理员', '2021-02-05 09:47:32');
INSERT INTO `think_menu` VALUES (157, 154, '修改', '/layout/edit', '', 4, '节点', 'sys:layout:edit', 2, '', '', '1', 10, 1, 0, 1, '管理员', '2021-02-05 09:47:32', 1, '管理员', '2021-02-05 09:47:32');
INSERT INTO `think_menu` VALUES (158, 154, '删除', '/layout/drop', '', 4, '节点', 'sys:layout:drop', 2, '', '', '1', 15, 1, 0, 1, '管理员', '2021-02-05 09:47:32', 1, '管理员', '2021-02-05 09:47:32');
INSERT INTO `think_menu` VALUES (159, 154, '状态', '/layout/setStatus', '', 4, '节点', 'sys:layout:status', 2, '', '', '1', 25, 1, 0, 1, '管理员', '2021-02-05 09:47:32', 1, '管理员', '2021-02-05 09:47:32');
INSERT INTO `think_menu` VALUES (160, 154, '批量删除', '/layout/batchDrop', '', 4, '节点', 'sys:layout:dall', 2, '', '', '1', 30, 1, 0, 1, '管理员', '2021-02-05 09:47:33', 1, '管理员', '2021-02-05 09:47:33');
INSERT INTO `think_menu` VALUES (161, 130, '站内信管理', '#', '', 2, '导航', '', 2, '', 'layui-icon-component', '1', 10, 1, 1, 1, '管理员', '2021-02-05 09:47:33', 1, '管理员', '2021-02-05 09:47:33');
INSERT INTO `think_menu` VALUES (162, 161, '通知公告', '/notice/index', '', 3, '菜单', 'sys:notice:index', 2, '', 'layui-icon-component', '1', 10, 1, 0, 1, '管理员', '2021-02-05 09:47:33', 1, '管理员', '2021-02-05 09:47:33');
INSERT INTO `think_menu` VALUES (163, 162, '列表', '/notice/list', '', 4, '节点', 'sys:notice:list', 2, '', '', '1', 1, 1, 0, 1, '管理员', '2021-02-05 09:47:33', 1, '管理员', '2021-02-05 09:47:33');
INSERT INTO `think_menu` VALUES (164, 162, '添加', '/notice/edit', '', 4, '节点', 'sys:notice:add', 2, '', '', '1', 5, 1, 0, 1, '管理员', '2021-02-05 09:47:33', 1, '管理员', '2021-02-05 09:47:33');
INSERT INTO `think_menu` VALUES (165, 162, '修改', '/notice/edit', '', 4, '节点', 'sys:notice:edit', 2, '', '', '1', 10, 1, 0, 1, '管理员', '2021-02-05 09:47:33', 1, '管理员', '2021-02-05 09:47:33');
INSERT INTO `think_menu` VALUES (166, 162, '删除', '/notice/drop', '', 4, '节点', 'sys:notice:drop', 2, '', '', '1', 15, 1, 0, 1, '管理员', '2021-02-05 09:47:33', 1, '管理员', '2021-02-05 09:47:33');
INSERT INTO `think_menu` VALUES (167, 162, '状态', '/notice/setStatus', '', 4, '节点', 'sys:notice:status', 2, '', '', '1', 25, 1, 0, 1, '管理员', '2021-02-05 09:47:33', 1, '管理员', '2021-02-05 09:47:33');
INSERT INTO `think_menu` VALUES (168, 162, '批量删除', '/notice/batchDrop', '', 4, '节点', 'sys:notice:dall', 2, '', '', '1', 30, 1, 0, 1, '管理员', '2021-02-05 09:47:33', 1, '管理员', '2021-02-05 09:47:33');
INSERT INTO `think_menu` VALUES (169, 0, '内容管理', '#', '', 1, '模块', '', 2, '', 'layui-icon-component', '1', 5, 1, 1, 1, '管理员', '2021-02-05 09:47:33', 1, '管理员', '2021-02-05 09:47:33');
INSERT INTO `think_menu` VALUES (170, 169, '站点管理', '#', '', 2, '导航', '', 2, '', 'layui-icon-component', '1', 1, 1, 1, 1, '管理员', '2021-02-05 09:47:33', 1, '管理员', '2021-02-05 09:47:33');
INSERT INTO `think_menu` VALUES (171, 170, '站点管理', '/item/index', '', 3, '菜单', 'sys:item:index', 2, '', 'layui-icon-component', '1', 1, 1, 0, 1, '管理员', '2021-02-05 09:47:33', 1, '管理员', '2021-02-05 09:47:33');
INSERT INTO `think_menu` VALUES (172, 171, '列表', '/item/list', '', 4, '节点', 'sys:item:list', 2, '', '', '1', 1, 1, 0, 1, '管理员', '2021-02-05 09:47:33', 1, '管理员', '2021-02-05 09:47:33');
INSERT INTO `think_menu` VALUES (173, 171, '添加', '/item/edit', '', 4, '节点', 'sys:item:add', 2, '', '', '1', 5, 1, 0, 1, '管理员', '2021-02-05 09:47:33', 1, '管理员', '2021-02-05 09:47:33');
INSERT INTO `think_menu` VALUES (174, 171, '修改', '/item/edit', '', 4, '节点', 'sys:item:edit', 2, '', '', '1', 10, 1, 0, 1, '管理员', '2021-02-05 09:47:33', 1, '管理员', '2021-02-05 09:47:33');
INSERT INTO `think_menu` VALUES (175, 171, '删除', '/item/drop', '', 4, '节点', 'sys:item:drop', 2, '', '', '1', 15, 1, 0, 1, '管理员', '2021-02-05 09:47:33', 1, '管理员', '2021-02-05 09:47:33');
INSERT INTO `think_menu` VALUES (176, 171, '状态', '/item/setStatus', '', 4, '节点', 'sys:item:status', 2, '', '', '1', 25, 1, 0, 1, '管理员', '2021-02-05 09:47:33', 1, '管理员', '2021-02-05 09:47:33');
INSERT INTO `think_menu` VALUES (177, 171, '批量删除', '/item/batchDrop', '', 4, '节点', 'sys:item:dall', 2, '', '', '1', 30, 1, 0, 1, '管理员', '2021-02-05 09:47:33', 1, '管理员', '2021-02-05 09:47:33');
INSERT INTO `think_menu` VALUES (178, 170, '栏目管理', '/itemcate/index', '', 3, '菜单', 'sys:itemcate:index', 2, '', 'layui-icon-component', '1', 5, 1, 0, 1, '管理员', '2021-02-05 09:47:33', 1, '管理员', '2021-02-05 09:47:33');
INSERT INTO `think_menu` VALUES (179, 178, '列表', '/itemcate/list', '', 4, '节点', 'sys:itemcate:list', 2, '', '', '1', 1, 1, 0, 1, '管理员', '2021-02-05 09:47:33', 1, '管理员', '2021-02-05 09:47:33');
INSERT INTO `think_menu` VALUES (180, 178, '添加', '/itemcate/edit', '', 4, '节点', 'sys:itemcate:add', 2, '', '', '1', 5, 1, 0, 1, '管理员', '2021-02-05 09:47:34', 1, '管理员', '2021-02-05 09:47:34');
INSERT INTO `think_menu` VALUES (181, 178, '修改', '/itemcate/edit', '', 4, '节点', 'sys:itemcate:edit', 2, '', '', '1', 10, 1, 0, 1, '管理员', '2021-02-05 09:47:34', 1, '管理员', '2021-02-05 09:47:34');
INSERT INTO `think_menu` VALUES (182, 178, '删除', '/itemcate/drop', '', 4, '节点', 'sys:itemcate:drop', 2, '', '', '1', 15, 1, 0, 1, '管理员', '2021-02-05 09:47:34', 1, '管理员', '2021-02-05 09:47:34');
INSERT INTO `think_menu` VALUES (183, 178, '状态', '/itemcate/setStatus', '', 4, '节点', 'sys:itemcate:status', 2, '', '', '1', 25, 1, 0, 1, '管理员', '2021-02-05 09:47:34', 1, '管理员', '2021-02-05 09:47:34');
INSERT INTO `think_menu` VALUES (184, 178, '批量删除', '/itemcate/batchDrop', '', 4, '节点', 'sys:itemcate:dall', 2, '', '', '1', 30, 1, 0, 1, '管理员', '2021-02-05 09:47:34', 1, '管理员', '2021-02-05 09:47:34');
INSERT INTO `think_menu` VALUES (185, 178, '添加子级', '/itemcate/addz', '', 4, '节点', 'sys:itemcate:addz', 2, '', '', '1', 35, 1, 0, 1, '管理员', '2021-02-05 09:47:34', 1, '管理员', '2021-02-05 09:47:34');
INSERT INTO `think_menu` VALUES (186, 178, '全部展开', '/itemcate/expand', '', 4, '节点', 'sys:itemcate:expand', 2, '', '', '1', 40, 1, 0, 1, '管理员', '2021-02-05 09:47:34', 1, '管理员', '2021-02-05 09:47:34');
INSERT INTO `think_menu` VALUES (187, 178, '全部折叠', '/itemcate/collapse', '', 4, '节点', 'sys:itemcate:collapse', 2, '', '', '1', 45, 1, 0, 1, '管理员', '2021-02-05 09:47:34', 1, '管理员', '2021-02-05 09:47:34');
INSERT INTO `think_menu` VALUES (188, 169, '文章管理', '#', '', 2, '导航', '', 2, '', 'layui-icon-component', '1', 5, 1, 1, 1, '管理员', '2021-02-05 09:47:34', 1, '管理员', '2021-02-05 09:47:34');
INSERT INTO `think_menu` VALUES (189, 188, '文章管理', '/article/index', '', 3, '菜单', 'sys:article:index', 2, '', 'layui-icon-component', '1', 1, 1, 0, 1, '管理员', '2021-02-05 09:47:34', 1, '管理员', '2021-02-05 09:47:34');
INSERT INTO `think_menu` VALUES (190, 189, '列表', '/article/list', '', 4, '节点', 'sys:article:list', 2, '', '', '1', 1, 1, 0, 1, '管理员', '2021-02-05 09:47:34', 1, '管理员', '2021-02-05 09:47:34');
INSERT INTO `think_menu` VALUES (191, 189, '添加', '/article/edit', '', 4, '节点', 'sys:article:add', 2, '', '', '1', 5, 1, 0, 1, '管理员', '2021-02-05 09:47:34', 1, '管理员', '2021-02-05 09:47:34');
INSERT INTO `think_menu` VALUES (192, 189, '修改', '/article/edit', '', 4, '节点', 'sys:article:edit', 2, '', '', '1', 10, 1, 0, 1, '管理员', '2021-02-05 09:47:34', 1, '管理员', '2021-02-05 09:47:34');
INSERT INTO `think_menu` VALUES (193, 189, '删除', '/article/drop', '', 4, '节点', 'sys:article:drop', 2, '', '', '1', 15, 1, 0, 1, '管理员', '2021-02-05 09:47:34', 1, '管理员', '2021-02-05 09:47:34');
INSERT INTO `think_menu` VALUES (194, 189, '状态', '/article/setStatus', '', 4, '节点', 'sys:article:status', 2, '', '', '1', 25, 1, 0, 1, '管理员', '2021-02-05 09:47:34', 1, '管理员', '2021-02-05 09:47:34');
INSERT INTO `think_menu` VALUES (195, 189, '批量删除', '/article/batchDrop', '', 4, '节点', 'sys:article:dall', 2, '', '', '1', 30, 1, 0, 1, '管理员', '2021-02-05 09:47:34', 1, '管理员', '2021-02-05 09:47:34');
INSERT INTO `think_menu` VALUES (196, 0, '用户管理', '#', '', 1, '模块', '', 2, '', 'layui-icon-component', '1', 10, 1, 1, 1, '管理员', '2021-02-05 09:47:34', 1, '管理员', '2021-02-05 09:47:34');
INSERT INTO `think_menu` VALUES (197, 196, '用户中心', '#', '', 2, '导航', '', 2, '', 'layui-icon-component', '1', 1, 1, 1, 1, '管理员', '2021-02-05 09:47:35', 1, '管理员', '2021-02-05 09:47:35');
INSERT INTO `think_menu` VALUES (198, 197, '用户等级', '/userlevel/index', '', 3, '菜单', 'sys:userlevel:index', 2, '', 'layui-icon-component', '1', 1, 1, 0, 1, '管理员', '2021-02-05 09:47:35', 1, '管理员', '2021-02-05 09:47:35');
INSERT INTO `think_menu` VALUES (199, 198, '列表', '/userlevel/list', '', 4, '节点', 'sys:userlevel:list', 2, '', '', '1', 1, 1, 0, 1, '管理员', '2021-02-05 09:47:35', 1, '管理员', '2021-02-05 09:47:35');
INSERT INTO `think_menu` VALUES (201, 198, '修改', '/userlevel/edit', '', 4, '节点', 'sys:userlevel:edit', 2, '', '', '1', 10, 1, 0, 1, '管理员', '2021-02-05 09:47:35', 1, '管理员', '2021-02-05 09:47:35');
INSERT INTO `think_menu` VALUES (202, 198, '删除', '/userlevel/drop', '', 4, '节点', 'sys:userlevel:drop', 2, '', '', '1', 15, 1, 0, 1, '管理员', '2021-02-05 09:47:35', 1, '管理员', '2021-02-05 09:47:35');
INSERT INTO `think_menu` VALUES (203, 198, '状态', '/userlevel/setStatus', '', 4, '节点', 'sys:userlevel:status', 2, '', '', '1', 25, 1, 0, 1, '管理员', '2021-02-05 09:47:35', 1, '管理员', '2021-02-05 09:47:35');
INSERT INTO `think_menu` VALUES (204, 198, '批量删除', '/userlevel/batchDrop', '', 4, '节点', 'sys:userlevel:dall', 2, '', '', '1', 30, 1, 0, 1, '管理员', '2021-02-05 09:47:35', 1, '管理员', '2021-02-05 09:47:35');
INSERT INTO `think_menu` VALUES (205, 197, '用户管理', '/user/index', '', 3, '菜单', 'sys:user:index', 2, '', 'layui-icon-component', '1', 5, 1, 0, 1, '管理员', '2021-02-05 09:47:35', 1, '管理员', '2021-02-05 09:47:35');
INSERT INTO `think_menu` VALUES (206, 205, '列表', '/user/list', '', 4, '节点', 'sys:user:list', 2, '', '', '1', 1, 1, 0, 1, '管理员', '2021-02-05 09:47:35', 1, '管理员', '2021-02-05 09:47:35');
INSERT INTO `think_menu` VALUES (207, 205, '添加', '/user/edit', '', 4, '节点', 'sys:user:add', 2, '', '', '1', 5, 1, 0, 1, '管理员', '2021-02-05 09:47:35', 1, '管理员', '2021-02-05 09:47:35');
INSERT INTO `think_menu` VALUES (208, 205, '修改', '/user/edit', '', 4, '节点', 'sys:user:edit', 2, '', '', '1', 10, 1, 0, 1, '管理员', '2021-02-05 09:47:35', 1, '管理员', '2021-02-05 09:47:35');
INSERT INTO `think_menu` VALUES (209, 205, '删除', '/user/drop', '', 4, '节点', 'sys:user:drop', 2, '', '', '1', 15, 1, 0, 1, '管理员', '2021-02-05 09:47:35', 1, '管理员', '2021-02-05 09:47:35');
INSERT INTO `think_menu` VALUES (216, 110, '演示管理', '/demo3/index', '', 3, '菜单', 'sys:demo3:index', 2, '', 'layui-icon-component', '1', 125, 1, 0, 1, '管理员', '2021-02-06 15:09:58', 0, NULL, '0');
INSERT INTO `think_menu` VALUES (217, 216, '列表', '/demo3/list', '', 4, '节点', 'sys:demo3:list', 2, '', '', '1', 1, 1, 0, 1, '管理员', '2021-02-06 15:09:58', 0, NULL, '0');
INSERT INTO `think_menu` VALUES (218, 216, '添加', '/demo3/edit', '', 4, '节点', 'sys:demo3:add', 2, '', '', '1', 5, 1, 0, 1, '管理员', '2021-02-06 15:09:58', 0, NULL, '0');
INSERT INTO `think_menu` VALUES (219, 216, '修改', '/demo3/edit', '', 4, '节点', 'sys:demo3:edit', 2, '', '', '1', 10, 1, 0, 1, '管理员', '2021-02-06 15:09:58', 0, NULL, '0');
INSERT INTO `think_menu` VALUES (220, 216, '删除', '/demo3/drop', '', 4, '节点', 'sys:demo3:drop', 2, '', '', '1', 15, 1, 0, 1, '管理员', '2021-02-06 15:09:58', 0, NULL, '0');
INSERT INTO `think_menu` VALUES (221, 216, '状态', '/demo3/setStatus', '', 4, '节点', 'sys:demo3:status', 2, '', '', '1', 25, 1, 0, 1, '管理员', '2021-02-06 15:09:58', 0, NULL, '0');
INSERT INTO `think_menu` VALUES (222, 216, '批量删除', '/demo3/batchDrop', '', 4, '节点', 'sys:demo3:batchDrop', 2, '', '', '1', 30, 1, 0, 1, '管理员', '2021-02-06 15:09:58', 0, NULL, '0');

-- ----------------------------
-- Table structure for think_notice
-- ----------------------------
DROP TABLE IF EXISTS `think_notice`;
CREATE TABLE `think_notice`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `source` tinyint(3) NULL DEFAULT NULL,
  `status` tinyint(3) NULL DEFAULT 2,
  `mark` tinyint(3) NULL DEFAULT 1,
  `is_top` tinyint(3) NULL DEFAULT 0,
  `view_num` int(10) NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `is_send` tinyint(3) NULL DEFAULT 0,
  `format_send_time` datetime NULL DEFAULT NULL,
  `create_user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `publish_time` int(10) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_notice
-- ----------------------------
INSERT INTO `think_notice` VALUES (1, '2020年国庆节放假通知及安排', 1, 2, 1, 2, 1000, '11', 0, '2021-06-15 22:58:16', '管理员', '2021-06-15 22:58:01', '2021-06-15 22:58:04', 0);

-- ----------------------------
-- Table structure for think_position
-- ----------------------------
DROP TABLE IF EXISTS `think_position`;
CREATE TABLE `think_position`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) NULL DEFAULT 0 COMMENT '1在用 2停用',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `sort` int(10) NULL DEFAULT NULL,
  `mark` tinyint(3) NULL DEFAULT 1,
  `create_user` int(10) NULL DEFAULT NULL,
  `create_user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `update_user` int(10) NULL DEFAULT NULL,
  `update_user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_position
-- ----------------------------
INSERT INTO `think_position` VALUES (11, 1, '总经理', 125, 1, NULL, NULL, NULL, NULL, NULL, '2021-07-17 15:45:31');

-- ----------------------------
-- Table structure for think_role
-- ----------------------------
DROP TABLE IF EXISTS `think_role`;
CREATE TABLE `think_role`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `create_user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `mark` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `sort` int(10) NULL DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_role
-- ----------------------------
INSERT INTO `think_role` VALUES (1, '管理员', 'admin', '1', 123, '2021-06-14 02:14:26', '2021-06-14 02:15:14');

-- ----------------------------
-- Table structure for think_tpl
-- ----------------------------
DROP TABLE IF EXISTS `think_tpl`;
CREATE TABLE `think_tpl`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pid` int(10) NULL DEFAULT NULL,
  `sort` int(10) NULL DEFAULT NULL,
  `mark` tinyint(3) NULL DEFAULT 1,
  `create_user` int(10) NULL DEFAULT NULL,
  `create_user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `update_user` int(10) NULL DEFAULT NULL,
  `update_user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_tpl
-- ----------------------------

-- ----------------------------
-- Table structure for think_user
-- ----------------------------
DROP TABLE IF EXISTS `think_user`;
CREATE TABLE `think_user`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `realname` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `mobile` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `gender` tinyint(3) NULL DEFAULT 3 COMMENT '1男 2女 3为止',
  `device` tinyint(3) NULL DEFAULT 0 COMMENT '0未知',
  `source` tinyint(3) NULL DEFAULT 1 COMMENT '1注册会员 2 马甲',
  `birthday` int(10) NULL DEFAULT NULL,
  `district_id` int(10) NULL DEFAULT NULL,
  `mark` tinyint(3) NULL DEFAULT NULL,
  `status` tinyint(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_user
-- ----------------------------
INSERT INTO `think_user` VALUES (1, NULL, '真名', '昵称', NULL, NULL, 3, 0, 1, NULL, 3, 1, 1);

-- ----------------------------
-- Table structure for think_user_level
-- ----------------------------
DROP TABLE IF EXISTS `think_user_level`;
CREATE TABLE `think_user_level`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `sort` int(10) NULL DEFAULT NULL,
  `mark` tinyint(3) NULL DEFAULT 1,
  `create_user` int(10) NULL DEFAULT NULL,
  `create_user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_user` int(10) NULL DEFAULT NULL,
  `update_user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_user_level
-- ----------------------------
INSERT INTO `think_user_level` VALUES (11, '白金会员', 125, 1, 1, '管理员', '2021-06-15 00:27:19', '2021-06-22 23:37:59', NULL, NULL);
INSERT INTO `think_user_level` VALUES (12, '黄金会员', 125, 1, 1, '管理员', '2021-06-22 23:38:19', '2021-06-22 23:38:22', NULL, NULL);
INSERT INTO `think_user_level` VALUES (13, '钻石会员', 125, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `think_user_level` VALUES (14, '黑金会员', 125, 1, NULL, NULL, NULL, '2021-07-17 18:07:41', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
