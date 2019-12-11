/*
Navicat MySQL Data Transfer

Source Server         : clouth
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : clouth

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2019-12-11 18:53:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  `register_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'lfq', '111111', null, null);
INSERT INTO `admin` VALUES ('2', 'lfq', '666666', null, null);
INSERT INTO `admin` VALUES ('3', 'lfq', '666666', '978080458@qq.com', null);
INSERT INTO `admin` VALUES ('4', 'lfq', '666666', '978080458@qq.com', null);
INSERT INTO `admin` VALUES ('5', 'lfq', '111111', '978080458@qq.com', '2019-12-11 00:00:00');
INSERT INTO `admin` VALUES ('6', 'lfq', '111111', '978080458@qq.com', '2019-12-11 00:00:00');
INSERT INTO `admin` VALUES ('7', 'lfq', '111111', '978080458@qq.com', '2019-12-11 00:00:00');
INSERT INTO `admin` VALUES ('8', 'lfq', '111111', '978080458@qq.com', '2019-12-11 00:00:00');
INSERT INTO `admin` VALUES ('9', 'lfq', '777777', '978080458@qq.com', '2019-12-11 00:00:00');
INSERT INTO `admin` VALUES ('10', 'lfq', '999999', '978080458@qq.com', '2019-12-11 00:00:00');

-- ----------------------------
-- Table structure for postmessage
-- ----------------------------
DROP TABLE IF EXISTS `postmessage`;
CREATE TABLE `postmessage` (
  `id` int(22) NOT NULL AUTO_INCREMENT,
  `postusername` varchar(255) DEFAULT NULL,
  `postuseremail` varchar(255) DEFAULT NULL,
  `postuserphone` varchar(255) DEFAULT NULL,
  `postmessage` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of postmessage
-- ----------------------------
INSERT INTO `postmessage` VALUES ('1', 'lfq', '978080458@qq.com', '', '', null);
INSERT INTO `postmessage` VALUES ('2', 'lfq', '', '18840179938', '111111', null);
INSERT INTO `postmessage` VALUES ('3', 'lfq', '978080458@qq.com', '18840179938', '111111', null);
INSERT INTO `postmessage` VALUES ('4', 'lfq', '978080458@qq.com', '18840179938', '111111', '2019-12-11 00:00:00');
INSERT INTO `postmessage` VALUES ('5', 'lfq', '978080488@qq.com', '18840179938', 'asdasdfasf', '2019-12-11 00:00:00');
