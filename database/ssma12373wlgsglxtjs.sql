/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : ssma12373wlgsglxtjs

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2022-04-10 03:00:43
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `admins`
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '帐号',
  `pwd` varchar(50) NOT NULL DEFAULT '' COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='管理员';

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for `dingdan`
-- ----------------------------
DROP TABLE IF EXISTS `dingdan`;
CREATE TABLE `dingdan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `yuyueid` int(10) unsigned NOT NULL COMMENT '预约id',
  `bianhao` varchar(50) NOT NULL DEFAULT '' COMMENT '编号',
  `huowu` varchar(50) NOT NULL DEFAULT '' COMMENT '货物',
  `jine` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '金额',
  `quyu` int(10) unsigned NOT NULL COMMENT '区域',
  `mudidi` varchar(50) NOT NULL DEFAULT '' COMMENT '目的地',
  `fahuodi` varchar(50) NOT NULL DEFAULT '' COMMENT '发货地',
  `fahuorendianhua` varchar(50) NOT NULL DEFAULT '' COMMENT '发货人电话',
  `fahuoren` varchar(50) NOT NULL DEFAULT '' COMMENT '发货人',
  `shouhuorendianhua` varchar(50) NOT NULL DEFAULT '' COMMENT '收货人电话',
  `shouhuoren` varchar(50) NOT NULL DEFAULT '' COMMENT '收货人',
  `tianjiaren` varchar(64) NOT NULL DEFAULT '' COMMENT '添加人',
  `yunshu` int(10) unsigned NOT NULL COMMENT '运输',
  `beizhu` text NOT NULL COMMENT '备注',
  `caozuoren` varchar(64) NOT NULL DEFAULT '' COMMENT '操作人',
  PRIMARY KEY (`id`),
  KEY `dingdan_yuyueid_index` (`yuyueid`),
  KEY `dingdan_quyu_index` (`quyu`),
  KEY `dingdan_yunshu_index` (`yunshu`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='订单';

-- ----------------------------
-- Records of dingdan
-- ----------------------------
INSERT INTO `dingdan` VALUES ('1', '1', '04100201241064', '大件', '10.00', '1', 'XX街道XX号', 'XX街道XX号', '15555444555', '张三', '15555544488', '张宇', '001', '1', 'XXXX', '100');
INSERT INTO `dingdan` VALUES ('2', '3', '04100257352607', '中件', '8.00', '4', 'XX街道XX号', 'XX街道XX号', '15555444555', '张三', '15555544488', '张宇', '002', '2', 'xxx', '200');

-- ----------------------------
-- Table structure for `huowu`
-- ----------------------------
DROP TABLE IF EXISTS `huowu`;
CREATE TABLE `huowu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `huowu` varchar(50) NOT NULL DEFAULT '' COMMENT '货物',
  `jine` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='货物';

-- ----------------------------
-- Records of huowu
-- ----------------------------
INSERT INTO `huowu` VALUES ('1', '易碎品', '15.00');
INSERT INTO `huowu` VALUES ('2', '大件', '10.00');
INSERT INTO `huowu` VALUES ('3', '小件', '5.00');
INSERT INTO `huowu` VALUES ('4', '中件', '8.00');

-- ----------------------------
-- Table structure for `quyu`
-- ----------------------------
DROP TABLE IF EXISTS `quyu`;
CREATE TABLE `quyu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `quyu` varchar(50) NOT NULL DEFAULT '' COMMENT '区域',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='区域';

-- ----------------------------
-- Records of quyu
-- ----------------------------
INSERT INTO `quyu` VALUES ('1', '龙华区');
INSERT INTO `quyu` VALUES ('2', '观澜区');
INSERT INTO `quyu` VALUES ('3', '南山区');
INSERT INTO `quyu` VALUES ('4', '罗湖区');
INSERT INTO `quyu` VALUES ('5', '平湖区');

-- ----------------------------
-- Table structure for `yonghu`
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `yonghuming` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `mima` varchar(50) NOT NULL DEFAULT '' COMMENT '密码',
  `xingming` varchar(50) NOT NULL DEFAULT '' COMMENT '姓名',
  `xingbie` varchar(10) NOT NULL COMMENT '性别',
  `shouji` varchar(50) NOT NULL DEFAULT '' COMMENT '手机',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='用户';

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES ('1', '001', '001', '张三', '男', '15588877888');
INSERT INTO `yonghu` VALUES ('2', '002', '002', '黄三', '女', '15588877888');

-- ----------------------------
-- Table structure for `yunshu`
-- ----------------------------
DROP TABLE IF EXISTS `yunshu`;
CREATE TABLE `yunshu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `yunshu` varchar(50) NOT NULL DEFAULT '' COMMENT '运输',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='运输';

