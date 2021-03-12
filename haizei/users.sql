/*
 Navicat Premium Data Transfer

 Source Server         : onepiece
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : onepiece

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 12/03/2021 08:54:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nengli` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jituan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, '路飞', '超人系橡胶果实', '草帽海贼团', '');
INSERT INTO `users` VALUES (2, '乔巴', '动物系人人果实', '草帽海贼团', '');
INSERT INTO `users` VALUES (3, '罗宾111', '超人系花花果实', '草帽海贼团', '');
INSERT INTO `users` VALUES (7, 'sdfas', 'fsdaas', 'sfaas', '');
INSERT INTO `users` VALUES (12, 'das', 'sadf', 'asd', '/images/u=1898905716,2539623066&fm=26&gp=0.jpg');
INSERT INTO `users` VALUES (13, 'fsdasdf', 'fdssa', 'fdsadf', '/images/u=1151159983,3811439408&fm=26&gp=0.jpg');
INSERT INTO `users` VALUES (14, 'dsaf', 'sdaf', 'dsfs', '/images/u=1155865518,1098496596&fm=26&gp=0.jpg');
INSERT INTO `users` VALUES (15, 'sf', 'dsf', 'fsa', '/images/u=2577576757,3841266884&fm=26&gp=0.jpg');
INSERT INTO `users` VALUES (16, 'sfdas', 'sfdaas', 'sfda', '/images/u=1151159983,3811439408&fm=26&gp=0.jpg');
INSERT INTO `users` VALUES (17, 'das', 'SADF', 'DSFA', '/images/u=1155865518,1098496596&fm=26&gp=0.jpg');
INSERT INTO `users` VALUES (18, 'das', 'SADF', 'DSFA', '/images/u=1155865518,1098496596&fm=26&gp=0.jpg');
INSERT INTO `users` VALUES (19, '撒旦法f', '地方撒', '发顺丰', '/images/u=1155865518,1098496596&fm=26&gp=0.jpg');
INSERT INTO `users` VALUES (20, 'a', 'd', 'ad', '/images/u=1184548421,1539438209&fm=26&gp=0.jpg');
INSERT INTO `users` VALUES (21, 'dsa', 'sadf', 'asf', '/images/u=1898905716,2539623066&fm=26&gp=0.jpg');
INSERT INTO `users` VALUES (22, 'sdafas', 'sdfsd', 'fdsad', '/images/a24cfc6c6f35a05ee154ce78df049cae.jpg');
INSERT INTO `users` VALUES (23, 'sad', 'fdsf', 'dsfger', '/images/u=2577576757,3841266884&fm=26&gp=0.jpg');
INSERT INTO `users` VALUES (24, 'asdsa', 'sdfsd', 'safs', '/images/578555b8883e5d3645897d0e86666458.jpg');
INSERT INTO `users` VALUES (25, 'dsaf', 'dfsa', 'fsdh', '/images/9060e9dae92eed3effaf8429dfd37278.jpg');
INSERT INTO `users` VALUES (26, 'sfdg', 'fdsgd', 'fdh', '/images/578555b8883e5d3645897d0e86666458.jpg');
INSERT INTO `users` VALUES (27, 'asdas', 'dsaf', 'sdf', '/images/a24cfc6c6f35a05ee154ce78df049cae.jpg');
INSERT INTO `users` VALUES (28, 'diialshfiods', 'fsafisjkfds', 'sadfsa', '/images/u=1898905716,2539623066&fm=26&gp=0.jpg');

SET FOREIGN_KEY_CHECKS = 1;
