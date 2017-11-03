DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userid` bigint(20) NOT NULL ,
  `username` varchar(256) DEFAULT NULL ,
  `password` varchar(256) DEFAULT NULL ,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

insert into user values (1,"test","123456");