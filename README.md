## Hotel-Reservation
基于SSM框架实现的酒店展示和房间预订系统
现阶段实现的功能：登陆、注册、查看房间列表、订房、查看历史订单等

缺陷：<br>
1、时间格式并不是Date类型，此时使用的是字符串<br>
2、在显示历史预定记录的时候，未使用分页，仅仅使用css的overflow属性，及其影响体验感<br>
3、本来打算使用shiro框架的，但是由于时间问题，只能草草的结束<br>
4、我在测试的时候，整个体系的响应速度非常慢,严重影响体验感<br>
5、并发性能差<br>

#### 注意：
此项目仅仅适合新手做练手项目<br>
大牛勿看<br>
以后会更新更优质的代码<br>



## 数据库的设计
```
SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `house`;
CREATE TABLE `house` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `housename` varchar(255) NOT NULL,
  `images` varchar(255) NOT NULL DEFAULT '',
  `number` int(10) NOT NULL,
  `price` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO `house` VALUES ('1', '单人间', 'images/rooms/single-room.jpg', '9', '89');
INSERT INTO `house` VALUES ('2', '双人间', 'images/rooms/double-room.jpg', '7', '129');
INSERT INTO `house` VALUES ('3', '豪华间', 'images/rooms/deluxe-room.jpg', '9', '189');
INSERT INTO `house` VALUES ('4', '特大号床间', 'images/rooms/king.jpg', '9', '219');
INSERT INTO `house` VALUES ('5', '蜜月房', 'images/rooms/honeymoon.jpg', '9', '289');
INSERT INTO `house` VALUES ('6', '家庭间', 'images/rooms/family.jpg', '9', '149');

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `orderid` int(10) NOT NULL AUTO_INCREMENT,
  `names` varchar(255) NOT NULL,
  `userid` int(10) DEFAULT NULL,
  `id` int(10) NOT NULL,
  `many` int(10) NOT NULL,
  `createtime` varchar(40) NOT NULL,
  `days` int(10) NOT NULL,
  `phone` varchar(49) NOT NULL,
  PRIMARY KEY (`orderid`),
  KEY `userid` (`userid`),
  KEY `idhouse` (`id`),
  CONSTRAINT `idhouse` FOREIGN KEY (`id`) REFERENCES `house` (`id`),
  CONSTRAINT `userid` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `age` int(10) NOT NULL,
  `sex` varchar(30) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

```

## 页面展示

![Image text](https://github.com/MrChengs1997/Hotel-Reservation/blob/master/ssm/WebRoot/WEB-INF/images/blog/blog_post1.jpg)



