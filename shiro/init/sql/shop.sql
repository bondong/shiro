/*
Navicat MySQL Data Transfer

Source Server         : bsbs-mysql
Source Server Version : 50620
Source Host           : 172.16.254.17:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2017-11-14 15:22:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 NOT NULL COMMENT '菜单名',
  `level` int(11) NOT NULL DEFAULT '1' COMMENT '1：第一级；2：第二级，以此类推',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '如果是第一级，父类ID为0；',
  `code` varchar(32) CHARACTER SET utf8 NOT NULL COMMENT '例如admin:delete样式',
  `status` varchar(1) CHARACTER SET utf8 NOT NULL COMMENT '0：不可用；1：可用',
  `create_time` datetime NOT NULL COMMENT '第一次创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  `icon` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '界面映射图标',
  `url` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '连接地址',
  `sorter` int(2) NOT NULL DEFAULT '0' COMMENT '菜单栏显示排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '管理员管理', '1', '0', 'admin', '1', '2017-11-14 14:59:14', '2017-11-14 14:59:18', null, '/admin/init', '0');
INSERT INTO `sys_menu` VALUES ('2', '权限管理', '1', '0', 'role', '1', '2017-11-14 14:59:47', '2017-11-14 14:59:49', null, '#', '0');
INSERT INTO `sys_menu` VALUES ('3', '权限菜单管理', '2', '2', 'menu', '1', '2017-11-14 15:00:22', '2017-11-14 15:00:24', null, '/menu/init', '0');
INSERT INTO `sys_menu` VALUES ('4', '权限角色管理', '2', '2', 'auth', '1', '2017-11-14 15:00:56', '2017-11-14 15:00:58', null, '/role/init', '0');

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 NOT NULL COMMENT '功能名称',
  `code` varchar(32) CHARACTER SET utf8 NOT NULL COMMENT '例如admin:delete样式',
  `status` varchar(1) NOT NULL DEFAULT '1' COMMENT '0：不可用；1：可用',
  `descr` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '说明',
  `level` int(11) NOT NULL DEFAULT '1' COMMENT '1：第一级；2：第二级，以此类推',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '如果是第一级，父类ID为0；',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES ('1', '', '', '0', null, '0', '0');
INSERT INTO `sys_permission` VALUES ('2', '', '', '0', null, '0', '0');
INSERT INTO `sys_permission` VALUES ('3', '', '', '0', null, '0', '0');
INSERT INTO `sys_permission` VALUES ('4', '', '', '0', null, '0', '0');
INSERT INTO `sys_permission` VALUES ('5', '', '', '0', null, '0', '0');
INSERT INTO `sys_permission` VALUES ('6', '', '', '0', null, '0', '0');
INSERT INTO `sys_permission` VALUES ('7', '', '', '0', null, '0', '0');
INSERT INTO `sys_permission` VALUES ('8', '', '', '0', null, '0', '0');
INSERT INTO `sys_permission` VALUES ('9', '', '', '0', null, '0', '0');
INSERT INTO `sys_permission` VALUES ('10', '', '', '0', null, '0', '0');
INSERT INTO `sys_permission` VALUES ('11', '', '', '0', null, '0', '0');
INSERT INTO `sys_permission` VALUES ('12', '', '', '0', null, '0', '0');
INSERT INTO `sys_permission` VALUES ('13', '', '', '0', null, '0', '0');
INSERT INTO `sys_permission` VALUES ('14', '', '', '0', null, '0', '0');
INSERT INTO `sys_permission` VALUES ('15', '', '', '0', null, '0', '0');
INSERT INTO `sys_permission` VALUES ('16', '', '', '0', null, '0', '0');
INSERT INTO `sys_permission` VALUES ('17', '', '', '0', null, '0', '0');
INSERT INTO `sys_permission` VALUES ('18', '', '', '0', null, '0', '0');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(40) DEFAULT NULL COMMENT '角色代码',
  `name` varchar(32) DEFAULT NULL COMMENT '角色名称',
  `status` varchar(1) DEFAULT '1' COMMENT '1:有效，0:禁止登录',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '000001', '系统管理员', '1');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  `menu_id` int(11) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `menu_id` (`menu_id`),
  CONSTRAINT `sys_role_menu_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`id`),
  CONSTRAINT `sys_role_menu_ibfk_2` FOREIGN KEY (`menu_id`) REFERENCES `sys_menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('1', '1', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '1', '2');
INSERT INTO `sys_role_menu` VALUES ('3', '1', '3');
INSERT INTO `sys_role_menu` VALUES ('4', '1', '4');

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `perm_id` int(11) NOT NULL COMMENT '权限id',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `perm_id` (`perm_id`),
  CONSTRAINT `sys_role_permission_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`id`),
  CONSTRAINT `sys_role_permission_ibfk_2` FOREIGN KEY (`perm_id`) REFERENCES `sys_permission` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO `sys_role_permission` VALUES ('1', '1', '1');
INSERT INTO `sys_role_permission` VALUES ('2', '1', '2');
INSERT INTO `sys_role_permission` VALUES ('3', '1', '3');
INSERT INTO `sys_role_permission` VALUES ('4', '1', '4');
INSERT INTO `sys_role_permission` VALUES ('5', '1', '5');
INSERT INTO `sys_role_permission` VALUES ('6', '1', '6');
INSERT INTO `sys_role_permission` VALUES ('7', '1', '7');
INSERT INTO `sys_role_permission` VALUES ('8', '1', '8');
INSERT INTO `sys_role_permission` VALUES ('9', '1', '9');
INSERT INTO `sys_role_permission` VALUES ('10', '1', '10');
INSERT INTO `sys_role_permission` VALUES ('11', '1', '11');
INSERT INTO `sys_role_permission` VALUES ('12', '1', '12');
INSERT INTO `sys_role_permission` VALUES ('13', '1', '13');
INSERT INTO `sys_role_permission` VALUES ('14', '1', '14');
INSERT INTO `sys_role_permission` VALUES ('15', '1', '15');
INSERT INTO `sys_role_permission` VALUES ('16', '1', '16');
INSERT INTO `sys_role_permission` VALUES ('17', '1', '17');
INSERT INTO `sys_role_permission` VALUES ('18', '1', '18');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL COMMENT '登录帐号',
  `nickname` varchar(32) DEFAULT NULL COMMENT '用户昵称',
  `email` varchar(128) DEFAULT NULL COMMENT '邮箱',
  `telephone` varchar(12) NOT NULL COMMENT '联系帐号|登录帐号',
  `password` varchar(256) NOT NULL COMMENT '密码',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  `status` varchar(1) NOT NULL DEFAULT '1' COMMENT '1:有效，0:禁止',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', '超级管理员', 'admin@shop.com', '13888888888', '5a55d78af3a2929cfad9545fe087825d0d29ff270ca34cd6676cfe7e38175998b84318077c9f97757f2ca11a6eae4f255b8e7d9945ac18e3dd35d6f717d3b1e9', '2017-06-16 11:15:33', '2017-06-16 11:15:33', '2016-07-16 11:24:10', '1');
INSERT INTO `sys_user` VALUES ('2', 'chentao', '广告管理员', 'chentao@shop.com', '13888888888', '5a55d78af3a2929cfad9545fe087825d0d29ff270ca34cd6676cfe7e38175998b84318077c9f97757f2ca11a6eae4f255b8e7d9945ac18e3dd35d6f717d3b1e9', '2017-06-16 11:15:33', '2017-06-16 11:15:33', '2016-07-16 11:24:10', '1');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `sys_user_role_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`id`),
  CONSTRAINT `sys_user_role_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '1', '2');

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('2', 'updateAll', null, null, '0');
INSERT INTO `users` VALUES ('3', 'save', 'save', null, '0');
INSERT INTO `users` VALUES ('4', 'save', 'save', null, '1');
INSERT INTO `users` VALUES ('5', null, 'save', null, '1');
INSERT INTO `users` VALUES ('6', 'sd', 'sadf', 'sdf', '1');
INSERT INTO `users` VALUES ('7', null, 'save', null, '1');
INSERT INTO `users` VALUES ('8', null, 'save', null, '1');
INSERT INTO `users` VALUES ('9', null, 'save', null, '1');
INSERT INTO `users` VALUES ('10', null, 'save', null, '1');
INSERT INTO `users` VALUES ('11', null, 'save', null, '1');
INSERT INTO `users` VALUES ('12', null, 'save', null, null);

-- ----------------------------
-- Table structure for user_info
-- ----------------------------

