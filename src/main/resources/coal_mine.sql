/*
Navicat MySQL Data Transfer

Source Server         : Mysqlone
Source Server Version : 50610
Source Host           : localhost:3306
Source Database       : coal_mine

Target Server Type    : MYSQL
Target Server Version : 50610
File Encoding         : 65001

Date: 2019-04-10 16:38:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `buy`
-- ----------------------------
DROP TABLE IF EXISTS `buy`;
CREATE TABLE `buy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `b_name` varchar(255) DEFAULT NULL COMMENT '购买设备名称',
  `e_id` varchar(255) DEFAULT NULL COMMENT '设备编号',
  `price` bigint(11) DEFAULT NULL COMMENT '设备购买价格单价',
  `equ_vendor` varchar(255) DEFAULT NULL COMMENT '设备厂商',
  `buy_time` datetime DEFAULT NULL COMMENT '购买时间',
  `num` int(11) DEFAULT NULL COMMENT '数量',
  `z_price` bigint(20) DEFAULT NULL COMMENT '总金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of buy
-- ----------------------------
INSERT INTO `buy` VALUES ('1', '变压器', '001', '17339321220', '大的打', '2019-04-03 09:36:25', null, null);
INSERT INTO `buy` VALUES ('2', '变频器', '2', '26211555', '大大泡泡糖', '2019-04-03 10:09:42', '33', '666');
INSERT INTO `buy` VALUES ('8', '电机', null, '16936969696', 'va1', '2019-04-03 09:50:51', null, null);
INSERT INTO `buy` VALUES ('11', '电脑', '002', '999996966', '万泰电子', '2019-04-03 14:12:27', null, null);
INSERT INTO `buy` VALUES ('12', '主板', '006', '17339321220', '大同', '2019-04-03 16:37:39', null, null);
INSERT INTO `buy` VALUES ('13', '电板', '03A26', '600', '正大瓦', '2019-04-20 00:00:00', '9', '5000');
INSERT INTO `buy` VALUES ('14', '打赏', '0a69', '999', '的', '2019-04-10 00:00:00', '7', '666');
INSERT INTO `buy` VALUES ('15', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `dept`
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `d_name` varchar(255) DEFAULT NULL COMMENT '部门名称',
  `des` varchar(255) DEFAULT NULL COMMENT '部门描述',
  `state` varchar(255) DEFAULT NULL COMMENT '状态',
  `d_id` varchar(255) DEFAULT NULL COMMENT '部门编号',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('1', '研发部', '研发', '开启', 'AE001');
INSERT INTO `dept` VALUES ('2', '技术部', '技术', '关闭', 'JS002');
INSERT INTO `dept` VALUES ('6', '财务部', '财务管理', '开启', 'CW003');

-- ----------------------------
-- Table structure for `emp`
-- ----------------------------
DROP TABLE IF EXISTS `emp`;
CREATE TABLE `emp` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `emp_id` varchar(11) DEFAULT NULL COMMENT '员工ID',
  `emp_name` varchar(255) DEFAULT NULL COMMENT '员工名称',
  `emp_dept` int(11) DEFAULT NULL COMMENT '员工部门',
  `emp_time` date DEFAULT NULL COMMENT '入职时间',
  `emp_sex` varchar(255) DEFAULT NULL COMMENT '员工性别',
  `emp_sql` varchar(255) DEFAULT NULL COMMENT '员工工资',
  `emp_comm` varchar(255) DEFAULT NULL COMMENT '奖金',
  `emp_phone` bigint(11) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emp
-- ----------------------------
INSERT INTO `emp` VALUES ('1', 'AE001', '万泰', '1', '2019-04-03', '男', '10000000000', '600000', '17339321220');
INSERT INTO `emp` VALUES ('2', 'SN001', '记者大', '2', '2019-04-15', '男', '10362.36', '326999', '16889869896');
INSERT INTO `emp` VALUES ('3', 'CW001', '李锦记', '2', '2019-04-21', '男', '96226', '80006', '17339321220');
INSERT INTO `emp` VALUES ('7', '366', '66', '1', '2019-04-09', '男', '6999', '564', '18639321220');
INSERT INTO `emp` VALUES ('8', 'WE666', '阿达', '1', '2019-04-10', '男', '69666', '9666', '17339326262');
INSERT INTO `emp` VALUES ('9', 'ER006', '公寓', '6', '2019-04-16', '男', '68696', '686', '18639368696');

-- ----------------------------
-- Table structure for `equipment`
-- ----------------------------
DROP TABLE IF EXISTS `equipment`;
CREATE TABLE `equipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `equ_id` varchar(11) DEFAULT NULL COMMENT '设备编号',
  `equ_name` varchar(255) DEFAULT NULL COMMENT '设备名称',
  `equ_vendor` varchar(255) DEFAULT NULL COMMENT '设备厂商',
  `other` varchar(255) DEFAULT NULL COMMENT '其他信息',
  `price` bigint(20) DEFAULT NULL COMMENT '设备价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of equipment
-- ----------------------------
INSERT INTO `equipment` VALUES ('1', '001', '发电机', '淮南万泰电子', '频率', null);
INSERT INTO `equipment` VALUES ('2', '2', '电机', '大同集团', '66', null);

-- ----------------------------
-- Table structure for `equ_maintenance`
-- ----------------------------
DROP TABLE IF EXISTS `equ_maintenance`;
CREATE TABLE `equ_maintenance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '设备名称',
  `equ_id` varchar(11) DEFAULT NULL COMMENT '设备编号',
  `equ_name` varchar(255) DEFAULT NULL COMMENT '设备单位',
  `main_infor` varchar(255) DEFAULT NULL COMMENT '维护信息',
  `main_user` varchar(255) DEFAULT NULL COMMENT '维护人员',
  `main_time` datetime DEFAULT NULL COMMENT '设备维修时间',
  `fstatue` varchar(255) DEFAULT NULL COMMENT '维修状态',
  `reason` varchar(255) DEFAULT NULL COMMENT '损坏原因',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of equ_maintenance
-- ----------------------------
INSERT INTO `equ_maintenance` VALUES ('1', '变频器', 'D0301', '杭州中医药大学', '通讯死机', '张三', '2019-03-14 17:02:00', '维修完毕', '排线有问题');
INSERT INTO `equ_maintenance` VALUES ('10', '电机', '696', '万泰电子', '未知', '李四', '2019-04-04 09:04:00', '维修中', '电压不稳定');
INSERT INTO `equ_maintenance` VALUES ('11', '控制器', 'KZ001', '大同煤矿', '主板坏了', '赵四', '2019-04-09 14:03:35', '维修中', '不详');

-- ----------------------------
-- Table structure for `fstatue`
-- ----------------------------
DROP TABLE IF EXISTS `fstatue`;
CREATE TABLE `fstatue` (
  `f_id` int(11) NOT NULL DEFAULT '0',
  `f_name` varchar(255) DEFAULT NULL COMMENT '设备状态',
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fstatue
-- ----------------------------
INSERT INTO `fstatue` VALUES ('1', '维修完毕');
INSERT INTO `fstatue` VALUES ('2', '维修中');

-- ----------------------------
-- Table structure for `main_histoty`
-- ----------------------------
DROP TABLE IF EXISTS `main_histoty`;
CREATE TABLE `main_histoty` (
  `id` int(11) NOT NULL DEFAULT '0',
  `reason` varchar(255) DEFAULT NULL COMMENT '损坏原因',
  `main_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '设备维修时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of main_histoty
-- ----------------------------

-- ----------------------------
-- Table structure for `main_user`
-- ----------------------------
DROP TABLE IF EXISTS `main_user`;
CREATE TABLE `main_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `sex` int(11) DEFAULT NULL COMMENT '年龄',
  `main_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '设备维修时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of main_user
-- ----------------------------

-- ----------------------------
-- Table structure for `power`
-- ----------------------------
DROP TABLE IF EXISTS `power`;
CREATE TABLE `power` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '名字',
  `state` varchar(255) DEFAULT NULL COMMENT '状态',
  `iconcls` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `parentid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of power
-- ----------------------------
INSERT INTO `power` VALUES ('1', '保修列表', '1', null, '/equ/toEqu', null);
INSERT INTO `power` VALUES ('2', '设备管理', '1', null, null, null);
INSERT INTO `power` VALUES ('3', null, null, null, null, null);

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(255) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '董事');
INSERT INTO `role` VALUES ('2', '理事');
INSERT INTO `role` VALUES ('3', '经理');
INSERT INTO `role` VALUES ('4', '员工');
INSERT INTO `role` VALUES ('5', '主管');

-- ----------------------------
-- Table structure for `role_power`
-- ----------------------------
DROP TABLE IF EXISTS `role_power`;
CREATE TABLE `role_power` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleid` varchar(255) DEFAULT NULL,
  `powerid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_power
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` int(11) DEFAULT NULL COMMENT '员工登陆账号',
  `password` varchar(255) DEFAULT '' COMMENT '员工登陆密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('12', '666', '888');
