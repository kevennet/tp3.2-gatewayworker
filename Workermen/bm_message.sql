/*
Navicat MySQL Data Transfer

Source Server         : xampp
Source Server Version : 100128
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 100128
File Encoding         : 65001

Date: 2018-05-29 11:51:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bm_message
-- ----------------------------
DROP TABLE IF EXISTS `bm_message`;
CREATE TABLE `bm_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` text CHARACTER SET utf8,
  `server_ip` text CHARACTER SET utf8,
  `onmessage` text CHARACTER SET utf8,
  `msg` text CHARACTER SET utf8,
  `type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `client_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `to_client_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1553 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bm_message
-- ----------------------------
INSERT INTO `bm_message` VALUES ('1545', '7f00000108fc00000001', '192.168.1.153', '{\"type\":\"say\",\"to_client_id\":\"7f00000108fc00000002\",\"to_client_name\":\"小社\",\"content\":\"dasdsad11撒旦发生的范德萨方法上的放松的方式范德萨费口舌了大家发挥实力的康复护理\"}', 'client:192.168.1.153:52498 gateway:127.0.0.1:7272  client_id:7f00000108fc00000001 session:{\"room_id\":\"8\",\"client_name\":\"xiao_ming\"} onMessage:{\"type\":\"say\",\"to_client_id\":\"7f00000108fc00000002\",\"to_client_name\":\"小社\",\"content\":\"dasdsad11撒旦发生的范德萨方法上的放松的方式范德萨费口舌了大家发挥实力的康复护理\"}', 'say', 'xiao_ming', '8', '小社');
INSERT INTO `bm_message` VALUES ('1546', '7f00000108fc00000001', '192.168.1.153', '{\"type\":\"say\",\"to_client_id\":\"7f00000108fc00000002\",\"to_client_name\":\"小社\",\"content\":\"[拜拜]\"}', 'client:192.168.1.153:52498 gateway:127.0.0.1:7272  client_id:7f00000108fc00000001 session:{\"room_id\":\"8\",\"client_name\":\"xiao_ming\"} onMessage:{\"type\":\"say\",\"to_client_id\":\"7f00000108fc00000002\",\"to_client_name\":\"小社\",\"content\":\"[拜拜]\"}', 'say', 'xiao_ming', '8', '小社');
INSERT INTO `bm_message` VALUES ('1547', '7f00000108fc00000001', '192.168.1.153', '{\"type\":\"say\",\"to_client_id\":\"7f00000108fc00000002\",\"to_client_name\":\"小社\",\"content\":\"[洛基]\"}', 'client:192.168.1.153:52498 gateway:127.0.0.1:7272  client_id:7f00000108fc00000001 session:{\"room_id\":\"8\",\"client_name\":\"xiao_ming\"} onMessage:{\"type\":\"say\",\"to_client_id\":\"7f00000108fc00000002\",\"to_client_name\":\"小社\",\"content\":\"[洛基]\"}', 'say', 'xiao_ming', '8', '小社');
INSERT INTO `bm_message` VALUES ('1548', '7f00000108fc00000002', '192.168.1.153', '{\"type\":\"say\",\"to_client_id\":\"7f00000108fc00000001\",\"to_client_name\":\"xiao_ming\",\"content\":\"埃里克DAJSKDLSAD[笑cry]\"}', 'client:192.168.1.153:52526 gateway:127.0.0.1:7272  client_id:7f00000108fc00000002 session:{\"room_id\":\"8\",\"client_name\":\"u5c0fu793e\"} onMessage:{\"type\":\"say\",\"to_client_id\":\"7f00000108fc00000001\",\"to_client_name\":\"xiao_ming\",\"content\":\"埃里克DAJSKDLSAD[笑cry]\"}', 'say', '小社', '8', 'xiao_ming');
INSERT INTO `bm_message` VALUES ('1549', '7f00000108fc00000002', '192.168.1.153', '{\"type\":\"say\",\"to_client_id\":\"7f00000108fc00000001\",\"to_client_name\":\"小社\",\"content\":\"12312ed1d122d\"}', 'client:192.168.1.153:54016 gateway:127.0.0.1:7272  client_id:7f00000108fc00000002 session:{\"room_id\":\"8\",\"client_name\":\"xiao_ming\"} onMessage:{\"type\":\"say\",\"to_client_id\":\"7f00000108fc00000001\",\"to_client_name\":\"小社\",\"content\":\"12312ed1d122d\"}', 'say', 'xiao_ming', '8', '小社');
INSERT INTO `bm_message` VALUES ('1550', '7f00000108fc00000002', '192.168.1.153', '{\"type\":\"say\",\"to_client_id\":\"7f00000108fc00000001\",\"to_client_name\":\"小社\",\"content\":\"1d1212d12\"}', 'client:192.168.1.153:54173 gateway:127.0.0.1:7272  client_id:7f00000108fc00000002 session:{\"room_id\":\"8\",\"client_name\":\"xiao_ming\"} onMessage:{\"type\":\"say\",\"to_client_id\":\"7f00000108fc00000001\",\"to_client_name\":\"小社\",\"content\":\"1d1212d12\"}', 'say', 'xiao_ming', '8', '小社');
INSERT INTO `bm_message` VALUES ('1551', '7f00000108fc00000001', '192.168.1.153', '{\"type\":\"say\",\"to_client_id\":\"7f00000108fc00000002\",\"to_client_name\":\"小社\",\"content\":\"qweqwewqd1d1 撒大三大四的\"}', 'client:192.168.1.153:54438 gateway:127.0.0.1:7272  client_id:7f00000108fc00000001 session:{\"room_id\":\"8\",\"client_name\":\"xiao_ming\"} onMessage:{\"type\":\"say\",\"to_client_id\":\"7f00000108fc00000002\",\"to_client_name\":\"小社\",\"content\":\"qweqwewqd1d1 撒大三大四的\"}', 'say', 'xiao_ming', '8', '小社');
INSERT INTO `bm_message` VALUES ('1552', '7f00000108fc00000002', '192.168.1.153', '{\"type\":\"say\",\"to_client_id\":\"7f00000108fc00000001\",\"to_client_name\":\"xiao_ming\",\"content\":\" 请问对得起我的\"}', 'client:192.168.1.153:54455 gateway:127.0.0.1:7272  client_id:7f00000108fc00000002 session:{\"room_id\":\"8\",\"client_name\":\"u5c0fu793e\"} onMessage:{\"type\":\"say\",\"to_client_id\":\"7f00000108fc00000001\",\"to_client_name\":\"xiao_ming\",\"content\":\" 请问对得起我的\"}', 'say', '小社', '8', 'xiao_ming');
