/*
Navicat MySQL Data Transfer

Source Server         : grqdatabase
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : shopprogram

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-12-03 16:51:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goodlist
-- ----------------------------
DROP TABLE IF EXISTS `goodlist`;
CREATE TABLE `goodlist` (
  `gid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goodname` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `delprice` varchar(255) NOT NULL,
  `bigimg` varchar(255) NOT NULL,
  `kucun` varchar(255) NOT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodlist
-- ----------------------------
INSERT INTO `goodlist` VALUES ('1', '[9种美味齐聚一盒]森林大叔 每日坚果9种果仁分享组 26g*60袋', '289.00 ', '299.00 ', '../img/goodimg/goodimg01_b1.jpg-../img/goodimg/goodimg01_b2.jpg-../img/goodimg/goodimg01_b3.jpg-../img/goodimg/goodimg01_b4.jpg-../img/goodimg/goodimg01_b5.jpg', '200 ');
INSERT INTO `goodlist` VALUES ('2', '[人间至味是肉香]丁星斋传统老汤牛肉 （清真）125g*10袋 赠8袋', '298.00 ', '398.00 ', '../img/goodimg/goodimg02_b1.jpg-../img/goodimg/goodimg02_b2.jpg-../img/goodimg/goodimg02_b3.jpg-../img/goodimg/goodimg02_b4.jpg-../img/goodimg/goodimg02_b5.jpg', '200 ');
INSERT INTO `goodlist` VALUES ('3', '[2组起订]甘源休闲食品（蒜香味青豌豆285g/蟹黄味瓜子仁285g/蟹黄味蚕豆285g/酱 蟹黄味瓜子仁285g', '8.90 ', '18.00 ', '../img/goodimg/goodimg03_b1.jpg', '220 ');
INSERT INTO `goodlist` VALUES ('4', '[肉厚味甜 入口即化]沙雅舒克和田大枣 500g*16袋', '169.00 ', '239.00 ', '../img/goodimg/goodimg04_b1.jpg-../img/goodimg/goodimg04_b2.jpg-../img/goodimg/goodimg04_b3.jpg-../img/goodimg/goodimg04_b4.jpg', '220 ');
INSERT INTO `goodlist` VALUES ('5', '[自带磨皮美颜妆效]（直邮）日本CPB肌肤之钥长管滋润隔离霜36ml', '398.00 ', '418.00 ', '../img/goodimg/goodimg05_b1.jpg-../img/goodimg/goodimg05_b2.jpg-../img/goodimg/goodimg05_b3.jpg', '500 ');
INSERT INTO `goodlist` VALUES ('6', '[肌肤闪耀钻石光感]（直邮）日本CPB肌肤之钥光透白钻石光感隔离霜30ml', '358.00 ', '398.00 ', '../img/goodimg/goodimg06_b1.jpg-../img/goodimg/goodimg06_b2.jpg-../img/goodimg/goodimg06_b3.jpg', '234 ');
INSERT INTO `goodlist` VALUES ('7', '[水润新生膜力尽显]（直邮）泰国ANJERI免洗睡眠面膜组合（金色16粒+银色16粒）', '168.00 ', '252.00 ', '../img/goodimg/goodimg07_b1.jpg-../img/goodimg/goodimg07_b2.jpg-../img/goodimg/goodimg07_b3.jpg-../img/goodimg/goodimg07_b4.jpg-../img/goodimg/goodimg07_b5.jpg', '877 ');
INSERT INTO `goodlist` VALUES ('8', '[9种美味齐聚一盒]森林大叔 每日坚果9种果仁分享组 26g*60袋', '289.00 ', '299.00 ', '../img/goodimg/goodimg01_b1.jpg-../img/goodimg/goodimg01_b2.jpg-../img/goodimg/goodimg01_b3.jpg-../img/goodimg/goodimg01_b4.jpg-../img/goodimg/goodimg01_b5.jpg', '200 ');
INSERT INTO `goodlist` VALUES ('9', '[人间至味是肉香]丁星斋传统老汤牛肉 （清真）125g*10袋 赠8袋', '298.00 ', '398.00 ', '../img/goodimg/goodimg02_b1.jpg-../img/goodimg/goodimg02_b2.jpg-../img/goodimg/goodimg02_b3.jpg-../img/goodimg/goodimg02_b4.jpg-../img/goodimg/goodimg02_b5.jpg', '200 ');
INSERT INTO `goodlist` VALUES ('10', '[2组起订]甘源休闲食品（蒜香味青豌豆285g/蟹黄味瓜子仁285g/蟹黄味蚕豆285g/酱 蟹黄味瓜子仁285g', '8.90 ', '18.00 ', '../img/goodimg/goodimg03_b1.jpg', '220 ');
INSERT INTO `goodlist` VALUES ('11', '[肉厚味甜 入口即化]沙雅舒克和田大枣 500g*16袋', '169.00 ', '239.00 ', '../img/goodimg/goodimg04_b1.jpg-../img/goodimg/goodimg04_b2.jpg-../img/goodimg/goodimg04_b3.jpg-../img/goodimg/goodimg04_b4.jpg', '220 ');
INSERT INTO `goodlist` VALUES ('12', '[自带磨皮美颜妆效]（直邮）日本CPB肌肤之钥长管滋润隔离霜36ml', '398.00 ', '418.00 ', '../img/goodimg/goodimg05_b1.jpg-../img/goodimg/goodimg05_b2.jpg-../img/goodimg/goodimg05_b3.jpg', '500 ');
INSERT INTO `goodlist` VALUES ('14', '[水润新生膜力尽显]（直邮）泰国ANJERI免洗睡眠面膜组合（金色16粒+银色16粒）', '168.00 ', '252.00 ', '../img/goodimg/goodimg07_b1.jpg-../img/goodimg/goodimg07_b2.jpg-../img/goodimg/goodimg07_b3.jpg-../img/goodimg/goodimg07_b4.jpg-../img/goodimg/goodimg07_b5.jpg', '877 ');
INSERT INTO `goodlist` VALUES ('15', '[9种美味齐聚一盒]森林大叔 每日坚果9种果仁分享组 26g*60袋', '289.00 ', '299.00 ', '../img/goodimg/goodimg01_b1.jpg-../img/goodimg/goodimg01_b2.jpg-../img/goodimg/goodimg01_b3.jpg-../img/goodimg/goodimg01_b4.jpg-../img/goodimg/goodimg01_b5.jpg', '200 ');
INSERT INTO `goodlist` VALUES ('16', '[人间至味是肉香]丁星斋传统老汤牛肉 （清真）125g*10袋 赠8袋', '298.00 ', '398.00 ', '../img/goodimg/goodimg02_b1.jpg-../img/goodimg/goodimg02_b2.jpg-../img/goodimg/goodimg02_b3.jpg-../img/goodimg/goodimg02_b4.jpg-../img/goodimg/goodimg02_b5.jpg', '200 ');
INSERT INTO `goodlist` VALUES ('17', '[2组起订]甘源休闲食品（蒜香味青豌豆285g/蟹黄味瓜子仁285g/蟹黄味蚕豆285g/酱 蟹黄味瓜子仁285g', '8.90 ', '18.00 ', '../img/goodimg/goodimg03_b1.jpg', '220 ');
INSERT INTO `goodlist` VALUES ('18', '[肉厚味甜 入口即化]沙雅舒克和田大枣 500g*16袋', '169.00 ', '239.00 ', '../img/goodimg/goodimg04_b1.jpg-../img/goodimg/goodimg04_b2.jpg-../img/goodimg/goodimg04_b3.jpg-../img/goodimg/goodimg04_b4.jpg', '220 ');
INSERT INTO `goodlist` VALUES ('19', '[自带磨皮美颜妆效]（直邮）日本CPB肌肤之钥长管滋润隔离霜36ml', '398.00 ', '418.00 ', '../img/goodimg/goodimg05_b1.jpg-../img/goodimg/goodimg05_b2.jpg-../img/goodimg/goodimg05_b3.jpg', '500 ');
INSERT INTO `goodlist` VALUES ('20', '[肌肤闪耀钻石光感]（直邮）日本CPB肌肤之钥光透白钻石光感隔离霜30ml', '358.00 ', '398.00 ', '../img/goodimg/goodimg06_b1.jpg-../img/goodimg/goodimg06_b2.jpg-../img/goodimg/goodimg06_b3.jpg', '234 ');
INSERT INTO `goodlist` VALUES ('21', '[水润新生膜力尽显]（直邮）泰国ANJERI免洗睡眠面膜组合（金色16粒+银色16粒）', '168.00 ', '252.00 ', '../img/goodimg/goodimg07_b1.jpg-../img/goodimg/goodimg07_b2.jpg-../img/goodimg/goodimg07_b3.jpg-../img/goodimg/goodimg07_b4.jpg-../img/goodimg/goodimg07_b5.jpg', '877 ');
INSERT INTO `goodlist` VALUES ('22', '[9种美味齐聚一盒]森林大叔 每日坚果9种果仁分享组 26g*60袋', '289.00 ', '299.00 ', '../img/goodimg/goodimg01_b1.jpg-../img/goodimg/goodimg01_b2.jpg-../img/goodimg/goodimg01_b3.jpg-../img/goodimg/goodimg01_b4.jpg-../img/goodimg/goodimg01_b5.jpg', '200 ');
INSERT INTO `goodlist` VALUES ('23', '[人间至味是肉香]丁星斋传统老汤牛肉 （清真）125g*10袋 赠8袋', '298.00 ', '398.00 ', '../img/goodimg/goodimg02_b1.jpg-../img/goodimg/goodimg02_b2.jpg-../img/goodimg/goodimg02_b3.jpg-../img/goodimg/goodimg02_b4.jpg-../img/goodimg/goodimg02_b5.jpg', '200 ');
INSERT INTO `goodlist` VALUES ('24', '[2组起订]甘源休闲食品（蒜香味青豌豆285g/蟹黄味瓜子仁285g/蟹黄味蚕豆285g/酱 蟹黄味瓜子仁285g', '8.90 ', '18.00 ', '../img/goodimg/goodimg03_b1.jpg', '220 ');
INSERT INTO `goodlist` VALUES ('25', '[肉厚味甜 入口即化]沙雅舒克和田大枣 500g*16袋', '169.00 ', '239.00 ', '../img/goodimg/goodimg04_b1.jpg-../img/goodimg/goodimg04_b2.jpg-../img/goodimg/goodimg04_b3.jpg-../img/goodimg/goodimg04_b4.jpg', '220 ');
INSERT INTO `goodlist` VALUES ('26', '[自带磨皮美颜妆效]（直邮）日本CPB肌肤之钥长管滋润隔离霜36ml', '398.00 ', '418.00 ', '../img/goodimg/goodimg05_b1.jpg-../img/goodimg/goodimg05_b2.jpg-../img/goodimg/goodimg05_b3.jpg', '500 ');
INSERT INTO `goodlist` VALUES ('27', '[肌肤闪耀钻石光感]（直邮）日本CPB肌肤之钥光透白钻石光感隔离霜30ml', '358.00 ', '398.00 ', '../img/goodimg/goodimg06_b1.jpg-../img/goodimg/goodimg06_b2.jpg-../img/goodimg/goodimg06_b3.jpg', '234 ');
INSERT INTO `goodlist` VALUES ('28', '[水润新生膜力尽显]（直邮）泰国ANJERI免洗睡眠面膜组合（金色16粒+银色16粒）', '168.00 ', '252.00 ', '../img/goodimg/goodimg07_b1.jpg-../img/goodimg/goodimg07_b2.jpg-../img/goodimg/goodimg07_b3.jpg-../img/goodimg/goodimg07_b4.jpg-../img/goodimg/goodimg07_b5.jpg', '877 ');
INSERT INTO `goodlist` VALUES ('29', '[9种美味齐聚一盒]森林大叔 每日坚果9种果仁分享组 26g*60袋', '289.00 ', '299.00 ', '../img/goodimg/goodimg01_b1.jpg-../img/goodimg/goodimg01_b2.jpg-../img/goodimg/goodimg01_b3.jpg-../img/goodimg/goodimg01_b4.jpg-../img/goodimg/goodimg01_b5.jpg', '200 ');
INSERT INTO `goodlist` VALUES ('30', '[人间至味是肉香]丁星斋传统老汤牛肉 （清真）125g*10袋 赠8袋', '298.00 ', '398.00 ', '../img/goodimg/goodimg02_b1.jpg-../img/goodimg/goodimg02_b2.jpg-../img/goodimg/goodimg02_b3.jpg-../img/goodimg/goodimg02_b4.jpg-../img/goodimg/goodimg02_b5.jpg', '200 ');
INSERT INTO `goodlist` VALUES ('31', '[2组起订]甘源休闲食品（蒜香味青豌豆285g/蟹黄味瓜子仁285g/蟹黄味蚕豆285g/酱 蟹黄味瓜子仁285g', '8.90 ', '18.00 ', '../img/goodimg/goodimg03_b1.jpg', '220 ');
INSERT INTO `goodlist` VALUES ('32', '[肉厚味甜 入口即化]沙雅舒克和田大枣 500g*16袋', '169.00 ', '239.00 ', '../img/goodimg/goodimg04_b1.jpg-../img/goodimg/goodimg04_b2.jpg-../img/goodimg/goodimg04_b3.jpg-../img/goodimg/goodimg04_b4.jpg', '220 ');
INSERT INTO `goodlist` VALUES ('33', '[自带磨皮美颜妆效]（直邮）日本CPB肌肤之钥长管滋润隔离霜36ml', '398.00 ', '418.00 ', '../img/goodimg/goodimg05_b1.jpg-../img/goodimg/goodimg05_b2.jpg-../img/goodimg/goodimg05_b3.jpg', '500 ');
INSERT INTO `goodlist` VALUES ('34', '[肌肤闪耀钻石光感]（直邮）日本CPB肌肤之钥光透白钻石光感隔离霜30ml', '358.00 ', '398.00 ', '../img/goodimg/goodimg06_b1.jpg-../img/goodimg/goodimg06_b2.jpg-../img/goodimg/goodimg06_b3.jpg', '234 ');
INSERT INTO `goodlist` VALUES ('35', '[水润新生膜力尽显]（直邮）泰国ANJERI免洗睡眠面膜组合（金色16粒+银色16粒）', '168.00 ', '252.00 ', '../img/goodimg/goodimg07_b1.jpg-../img/goodimg/goodimg07_b2.jpg-../img/goodimg/goodimg07_b3.jpg-../img/goodimg/goodimg07_b4.jpg-../img/goodimg/goodimg07_b5.jpg', '877 ');
INSERT INTO `goodlist` VALUES ('36', '[9种美味齐聚一盒]森林大叔 每日坚果9种果仁分享组 26g*60袋', '289.00 ', '299.00 ', '../img/goodimg/goodimg01_b1.jpg-../img/goodimg/goodimg01_b2.jpg-../img/goodimg/goodimg01_b3.jpg-../img/goodimg/goodimg01_b4.jpg-../img/goodimg/goodimg01_b5.jpg', '200 ');
INSERT INTO `goodlist` VALUES ('37', '[人间至味是肉香]丁星斋传统老汤牛肉 （清真）125g*10袋 赠8袋', '298.00 ', '398.00 ', '../img/goodimg/goodimg02_b1.jpg-../img/goodimg/goodimg02_b2.jpg-../img/goodimg/goodimg02_b3.jpg-../img/goodimg/goodimg02_b4.jpg-../img/goodimg/goodimg02_b5.jpg', '200 ');
INSERT INTO `goodlist` VALUES ('38', '[2组起订]甘源休闲食品（蒜香味青豌豆285g/蟹黄味瓜子仁285g/蟹黄味蚕豆285g/酱 蟹黄味瓜子仁285g', '8.90 ', '18.00 ', '../img/goodimg/goodimg03_b1.jpg', '220 ');
INSERT INTO `goodlist` VALUES ('39', '[肉厚味甜 入口即化]沙雅舒克和田大枣 500g*16袋', '169.00 ', '239.00 ', '../img/goodimg/goodimg04_b1.jpg-../img/goodimg/goodimg04_b2.jpg-../img/goodimg/goodimg04_b3.jpg-../img/goodimg/goodimg04_b4.jpg', '220 ');
INSERT INTO `goodlist` VALUES ('40', '[自带磨皮美颜妆效]（直邮）日本CPB肌肤之钥长管滋润隔离霜36ml', '398.00 ', '418.00 ', '../img/goodimg/goodimg05_b1.jpg-../img/goodimg/goodimg05_b2.jpg-../img/goodimg/goodimg05_b3.jpg', '500 ');
INSERT INTO `goodlist` VALUES ('41', '[肌肤闪耀钻石光感]（直邮）日本CPB肌肤之钥光透白钻石光感隔离霜30ml', '358.00 ', '398.00 ', '../img/goodimg/goodimg06_b1.jpg-../img/goodimg/goodimg06_b2.jpg-../img/goodimg/goodimg06_b3.jpg', '234 ');
INSERT INTO `goodlist` VALUES ('42', '[水润新生膜力尽显]（直邮）泰国ANJERI免洗睡眠面膜组合（金色16粒+银色16粒）', '168.00 ', '252.00 ', '../img/goodimg/goodimg07_b1.jpg-../img/goodimg/goodimg07_b2.jpg-../img/goodimg/goodimg07_b3.jpg-../img/goodimg/goodimg07_b4.jpg-../img/goodimg/goodimg07_b5.jpg', '877 ');
INSERT INTO `goodlist` VALUES ('43', '[9种美味齐聚一盒]森林大叔 每日坚果9种果仁分享组 26g*60袋', '289.00 ', '299.00 ', '../img/goodimg/goodimg01_b1.jpg-../img/goodimg/goodimg01_b2.jpg-../img/goodimg/goodimg01_b3.jpg-../img/goodimg/goodimg01_b4.jpg-../img/goodimg/goodimg01_b5.jpg', '200 ');
INSERT INTO `goodlist` VALUES ('44', '[人间至味是肉香]丁星斋传统老汤牛肉 （清真）125g*10袋 赠8袋', '298.00 ', '398.00 ', '../img/goodimg/goodimg02_b1.jpg-../img/goodimg/goodimg02_b2.jpg-../img/goodimg/goodimg02_b3.jpg-../img/goodimg/goodimg02_b4.jpg-../img/goodimg/goodimg02_b5.jpg', '200 ');
INSERT INTO `goodlist` VALUES ('45', '[2组起订]甘源休闲食品（蒜香味青豌豆285g/蟹黄味瓜子仁285g/蟹黄味蚕豆285g/酱 蟹黄味瓜子仁285g', '8.90 ', '18.00 ', '../img/goodimg/goodimg03_b1.jpg', '220 ');
INSERT INTO `goodlist` VALUES ('46', '[肉厚味甜 入口即化]沙雅舒克和田大枣 500g*16袋', '169.00 ', '239.00 ', '../img/goodimg/goodimg04_b1.jpg-../img/goodimg/goodimg04_b2.jpg-../img/goodimg/goodimg04_b3.jpg-../img/goodimg/goodimg04_b4.jpg', '220 ');
INSERT INTO `goodlist` VALUES ('47', '[自带磨皮美颜妆效]（直邮）日本CPB肌肤之钥长管滋润隔离霜36ml', '398.00 ', '418.00 ', '../img/goodimg/goodimg05_b1.jpg-../img/goodimg/goodimg05_b2.jpg-../img/goodimg/goodimg05_b3.jpg', '500 ');
INSERT INTO `goodlist` VALUES ('48', '[肌肤闪耀钻石光感]（直邮）日本CPB肌肤之钥光透白钻石光感隔离霜30ml', '358.00 ', '398.00 ', '../img/goodimg/goodimg06_b1.jpg-../img/goodimg/goodimg06_b2.jpg-../img/goodimg/goodimg06_b3.jpg', '234 ');
INSERT INTO `goodlist` VALUES ('49', '[水润新生膜力尽显]（直邮）泰国ANJERI免洗睡眠面膜组合（金色16粒+银色16粒）', '168.00 ', '252.00 ', '../img/goodimg/goodimg07_b1.jpg-../img/goodimg/goodimg07_b2.jpg-../img/goodimg/goodimg07_b3.jpg-../img/goodimg/goodimg07_b4.jpg-../img/goodimg/goodimg07_b5.jpg', '877 ');
INSERT INTO `goodlist` VALUES ('50', '[9种美味齐聚一盒]森林大叔 每日坚果9种果仁分享组 26g*60袋', '289.00 ', '299.00 ', '../img/goodimg/goodimg01_b1.jpg-../img/goodimg/goodimg01_b2.jpg-../img/goodimg/goodimg01_b3.jpg-../img/goodimg/goodimg01_b4.jpg-../img/goodimg/goodimg01_b5.jpg', '200 ');
INSERT INTO `goodlist` VALUES ('51', '[人间至味是肉香]丁星斋传统老汤牛肉 （清真）125g*10袋 赠8袋', '298.00 ', '398.00 ', '../img/goodimg/goodimg02_b1.jpg-../img/goodimg/goodimg02_b2.jpg-../img/goodimg/goodimg02_b3.jpg-../img/goodimg/goodimg02_b4.jpg-../img/goodimg/goodimg02_b5.jpg', '200 ');
INSERT INTO `goodlist` VALUES ('52', '[2组起订]甘源休闲食品（蒜香味青豌豆285g/蟹黄味瓜子仁285g/蟹黄味蚕豆285g/酱 蟹黄味瓜子仁285g', '8.90 ', '18.00 ', '../img/goodimg/goodimg03_b1.jpg', '220 ');
INSERT INTO `goodlist` VALUES ('53', '[肉厚味甜 入口即化]沙雅舒克和田大枣 500g*16袋', '169.00 ', '239.00 ', '../img/goodimg/goodimg04_b1.jpg-../img/goodimg/goodimg04_b2.jpg-../img/goodimg/goodimg04_b3.jpg-../img/goodimg/goodimg04_b4.jpg', '220 ');
INSERT INTO `goodlist` VALUES ('54', '[自带磨皮美颜妆效]（直邮）日本CPB肌肤之钥长管滋润隔离霜36ml', '398.00 ', '418.00 ', '../img/goodimg/goodimg05_b1.jpg-../img/goodimg/goodimg05_b2.jpg-../img/goodimg/goodimg05_b3.jpg', '500 ');
INSERT INTO `goodlist` VALUES ('55', '[肌肤闪耀钻石光感]（直邮）日本CPB肌肤之钥光透白钻石光感隔离霜30ml', '358.00 ', '398.00 ', '../img/goodimg/goodimg06_b1.jpg-../img/goodimg/goodimg06_b2.jpg-../img/goodimg/goodimg06_b3.jpg', '234 ');
INSERT INTO `goodlist` VALUES ('56', '[水润新生膜力尽显]（直邮）泰国ANJERI免洗睡眠面膜组合（金色16粒+银色16粒）', '168.00 ', '252.00 ', '../img/goodimg/goodimg07_b1.jpg-../img/goodimg/goodimg07_b2.jpg-../img/goodimg/goodimg07_b3.jpg-../img/goodimg/goodimg07_b4.jpg-../img/goodimg/goodimg07_b5.jpg', '877 ');
INSERT INTO `goodlist` VALUES ('57', '[9种美味齐聚一盒]森林大叔 每日坚果9种果仁分享组 26g*60袋', '289.00 ', '299.00 ', '../img/goodimg/goodimg01_b1.jpg-../img/goodimg/goodimg01_b2.jpg-../img/goodimg/goodimg01_b3.jpg-../img/goodimg/goodimg01_b4.jpg-../img/goodimg/goodimg01_b5.jpg', '200 ');
INSERT INTO `goodlist` VALUES ('58', '[人间至味是肉香]丁星斋传统老汤牛肉 （清真）125g*10袋 赠8袋', '298.00 ', '398.00 ', '../img/goodimg/goodimg02_b1.jpg-../img/goodimg/goodimg02_b2.jpg-../img/goodimg/goodimg02_b3.jpg-../img/goodimg/goodimg02_b4.jpg-../img/goodimg/goodimg02_b5.jpg', '200 ');
INSERT INTO `goodlist` VALUES ('59', '[2组起订]甘源休闲食品（蒜香味青豌豆285g/蟹黄味瓜子仁285g/蟹黄味蚕豆285g/酱 蟹黄味瓜子仁285g', '8.90 ', '18.00 ', '../img/goodimg/goodimg03_b1.jpg', '220 ');
INSERT INTO `goodlist` VALUES ('60', '[肉厚味甜 入口即化]沙雅舒克和田大枣 500g*16袋', '169.00 ', '239.00 ', '../img/goodimg/goodimg04_b1.jpg-../img/goodimg/goodimg04_b2.jpg-../img/goodimg/goodimg04_b3.jpg-../img/goodimg/goodimg04_b4.jpg', '220 ');
INSERT INTO `goodlist` VALUES ('61', '[自带磨皮美颜妆效]（直邮）日本CPB肌肤之钥长管滋润隔离霜36ml', '398.00 ', '418.00 ', '../img/goodimg/goodimg05_b1.jpg-../img/goodimg/goodimg05_b2.jpg-../img/goodimg/goodimg05_b3.jpg', '500 ');
INSERT INTO `goodlist` VALUES ('62', '[肌肤闪耀钻石光感]（直邮）日本CPB肌肤之钥光透白钻石光感隔离霜30ml', '358.00 ', '398.00 ', '../img/goodimg/goodimg06_b1.jpg-../img/goodimg/goodimg06_b2.jpg-../img/goodimg/goodimg06_b3.jpg', '234 ');
INSERT INTO `goodlist` VALUES ('63', '[水润新生膜力尽显]（直邮）泰国ANJERI免洗睡眠面膜组合（金色16粒+银色16粒）', '168.00 ', '252.00 ', '../img/goodimg/goodimg07_b1.jpg-../img/goodimg/goodimg07_b2.jpg-../img/goodimg/goodimg07_b3.jpg-../img/goodimg/goodimg07_b4.jpg-../img/goodimg/goodimg07_b5.jpg', '877 ');
INSERT INTO `goodlist` VALUES ('64', '[9种美味齐聚一盒]森林大叔 每日坚果9种果仁分享组 26g*60袋', '289.00 ', '299.00 ', '../img/goodimg/goodimg01_b1.jpg-../img/goodimg/goodimg01_b2.jpg-../img/goodimg/goodimg01_b3.jpg-../img/goodimg/goodimg01_b4.jpg-../img/goodimg/goodimg01_b5.jpg', '200 ');
INSERT INTO `goodlist` VALUES ('65', '[人间至味是肉香]丁星斋传统老汤牛肉 （清真）125g*10袋 赠8袋', '298.00 ', '398.00 ', '../img/goodimg/goodimg02_b1.jpg-../img/goodimg/goodimg02_b2.jpg-../img/goodimg/goodimg02_b3.jpg-../img/goodimg/goodimg02_b4.jpg-../img/goodimg/goodimg02_b5.jpg', '200 ');
INSERT INTO `goodlist` VALUES ('66', '[2组起订]甘源休闲食品（蒜香味青豌豆285g/蟹黄味瓜子仁285g/蟹黄味蚕豆285g/酱 蟹黄味瓜子仁285g', '8.90 ', '18.00 ', '../img/goodimg/goodimg03_b1.jpg', '220 ');
INSERT INTO `goodlist` VALUES ('67', '[肉厚味甜 入口即化]沙雅舒克和田大枣 500g*16袋', '169.00 ', '239.00 ', '../img/goodimg/goodimg04_b1.jpg-../img/goodimg/goodimg04_b2.jpg-../img/goodimg/goodimg04_b3.jpg-../img/goodimg/goodimg04_b4.jpg', '220 ');
INSERT INTO `goodlist` VALUES ('68', '[自带磨皮美颜妆效]（直邮）日本CPB肌肤之钥长管滋润隔离霜36ml', '398.00 ', '418.00 ', '../img/goodimg/goodimg05_b1.jpg-../img/goodimg/goodimg05_b2.jpg-../img/goodimg/goodimg05_b3.jpg', '500 ');
INSERT INTO `goodlist` VALUES ('69', '[肌肤闪耀钻石光感]（直邮）日本CPB肌肤之钥光透白钻石光感隔离霜30ml', '358.00 ', '398.00 ', '../img/goodimg/goodimg06_b1.jpg-../img/goodimg/goodimg06_b2.jpg-../img/goodimg/goodimg06_b3.jpg', '234 ');
INSERT INTO `goodlist` VALUES ('70', '[水润新生膜力尽显]（直邮）泰国ANJERI免洗睡眠面膜组合（金色16粒+银色16粒）', '168.00 ', '252.00 ', '../img/goodimg/goodimg07_b1.jpg-../img/goodimg/goodimg07_b2.jpg-../img/goodimg/goodimg07_b3.jpg-../img/goodimg/goodimg07_b4.jpg-../img/goodimg/goodimg07_b5.jpg', '877 ');
INSERT INTO `goodlist` VALUES ('71', '[9种美味齐聚一盒]森林大叔 每日坚果9种果仁分享组 26g*60袋', '289.00 ', '299.00 ', '../img/goodimg/goodimg01_b1.jpg-../img/goodimg/goodimg01_b2.jpg-../img/goodimg/goodimg01_b3.jpg-../img/goodimg/goodimg01_b4.jpg-../img/goodimg/goodimg01_b5.jpg', '200 ');
INSERT INTO `goodlist` VALUES ('72', '[人间至味是肉香]丁星斋传统老汤牛肉 （清真）125g*10袋 赠8袋', '298.00 ', '398.00 ', '../img/goodimg/goodimg02_b1.jpg-../img/goodimg/goodimg02_b2.jpg-../img/goodimg/goodimg02_b3.jpg-../img/goodimg/goodimg02_b4.jpg-../img/goodimg/goodimg02_b5.jpg', '200 ');
INSERT INTO `goodlist` VALUES ('73', '[2组起订]甘源休闲食品（蒜香味青豌豆285g/蟹黄味瓜子仁285g/蟹黄味蚕豆285g/酱 蟹黄味瓜子仁285g', '8.90 ', '18.00 ', '../img/goodimg/goodimg03_b1.jpg', '220 ');
INSERT INTO `goodlist` VALUES ('74', '[肉厚味甜 入口即化]沙雅舒克和田大枣 500g*16袋', '169.00 ', '239.00 ', '../img/goodimg/goodimg04_b1.jpg-../img/goodimg/goodimg04_b2.jpg-../img/goodimg/goodimg04_b3.jpg-../img/goodimg/goodimg04_b4.jpg', '220 ');
INSERT INTO `goodlist` VALUES ('75', '[自带磨皮美颜妆效]（直邮）日本CPB肌肤之钥长管滋润隔离霜36ml', '398.00 ', '418.00 ', '../img/goodimg/goodimg05_b1.jpg-../img/goodimg/goodimg05_b2.jpg-../img/goodimg/goodimg05_b3.jpg', '500 ');
INSERT INTO `goodlist` VALUES ('76', '[肌肤闪耀钻石光感]（直邮）日本CPB肌肤之钥光透白钻石光感隔离霜30ml', '358.00 ', '398.00 ', '../img/goodimg/goodimg06_b1.jpg-../img/goodimg/goodimg06_b2.jpg-../img/goodimg/goodimg06_b3.jpg', '234 ');
INSERT INTO `goodlist` VALUES ('77', '[水润新生膜力尽显]（直邮）泰国ANJERI免洗睡眠面膜组合（金色16粒+银色16粒）', '168.00 ', '252.00 ', '../img/goodimg/goodimg07_b1.jpg-../img/goodimg/goodimg07_b2.jpg-../img/goodimg/goodimg07_b3.jpg-../img/goodimg/goodimg07_b4.jpg-../img/goodimg/goodimg07_b5.jpg', '877 ');
INSERT INTO `goodlist` VALUES ('78', '[9种美味齐聚一盒]森林大叔 每日坚果9种果仁分享组 26g*60袋', '289.00 ', '299.00 ', '../img/goodimg/goodimg01_b1.jpg-../img/goodimg/goodimg01_b2.jpg-../img/goodimg/goodimg01_b3.jpg-../img/goodimg/goodimg01_b4.jpg-../img/goodimg/goodimg01_b5.jpg', '200 ');
INSERT INTO `goodlist` VALUES ('79', '[人间至味是肉香]丁星斋传统老汤牛肉 （清真）125g*10袋 赠8袋', '298.00 ', '398.00 ', '../img/goodimg/goodimg02_b1.jpg-../img/goodimg/goodimg02_b2.jpg-../img/goodimg/goodimg02_b3.jpg-../img/goodimg/goodimg02_b4.jpg-../img/goodimg/goodimg02_b5.jpg', '200 ');
INSERT INTO `goodlist` VALUES ('80', '[2组起订]甘源休闲食品（蒜香味青豌豆285g/蟹黄味瓜子仁285g/蟹黄味蚕豆285g/酱 蟹黄味瓜子仁285g', '8.90 ', '18.00 ', '../img/goodimg/goodimg03_b1.jpg', '220 ');
INSERT INTO `goodlist` VALUES ('81', '[肉厚味甜 入口即化]沙雅舒克和田大枣 500g*16袋', '169.00 ', '239.00 ', '../img/goodimg/goodimg04_b1.jpg-../img/goodimg/goodimg04_b2.jpg-../img/goodimg/goodimg04_b3.jpg-../img/goodimg/goodimg04_b4.jpg', '220 ');
INSERT INTO `goodlist` VALUES ('82', '[自带磨皮美颜妆效]（直邮）日本CPB肌肤之钥长管滋润隔离霜36ml', '398.00 ', '418.00 ', '../img/goodimg/goodimg05_b1.jpg-../img/goodimg/goodimg05_b2.jpg-../img/goodimg/goodimg05_b3.jpg', '500 ');
INSERT INTO `goodlist` VALUES ('83', '[肌肤闪耀钻石光感]（直邮）日本CPB肌肤之钥光透白钻石光感隔离霜30ml', '358.00 ', '398.00 ', '../img/goodimg/goodimg06_b1.jpg-../img/goodimg/goodimg06_b2.jpg-../img/goodimg/goodimg06_b3.jpg', '234 ');
INSERT INTO `goodlist` VALUES ('84', '[水润新生膜力尽显]（直邮）泰国ANJERI免洗睡眠面膜组合（金色16粒+银色16粒）', '168.00 ', '252.00 ', '../img/goodimg/goodimg07_b1.jpg-../img/goodimg/goodimg07_b2.jpg-../img/goodimg/goodimg07_b3.jpg-../img/goodimg/goodimg07_b4.jpg-../img/goodimg/goodimg07_b5.jpg', '877 ');
INSERT INTO `goodlist` VALUES ('13', '[肌肤闪耀钻石光感]（直邮）日本CPB肌肤之钥光透白钻石光感隔离霜30ml', '358.00 ', '398.00 ', '../img/goodimg/goodimg06_b1.jpg-../img/goodimg/goodimg06_b2.jpg-../img/goodimg/goodimg06_b3.jpg', '234 ');

-- ----------------------------
-- Table structure for userlist1
-- ----------------------------
DROP TABLE IF EXISTS `userlist1`;
CREATE TABLE `userlist1` (
  `cid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) NOT NULL,
  `gid` int(10) unsigned NOT NULL,
  `nums` varchar(255) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userlist1
-- ----------------------------
INSERT INTO `userlist1` VALUES ('3', '15521266058', '1', '12');
INSERT INTO `userlist1` VALUES ('7', '15521266065', '14', '7');

-- ----------------------------
-- Table structure for usermessage
-- ----------------------------
DROP TABLE IF EXISTS `usermessage`;
CREATE TABLE `usermessage` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usermessage
-- ----------------------------
INSERT INTO `usermessage` VALUES ('8', '15521266058', '111aaa', '2018-11-28 14:22:03');
INSERT INTO `usermessage` VALUES ('9', '123@qq.com', '111aaa', '2018-11-28 14:22:09');
INSERT INTO `usermessage` VALUES ('10', 'aa@163.com', '111aaa', '2018-11-28 14:22:15');
INSERT INTO `usermessage` VALUES ('11', '15521266059', '123456', '2018-11-28 15:25:49');
INSERT INTO `usermessage` VALUES ('12', '15521266060', '123456', '2018-11-28 15:27:16');
INSERT INTO `usermessage` VALUES ('13', '15521266061', '123456', '2018-11-28 15:33:09');
INSERT INTO `usermessage` VALUES ('14', '15521266065', '111aaa', '2018-12-03 16:06:28');
SET FOREIGN_KEY_CHECKS=1;
