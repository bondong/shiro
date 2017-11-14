/*Table structure for table `sys_permission` */
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url` varchar(256) DEFAULT NULL COMMENT 'url地址',
  `menu_type` varchar(32) DEFAULT NULL COMMENT '菜单类型',
  `menu_name` varchar(32) DEFAULT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父菜单id',
  `menu_class` int DEFAULT NULL COMMENT '菜单层级',
  `sequence` int DEFAULT NULL COMMENT '排序',
  `status` int DEFAULT '1' COMMENT '1:有效，0:禁止',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*Table structure for table `sys_role` */
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_code` varchar(32) DEFAULT NULL COMMENT '角色代码',
  `role_name` varchar(32) DEFAULT NULL COMMENT '角色名称',
  `role_type` varchar(10) DEFAULT NULL COMMENT '角色类型',
  `status` int DEFAULT '1' COMMENT '1:有效，0:禁止登录',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*Table structure for table `sys_role_permission` */
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,	
  `rid` bigint(20) NOT NULL COMMENT '角色id',
  `pid` bigint(20) NOT NULL COMMENT '权限id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*Table structure for table `sys_user` */
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) DEFAULT NULL COMMENT '用户昵称',
  `nickname` varchar(32) DEFAULT NULL COMMENT '用户昵称',
  `email` varchar(128) DEFAULT NULL COMMENT '邮箱|登录帐号',
  `telephone` varchar(32) DEFAULT NULL COMMENT '邮箱|登录帐号',
  `pswd` varchar(256) DEFAULT NULL COMMENT '密码',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  `status` int DEFAULT '1' COMMENT '1:有效，0:禁止',
  `user_type` int ,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*Table structure for table `sys_user_role` */
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,	
  `rid` bigint(20) NOT NULL COMMENT '角色id',
  `uid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,	
  `rid` bigint(20) NOT NULL COMMENT '角色id',
  `mid` bigint(20) NOT NULL COMMENT '菜单id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


/*insert  into `sys_permission`(`id`,`url`,`menu_name`,`menu_code`,`menu_type`,
`parent_code`,`menu_class`,`sequence`,`status`) values 
(1,'/permissionMan.jsp','权限管理','qxgl','1','',1,1,1),
(2,'/userMan.jsp','用户管理','yhgl','2','',1,1,1),

(3,'/permission/listPermission.jsp','权限列表','qxlb','1','qxgl',2,1,1),
(4,'/permission/permissionAllocation.jsp','权限分配','qxfp','1','qxgl',2,2,1),
(5,'/role/listRole.jsp','角色列表','jslb','1','qxgl',2,3,1),
(6,'/role/addRole2User.jsp','角色分配','jsfp','1','qxgl',2,4,1),

(7,'/permission/addPermission.jsp','权限添加','qxtj','1','qxlb',3,1,1),
(8,'/permission/deletePermissionById.jsp','权限删除','qxsc','1','qxlb',3,2,1),
(9,'/permission/addPermission2Role.jsp','权限分配至角色','qxfpjs','1','qxfp',3,1,1),

(10,'/role/clearRoleByUserIds.jsp','清空用户角色','qkyhjs','1','jslb',3,1,1),
(11,'/role/deleteRoleById.jsp','角色删除','jssc','1','jslb',3,2,1),
(12,'/role/addRole.jsp','角色添加','jstj','1','jslb',3,3,1),
(13,'/role/addRole2User.jsp','角色分配至用户','jsfpyh','1','jsfp',3,1,1),

(14,'/user/listUser.jsp','用户列表','yhlb','2','yhgl',2,1,1),
(15,'/user/online.jsp','在线用户','zxyh','2','yhgl',2,2,1),

(16,'/user/forbidUserById.jsp','用户激活&禁止','yhjhjz','2','yhlb',3,1,1),
(17,'/user/deleteUserById.jsp','用户删除','yhsc','2','yhlb',3,2,1),
(18,'/user/changeSessionStatus.jsp','用户Session踢出','yhtc','2','zxyh',3,1,1);
*/
insert  into `sys_permission`(`id`,`url`,`menu_name`,`menu_type`,
`parent_id`,`menu_class`,`sequence`,`status`) values 
(1,'/permissionMan.jsp','权限管理','1',0,1,1,1),
(2,'/userMan.jsp','用户管理','2',0,1,1,1),

(3,'/permission/listPermission.jsp','权限列表','1',1,2,1,1),
(4,'/permission/permissionAllocation.jsp','权限分配','1',1,2,2,1),
(5,'/role/listRole.jsp','角色列表','1',1,2,3,1),
(6,'/role/addRole2User.jsp','角色分配','1',1,2,4,1),

(7,'/permission/addPermission.jsp','权限添加','1',3,3,1,1),
(8,'/permission/deletePermissionById.jsp','权限删除','1',3,3,2,1),
(9,'/permission/addPermission2Role.jsp','权限分配至角色','1',4,3,1,1),

(10,'/role/clearRoleByUserIds.jsp','清空用户角色','1',5,3,1,1),
(11,'/role/deleteRoleById.jsp','角色删除','1',5,3,2,1),
(12,'/role/addRole.jsp','角色添加','1',5,3,3,1),
(13,'/role/addRole2User.jsp','角色分配至用户','1',6,3,1,1),

(14,'/user/listUser.jsp','用户列表','2',2,2,1,1),
(15,'/user/online.jsp','在线用户','2',2,2,2,1),

(16,'/user/forbidUserById.jsp','用户激活&禁止','2',14,3,1,1),
(17,'/user/deleteUserById.jsp','用户删除','2',14,3,2,1),
(18,'/user/changeSessionStatus.jsp','用户Session踢出','2',15,3,1,1);

insert  into `sys_role`(`id`,`role_code`,`role_name`,`role_type`,`status`) values 
(1,'000001','系统管理员','1',1),
(2,'100002','厂商','2',1),
(3,'100003','广告管理','3',1);

insert  into `sys_role_permission`(`rid`,`pid`) values 
(1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),
(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18);

insert  into `sys_user`(`id`,`username`,`nickname`,`email`,`telephone`,
`pswd`,`create_time`,`modify_time`,`last_login_time`,`status`,`user_type`) values 
(1,'admin','超级管理员','admin@shop.com','13888888888','57eb72e6b78a87a12d46a7f5e9315138','2017-06-16 11:15:33','2017-06-16 11:15:33','2016-07-16 11:24:10',1,1),
(2,'chentao','广告管理员','chentao@shop.com','13888888888','57eb72e6b78a87a12d46a7f5e9315138','2017-06-16 11:15:33','2017-06-16 11:15:33','2016-07-16 11:24:10',1,1);

insert  into `sys_user_role`(`rid`,`uid`) values 
(1,1),(1,2);