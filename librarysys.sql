/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : db_librarysys

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-04-28 21:45:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_bookcase
-- ----------------------------
DROP TABLE IF EXISTS `tb_bookcase`;
CREATE TABLE `tb_bookcase` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of tb_bookcase
-- ----------------------------
INSERT INTO `tb_bookcase` VALUES ('4', '左A-1');
INSERT INTO `tb_bookcase` VALUES ('5', '左A-2');
INSERT INTO `tb_bookcase` VALUES ('6', '右A-1');

-- ----------------------------
-- Table structure for tb_bookinfo
-- ----------------------------
DROP TABLE IF EXISTS `tb_bookinfo`;
CREATE TABLE `tb_bookinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `barcode` varchar(30) DEFAULT NULL,
  `bookname` varchar(70) DEFAULT NULL,
  `typeid` int(10) unsigned DEFAULT NULL,
  `author` varchar(30) DEFAULT NULL,
  `translator` varchar(30) DEFAULT NULL,
  `ISBN` varchar(20) DEFAULT NULL,
  `price` float(8,2) DEFAULT NULL,
  `page` int(10) unsigned DEFAULT NULL,
  `bookcase` int(10) unsigned DEFAULT NULL,
  `inTime` date DEFAULT NULL,
  `operator` varchar(30) DEFAULT NULL,
  `del` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of tb_bookinfo
-- ----------------------------
INSERT INTO `tb_bookinfo` VALUES ('7', '9787302210337', 'Java Web开发实战宝典', '4', '王国辉', '', '302', '89.00', '834', '4', '2018-02-07', 'mr', '0');
INSERT INTO `tb_bookinfo` VALUES ('8', '9787115195975', 'Java Web开发典型模块大全', '4', '王国辉、王毅、王殊宇', '', '115', '89.00', '752', '4', '2018-02-07', 'mr', '0');
INSERT INTO `tb_bookinfo` VALUES ('9', '9787115195976', '设计模式', '4', '秦晓波', '', '115', '45.00', '450', '4', '2018-02-07', 'mr', '0');
INSERT INTO `tb_bookinfo` VALUES ('10', '9787117195976', 'spring技术内幕', '4', '王毅', '', '111', '26.00', '360', '4', '2018-02-07', 'mr', '0');

-- ----------------------------
-- Table structure for tb_booktype
-- ----------------------------
DROP TABLE IF EXISTS `tb_booktype`;
CREATE TABLE `tb_booktype` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `typename` varchar(30) DEFAULT NULL,
  `days` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of tb_booktype
-- ----------------------------
INSERT INTO `tb_booktype` VALUES ('4', '网络编程', '20');
INSERT INTO `tb_booktype` VALUES ('5', '数据库开发', '15');

-- ----------------------------
-- Table structure for tb_borrow
-- ----------------------------
DROP TABLE IF EXISTS `tb_borrow`;
CREATE TABLE `tb_borrow` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `readerid` int(10) unsigned DEFAULT NULL,
  `bookid` int(10) DEFAULT NULL,
  `borrowTime` date DEFAULT NULL,
  `backTime` date DEFAULT NULL,
  `operator` varchar(30) DEFAULT NULL,
  `ifback` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of tb_borrow
-- ----------------------------
INSERT INTO `tb_borrow` VALUES ('7', '4', '7', '2018-02-01', '2018-02-16', 'mr', '1');
INSERT INTO `tb_borrow` VALUES ('8', '4', '7', '2018-02-01', '2018-02-16', 'mr', '0');
INSERT INTO `tb_borrow` VALUES ('9', '5', '8', '2018-02-01', '2018-02-16', 'mr', '0');

-- ----------------------------
-- Table structure for tb_giveback
-- ----------------------------
DROP TABLE IF EXISTS `tb_giveback`;
CREATE TABLE `tb_giveback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `readerid` int(11) DEFAULT NULL,
  `bookid` int(11) DEFAULT NULL,
  `backTime` date DEFAULT NULL,
  `operator` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of tb_giveback
-- ----------------------------
INSERT INTO `tb_giveback` VALUES ('3', '4', '7', '2011-02-24', 'mr');

-- ----------------------------
-- Table structure for tb_library
-- ----------------------------
DROP TABLE IF EXISTS `tb_library`;
CREATE TABLE `tb_library` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `libraryname` varchar(50) DEFAULT NULL,
  `curator` varchar(10) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `createDate` date DEFAULT NULL,
  `introduce` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of tb_library
