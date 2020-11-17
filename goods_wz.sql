/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : goods_wz

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2020-11-17 12:30:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `gly`
-- ----------------------------
DROP TABLE IF EXISTS `gly`;
CREATE TABLE `gly` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) NOT NULL,
  `upwd` varchar(30) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gly
-- ----------------------------
INSERT INTO `gly` VALUES ('1', '江杭', '178asd');
INSERT INTO `gly` VALUES ('2', '江南', '123hjk');
INSERT INTO `gly` VALUES ('5', '江梦佳', '123asd');
INSERT INTO `gly` VALUES ('12', '谢宇晨', '123qwe');
INSERT INTO `gly` VALUES ('14', '谢小琴', '123qwe');
INSERT INTO `gly` VALUES ('15', '江梦云', '123qwe');
INSERT INTO `gly` VALUES ('16', '江美凤', '123678');
INSERT INTO `gly` VALUES ('20', '江美新', '178qwe');

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goodsid` int(11) NOT NULL AUTO_INCREMENT,
  `goodname` varchar(20) NOT NULL,
  `price` int(30) NOT NULL,
  PRIMARY KEY (`goodsid`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '运动鞋', '150');
INSERT INTO `goods` VALUES ('2', '衬衫', '60');
INSERT INTO `goods` VALUES ('5', '奶油面包', '36');
INSERT INTO `goods` VALUES ('6', '高跟鞋', '120');
INSERT INTO `goods` VALUES ('8', '西装', '200');
INSERT INTO `goods` VALUES ('9', '玩具车', '120');
INSERT INTO `goods` VALUES ('11', 'T恤', '70');
INSERT INTO `goods` VALUES ('15', '电脑', '4300');
INSERT INTO `goods` VALUES ('16', '手机', '5000');
INSERT INTO `goods` VALUES ('18', '宿舍神器灯', '15');
INSERT INTO `goods` VALUES ('19', '汤达人方便面', '55');
INSERT INTO `goods` VALUES ('20', '蒙牛纯牛奶', '55');
INSERT INTO `goods` VALUES ('21', '情侣装夏季', '78');
INSERT INTO `goods` VALUES ('22', '连衣裙', '34');
INSERT INTO `goods` VALUES ('23', '保温杯', '68');
INSERT INTO `goods` VALUES ('25', '羽毛球', '98');
INSERT INTO `goods` VALUES ('26', '医用口罩', '68');
INSERT INTO `goods` VALUES ('27', '饼干', '70');
INSERT INTO `goods` VALUES ('28', '连衣裙', '172');
INSERT INTO `goods` VALUES ('29', '平板电脑', '5000');
INSERT INTO `goods` VALUES ('30', '苹果的手机', '5300');
INSERT INTO `goods` VALUES ('32', '零食大礼包', '60');
INSERT INTO `goods` VALUES ('34', '被子', '35');
INSERT INTO `goods` VALUES ('35', '充电宝', '36');
INSERT INTO `goods` VALUES ('37', '饭碗', '32');
INSERT INTO `goods` VALUES ('38', '枕头', '65');
INSERT INTO `goods` VALUES ('40', '电瓶车', '2300');
INSERT INTO `goods` VALUES ('42', '眼镜', '200');
INSERT INTO `goods` VALUES ('43', '面膜', '60');
