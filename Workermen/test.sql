/*
Navicat MySQL Data Transfer

Source Server         : 192.168.1.160_3306
Source Server Version : 50721
Source Host           : 192.168.1.160:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-05-23 16:44:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bm_biaoqian
-- ----------------------------
DROP TABLE IF EXISTS `bm_biaoqian`;
CREATE TABLE `bm_biaoqian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '名字',
  `type` tinyint(3) DEFAULT '0' COMMENT '类型0->产品小类,1->收入标签,2->进件标签,3->利息额度,4->考核标签,5->时间纬度,6->地区维度,7->特殊标签8->为大类标签',
  `f_id` int(11) DEFAULT '0' COMMENT '父级ID',
  `biemin` varchar(200) DEFAULT NULL COMMENT '别名',
  `xiangqign` varchar(255) DEFAULT NULL COMMENT '标签详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COMMENT='标签表';

-- ----------------------------
-- Records of bm_biaoqian
-- ----------------------------
INSERT INTO `bm_biaoqian` VALUES ('49', 'x小红', '0', '1', '112233', '简单红');
INSERT INTO `bm_biaoqian` VALUES ('50', '小明', '0', '1', '小磨娘娘', '红白');
INSERT INTO `bm_biaoqian` VALUES ('51', '1', '2', '3', '4', null);
INSERT INTO `bm_biaoqian` VALUES ('52', '1', '2', '3', '4', null);
INSERT INTO `bm_biaoqian` VALUES ('53', '1', '2', '3', '4', null);
INSERT INTO `bm_biaoqian` VALUES ('54', '1', '2', '3', '4', null);
INSERT INTO `bm_biaoqian` VALUES ('55', '1', '2', '3', '4', null);
INSERT INTO `bm_biaoqian` VALUES ('56', '1', '2', '3', '4', null);
INSERT INTO `bm_biaoqian` VALUES ('57', '1', '2', '3', '4', null);
INSERT INTO `bm_biaoqian` VALUES ('58', '1', '2', '3', '4', null);
INSERT INTO `bm_biaoqian` VALUES ('59', '1', '2', '3', '4', null);
INSERT INTO `bm_biaoqian` VALUES ('60', '1', '2', '3', '4', null);
INSERT INTO `bm_biaoqian` VALUES ('61', '1', '2', '3', '4', null);
INSERT INTO `bm_biaoqian` VALUES ('62', '1', '2', '3', '4', null);
INSERT INTO `bm_biaoqian` VALUES ('63', '1', '2', '3', '4', null);
INSERT INTO `bm_biaoqian` VALUES ('64', '1', '2', '3', '4', null);
INSERT INTO `bm_biaoqian` VALUES ('65', '1', '2', '3', '4', null);
INSERT INTO `bm_biaoqian` VALUES ('66', '1', '2', '3', '4', null);
INSERT INTO `bm_biaoqian` VALUES ('67', '1', '2', '3', '4', null);
INSERT INTO `bm_biaoqian` VALUES ('68', '1', '2', '3', '4', null);
INSERT INTO `bm_biaoqian` VALUES ('69', '1', '2', '3', '4', null);
INSERT INTO `bm_biaoqian` VALUES ('70', '1', '2', '3', '4', null);
INSERT INTO `bm_biaoqian` VALUES ('71', '1', '2', '3', '4', null);
INSERT INTO `bm_biaoqian` VALUES ('72', '1', '2', '3', '4', null);
INSERT INTO `bm_biaoqian` VALUES ('73', '1', '2', '3', '4', null);
INSERT INTO `bm_biaoqian` VALUES ('74', '1', '2', '3', '4', null);
INSERT INTO `bm_biaoqian` VALUES ('75', '1', '2', '3', '4', null);
INSERT INTO `bm_biaoqian` VALUES ('76', '1', '2', '3', '4', null);
INSERT INTO `bm_biaoqian` VALUES ('77', '1', '2', '3', '4', null);
INSERT INTO `bm_biaoqian` VALUES ('78', '1', '2', '3', '4', null);
INSERT INTO `bm_biaoqian` VALUES ('79', '1', '2', '3', '4', null);
INSERT INTO `bm_biaoqian` VALUES ('80', '1', '2', '3', '4', null);
INSERT INTO `bm_biaoqian` VALUES ('81', '1', '2', '3', '4', null);
INSERT INTO `bm_biaoqian` VALUES ('82', '1', '2', '3', '4', null);
INSERT INTO `bm_biaoqian` VALUES ('83', 'asd', '2', '3', '4', null);
INSERT INTO `bm_biaoqian` VALUES ('84', 'asd', '2', '3', '4', null);

-- ----------------------------
-- Table structure for bm_chack
-- ----------------------------
DROP TABLE IF EXISTS `bm_chack`;
CREATE TABLE `bm_chack` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_chack` int(11) NOT NULL DEFAULT '0' COMMENT '是否验证过了',
  `chack` int(11) NOT NULL COMMENT '发送验证码',
  `time` bigint(20) NOT NULL,
  `valid_time` int(11) NOT NULL DEFAULT '30' COMMENT '有效时间/s',
  `phone` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bm_chack
-- ----------------------------

-- ----------------------------
-- Table structure for bm_goods
-- ----------------------------
DROP TABLE IF EXISTS `bm_goods`;
CREATE TABLE `bm_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `l_id` varchar(200) DEFAULT NULL COMMENT '利息额度分布表ID',
  `cpclass` varchar(200) DEFAULT NULL COMMENT '产品小类ID可多个',
  `revenue` varchar(200) DEFAULT NULL COMMENT '收入id多个',
  `jinjian` varchar(200) DEFAULT NULL COMMENT '进件标签ID',
  `lx` varchar(255) DEFAULT NULL COMMENT '利息标签ID多个',
  `assessment` varchar(255) DEFAULT NULL COMMENT '考核标签ID多个',
  `datami` varchar(255) DEFAULT NULL COMMENT '时间标签ID',
  `area` varchar(255) DEFAULT NULL COMMENT '地区标签ID',
  `especial` varchar(255) DEFAULT NULL COMMENT '特殊标签ID',
  `general` varchar(255) DEFAULT NULL COMMENT '一般要求',
  `jjdetail` varchar(255) DEFAULT NULL COMMENT '进件详细要求',
  `letter` varchar(255) DEFAULT NULL COMMENT '征信详细要求',
  `debt` varchar(255) DEFAULT NULL COMMENT '负债详细要求',
  `revenue_yq` varchar(255) DEFAULT NULL COMMENT '收入详细要求',
  `unit_type` varchar(200) DEFAULT NULL COMMENT '电核单位',
  `spouse_type` varchar(255) DEFAULT NULL COMMENT '电核配偶',
  `relatives_type` varchar(255) DEFAULT NULL COMMENT '电核亲属',
  `colleagues_type` varchar(255) DEFAULT NULL COMMENT '电核同事',
  `friend_type` varchar(255) DEFAULT NULL COMMENT '电核朋友',
  `data_type` varchar(255) DEFAULT NULL COMMENT '查大数据、',
  `shield_type` varchar(255) DEFAULT NULL COMMENT '查同盾',
  `inspection_type` varchar(255) DEFAULT NULL COMMENT '上门考察',
  `jinjianrequired` varchar(255) DEFAULT NULL COMMENT '进件所以资料',
  `forbade` varchar(500) DEFAULT NULL COMMENT '禁止行业',
  `packaging_name` varchar(100) DEFAULT NULL COMMENT '包装后名称',
  `products_name` varchar(100) DEFAULT NULL COMMENT '产品名',
  `products_type` varchar(100) DEFAULT NULL COMMENT '隧道类型',
  `kjjsd` varchar(100) DEFAULT NULL COMMENT '可进件隧道',
  `state` tinyint(3) DEFAULT '0' COMMENT '是否发布',
  `gx_id` int(11) DEFAULT '0' COMMENT '关联表',
  `daleiID` int(11) DEFAULT NULL,
  `zonggn` varchar(255) DEFAULT NULL COMMENT '总攻略',
  `folk_type` varchar(255) DEFAULT NULL COMMENT '查民间',
  `Letterzhengxin` varchar(255) DEFAULT NULL COMMENT '查征信显示',
  `Lendingfangshi` varchar(255) DEFAULT NULL COMMENT '放款方式',
  `age_min` int(11) DEFAULT '0' COMMENT '进件最低年龄',
  `age_max` int(11) DEFAULT '0' COMMENT '进件最高年龄',
  `shourshenfen` varchar(255) DEFAULT NULL COMMENT '收入身份',
  `gender` varchar(51) DEFAULT NULL COMMENT '性别',
  `xinyongshenf` varchar(150) DEFAULT NULL COMMENT '信用身份',
  `yihun` varchar(150) DEFAULT NULL COMMENT '已婚双签',
  `zhunruyaoqiu` varchar(255) DEFAULT NULL COMMENT '准入要求',
  `zhixi_type` varchar(255) DEFAULT NULL COMMENT '电核直系',
  `kaocha` varchar(50) DEFAULT NULL COMMENT '考察',
  `jinjian_wuye` varchar(200) DEFAULT NULL COMMENT '无业身份',
  `liushui` varchar(30) DEFAULT NULL COMMENT '查流水',
  `color_goods_id` int(11) NOT NULL DEFAULT '1',
  `xiaoming` varchar(150) NOT NULL COMMENT 'xiaoming',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
-- Records of bm_goods
-- ----------------------------
INSERT INTO `bm_goods` VALUES ('99', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '81', null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, '1', '');

-- ----------------------------
-- Table structure for bm_goods_color
-- ----------------------------
DROP TABLE IF EXISTS `bm_goods_color`;
CREATE TABLE `bm_goods_color` (
  `color_goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `general` varchar(255) DEFAULT '#000000' COMMENT '一般要求',
  `jjdetail` varchar(255) DEFAULT '#000000' COMMENT '进件详细要求',
  `letter` varchar(255) DEFAULT '#000000' COMMENT '征信详细要求',
  `debt` varchar(255) DEFAULT '#000000' COMMENT '负债详细要求',
  `revenue_yq` varchar(255) DEFAULT '#000000' COMMENT '收入详细要求',
  `unit_type` varchar(200) DEFAULT '#000000' COMMENT '电核单位',
  `spouse_type` varchar(255) DEFAULT '#000000' COMMENT '电核配偶',
  `relatives_type` varchar(255) DEFAULT '#000000' COMMENT '电核亲属',
  `colleagues_type` varchar(255) DEFAULT '#000000' COMMENT '电核同事',
  `friend_type` varchar(255) DEFAULT '#000000' COMMENT '电核朋友',
  `data_type` varchar(255) DEFAULT '#000000' COMMENT '查大数据、',
  `shield` varchar(255) DEFAULT '#000000' COMMENT '查同盾',
  `inspection_type` varchar(255) DEFAULT '#000000' COMMENT '上门考察',
  `jinjianrequired` varchar(255) DEFAULT '#000000' COMMENT '进件所以资料',
  `forbade` varchar(500) DEFAULT '#000000' COMMENT '禁止行业',
  `packaging_name` varchar(100) DEFAULT '#000000' COMMENT '包装后名称',
  `products_name` varchar(100) DEFAULT '#000000' COMMENT '产品名',
  `products_type` varchar(100) DEFAULT '#000000' COMMENT '隧道类型',
  `kjjsd` varchar(100) DEFAULT '#000000' COMMENT '可进件隧道',
  `state` varchar(50) DEFAULT '#000000' COMMENT '是否发布',
  `daleiID` varchar(50) DEFAULT '#000000',
  `zonggn` varchar(255) DEFAULT '#000000' COMMENT '总攻略',
  `folk` varchar(255) DEFAULT '#000000' COMMENT '查民间',
  `Letterzhengxin` varchar(255) DEFAULT '#000000' COMMENT '查征信显示',
  `Lendingfangshi` varchar(255) DEFAULT '#000000' COMMENT '放款方式',
  `age_min` varchar(50) DEFAULT '#000000' COMMENT '进件最低年龄',
  `age_max` varchar(50) DEFAULT '#000000' COMMENT '进件最高年龄',
  `shourshenfen` varchar(255) DEFAULT '#000000' COMMENT '收入身份',
  `gender` varchar(51) DEFAULT '#000000' COMMENT '性别',
  `xinyongshenf` varchar(150) DEFAULT '#000000' COMMENT '信用身份',
  `yihun` varchar(150) DEFAULT '#000000' COMMENT '已婚双签',
  `zhunruyaoqiu` varchar(255) DEFAULT '#000000' COMMENT '准入要求',
  `zhixi_type` varchar(255) DEFAULT '#000000' COMMENT '电核直系',
  `kaocha` varchar(50) DEFAULT '#000000' COMMENT '考察',
  `jinjian_wuye` varchar(200) DEFAULT '#000000' COMMENT '无业身份',
  `danwei_zidingyi` varchar(50) NOT NULL DEFAULT '#000000',
  `zhixi_zhidingyi` varchar(50) NOT NULL DEFAULT '#000000',
  `peiou_zidingyi` varchar(50) NOT NULL DEFAULT '#000000',
  `qingsu_zidingyi` varchar(50) NOT NULL DEFAULT '#000000',
  `tongshi_zidingyi` varchar(50) NOT NULL DEFAULT '#000000',
  `pengyou_zidingyi` varchar(50) NOT NULL DEFAULT '#000000',
  `liushui` varchar(50) NOT NULL DEFAULT '#000000',
  `zhengxin_xianshi` varchar(50) NOT NULL DEFAULT '#000000',
  PRIMARY KEY (`color_goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='商品表';

-- ----------------------------
-- Records of bm_goods_color
-- ----------------------------

-- ----------------------------
-- Table structure for bm_goods_foundation
-- ----------------------------
DROP TABLE IF EXISTS `bm_goods_foundation`;
CREATE TABLE `bm_goods_foundation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '产品名',
  `dtypename` varchar(255) DEFAULT NULL COMMENT '渠道类型',
  `qudaoname` varchar(50) DEFAULT NULL COMMENT '渠道名字',
  `bzname` varchar(255) DEFAULT NULL COMMENT '包装后名字',
  `gx_id` int(11) DEFAULT '0' COMMENT '关联表ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8 COMMENT='商品信息基础表';

-- ----------------------------
-- Records of bm_goods_foundation
-- ----------------------------
INSERT INTO `bm_goods_foundation` VALUES ('122', '小明贷款小额', '1', '小明银行', '小龙贷款', '81');
INSERT INTO `bm_goods_foundation` VALUES ('123', '小明贷款小额', '3', '小玲苦涩', '龙带小袋', '81');
INSERT INTO `bm_goods_foundation` VALUES ('124', '小明贷款小额', '1', '我是银行', '我是小袋', '81');
INSERT INTO `bm_goods_foundation` VALUES ('125', '小明贷款小额', '1', '测试银行', '测试代坤', '81');
INSERT INTO `bm_goods_foundation` VALUES ('126', '小明贷款小额', '3', '小二贷款', '小二贷款1', '81');
INSERT INTO `bm_goods_foundation` VALUES ('127', '小明贷款小额', '3', '校园小额', '校园123', '81');
INSERT INTO `bm_goods_foundation` VALUES ('128', null, null, null, null, '81');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1206 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bm_message
-- ----------------------------
INSERT INTO `bm_message` VALUES ('1106', '7f00000108fd00000001', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_b\",\"room_id\":\"8\"}', '\"client:192.168.1.154:60792 gateway:127.0.0.1:7272  client_id:7f00000108fd00000001 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_b\",\"room_id\":\"8\"}\"', 'login', 'litter_b', '8');
INSERT INTO `bm_message` VALUES ('1107', '7f00000108fc00000002', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"iltter_c\",\"room_id\":\"8\"}', '\"client:192.168.1.154:60788 gateway:127.0.0.1:7272  client_id:7f00000108fc00000002 session:null onMessage:{\"type\":\"login\",\"client_name\":\"iltter_c\",\"room_id\":\"8\"}\"', 'login', 'iltter_c', '8');
INSERT INTO `bm_message` VALUES ('1108', '7f00000108fd00000002', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_a\",\"room_id\":\"8\"}', '\"client:192.168.1.154:60789 gateway:127.0.0.1:7272  client_id:7f00000108fd00000002 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_a\",\"room_id\":\"8\"}\"', 'login', 'litter_a', '8');
INSERT INTO `bm_message` VALUES ('1109', '7f00000108fe00000001', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"xiao_ming\",\"room_id\":\"8\"}', '\"client:192.168.1.154:60802 gateway:127.0.0.1:7272  client_id:7f00000108fe00000001 session:null onMessage:{\"type\":\"login\",\"client_name\":\"xiao_ming\",\"room_id\":\"8\"}\"', 'login', 'xiao_ming', '8');
INSERT INTO `bm_message` VALUES ('1110', '7f00000108fe00000001', '192.168.1.154', '{\"type\":\"say\",\"to_client_id\":\"7f00000108fc00000002\",\"to_client_name\":\"iltter_c\",\"content\":\"æ“¦æ“¦\"}', '\"client:192.168.1.154:60802 gateway:127.0.0.1:7272  client_id:7f00000108fe00000001 session:{\"room_id\":\"8\",\"client_name\":\"xiao_ming\"} onMessage:{\"type\":\"say\",\"to_client_id\":\"7f00000108fc00000002\",\"to_client_name\":\"iltter_c\",\"content\":\"u64e6u64e6\"}\"', 'say', 'xiao_ming', '8');
INSERT INTO `bm_message` VALUES ('1111', '7f00000108fd00000001', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"iltter_c\",\"room_id\":\"8\"}', 'client:192.168.1.154:64221 gateway:127.0.0.1:7272  client_id:7f00000108fd00000001 session:null onMessage:{\"type\":\"login\",\"client_name\":\"iltter_c\",\"room_id\":\"8\"}', 'login', 'iltter_c', '8');
INSERT INTO `bm_message` VALUES ('1112', '7f00000108fc00000001', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_a\",\"room_id\":\"8\"}', 'client:192.168.1.154:64220 gateway:127.0.0.1:7272  client_id:7f00000108fc00000001 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_a\",\"room_id\":\"8\"}', 'login', 'litter_a', '8');
INSERT INTO `bm_message` VALUES ('1113', '7f00000108fe00000001', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"xiao_ming\",\"room_id\":\"8\"}', 'client:192.168.1.154:64225 gateway:127.0.0.1:7272  client_id:7f00000108fe00000001 session:null onMessage:{\"type\":\"login\",\"client_name\":\"xiao_ming\",\"room_id\":\"8\"}', 'login', 'xiao_ming', '8');
INSERT INTO `bm_message` VALUES ('1114', '7f00000108fd00000002', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_b\",\"room_id\":\"8\"}', 'client:192.168.1.154:64233 gateway:127.0.0.1:7272  client_id:7f00000108fd00000002 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_b\",\"room_id\":\"8\"}', 'login', 'litter_b', '8');
INSERT INTO `bm_message` VALUES ('1115', '7f00000108fc00000002', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"xiao_ming\",\"room_id\":\"8\"}', 'client:192.168.1.154:64725 gateway:127.0.0.1:7272  client_id:7f00000108fc00000002 session:null onMessage:{\"type\":\"login\",\"client_name\":\"xiao_ming\",\"room_id\":\"8\"}', 'login', 'xiao_ming', '8');
INSERT INTO `bm_message` VALUES ('1116', '7f00000108fe00000003', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"iltter_c\",\"room_id\":\"8\"}', 'client:192.168.1.154:64769 gateway:127.0.0.1:7272  client_id:7f00000108fe00000003 session:null onMessage:{\"type\":\"login\",\"client_name\":\"iltter_c\",\"room_id\":\"8\"}', 'login', 'iltter_c', '8');
INSERT INTO `bm_message` VALUES ('1117', '7f00000108ff00000001', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"xiao_ming\",\"room_id\":\"8\"}', 'client:192.168.1.154:64788 gateway:127.0.0.1:7272  client_id:7f00000108ff00000001 session:null onMessage:{\"type\":\"login\",\"client_name\":\"xiao_ming\",\"room_id\":\"8\"}', 'login', 'xiao_ming', '8');
INSERT INTO `bm_message` VALUES ('1118', '7f00000108ff00000002', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_a\",\"room_id\":\"8\"}', 'client:192.168.1.154:64825 gateway:127.0.0.1:7272  client_id:7f00000108ff00000002 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_a\",\"room_id\":\"8\"}', 'login', 'litter_a', '8');
INSERT INTO `bm_message` VALUES ('1119', '7f00000108ff00000002', '192.168.1.154', '{\"type\":\"say\",\"to_client_id\":\"7f00000108ff00000001\",\"to_client_name\":\"xiao_ming\",\"content\":\"çš„2çš„2\"}', 'client:192.168.1.154:64825 gateway:127.0.0.1:7272  client_id:7f00000108ff00000002 session:{\"room_id\":\"8\",\"client_name\":\"litter_a\"} onMessage:{\"type\":\"say\",\"to_client_id\":\"7f00000108ff00000001\",\"to_client_name\":\"xiao_ming\",\"content\":\"çš„2çš„2\"}', 'say', 'litter_a', '8');
INSERT INTO `bm_message` VALUES ('1120', '7f00000108fd00000003', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"iltter_c\",\"room_id\":\"8\"}', 'client:192.168.1.154:64856 gateway:127.0.0.1:7272  client_id:7f00000108fd00000003 session:null onMessage:{\"type\":\"login\",\"client_name\":\"iltter_c\",\"room_id\":\"8\"}', 'login', 'iltter_c', '8');
INSERT INTO `bm_message` VALUES ('1121', '7f00000108fd00000003', '192.168.1.154', '{\"type\":\"say\",\"to_client_id\":\"7f00000108ff00000001\",\"to_client_name\":\"xiao_ming\",\"content\":\"12é¢2çš„2\"}', 'client:192.168.1.154:64856 gateway:127.0.0.1:7272  client_id:7f00000108fd00000003 session:{\"room_id\":\"8\",\"client_name\":\"iltter_c\"} onMessage:{\"type\":\"say\",\"to_client_id\":\"7f00000108ff00000001\",\"to_client_name\":\"xiao_ming\",\"content\":\"12é¢2çš„2\"}', 'say', 'iltter_c', '8');
INSERT INTO `bm_message` VALUES ('1122', '7f00000108ff00000002', '192.168.1.154', '{\"type\":\"say\",\"to_client_id\":\"7f00000108ff00000001\",\"to_client_name\":\"xiao_ming\",\"content\":\"21223\"}', 'client:192.168.1.154:64825 gateway:127.0.0.1:7272  client_id:7f00000108ff00000002 session:{\"room_id\":\"8\",\"client_name\":\"litter_a\"} onMessage:{\"type\":\"say\",\"to_client_id\":\"7f00000108ff00000001\",\"to_client_name\":\"xiao_ming\",\"content\":\"21223\"}', 'say', 'litter_a', '8');
INSERT INTO `bm_message` VALUES ('1123', '7f00000108fd00000002', '192.168.1.154', '{\"type\":\"say\",\"to_client_id\":\"7f00000108ff00000001\",\"to_client_name\":\"xiao_ming\",\"content\":\"1er2\"}', 'client:192.168.1.154:64233 gateway:127.0.0.1:7272  client_id:7f00000108fd00000002 session:{\"room_id\":\"8\",\"client_name\":\"litter_b\"} onMessage:{\"type\":\"say\",\"to_client_id\":\"7f00000108ff00000001\",\"to_client_name\":\"xiao_ming\",\"content\":\"1er2\"}', 'say', 'litter_b', '8');
INSERT INTO `bm_message` VALUES ('1124', '7f00000108fd00000003', '192.168.1.154', '{\"type\":\"say\",\"to_client_id\":\"7f00000108ff00000001\",\"to_client_name\":\"xiao_ming\",\"content\":\"1[ç¬‘cry]\"}', 'client:192.168.1.154:64856 gateway:127.0.0.1:7272  client_id:7f00000108fd00000003 session:{\"room_id\":\"8\",\"client_name\":\"iltter_c\"} onMessage:{\"type\":\"say\",\"to_client_id\":\"7f00000108ff00000001\",\"to_client_name\":\"xiao_ming\",\"content\":\"1[ç¬‘cry]\"}', 'say', 'iltter_c', '8');
INSERT INTO `bm_message` VALUES ('1125', '7f00000108fd00000003', '192.168.1.154', '{\"type\":\"say\",\"to_client_id\":\"7f00000108ff00000001\",\"to_client_name\":\"xiao_ming\",\"content\":\"[æ€’éª‚]\"}', 'client:192.168.1.154:64856 gateway:127.0.0.1:7272  client_id:7f00000108fd00000003 session:{\"room_id\":\"8\",\"client_name\":\"iltter_c\"} onMessage:{\"type\":\"say\",\"to_client_id\":\"7f00000108ff00000001\",\"to_client_name\":\"xiao_ming\",\"content\":\"[æ€’éª‚]\"}', 'say', 'iltter_c', '8');
INSERT INTO `bm_message` VALUES ('1126', '7f00000108fd00000003', '192.168.1.154', '{\"type\":\"say\",\"to_client_id\":\"7f00000108ff00000001\",\"to_client_name\":\"xiao_ming\",\"content\":\"ä½ è¿™ä¸ªç…žç¬”\"}', 'client:192.168.1.154:64856 gateway:127.0.0.1:7272  client_id:7f00000108fd00000003 session:{\"room_id\":\"8\",\"client_name\":\"iltter_c\"} onMessage:{\"type\":\"say\",\"to_client_id\":\"7f00000108ff00000001\",\"to_client_name\":\"xiao_ming\",\"content\":\"ä½ è¿™ä¸ªç…žç¬”\"}', 'say', 'iltter_c', '8');
INSERT INTO `bm_message` VALUES ('1127', '7f00000108ff00000001', '192.168.1.154', '{\"type\":\"say\",\"to_client_id\":\"7f00000108fd00000002\",\"to_client_name\":\"litter_b\",\"content\":\"ä½ åœ¨ç…žç¬”å‘¢\"}', 'client:192.168.1.154:64788 gateway:127.0.0.1:7272  client_id:7f00000108ff00000001 session:{\"room_id\":\"8\",\"client_name\":\"xiao_ming\"} onMessage:{\"type\":\"say\",\"to_client_id\":\"7f00000108fd00000002\",\"to_client_name\":\"litter_b\",\"content\":\"ä½ åœ¨ç…žç¬”å‘¢\"}', 'say', 'xiao_ming', '8');
INSERT INTO `bm_message` VALUES ('1128', '7f00000108fd00000003', '192.168.1.154', '{\"type\":\"say\",\"to_client_id\":\"7f00000108ff00000001\",\"to_client_name\":\"xiao_ming\",\"content\":\"ä½ è¿™ä¸ªé™ªä½ å·¥èµ„\"}', 'client:192.168.1.154:64856 gateway:127.0.0.1:7272  client_id:7f00000108fd00000003 session:{\"room_id\":\"8\",\"client_name\":\"iltter_c\"} onMessage:{\"type\":\"say\",\"to_client_id\":\"7f00000108ff00000001\",\"to_client_name\":\"xiao_ming\",\"content\":\"ä½ è¿™ä¸ªé™ªä½ å·¥èµ„\"}', 'say', 'iltter_c', '8');
INSERT INTO `bm_message` VALUES ('1129', '7f00000108ff00000001', '192.168.1.154', '{\"type\":\"say\",\"to_client_id\":\"7f00000108fd00000002\",\"to_client_name\":\"litter_b\",\"content\":\"ä½ åšæ¥çœ‹çœ‹\n\"}', 'client:192.168.1.154:64788 gateway:127.0.0.1:7272  client_id:7f00000108ff00000001 session:{\"room_id\":\"8\",\"client_name\":\"xiao_ming\"} onMessage:{\"type\":\"say\",\"to_client_id\":\"7f00000108fd00000002\",\"to_client_name\":\"litter_b\",\"content\":\"ä½ åšæ¥çœ‹çœ‹\n\"}', 'say', 'xiao_ming', '8');
INSERT INTO `bm_message` VALUES ('1130', '7f00000108ff00000001', '192.168.1.154', '{\"type\":\"say\",\"to_client_id\":\"7f00000108fd00000002\",\"to_client_name\":\"litter_b\",\"content\":\"ä¸º\"}', 'client:192.168.1.154:64788 gateway:127.0.0.1:7272  client_id:7f00000108ff00000001 session:{\"room_id\":\"8\",\"client_name\":\"xiao_ming\"} onMessage:{\"type\":\"say\",\"to_client_id\":\"7f00000108fd00000002\",\"to_client_name\":\"litter_b\",\"content\":\"ä¸º\"}', 'say', 'xiao_ming', '8');
INSERT INTO `bm_message` VALUES ('1131', '7f00000108ff00000001', '192.168.1.154', '{\"type\":\"say\",\"to_client_id\":\"7f00000108fd00000003\",\"to_client_name\":\"iltter_c\",\"content\":\"ä½ è¯´æ¥çœ‹çœ‹\"}', 'client:192.168.1.154:64788 gateway:127.0.0.1:7272  client_id:7f00000108ff00000001 session:{\"room_id\":\"8\",\"client_name\":\"xiao_ming\"} onMessage:{\"type\":\"say\",\"to_client_id\":\"7f00000108fd00000003\",\"to_client_name\":\"iltter_c\",\"content\":\"ä½ è¯´æ¥çœ‹çœ‹\"}', 'say', 'xiao_ming', '8');
INSERT INTO `bm_message` VALUES ('1132', '7f00000108ff00000001', '192.168.1.154', '{\"type\":\"say\",\"to_client_id\":\"7f00000108fd00000003\",\"to_client_name\":\"iltter_c\",\"content\":\"ä½ ç»™æˆ‘è¿‡æ¥\"}', 'client:192.168.1.154:64788 gateway:127.0.0.1:7272  client_id:7f00000108ff00000001 session:{\"room_id\":\"8\",\"client_name\":\"xiao_ming\"} onMessage:{\"type\":\"say\",\"to_client_id\":\"7f00000108fd00000003\",\"to_client_name\":\"iltter_c\",\"content\":\"ä½ ç»™æˆ‘è¿‡æ¥\"}', 'say', 'xiao_ming', '8');
INSERT INTO `bm_message` VALUES ('1133', '7f00000108ff00000001', '192.168.1.154', '{\"type\":\"say\",\"to_client_id\":\"7f00000108fd00000003\",\"to_client_name\":\"iltter_c\",\"content\":\"çœ‹çœ‹çœ‹çœ‹æˆ‘æ‰“ä¸æ‰“ä½ \"}', 'client:192.168.1.154:64788 gateway:127.0.0.1:7272  client_id:7f00000108ff00000001 session:{\"room_id\":\"8\",\"client_name\":\"xiao_ming\"} onMessage:{\"type\":\"say\",\"to_client_id\":\"7f00000108fd00000003\",\"to_client_name\":\"iltter_c\",\"content\":\"çœ‹çœ‹çœ‹çœ‹æˆ‘æ‰“ä¸æ‰“ä½ \"}', 'say', 'xiao_ming', '8');
INSERT INTO `bm_message` VALUES ('1134', '7f00000108ff00000001', '192.168.1.154', '{\"type\":\"say\",\"to_client_id\":\"7f00000108fd00000003\",\"to_client_name\":\"iltter_c\",\"content\":\"æ€•ä½ å•Š\n\"}', 'client:192.168.1.154:64788 gateway:127.0.0.1:7272  client_id:7f00000108ff00000001 session:{\"room_id\":\"8\",\"client_name\":\"xiao_ming\"} onMessage:{\"type\":\"say\",\"to_client_id\":\"7f00000108fd00000003\",\"to_client_name\":\"iltter_c\",\"content\":\"æ€•ä½ å•Š\n\"}', 'say', 'xiao_ming', '8');
INSERT INTO `bm_message` VALUES ('1135', '7f00000108ff00000001', '192.168.1.154', '{\"type\":\"say\",\"to_client_id\":\"7f00000108fd00000003\",\"to_client_name\":\"iltter_c\",\"content\":\"è°æ€•è°\"}', 'client:192.168.1.154:64788 gateway:127.0.0.1:7272  client_id:7f00000108ff00000001 session:{\"room_id\":\"8\",\"client_name\":\"xiao_ming\"} onMessage:{\"type\":\"say\",\"to_client_id\":\"7f00000108fd00000003\",\"to_client_name\":\"iltter_c\",\"content\":\"è°æ€•è°\"}', 'say', 'xiao_ming', '8');
INSERT INTO `bm_message` VALUES ('1136', '7f00000108ff00000001', '192.168.1.154', '{\"type\":\"say\",\"to_client_id\":\"7f00000108fd00000003\",\"to_client_name\":\"iltter_c\",\"content\":\"ä½ å°±æ˜¯æ€•äº†è¢«\"}', 'client:192.168.1.154:64788 gateway:127.0.0.1:7272  client_id:7f00000108ff00000001 session:{\"room_id\":\"8\",\"client_name\":\"xiao_ming\"} onMessage:{\"type\":\"say\",\"to_client_id\":\"7f00000108fd00000003\",\"to_client_name\":\"iltter_c\",\"content\":\"ä½ å°±æ˜¯æ€•äº†è¢«\"}', 'say', 'xiao_ming', '8');
INSERT INTO `bm_message` VALUES ('1137', '7f00000108ff00000001', '192.168.1.154', '{\"type\":\"say\",\"to_client_id\":\"7f00000108fd00000003\",\"to_client_name\":\"iltter_c\",\"content\":\"è¿˜æœ‰ä»€ä¹ˆå•Š\"}', 'client:192.168.1.154:64788 gateway:127.0.0.1:7272  client_id:7f00000108ff00000001 session:{\"room_id\":\"8\",\"client_name\":\"xiao_ming\"} onMessage:{\"type\":\"say\",\"to_client_id\":\"7f00000108fd00000003\",\"to_client_name\":\"iltter_c\",\"content\":\"è¿˜æœ‰ä»€ä¹ˆå•Š\"}', 'say', 'xiao_ming', '8');
INSERT INTO `bm_message` VALUES ('1138', '7f00000108ff00000001', '192.168.1.154', '{\"type\":\"say\",\"to_client_id\":\"7f00000108fd00000003\",\"to_client_name\":\"iltter_c\",\"content\":\"ä¹±ç æ€Žä¹ˆè§£å†³å•Š\"}', 'client:192.168.1.154:64788 gateway:127.0.0.1:7272  client_id:7f00000108ff00000001 session:{\"room_id\":\"8\",\"client_name\":\"xiao_ming\"} onMessage:{\"type\":\"say\",\"to_client_id\":\"7f00000108fd00000003\",\"to_client_name\":\"iltter_c\",\"content\":\"ä¹±ç æ€Žä¹ˆè§£å†³å•Š\"}', 'say', 'xiao_ming', '8');
INSERT INTO `bm_message` VALUES ('1139', '7f00000108ff00000001', '192.168.1.154', '{\"type\":\"say\",\"to_client_id\":\"7f00000108fd00000003\",\"to_client_name\":\"iltter_c\",\"content\":\"è¿˜éº»çƒ¦å•Š\"}', 'client:192.168.1.154:64788 gateway:127.0.0.1:7272  client_id:7f00000108ff00000001 session:{\"room_id\":\"8\",\"client_name\":\"xiao_ming\"} onMessage:{\"type\":\"say\",\"to_client_id\":\"7f00000108fd00000003\",\"to_client_name\":\"iltter_c\",\"content\":\"è¿˜éº»çƒ¦å•Š\"}', 'say', 'xiao_ming', '8');
INSERT INTO `bm_message` VALUES ('1140', '7f00000108ff00000001', '192.168.1.154', '{\"type\":\"say\",\"to_client_id\":\"7f00000108fd00000003\",\"to_client_name\":\"iltter_c\",\"content\":\"æ˜¯å•Š\"}', 'client:192.168.1.154:64788 gateway:127.0.0.1:7272  client_id:7f00000108ff00000001 session:{\"room_id\":\"8\",\"client_name\":\"xiao_ming\"} onMessage:{\"type\":\"say\",\"to_client_id\":\"7f00000108fd00000003\",\"to_client_name\":\"iltter_c\",\"content\":\"æ˜¯å•Š\"}', 'say', 'xiao_ming', '8');
INSERT INTO `bm_message` VALUES ('1141', '7f00000108ff00000001', '192.168.1.154', '{\"type\":\"say\",\"to_client_id\":\"7f00000108fd00000003\",\"to_client_name\":\"iltter_c\",\"content\":\"é‚£ä½ è¯´æ¥å¬å¬\"}', 'client:192.168.1.154:64788 gateway:127.0.0.1:7272  client_id:7f00000108ff00000001 session:{\"room_id\":\"8\",\"client_name\":\"xiao_ming\"} onMessage:{\"type\":\"say\",\"to_client_id\":\"7f00000108fd00000003\",\"to_client_name\":\"iltter_c\",\"content\":\"é‚£ä½ è¯´æ¥å¬å¬\"}', 'say', 'xiao_ming', '8');
INSERT INTO `bm_message` VALUES ('1142', '7f00000108ff00000002', '192.168.1.154', '{\"type\":\"say\",\"to_client_id\":\"7f00000108ff00000001\",\"to_client_name\":\"xiao_ming\",\"content\":\"å°æ˜Žä½ åœ¨å“ªé‡Œå•Š\"}', 'client:192.168.1.154:64825 gateway:127.0.0.1:7272  client_id:7f00000108ff00000002 session:{\"room_id\":\"8\",\"client_name\":\"litter_a\"} onMessage:{\"type\":\"say\",\"to_client_id\":\"7f00000108ff00000001\",\"to_client_name\":\"xiao_ming\",\"content\":\"å°æ˜Žä½ åœ¨å“ªé‡Œå•Š\"}', 'say', 'litter_a', '8');
INSERT INTO `bm_message` VALUES ('1143', '7f00000108ff00000001', '192.168.1.154', '{\"type\":\"say\",\"to_client_id\":\"7f00000108ff00000002\",\"to_client_name\":\"litter_a\",\"content\":\"æˆ‘åœ¨è¿™é‡Œå‘¢\"}', 'client:192.168.1.154:64788 gateway:127.0.0.1:7272  client_id:7f00000108ff00000001 session:{\"room_id\":\"8\",\"client_name\":\"xiao_ming\"} onMessage:{\"type\":\"say\",\"to_client_id\":\"7f00000108ff00000002\",\"to_client_name\":\"litter_a\",\"content\":\"æˆ‘åœ¨è¿™é‡Œå‘¢\"}', 'say', 'xiao_ming', '8');
INSERT INTO `bm_message` VALUES ('1144', '7f00000108ff00000002', '192.168.1.154', '{\"type\":\"say\",\"to_client_id\":\"7f00000108ff00000001\",\"to_client_name\":\"xiao_ming\",\"content\":\"ä»–è¯´å•¥\"}', 'client:192.168.1.154:64825 gateway:127.0.0.1:7272  client_id:7f00000108ff00000002 session:{\"room_id\":\"8\",\"client_name\":\"litter_a\"} onMessage:{\"type\":\"say\",\"to_client_id\":\"7f00000108ff00000001\",\"to_client_name\":\"xiao_ming\",\"content\":\"ä»–è¯´å•¥\"}', 'say', 'litter_a', '8');
INSERT INTO `bm_message` VALUES ('1145', '7f00000108fe00000004', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'client:192.168.1.154:49552 gateway:127.0.0.1:7272  client_id:7f00000108fe00000004 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'login', 'litter_d', '8');
INSERT INTO `bm_message` VALUES ('1146', '7f00000108fc00000003', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_b\",\"room_id\":\"8\"}', 'client:192.168.1.154:49638 gateway:127.0.0.1:7272  client_id:7f00000108fc00000003 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_b\",\"room_id\":\"8\"}', 'login', 'litter_b', '8');
INSERT INTO `bm_message` VALUES ('1147', '7f00000108fd00000004', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'client:192.168.1.154:53927 gateway:127.0.0.1:7272  client_id:7f00000108fd00000004 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'login', 'litter_d', '8');
INSERT INTO `bm_message` VALUES ('1148', '7f00000108fc00000004', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'client:192.168.1.154:53949 gateway:127.0.0.1:7272  client_id:7f00000108fc00000004 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'login', 'litter_d', '8');
INSERT INTO `bm_message` VALUES ('1149', '7f00000108fe00000005', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'client:192.168.1.154:53957 gateway:127.0.0.1:7272  client_id:7f00000108fe00000005 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'login', 'litter_d', '8');
INSERT INTO `bm_message` VALUES ('1150', '7f00000108fd00000005', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'client:192.168.1.154:53959 gateway:127.0.0.1:7272  client_id:7f00000108fd00000005 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'login', 'litter_d', '8');
INSERT INTO `bm_message` VALUES ('1151', '7f00000108fc00000023', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_a\",\"room_id\":\"8\"}', 'client:192.168.1.154:54114 gateway:127.0.0.1:7272  client_id:7f00000108fc00000023 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_a\",\"room_id\":\"8\"}', 'login', 'litter_a', '8');
INSERT INTO `bm_message` VALUES ('1152', '7f00000108ff0000001d', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'client:192.168.1.154:54119 gateway:127.0.0.1:7272  client_id:7f00000108ff0000001d session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'login', 'litter_d', '8');
INSERT INTO `bm_message` VALUES ('1153', '7f00000108fe00000001', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_a\",\"room_id\":\"8\"}', 'client:192.168.1.154:54126 gateway:127.0.0.1:7272  client_id:7f00000108fe00000001 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_a\",\"room_id\":\"8\"}', 'login', 'litter_a', '8');
INSERT INTO `bm_message` VALUES ('1154', '7f00000108fd00000001', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'client:192.168.1.154:54129 gateway:127.0.0.1:7272  client_id:7f00000108fd00000001 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'login', 'litter_d', '8');
INSERT INTO `bm_message` VALUES ('1155', '7f00000108fc00000001', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"xiao_ming\",\"room_id\":\"8\"}', 'client:192.168.1.154:54138 gateway:127.0.0.1:7272  client_id:7f00000108fc00000001 session:null onMessage:{\"type\":\"login\",\"client_name\":\"xiao_ming\",\"room_id\":\"8\"}', 'login', 'xiao_ming', '8');
INSERT INTO `bm_message` VALUES ('1156', '7f00000108ff00000001', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_b\",\"room_id\":\"8\"}', 'client:192.168.1.154:54155 gateway:127.0.0.1:7272  client_id:7f00000108ff00000001 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_b\",\"room_id\":\"8\"}', 'login', 'litter_b', '8');
INSERT INTO `bm_message` VALUES ('1157', '7f00000108fe00000002', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'client:192.168.1.154:54189 gateway:127.0.0.1:7272  client_id:7f00000108fe00000002 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'login', 'litter_d', '8');
INSERT INTO `bm_message` VALUES ('1158', '7f00000108fd00000002', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'client:192.168.1.154:54212 gateway:127.0.0.1:7272  client_id:7f00000108fd00000002 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'login', 'litter_d', '8');
INSERT INTO `bm_message` VALUES ('1159', '7f00000108ff00000002', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'client:192.168.1.154:54228 gateway:127.0.0.1:7272  client_id:7f00000108ff00000002 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'login', 'litter_d', '8');
INSERT INTO `bm_message` VALUES ('1160', '7f00000108fc00000002', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'client:192.168.1.154:54240 gateway:127.0.0.1:7272  client_id:7f00000108fc00000002 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'login', 'litter_d', '8');
INSERT INTO `bm_message` VALUES ('1161', '7f00000108ff00000003', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'client:192.168.1.154:54245 gateway:127.0.0.1:7272  client_id:7f00000108ff00000003 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'login', 'litter_d', '8');
INSERT INTO `bm_message` VALUES ('1162', '7f00000108fd00000003', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'client:192.168.1.154:54249 gateway:127.0.0.1:7272  client_id:7f00000108fd00000003 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'login', 'litter_d', '8');
INSERT INTO `bm_message` VALUES ('1163', '7f00000108fe00000003', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'client:192.168.1.154:54256 gateway:127.0.0.1:7272  client_id:7f00000108fe00000003 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'login', 'litter_d', '8');
INSERT INTO `bm_message` VALUES ('1164', '7f00000108ff00000004', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'client:192.168.1.154:54311 gateway:127.0.0.1:7272  client_id:7f00000108ff00000004 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'login', 'litter_d', '8');
INSERT INTO `bm_message` VALUES ('1165', '7f00000108fd00000004', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'client:192.168.1.154:54391 gateway:127.0.0.1:7272  client_id:7f00000108fd00000004 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'login', 'litter_d', '8');
INSERT INTO `bm_message` VALUES ('1166', '7f00000108ff00000001', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_b\",\"room_id\":\"8\"}', 'client:192.168.1.154:54974 gateway:127.0.0.1:7272  client_id:7f00000108ff00000001 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_b\",\"room_id\":\"8\"}', 'login', 'litter_b', '8');
INSERT INTO `bm_message` VALUES ('1167', '7f00000108fd00000002', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"xiao_ming\",\"room_id\":\"8\"}', 'client:192.168.1.154:54978 gateway:127.0.0.1:7272  client_id:7f00000108fd00000002 session:null onMessage:{\"type\":\"login\",\"client_name\":\"xiao_ming\",\"room_id\":\"8\"}', 'login', 'xiao_ming', '8');
INSERT INTO `bm_message` VALUES ('1168', '7f00000108fc00000001', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'client:192.168.1.154:54977 gateway:127.0.0.1:7272  client_id:7f00000108fc00000001 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'login', 'litter_d', '8');
INSERT INTO `bm_message` VALUES ('1169', '7f00000108fe00000001', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_a\",\"room_id\":\"8\"}', 'client:192.168.1.154:54984 gateway:127.0.0.1:7272  client_id:7f00000108fe00000001 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_a\",\"room_id\":\"8\"}', 'login', 'litter_a', '8');
INSERT INTO `bm_message` VALUES ('1170', '7f00000108ff00000002', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'client:192.168.1.154:55036 gateway:127.0.0.1:7272  client_id:7f00000108ff00000002 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'login', 'litter_d', '8');
INSERT INTO `bm_message` VALUES ('1171', '7f00000108fd00000001', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_b\",\"room_id\":\"8\"}', 'client:192.168.1.154:55064 gateway:127.0.0.1:7272  client_id:7f00000108fd00000001 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_b\",\"room_id\":\"8\"}', 'login', 'litter_b', '8');
INSERT INTO `bm_message` VALUES ('1172', '7f00000108fc00000001', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_a\",\"room_id\":\"8\"}', 'client:192.168.1.154:55062 gateway:127.0.0.1:7272  client_id:7f00000108fc00000001 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_a\",\"room_id\":\"8\"}', 'login', 'litter_a', '8');
INSERT INTO `bm_message` VALUES ('1173', '7f00000108fe00000001', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"xiao_ming\",\"room_id\":\"8\"}', 'client:192.168.1.154:55072 gateway:127.0.0.1:7272  client_id:7f00000108fe00000001 session:null onMessage:{\"type\":\"login\",\"client_name\":\"xiao_ming\",\"room_id\":\"8\"}', 'login', 'xiao_ming', '8');
INSERT INTO `bm_message` VALUES ('1174', '7f00000108fc00000002', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'client:192.168.1.154:55063 gateway:127.0.0.1:7272  client_id:7f00000108fc00000002 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'login', 'litter_d', '8');
INSERT INTO `bm_message` VALUES ('1175', '7f00000108ff00000001', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'client:192.168.1.154:55124 gateway:127.0.0.1:7272  client_id:7f00000108ff00000001 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'login', 'litter_d', '8');
INSERT INTO `bm_message` VALUES ('1176', '7f00000108fd00000003', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'client:192.168.1.154:55352 gateway:127.0.0.1:7272  client_id:7f00000108fd00000003 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'login', 'litter_d', '8');
INSERT INTO `bm_message` VALUES ('1177', '7f00000108fc00000003', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'client:192.168.1.154:55379 gateway:127.0.0.1:7272  client_id:7f00000108fc00000003 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'login', 'litter_d', '8');
INSERT INTO `bm_message` VALUES ('1178', '7f00000108ff00000002', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'client:192.168.1.154:55414 gateway:127.0.0.1:7272  client_id:7f00000108ff00000002 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'login', 'litter_d', '8');
INSERT INTO `bm_message` VALUES ('1179', '7f00000108ff00000002', '192.168.1.154', '{\"type\":\"say\",\"to_client_id\":\"7f00000108fe00000001\",\"to_client_name\":\"xiao_ming\",\"content\":\"32323\"}', 'client:192.168.1.154:55414 gateway:127.0.0.1:7272  client_id:7f00000108ff00000002 session:{\"room_id\":\"8\",\"client_name\":\"litter_d\"} onMessage:{\"type\":\"say\",\"to_client_id\":\"7f00000108fe00000001\",\"to_client_name\":\"xiao_ming\",\"content\":\"32323\"}', 'say', 'litter_d', '8');
INSERT INTO `bm_message` VALUES ('1180', '7f00000108fd00000001', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'client:192.168.1.154:55575 gateway:127.0.0.1:7272  client_id:7f00000108fd00000001 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'login', 'litter_d', '8');
INSERT INTO `bm_message` VALUES ('1181', '7f00000108fe00000001', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_a\",\"room_id\":\"8\"}', 'client:192.168.1.154:55576 gateway:127.0.0.1:7272  client_id:7f00000108fe00000001 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_a\",\"room_id\":\"8\"}', 'login', 'litter_a', '8');
INSERT INTO `bm_message` VALUES ('1182', '7f00000108fc00000001', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"xiao_ming\",\"room_id\":\"8\"}', 'client:192.168.1.154:55579 gateway:127.0.0.1:7272  client_id:7f00000108fc00000001 session:null onMessage:{\"type\":\"login\",\"client_name\":\"xiao_ming\",\"room_id\":\"8\"}', 'login', 'xiao_ming', '8');
INSERT INTO `bm_message` VALUES ('1183', '7f00000108ff00000001', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_b\",\"room_id\":\"8\"}', 'client:192.168.1.154:55599 gateway:127.0.0.1:7272  client_id:7f00000108ff00000001 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_b\",\"room_id\":\"8\"}', 'login', 'litter_b', '8');
INSERT INTO `bm_message` VALUES ('1184', '7f00000108fe00000002', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'client:192.168.1.154:55646 gateway:127.0.0.1:7272  client_id:7f00000108fe00000002 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'login', 'litter_d', '8');
INSERT INTO `bm_message` VALUES ('1185', '7f00000108fd00000002', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_b\",\"room_id\":\"8\"}', 'client:192.168.1.154:55681 gateway:127.0.0.1:7272  client_id:7f00000108fd00000002 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_b\",\"room_id\":\"8\"}', 'login', 'litter_b', '8');
INSERT INTO `bm_message` VALUES ('1186', '7f00000108ff00000002', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"xiao_ming\",\"room_id\":\"8\"}', 'client:192.168.1.154:55717 gateway:127.0.0.1:7272  client_id:7f00000108ff00000002 session:null onMessage:{\"type\":\"login\",\"client_name\":\"xiao_ming\",\"room_id\":\"8\"}', 'login', 'xiao_ming', '8');
INSERT INTO `bm_message` VALUES ('1187', '7f00000108ff00000003', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_b\",\"room_id\":\"8\"}', 'client:192.168.1.154:55732 gateway:127.0.0.1:7272  client_id:7f00000108ff00000003 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_b\",\"room_id\":\"8\"}', 'login', 'litter_b', '8');
INSERT INTO `bm_message` VALUES ('1188', '7f00000108fd00000003', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_b\",\"room_id\":\"8\"}', 'client:192.168.1.154:56166 gateway:127.0.0.1:7272  client_id:7f00000108fd00000003 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_b\",\"room_id\":\"8\"}', 'login', 'litter_b', '8');
INSERT INTO `bm_message` VALUES ('1189', '7f00000108ff00000002', '192.168.1.154', '{\"type\":\"say\",\"to_client_id\":\"7f00000108fe00000002\",\"to_client_name\":\"litter_d\",\"content\":\"ä½ æ˜¯è°\"}', 'client:192.168.1.154:55717 gateway:127.0.0.1:7272  client_id:7f00000108ff00000002 session:{\"room_id\":\"8\",\"client_name\":\"xiao_ming\"} onMessage:{\"type\":\"say\",\"to_client_id\":\"7f00000108fe00000002\",\"to_client_name\":\"litter_d\",\"content\":\"ä½ æ˜¯è°\"}', 'say', 'xiao_ming', '8');
INSERT INTO `bm_message` VALUES ('1190', '7f00000108fe00000002', '192.168.1.154', '{\"type\":\"say\",\"to_client_id\":\"7f00000108ff00000002\",\"to_client_name\":\"xiao_ming\",\"content\":\"å°æ˜Žå•Šè¿˜æœ‰æ°´\"}', 'client:192.168.1.154:55646 gateway:127.0.0.1:7272  client_id:7f00000108fe00000002 session:{\"room_id\":\"8\",\"client_name\":\"litter_d\"} onMessage:{\"type\":\"say\",\"to_client_id\":\"7f00000108ff00000002\",\"to_client_name\":\"xiao_ming\",\"content\":\"å°æ˜Žå•Šè¿˜æœ‰æ°´\"}', 'say', 'litter_d', '8');
INSERT INTO `bm_message` VALUES ('1191', '7f00000108fc00000010', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'client:192.168.1.154:56600 gateway:127.0.0.1:7272  client_id:7f00000108fc00000010 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'login', 'litter_d', '8');
INSERT INTO `bm_message` VALUES ('1192', '7f00000108ff0000000d', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_b\",\"room_id\":\"8\"}', 'client:192.168.1.154:56606 gateway:127.0.0.1:7272  client_id:7f00000108ff0000000d session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_b\",\"room_id\":\"8\"}', 'login', 'litter_b', '8');
INSERT INTO `bm_message` VALUES ('1193', '7f00000108fe00000011', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"xiao_ming\",\"room_id\":\"8\"}', 'client:192.168.1.154:56611 gateway:127.0.0.1:7272  client_id:7f00000108fe00000011 session:null onMessage:{\"type\":\"login\",\"client_name\":\"xiao_ming\",\"room_id\":\"8\"}', 'login', 'xiao_ming', '8');
INSERT INTO `bm_message` VALUES ('1194', '7f00000108ff0000000e', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_a\",\"room_id\":\"8\"}', 'client:192.168.1.154:56627 gateway:127.0.0.1:7272  client_id:7f00000108ff0000000e session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_a\",\"room_id\":\"8\"}', 'login', 'litter_a', '8');
INSERT INTO `bm_message` VALUES ('1195', '7f00000108fd00000001', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_b\",\"room_id\":\"8\"}', 'client:192.168.1.154:56651 gateway:127.0.0.1:7272  client_id:7f00000108fd00000001 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_b\",\"room_id\":\"8\"}', 'login', 'litter_b', '8');
INSERT INTO `bm_message` VALUES ('1196', '7f00000108fc00000003', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'client:192.168.1.154:56650 gateway:127.0.0.1:7272  client_id:7f00000108fc00000003 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'login', 'litter_d', '8');
INSERT INTO `bm_message` VALUES ('1197', '7f00000108fe00000001', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"xiao_ming\",\"room_id\":\"8\"}', 'client:192.168.1.154:56649 gateway:127.0.0.1:7272  client_id:7f00000108fe00000001 session:null onMessage:{\"type\":\"login\",\"client_name\":\"xiao_ming\",\"room_id\":\"8\"}', 'login', 'xiao_ming', '8');
INSERT INTO `bm_message` VALUES ('1198', '7f00000108fc00000002', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_a\",\"room_id\":\"8\"}', 'client:192.168.1.154:56657 gateway:127.0.0.1:7272  client_id:7f00000108fc00000002 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_a\",\"room_id\":\"8\"}', 'login', 'litter_a', '8');
INSERT INTO `bm_message` VALUES ('1199', '7f00000108ff00000001', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'client:192.168.1.154:56711 gateway:127.0.0.1:7272  client_id:7f00000108ff00000001 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'login', 'litter_d', '8');
INSERT INTO `bm_message` VALUES ('1200', '7f00000108fc00000004', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_b\",\"room_id\":\"8\"}', 'client:192.168.1.154:57611 gateway:127.0.0.1:7272  client_id:7f00000108fc00000004 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_b\",\"room_id\":\"8\"}', 'login', 'litter_b', '8');
INSERT INTO `bm_message` VALUES ('1201', '7f00000108ff00000002', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"xiao_ming\",\"room_id\":\"8\"}', 'client:192.168.1.154:57654 gateway:127.0.0.1:7272  client_id:7f00000108ff00000002 session:null onMessage:{\"type\":\"login\",\"client_name\":\"xiao_ming\",\"room_id\":\"8\"}', 'login', 'xiao_ming', '8');
INSERT INTO `bm_message` VALUES ('1202', '7f00000108fe00000002', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'client:192.168.1.154:57792 gateway:127.0.0.1:7272  client_id:7f00000108fe00000002 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'login', 'litter_d', '8');
INSERT INTO `bm_message` VALUES ('1203', '7f00000108fe00000001', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_a\",\"room_id\":\"8\"}', 'client:192.168.1.154:59763 gateway:127.0.0.1:7272  client_id:7f00000108fe00000001 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_a\",\"room_id\":\"8\"}', 'login', 'litter_a', '8');
INSERT INTO `bm_message` VALUES ('1204', '7f00000108fd00000001', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'client:192.168.1.154:59777 gateway:127.0.0.1:7272  client_id:7f00000108fd00000001 session:null onMessage:{\"type\":\"login\",\"client_name\":\"litter_d\",\"room_id\":\"8\"}', 'login', 'litter_d', '8');
INSERT INTO `bm_message` VALUES ('1205', '7f00000108fc00000001', '192.168.1.154', '{\"type\":\"login\",\"client_name\":\"xiao_ming\",\"room_id\":\"8\"}', 'client:192.168.1.154:59785 gateway:127.0.0.1:7272  client_id:7f00000108fc00000001 session:null onMessage:{\"type\":\"login\",\"client_name\":\"xiao_ming\",\"room_id\":\"8\"}', 'login', 'xiao_ming', '8');