-- ----------------------------
INSERT INTO `tb_library` VALUES ('1', '博研图书馆', 'mr', '0431-84978981', '长春市东盛大街89', 'mingrisoft@mingsoft.com', 'http://www', '1999-12-12', '本市拥有计算机类图书最多的图书馆。');

-- ----------------------------
-- Table structure for tb_manager
-- ----------------------------
DROP TABLE IF EXISTS `tb_manager`;
CREATE TABLE `tb_manager` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `PWD` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of tb_manager
-- ----------------------------
INSERT INTO `tb_manager` VALUES ('1', 'admin', 'admin');
INSERT INTO `tb_manager` VALUES ('7', 'student', 'student');
INSERT INTO `tb_manager` VALUES ('9', 'manage', 'manage');

-- ----------------------------
-- Table structure for tb_parameter
-- ----------------------------
DROP TABLE IF EXISTS `tb_parameter`;
CREATE TABLE `tb_parameter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cost` int(10) unsigned DEFAULT NULL,
  `validity` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of tb_parameter
-- ----------------------------
INSERT INTO `tb_parameter` VALUES ('1', '30', '6');

-- ----------------------------
-- Table structure for tb_publishing
-- ----------------------------
DROP TABLE IF EXISTS `tb_publishing`;
CREATE TABLE `tb_publishing` (
  `ISBN` varchar(20) NOT NULL COMMENT 'ISBN号',
  `pubname` varchar(30) DEFAULT NULL COMMENT '出版社名称',
  PRIMARY KEY (`ISBN`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of tb_publishing
-- ----------------------------
INSERT INTO `tb_publishing` VALUES ('111', '机械工业出版社');
INSERT INTO `tb_publishing` VALUES ('115', '人民邮电出版社');
INSERT INTO `tb_publishing` VALUES ('302', '清华大学出版社');

-- ----------------------------
-- Table structure for tb_purview
-- ----------------------------
DROP TABLE IF EXISTS `tb_purview`;
CREATE TABLE `tb_purview` (
  `id` int(11) NOT NULL,
  `sysset` tinyint(1) DEFAULT '0',
  `readerset` tinyint(1) DEFAULT '0',
  `bookset` tinyint(1) DEFAULT '0',
  `borrowback` tinyint(1) DEFAULT '0',
  `sysquery` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of tb_purview
-- ----------------------------
INSERT INTO `tb_purview` VALUES ('1', '1', '1', '1', '1', '1');
INSERT INTO `tb_purview` VALUES ('7', '0', '1', '1', '1', '1');
INSERT INTO `tb_purview` VALUES ('9', '1', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for tb_reader
-- ----------------------------
DROP TABLE IF EXISTS `tb_reader`;
CREATE TABLE `tb_reader` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(4) DEFAULT NULL,
  `barcode` varchar(30) DEFAULT NULL,
  `vocation` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `paperType` varchar(10) DEFAULT NULL,
  `paperNO` varchar(20) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `createDate` date DEFAULT NULL,
  `operator` varchar(30) DEFAULT NULL,
  `remark` text,
  `typeid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of tb_reader
-- ----------------------------
INSERT INTO `tb_reader` VALUES ('4', '吴哲', '男', '20144070618', '学生', '1996-03-08', '身份证', '220104201007100001', '5954468', 'wz717@sohu.com', '2018-03-01', 'mr', '无', '4');
INSERT INTO `tb_reader` VALUES ('5', '嵇双龙', '男', '20144050477', '程序员', '1980-07-10', '工作证', '220104201007100002', '5954698', 'jsl@sohu.com', '2018-03-01', 'mr', '无', '7');
INSERT INTO `tb_reader` VALUES ('6', '单易', '女', '2015021255', '学生', '1990-07-13', '身份证', '220104201007300002', '4567895', 'sy@sohu.com', '2018-03-01', 'mr', '', '4');

-- ----------------------------
-- Table structure for tb_readertype
-- ----------------------------
DROP TABLE IF EXISTS `tb_readertype`;
CREATE TABLE `tb_readertype` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `number` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of tb_readertype
-- ----------------------------
INSERT INTO `tb_readertype` VALUES ('4', '学生', '1');
INSERT INTO `tb_readertype` VALUES ('6', '教师', '5');
INSERT INTO `tb_readertype` VALUES ('7', '社会人员', '3');