-- ----------------------------
-- Records of yunshu
-- ----------------------------
INSERT INTO `yunshu` VALUES ('1', '空运');
INSERT INTO `yunshu` VALUES ('2', '陆运');
INSERT INTO `yunshu` VALUES ('3', '海运');

-- ----------------------------
-- Table structure for `yuyue`
-- ----------------------------
DROP TABLE IF EXISTS `yuyue`;
CREATE TABLE `yuyue` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bianhao` varchar(50) NOT NULL DEFAULT '' COMMENT '编号',
  `leixing` int(10) unsigned NOT NULL COMMENT '类型ID',
  `huowu` varchar(50) NOT NULL DEFAULT '' COMMENT '货物',
  `jine` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '金额',
  `quyu` int(10) unsigned NOT NULL COMMENT '区域',
  `mudidi` varchar(50) NOT NULL DEFAULT '' COMMENT '目的地',
  `fahuodi` varchar(50) NOT NULL DEFAULT '' COMMENT '发货地',
  `fahuorendianhua` varchar(50) NOT NULL DEFAULT '' COMMENT '发货人电话',
  `fahuoren` varchar(50) NOT NULL DEFAULT '' COMMENT '发货人',
  `shouhuorendianhua` varchar(50) NOT NULL DEFAULT '' COMMENT '收货人电话',
  `shouhuoren` varchar(50) NOT NULL DEFAULT '' COMMENT '收货人',
  `shijian` varchar(25) NOT NULL COMMENT '时间',
  `beizhu` text NOT NULL COMMENT '备注',
  `tianjiaren` varchar(64) NOT NULL DEFAULT '' COMMENT '添加人',
  `iszf` varchar(10) NOT NULL DEFAULT '否' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  KEY `yuyue_leixing_index` (`leixing`),
  KEY `yuyue_quyu_index` (`quyu`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='预约';

-- ----------------------------
-- Records of yuyue
-- ----------------------------
INSERT INTO `yuyue` VALUES ('1', '04100201241064', '2', '大件', '10.00', '1', 'XX街道XX号', 'XX街道XX号', '15555444555', '张三', '15555544488', '张宇', '2022-04-10 02:01:24', 'XXXX', '001', '是');
INSERT INTO `yuyue` VALUES ('2', '04100202342072', '1', '易碎品', '15.00', '4', 'XX街道XX号', 'XX街道XX号', '15555444555', '张三', '15555544488', '张宇', '2022-04-10 02:02:34', 'xxxx', '001', '否');
INSERT INTO `yuyue` VALUES ('3', '04100257352607', '4', '中件', '8.00', '4', 'XX街道XX号', 'XX街道XX号', '15555444555', '张三', '15555544488', '张宇', '2022-04-10 02:57:35', 'XXXX', '002', '是');

-- ----------------------------
-- Table structure for `zhigong`
-- ----------------------------
DROP TABLE IF EXISTS `zhigong`;
CREATE TABLE `zhigong` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gonghao` varchar(50) NOT NULL DEFAULT '' COMMENT '工号',
  `mima` varchar(50) NOT NULL DEFAULT '' COMMENT '密码',
  `xingming` varchar(50) NOT NULL DEFAULT '' COMMENT '姓名',
  `quyu` int(10) unsigned NOT NULL COMMENT '区域',
  `xingbie` varchar(10) NOT NULL COMMENT '性别',
  `shouji` varchar(50) NOT NULL DEFAULT '' COMMENT '手机',
  PRIMARY KEY (`id`),
  KEY `zhigong_quyu_index` (`quyu`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='职工';

-- ----------------------------
-- Records of zhigong
-- ----------------------------
INSERT INTO `zhigong` VALUES ('1', '100', '100', '李四', '1', '男', '15588877888');
INSERT INTO `zhigong` VALUES ('2', '200', '200', '刘三', '4', '女', '15588877888');
