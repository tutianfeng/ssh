/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50722
Source Host           : 127.0.0.1:3306
Source Database       : dxhc

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2019-11-11 11:33:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for arc_driver
-- ----------------------------
DROP TABLE IF EXISTS `arc_driver`;
CREATE TABLE `arc_driver` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `tenant_id` varchar(32) NOT NULL COMMENT '租户',
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `sex` varchar(10) NOT NULL COMMENT '性别',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机',
  `idCard` varchar(20) DEFAULT NULL COMMENT '身份证',
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  `status` varchar(10) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='司机档案';

-- ----------------------------
-- Records of arc_driver
-- ----------------------------
INSERT INTO `arc_driver` VALUES ('402881ed6e58121b016e58463900000f', '402881e45f81056b015f810d3a770004', '张三', '1', '18855558888', '513436200011117165', '北京市，海淀区 ，上地东街3号', '0', '系统默认', '管理员', '2019-11-11 10:23:47', null, null);

-- ----------------------------
-- Table structure for arc_driver_ext
-- ----------------------------
DROP TABLE IF EXISTS `arc_driver_ext`;
CREATE TABLE `arc_driver_ext` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `tenant_id` varchar(32) NOT NULL COMMENT '租户',
  `driver_id` varchar(32) NOT NULL COMMENT '司机',
  `arc_ext_id` varchar(32) NOT NULL COMMENT '扩展',
  `value` varchar(50) NOT NULL COMMENT '值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='司机扩展';

-- ----------------------------
-- Records of arc_driver_ext
-- ----------------------------
INSERT INTO `arc_driver_ext` VALUES ('402881ed6e58121b016e584639010010', '402881e45f81056b015f810d3a770004', '402881ed6e58121b016e58463900000f', '402881e55f9fbafb015f9fbe2ec10003', '110101201801011366');
INSERT INTO `arc_driver_ext` VALUES ('402881ed6e58121b016e584639010011', '402881e45f81056b015f810d3a770004', '402881ed6e58121b016e58463900000f', '402881e55f9fbafb015f9fc295140005', 'A');

-- ----------------------------
-- Table structure for arc_ext
-- ----------------------------
DROP TABLE IF EXISTS `arc_ext`;
CREATE TABLE `arc_ext` (
  `id` varchar(32) NOT NULL,
  `tenant_id` varchar(32) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of arc_ext
-- ----------------------------
INSERT INTO `arc_ext` VALUES ('402881e55f9a2d4e015f9a4662750017', '402881e45f81056b015f810d3a770004', '紧急联系人', '2');
INSERT INTO `arc_ext` VALUES ('402881e55f9a2d4e015f9a468b1c0019', '402881e45f81056b015f810d3a770004', '联系手机', '2');
INSERT INTO `arc_ext` VALUES ('402881e55f9fbafb015f9fbe2ec10003', '402881e45f81056b015f810d3a770004', '从业证号', '3');
INSERT INTO `arc_ext` VALUES ('402881e55f9fbafb015f9fc295140005', '402881e45f81056b015f810d3a770004', '驾照类型', '3');
INSERT INTO `arc_ext` VALUES ('402881e55fc7bcc3015fc7c39fea0000', '402881e45f81056b015f810d3a770004', '品牌型号', '1');
INSERT INTO `arc_ext` VALUES ('402881e55fc7bcc3015fc7c3e0990002', '402881e45f81056b015f810d3a770004', '车身颜色', '1');
INSERT INTO `arc_ext` VALUES ('402881e55fc7bcc3015fc7c40cb10004', '402881e45f81056b015f810d3a770004', '车架号', '1');
INSERT INTO `arc_ext` VALUES ('402881e55fc7bcc3015fc7c42edf0006', '402881e45f81056b015f810d3a770004', '发动机号', '1');
INSERT INTO `arc_ext` VALUES ('402881e55fc7bcc3015fc7c452f60008', '402881e45f81056b015f810d3a770004', '燃料种类', '1');
INSERT INTO `arc_ext` VALUES ('402881e55fc7bcc3015fc7c4ab2f000e', '402881e45f81056b015f810d3a770004', '核载质量', '1');

-- ----------------------------
-- Table structure for arc_owner
-- ----------------------------
DROP TABLE IF EXISTS `arc_owner`;
CREATE TABLE `arc_owner` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `tenant_id` varchar(32) NOT NULL COMMENT '租户',
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `sex` varchar(10) NOT NULL COMMENT '性别',
  `phone` varchar(11) NOT NULL COMMENT '手机',
  `idCard` varchar(18) DEFAULT NULL COMMENT '身份证',
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  `status` varchar(10) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='责任人档案';

-- ----------------------------
-- Records of arc_owner
-- ----------------------------
INSERT INTO `arc_owner` VALUES ('402881ed6e58121b016e58463900000c', '402881e45f81056b015f810d3a770004', '张三', '1', '18855558888', '513436200011117165', '北京市，海淀区 ，上地东街3号', '0', '系统默认', '管理员', '2019-11-11 10:23:47', null, null);

-- ----------------------------
-- Table structure for arc_owner_ext
-- ----------------------------
DROP TABLE IF EXISTS `arc_owner_ext`;
CREATE TABLE `arc_owner_ext` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `tenant_id` varchar(32) NOT NULL COMMENT '租户',
  `owner_id` varchar(32) NOT NULL COMMENT '责任人',
  `arc_ext_id` varchar(32) NOT NULL COMMENT '扩展',
  `value` varchar(50) NOT NULL COMMENT '值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='责任人扩展';

-- ----------------------------
-- Records of arc_owner_ext
-- ----------------------------
INSERT INTO `arc_owner_ext` VALUES ('402881ed6e58121b016e58463900000d', '402881e45f81056b015f810d3a770004', '402881ed6e58121b016e58463900000c', '402881e55f9a2d4e015f9a4662750017', '李四');
INSERT INTO `arc_owner_ext` VALUES ('402881ed6e58121b016e58463900000e', '402881e45f81056b015f810d3a770004', '402881ed6e58121b016e58463900000c', '402881e55f9a2d4e015f9a468b1c0019', '16655556666');

-- ----------------------------
-- Table structure for arc_vehicle
-- ----------------------------
DROP TABLE IF EXISTS `arc_vehicle`;
CREATE TABLE `arc_vehicle` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `tenant_id` varchar(32) NOT NULL COMMENT '租户',
  `owner_id` varchar(32) NOT NULL,
  `relation_vehicle_id` varchar(32) DEFAULT NULL,
  `sn` varchar(50) DEFAULT NULL COMMENT '编号',
  `plate_number` varchar(50) NOT NULL COMMENT '车牌号',
  `type` varchar(10) NOT NULL COMMENT '车辆类型',
  `status` varchar(32) NOT NULL COMMENT '状态',
  `general_danger` varchar(10) NOT NULL COMMENT '普货/危货',
  `register_date` date DEFAULT NULL COMMENT '登记日期',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  `void_by` varchar(50) DEFAULT NULL COMMENT '注销人',
  `void_date` datetime DEFAULT NULL COMMENT '注销日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='车辆档案';

-- ----------------------------
-- Records of arc_vehicle
-- ----------------------------
INSERT INTO `arc_vehicle` VALUES ('402881ed6e58121b016e58492db80013', '402881e45f81056b015f810d3a770004', '402881ed6e58121b016e58463900000c', null, '1001', '京A88888', '1', '402881e55fc2b891015fc2ba356f0003', '1', '2019-11-11', null, '管理员', '2019-11-11 10:27:01', null, null, null, null);

-- ----------------------------
-- Table structure for arc_vehicle_driver
-- ----------------------------
DROP TABLE IF EXISTS `arc_vehicle_driver`;
CREATE TABLE `arc_vehicle_driver` (
  `vehicle_id` varchar(32) NOT NULL,
  `driver_id` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of arc_vehicle_driver
-- ----------------------------
INSERT INTO `arc_vehicle_driver` VALUES ('402881ed6e58121b016e58492db80013', '402881ed6e58121b016e58463900000f');

-- ----------------------------
-- Table structure for arc_vehicle_ext
-- ----------------------------
DROP TABLE IF EXISTS `arc_vehicle_ext`;
CREATE TABLE `arc_vehicle_ext` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `tenant_id` varchar(32) NOT NULL COMMENT '租户',
  `vehicle_id` varchar(32) NOT NULL COMMENT '车辆',
  `arc_ext_id` varchar(32) NOT NULL COMMENT '扩展',
  `value` varchar(50) NOT NULL COMMENT '值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='车辆扩展';

-- ----------------------------
-- Records of arc_vehicle_ext
-- ----------------------------
INSERT INTO `arc_vehicle_ext` VALUES ('402881ed6e58121b016e58492db90014', '402881e45f81056b015f810d3a770004', '402881ed6e58121b016e58492db80013', '402881e55fc7bcc3015fc7c39fea0000', '东风');
INSERT INTO `arc_vehicle_ext` VALUES ('402881ed6e58121b016e58492db90015', '402881e45f81056b015f810d3a770004', '402881ed6e58121b016e58492db80013', '402881e55fc7bcc3015fc7c3e0990002', '红色');
INSERT INTO `arc_vehicle_ext` VALUES ('402881ed6e58121b016e58492db90016', '402881e45f81056b015f810d3a770004', '402881ed6e58121b016e58492db80013', '402881e55fc7bcc3015fc7c40cb10004', '1G1BL52P7TR115520');
INSERT INTO `arc_vehicle_ext` VALUES ('402881ed6e58121b016e58492db90017', '402881e45f81056b015f810d3a770004', '402881ed6e58121b016e58492db80013', '402881e55fc7bcc3015fc7c42edf0006', '4100Q-4');
INSERT INTO `arc_vehicle_ext` VALUES ('402881ed6e58121b016e58492db90018', '402881e45f81056b015f810d3a770004', '402881ed6e58121b016e58492db80013', '402881e55fc7bcc3015fc7c452f60008', '柴油');
INSERT INTO `arc_vehicle_ext` VALUES ('402881ed6e58121b016e58492db90019', '402881e45f81056b015f810d3a770004', '402881ed6e58121b016e58492db80013', '402881e55fc7bcc3015fc7c4ab2f000e', '35T');

-- ----------------------------
-- Table structure for arc_vehicle_pic
-- ----------------------------
DROP TABLE IF EXISTS `arc_vehicle_pic`;
CREATE TABLE `arc_vehicle_pic` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `tenant_id` varchar(32) NOT NULL COMMENT '租户',
  `vehicle_id` varchar(32) NOT NULL COMMENT '车辆',
  `type` varchar(50) NOT NULL,
  `thumb_path` varchar(255) NOT NULL COMMENT '缩略图',
  `path` varchar(255) NOT NULL COMMENT 'url',
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='责任人图片';

-- ----------------------------
-- Records of arc_vehicle_pic
-- ----------------------------

-- ----------------------------
-- Table structure for arc_vehicle_warn
-- ----------------------------
DROP TABLE IF EXISTS `arc_vehicle_warn`;
CREATE TABLE `arc_vehicle_warn` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `tenant_id` varchar(32) NOT NULL COMMENT '租户',
  `vehicle_id` varchar(32) NOT NULL COMMENT '车辆',
  `warn_type_id` varchar(32) NOT NULL COMMENT '提醒',
  `status` varchar(10) NOT NULL,
  `warn_date` date NOT NULL COMMENT '提醒日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='车辆提醒';

-- ----------------------------
-- Records of arc_vehicle_warn
-- ----------------------------
INSERT INTO `arc_vehicle_warn` VALUES ('402881ed6e58121b016e58492dc8001a', '402881e45f81056b015f810d3a770004', '402881ed6e58121b016e58492db80013', '402881e55f99087d015f993e42860002', '0', '2019-11-11');
INSERT INTO `arc_vehicle_warn` VALUES ('402881ed6e58121b016e58492dc8001b', '402881e45f81056b015f810d3a770004', '402881ed6e58121b016e58492db80013', '402881e55f99087d015f993e640f0004', '0', '2019-11-12');
INSERT INTO `arc_vehicle_warn` VALUES ('402881ed6e58121b016e58492dc8001c', '402881e45f81056b015f810d3a770004', '402881ed6e58121b016e58492db80013', '402881e55f99087d015f993e838f0006', '0', '2019-11-13');
INSERT INTO `arc_vehicle_warn` VALUES ('402881ed6e58121b016e58492dc9001d', '402881e45f81056b015f810d3a770004', '402881ed6e58121b016e58492db80013', '402881e55f99087d015f993ea03b0008', '0', '2019-11-14');

-- ----------------------------
-- Table structure for fin_expenses
-- ----------------------------
DROP TABLE IF EXISTS `fin_expenses`;
CREATE TABLE `fin_expenses` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `tenant_id` varchar(32) NOT NULL COMMENT '租户',
  `name` varchar(50) NOT NULL COMMENT '名称',
  `type` varchar(10) NOT NULL COMMENT '应用范围 ',
  `amount` decimal(10,1) DEFAULT NULL COMMENT '费用标准',
  `status` varchar(10) NOT NULL COMMENT '状态',
  `sort` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='费用类型';

-- ----------------------------
-- Records of fin_expenses
-- ----------------------------
INSERT INTO `fin_expenses` VALUES ('2c91ea5e65beda910165c2790b4b008f', '402881e45f81056b015f810d3a770004', '保险返点', '3', null, '0', '1');
INSERT INTO `fin_expenses` VALUES ('2c91ea5e65beda910165c27951070091', '402881e45f81056b015f810d3a770004', '补贴', '3', null, '0', '2');
INSERT INTO `fin_expenses` VALUES ('2c91ea5e65beda910165c27981410093', '402881e45f81056b015f810d3a770004', '保险费', '4', null, '0', '1');
INSERT INTO `fin_expenses` VALUES ('2c91ea5e65beda910165c279c8270095', '402881e45f81056b015f810d3a770004', 'GPS费', '4', null, '0', '2');
INSERT INTO `fin_expenses` VALUES ('2c91ea5e65beda910165c27a02660097', '402881e45f81056b015f810d3a770004', '检测费', '4', null, '0', '3');
INSERT INTO `fin_expenses` VALUES ('402881e46141140f0161411fce4a0004', '402881e45f81056b015f810d3a770004', '押金', '1', null, '0', '1');
INSERT INTO `fin_expenses` VALUES ('402881e46141140f0161412056460006', '402881e45f81056b015f810d3a770004', 'GPS管理费', '1', null, '0', '2');
INSERT INTO `fin_expenses` VALUES ('402881e46141140f01614120b2c20008', '402881e45f81056b015f810d3a770004', '二维代办费', '1', null, '0', '3');
INSERT INTO `fin_expenses` VALUES ('402881e46141140f016141214d71000c', '402881e45f81056b015f810d3a770004', '行驶证代办费', '1', null, '0', '4');
INSERT INTO `fin_expenses` VALUES ('402881e46141140f0161412186b1000e', '402881e45f81056b015f810d3a770004', '营运证代办费', '1', null, '0', '5');
INSERT INTO `fin_expenses` VALUES ('402881e46141140f01614121e25d0010', '402881e45f81056b015f810d3a770004', '保险费', '1', null, '0', '6');
INSERT INTO `fin_expenses` VALUES ('402881e46141140f01614121fc800012', '402881e45f81056b015f810d3a770004', '管理费', '1', null, '0', '7');
INSERT INTO `fin_expenses` VALUES ('402881e46141140f0161412239490014', '402881e45f81056b015f810d3a770004', '退押金', '2', null, '0', '1');
INSERT INTO `fin_expenses` VALUES ('402881e46141140f0161412267c10016', '402881e45f81056b015f810d3a770004', '运费', '2', null, '0', '2');
INSERT INTO `fin_expenses` VALUES ('402881ec6a85c810016a87064d710015', '402881e45f81056b015f810d3a770004', '保险赔付金', '3', null, '0', '3');
INSERT INTO `fin_expenses` VALUES ('402881ec6a8a989f016a8a9964b60000', '402881e45f81056b015f810d3a770004', '保险赔付金', '2', null, '0', '3');

-- ----------------------------
-- Table structure for fin_income
-- ----------------------------
DROP TABLE IF EXISTS `fin_income`;
CREATE TABLE `fin_income` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `tenant_id` varchar(32) NOT NULL COMMENT '租户',
  `incomesum_id` varchar(32) DEFAULT NULL COMMENT '收款记录',
  `vehicle_id` varchar(32) NOT NULL COMMENT '车辆',
  `expenses_id` varchar(32) NOT NULL COMMENT '费用类型',
  `income_amount` decimal(10,1) NOT NULL COMMENT '应收金额',
  `discount_amount` decimal(10,1) DEFAULT NULL COMMENT '优惠金额',
  `settle_amount` decimal(10,1) DEFAULT NULL COMMENT '结算金额',
  `end_date` date DEFAULT NULL COMMENT '到期日期',
  `status` varchar(10) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  `settle_by` varchar(50) DEFAULT NULL,
  `settle_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收车辆款';

-- ----------------------------
-- Records of fin_income
-- ----------------------------

-- ----------------------------
-- Table structure for fin_income_sum
-- ----------------------------
DROP TABLE IF EXISTS `fin_income_sum`;
CREATE TABLE `fin_income_sum` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `tenant_id` varchar(32) NOT NULL COMMENT '租户',
  `owner_id` varchar(32) NOT NULL COMMENT '责任人',
  `sn` varchar(50) NOT NULL COMMENT '编号',
  `amount` decimal(10,1) NOT NULL COMMENT '收款金额',
  `way` varchar(10) NOT NULL COMMENT '收款方式',
  `status` varchar(10) NOT NULL COMMENT '状态',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收款记录';

-- ----------------------------
-- Records of fin_income_sum
-- ----------------------------

-- ----------------------------
-- Table structure for fin_income_unit
-- ----------------------------
DROP TABLE IF EXISTS `fin_income_unit`;
CREATE TABLE `fin_income_unit` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `tenant_id` varchar(32) NOT NULL COMMENT '租户',
  `incomeUnitSum_id` varchar(32) DEFAULT NULL COMMENT '收款记录',
  `unit` varchar(32) NOT NULL COMMENT '往来单位',
  `vehicle_id` varchar(32) NOT NULL COMMENT '车辆',
  `expenses_id` varchar(32) NOT NULL COMMENT '费用类型',
  `amount` decimal(10,1) NOT NULL COMMENT '应收金额',
  `status` varchar(10) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `settle_by` varchar(50) DEFAULT NULL COMMENT '核销人',
  `settle_date` datetime DEFAULT NULL COMMENT '核销日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收单位款';

-- ----------------------------
-- Records of fin_income_unit
-- ----------------------------

-- ----------------------------
-- Table structure for fin_income_unit_sum
-- ----------------------------
DROP TABLE IF EXISTS `fin_income_unit_sum`;
CREATE TABLE `fin_income_unit_sum` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `tenant_id` varchar(32) NOT NULL COMMENT '租户',
  `sn` varchar(50) NOT NULL COMMENT '编号',
  `unit` varchar(32) NOT NULL COMMENT '往来单位',
  `expenses_id` varchar(32) NOT NULL,
  `amount` decimal(10,1) NOT NULL COMMENT '收款金额',
  `way` varchar(10) NOT NULL COMMENT '收款方式',
  `status` varchar(10) NOT NULL COMMENT '状态',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `void_by` varchar(50) DEFAULT NULL,
  `void_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收单位款记录';

-- ----------------------------
-- Records of fin_income_unit_sum
-- ----------------------------

-- ----------------------------
-- Table structure for fin_outlay
-- ----------------------------
DROP TABLE IF EXISTS `fin_outlay`;
CREATE TABLE `fin_outlay` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `tenant_id` varchar(32) NOT NULL COMMENT '租户',
  `outlaysum_id` varchar(32) DEFAULT NULL COMMENT '付款记录',
  `vehicle_id` varchar(32) NOT NULL COMMENT '车辆',
  `expenses_id` varchar(32) NOT NULL COMMENT '费用类型',
  `outlay_amount` decimal(10,1) NOT NULL COMMENT '应付金额',
  `settle_amount` decimal(10,1) DEFAULT NULL COMMENT '结算金额',
  `status` varchar(10) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='付车辆款';

-- ----------------------------
-- Records of fin_outlay
-- ----------------------------

-- ----------------------------
-- Table structure for fin_outlay_sum
-- ----------------------------
DROP TABLE IF EXISTS `fin_outlay_sum`;
CREATE TABLE `fin_outlay_sum` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `tenant_id` varchar(32) NOT NULL COMMENT '租户',
  `owner_id` varchar(32) NOT NULL COMMENT '责任人',
  `sn` varchar(50) NOT NULL COMMENT '编号',
  `amount` decimal(10,1) NOT NULL COMMENT '付款金额',
  `way` varchar(10) NOT NULL COMMENT '付款方式',
  `status` varchar(10) NOT NULL COMMENT '状态',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='付款记录';

-- ----------------------------
-- Records of fin_outlay_sum
-- ----------------------------

-- ----------------------------
-- Table structure for fin_outlay_unit
-- ----------------------------
DROP TABLE IF EXISTS `fin_outlay_unit`;
CREATE TABLE `fin_outlay_unit` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `tenant_id` varchar(32) NOT NULL COMMENT '租户',
  `outlayUnitSum_id` varchar(32) DEFAULT NULL COMMENT '付款记录',
  `unit` varchar(32) NOT NULL COMMENT '往来单位',
  `vehicle_id` varchar(32) NOT NULL COMMENT '车辆',
  `expenses_id` varchar(32) NOT NULL COMMENT '费用类型',
  `amount` decimal(10,1) NOT NULL COMMENT '应付金额',
  `status` varchar(10) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `settle_by` varchar(50) DEFAULT NULL COMMENT '核销人',
  `settle_date` datetime DEFAULT NULL COMMENT '核销日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='付单位款';

-- ----------------------------
-- Records of fin_outlay_unit
-- ----------------------------

-- ----------------------------
-- Table structure for fin_outlay_unit_sum
-- ----------------------------
DROP TABLE IF EXISTS `fin_outlay_unit_sum`;
CREATE TABLE `fin_outlay_unit_sum` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `tenant_id` varchar(32) NOT NULL COMMENT '租户',
  `sn` varchar(50) NOT NULL COMMENT '编号',
  `unit` varchar(32) NOT NULL COMMENT '往来单位',
  `expenses_id` varchar(32) NOT NULL COMMENT '费用类型',
  `amount` decimal(10,1) NOT NULL COMMENT '付款金额',
  `way` varchar(10) NOT NULL COMMENT '付款方式',
  `status` varchar(10) NOT NULL COMMENT '状态',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `void_by` varchar(50) DEFAULT NULL COMMENT '作废人',
  `void_date` datetime DEFAULT NULL COMMENT '作废日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='付单位款记录';

-- ----------------------------
-- Records of fin_outlay_unit_sum
-- ----------------------------

-- ----------------------------
-- Table structure for ins_insurance
-- ----------------------------
DROP TABLE IF EXISTS `ins_insurance`;
CREATE TABLE `ins_insurance` (
  `id` varchar(32) NOT NULL,
  `tenant_id` varchar(32) NOT NULL COMMENT '租户',
  `vehicle_id` varchar(32) NOT NULL COMMENT '车辆',
  `type` varchar(10) NOT NULL COMMENT '保险类型',
  `ins_company` varchar(32) NOT NULL COMMENT '保险公司',
  `start_date` date NOT NULL COMMENT '生效日期',
  `end_date` date NOT NULL COMMENT '到期日期',
  `premium` decimal(10,1) DEFAULT NULL COMMENT '保费',
  `vavt` decimal(10,1) DEFAULT NULL,
  `status` varchar(10) NOT NULL COMMENT '状态',
  `warn` varchar(10) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='车辆保险';

-- ----------------------------
-- Records of ins_insurance
-- ----------------------------

-- ----------------------------
-- Table structure for ins_insurance_kind
-- ----------------------------
DROP TABLE IF EXISTS `ins_insurance_kind`;
CREATE TABLE `ins_insurance_kind` (
  `id` varchar(32) NOT NULL,
  `tenant_id` varchar(32) NOT NULL COMMENT '租户',
  `insurance_id` varchar(32) NOT NULL COMMENT '保险',
  `ins_kind` varchar(32) NOT NULL COMMENT '投保险种',
  `ins_amount` decimal(10,1) DEFAULT NULL COMMENT '保额',
  `premium` decimal(10,1) DEFAULT NULL COMMENT '保费',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='车辆保险';

-- ----------------------------
-- Records of ins_insurance_kind
-- ----------------------------

-- ----------------------------
-- Table structure for loan_contract
-- ----------------------------
DROP TABLE IF EXISTS `loan_contract`;
CREATE TABLE `loan_contract` (
  `id` varchar(32) NOT NULL,
  `tenant_id` varchar(32) NOT NULL COMMENT '租户',
  `sn` varchar(50) NOT NULL COMMENT '编号',
  `owner_id` varchar(32) NOT NULL COMMENT '责任人',
  `principal` decimal(10,1) NOT NULL COMMENT '借款金额',
  `rate` decimal(10,2) NOT NULL COMMENT '利率',
  `interest` decimal(10,1) NOT NULL COMMENT '利息',
  `total_amount` decimal(10,1) NOT NULL COMMENT '总计金额',
  `period` int(11) NOT NULL COMMENT '期数',
  `start_date` date NOT NULL COMMENT '起息日',
  `repayment_type` varchar(10) NOT NULL COMMENT '还款方式',
  `real_principal` decimal(10,1) NOT NULL COMMENT '已还本金',
  `real_interest` decimal(10,1) NOT NULL COMMENT '已还利息',
  `real_total_amount` decimal(10,1) NOT NULL COMMENT '逾期金额',
  `owe_amount` decimal(10,1) NOT NULL,
  `status` varchar(10) NOT NULL COMMENT '状态',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='借款合同';

-- ----------------------------
-- Records of loan_contract
-- ----------------------------

-- ----------------------------
-- Table structure for loan_loan
-- ----------------------------
DROP TABLE IF EXISTS `loan_loan`;
CREATE TABLE `loan_loan` (
  `id` varchar(32) NOT NULL,
  `tenant_id` varchar(32) NOT NULL COMMENT '租户',
  `sn` varchar(50) NOT NULL COMMENT '编号',
  `loan_contract_id` varchar(32) NOT NULL COMMENT '借款合同',
  `period` int(11) NOT NULL COMMENT '期数',
  `total_amount` decimal(10,1) NOT NULL COMMENT '应还总额',
  `principal` decimal(10,1) NOT NULL COMMENT '应还本金',
  `interest` decimal(10,1) NOT NULL COMMENT '应还本金',
  `real_principal` decimal(10,1) NOT NULL COMMENT '实还本金',
  `real_interest` decimal(10,1) NOT NULL COMMENT '实还利息',
  `real_total_amount` decimal(10,1) NOT NULL COMMENT '实还金额',
  `owe_amount` decimal(10,1) NOT NULL,
  `end_date` date NOT NULL COMMENT '到期日期',
  `status` varchar(10) NOT NULL COMMENT '状态',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='借款';

-- ----------------------------
-- Records of loan_loan
-- ----------------------------

-- ----------------------------
-- Table structure for loan_repayment
-- ----------------------------
DROP TABLE IF EXISTS `loan_repayment`;
CREATE TABLE `loan_repayment` (
  `id` varchar(32) NOT NULL,
  `tenant_id` varchar(32) NOT NULL COMMENT '租户',
  `loan_id` varchar(32) NOT NULL COMMENT '贷款',
  `principal` decimal(10,1) NOT NULL COMMENT '还款金额',
  `interest` decimal(10,1) NOT NULL COMMENT '还款金额',
  `total_amount` decimal(10,1) NOT NULL COMMENT '还款金额',
  `status` varchar(10) NOT NULL COMMENT '状态',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='还款';

-- ----------------------------
-- Records of loan_repayment
-- ----------------------------

-- ----------------------------
-- Table structure for manage_education
-- ----------------------------
DROP TABLE IF EXISTS `manage_education`;
CREATE TABLE `manage_education` (
  `id` varchar(32) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT '课程名称',
  `type` varchar(10) NOT NULL COMMENT '分类',
  `duration` int(5) NOT NULL COMMENT '课程时长',
  `status` varchar(10) NOT NULL COMMENT '状态',
  `content` longtext NOT NULL COMMENT '内容',
  `cover` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manage_education
-- ----------------------------

-- ----------------------------
-- Table structure for manage_log
-- ----------------------------
DROP TABLE IF EXISTS `manage_log`;
CREATE TABLE `manage_log` (
  `id` varchar(32) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `content` varchar(1500) NOT NULL,
  `operate_type` varchar(10) NOT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `operate_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manage_log
-- ----------------------------
INSERT INTO `manage_log` VALUES ('402881ed6e58121b016e586065d20020', 'zhangzhichao', '管理员:zhangzhichao,登陆成功', '1', '127.0.0.1', '2019-11-11 10:52:23');
INSERT INTO `manage_log` VALUES ('402881ed6e586435016e586494ba0000', 'zhangzhichao', '管理员:zhangzhichao,登陆成功', '1', '127.0.0.1', '2019-11-11 10:56:57');

-- ----------------------------
-- Table structure for manage_menu
-- ----------------------------
DROP TABLE IF EXISTS `manage_menu`;
CREATE TABLE `manage_menu` (
  `id` varchar(32) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(10) NOT NULL,
  `level` int(5) NOT NULL,
  `menu_order` int(5) NOT NULL,
  `url` varchar(100) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `pid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manage_menu
-- ----------------------------
INSERT INTO `manage_menu` VALUES ('2c91ea5e65beda910165bedc4c8c0002', '收单位款', '0', '1', '3', 'incomeUnitController.do?index', null, 'ff8080815f422492015f422675e90002');
INSERT INTO `manage_menu` VALUES ('2c91ea5e65beda910165bedd199d0004', '付单位款', '0', '1', '4', 'outlayUnitController.do?index', null, 'ff8080815f422492015f422675e90002');
INSERT INTO `manage_menu` VALUES ('2c91ea5e65beda910165d5dfe8cf0397', '统计报表', '0', '0', '7', null, 'fa-bar-chart', null);
INSERT INTO `manage_menu` VALUES ('2c91ea5e65beda910165d5e041150399', '财务报表', '0', '1', '1', null, null, '2c91ea5e65beda910165d5dfe8cf0397');
INSERT INTO `manage_menu` VALUES ('2c91ea5e65beda910165d5e08499039b', '车辆报表', '0', '1', '2', 'rptVehicleController.do?index', null, '2c91ea5e65beda910165d5dfe8cf0397');
INSERT INTO `manage_menu` VALUES ('402881e45f7f7182015f7f729e220001', '租户账单', '1', '1', '3', 'billController.do?manageIndex', null, '402886325bf05a9e015bf05c60590001');
INSERT INTO `manage_menu` VALUES ('402881e4602987f101602995ae200003', '保险到期', '0', '1', '3', 'insuranceWarnController.do?index', null, 'ff8080815e991de8015e993a1c2d0008');
INSERT INTO `manage_menu` VALUES ('402881e4604a4e4601604a5b87ff0002', '借款管理', '0', '0', '5', null, 'fa-calculator', null);
INSERT INTO `manage_menu` VALUES ('402881e4604d862a01604d8b6e5f0001', '借款合同', '0', '1', '1', 'loanContractController.do?index', null, '402881e4604a4e4601604a5b87ff0002');
INSERT INTO `manage_menu` VALUES ('402881e4604d862a01604d8d09720003', '到期还款', '0', '1', '2', 'loanController.do?index', null, '402881e4604a4e4601604a5b87ff0002');
INSERT INTO `manage_menu` VALUES ('402881e4604d862a01604d8dcba90005', '还款记录', '0', '1', '3', 'loanRepaymentController.do?index', null, '402881e4604a4e4601604a5b87ff0002');
INSERT INTO `manage_menu` VALUES ('402881e46101d38701610384658f0009', '财务到期', '0', '1', '4', 'incomeWarnController.do?index', null, 'ff8080815e991de8015e993a1c2d0008');
INSERT INTO `manage_menu` VALUES ('402881e4611645cf016116684c840003', '付车辆款', '0', '1', '2', 'outlayController.do?index', null, 'ff8080815f422492015f422675e90002');
INSERT INTO `manage_menu` VALUES ('402881e46131f63a016131fd016b0002', '借款到期', '0', '1', '5', 'loanWarnController.do?index', null, 'ff8080815e991de8015e993a1c2d0008');
INSERT INTO `manage_menu` VALUES ('402881e56208d7050162093fa9740001', '安全教育', '1', '0', '104', null, 'fa-umbrella', null);
INSERT INTO `manage_menu` VALUES ('402881e56208d7050162094cf07b0009', '安全教育', '1', '1', '1', 'safeEducationController.do?index', null, '402881e56208d7050162093fa9740001');
INSERT INTO `manage_menu` VALUES ('402881e5622db4a801622db76c090002', '试题管理', '1', '1', '2', 'questionController.do?index', null, '402881e56208d7050162093fa9740001');
INSERT INTO `manage_menu` VALUES ('402881e5628075bd016280815adc0001', '试卷管理', '1', '1', '3', 'paperController.do?index', null, '402881e56208d7050162093fa9740001');
INSERT INTO `manage_menu` VALUES ('402881e5629d482901629d77a49c0004', '安全管理', '0', '0', '2', null, 'fa-umbrella', null);
INSERT INTO `manage_menu` VALUES ('402881e5629d482901629d7cb09d000e', '事故记录', '0', '1', '1', 'accidentController.do?index', null, '402881e5629d482901629d77a49c0004');
INSERT INTO `manage_menu` VALUES ('402881e76a90c71d016a90e7b33e0005', '应收车辆款报表', '0', '2', '1', 'rptIncomingController.do?index', null, '2c91ea5e65beda910165d5e041150399');
INSERT INTO `manage_menu` VALUES ('402881e76a90c71d016a90e86e130007', '已收车辆款报表', '0', '2', '2', 'rptIncomedController.do?index', null, '2c91ea5e65beda910165d5e041150399');
INSERT INTO `manage_menu` VALUES ('402881e76a90c71d016a90e8ed530009', '应付车辆款报表', '0', '2', '3', null, null, '2c91ea5e65beda910165d5e041150399');
INSERT INTO `manage_menu` VALUES ('402881e76a90c71d016a90e934c3000b', '已付车辆款报表', '0', '2', '4', null, null, '2c91ea5e65beda910165d5e041150399');
INSERT INTO `manage_menu` VALUES ('402881e76a90c71d016a90ec39ea000d', '应收单位款报表', '0', '2', '5', null, null, '2c91ea5e65beda910165d5e041150399');
INSERT INTO `manage_menu` VALUES ('402881e76a90c71d016a90ec8b52000f', '已收单位款报表', '0', '2', '6', null, null, '2c91ea5e65beda910165d5e041150399');
INSERT INTO `manage_menu` VALUES ('402881e76a90c71d016a90ed15840011', '应付单位款报表', '0', '2', '7', null, null, '2c91ea5e65beda910165d5e041150399');
INSERT INTO `manage_menu` VALUES ('402881e76a90c71d016a90ed60ca0013', '已付单位款报表', '0', '2', '8', null, null, '2c91ea5e65beda910165d5e041150399');
INSERT INTO `manage_menu` VALUES ('4028863157addb8c0157ade1e15b0001', '后台管理', '1', '0', '100', null, 'fa-cog', null);
INSERT INTO `manage_menu` VALUES ('4028863158285237015828f5e4c00001', '档案管理', '0', '0', '6', null, 'fa-file-text-o', null);
INSERT INTO `manage_menu` VALUES ('4028863158285237015828f69d1d0003', '车辆档案', '0', '1', '3', 'vehicleController.do?index', null, '4028863158285237015828f5e4c00001');
INSERT INTO `manage_menu` VALUES ('402886315a5ea680015a5f940b170002', '数据字典', '1', '1', '2', 'dictGroupController.do?index', null, '4028863157addb8c0157ade1e15b0001');
INSERT INTO `manage_menu` VALUES ('402886315a63ac5e015a63adfe840001', '管理员日志', '1', '1', '5', 'manageLogController.do?index', null, 'ff8080815f579c79015f579e26050001');
INSERT INTO `manage_menu` VALUES ('402886325bd13be6015bd13bf13a0000', '数据监控', '1', '1', '4', 'druid/', null, 'ff8080815f579c79015f579e26050001');
INSERT INTO `manage_menu` VALUES ('402886325bf05a9e015bf05c60590001', '租户管理', '1', '0', '103', null, 'fa-object-group', null);
INSERT INTO `manage_menu` VALUES ('402886325bf05a9e015bf05eae0e0004', '租户管理', '1', '1', '1', 'tenantController.do?index', null, '402886325bf05a9e015bf05c60590001');
INSERT INTO `manage_menu` VALUES ('402886325c1fdccc015c1ff3c0c50001', '分类配置', '0', '1', '2', 'dictController.do?dictGroupIndex', null, '8a8ab0b246dc81120146dc8180d2001a');
INSERT INTO `manage_menu` VALUES ('402886325c4275ac015c4278cb9b0003', '档案扩展', '0', '1', '4', 'arcExtController.do?index', null, '4028863158285237015828f5e4c00001');
INSERT INTO `manage_menu` VALUES ('402886325ca5f98a015ca60ce9350003', '系统日志', '0', '1', '4', 'logController.do?index', null, '8a8ab0b246dc81120146dc8180d2001a');
INSERT INTO `manage_menu` VALUES ('402886325ce91582015ce91f08120001', '提醒类型', '0', '1', '6', 'warnTypeController.do?index', null, 'ff8080815e991de8015e993a1c2d0008');
INSERT INTO `manage_menu` VALUES ('402886325d07c86d015d07d0f4f00001', '定时任务', '1', '1', '6', 'scheduleJobController.do?index', null, 'ff8080815f579c79015f579f713d0005');
INSERT INTO `manage_menu` VALUES ('402886325dcba999015dcbab5be60001', '定时任务日志', '1', '1', '7', 'scheduleJobLogController.do?index', null, 'ff8080815f579c79015f579f713d0005');
INSERT INTO `manage_menu` VALUES ('402886325e17014f015e17050fd50004', '系统公告', '1', '1', '8', 'noticeController.do?index', null, '4028863157addb8c0157ade1e15b0001');
INSERT INTO `manage_menu` VALUES ('40289ff95bb8c42e015bb8d09e5d0004', '管理员', '1', '1', '1', 'manageUserController.do?index', null, '4028863157addb8c0157ade1e15b0001');
INSERT INTO `manage_menu` VALUES ('8a8ab0b246dc81120146dc8180d2001a', '系统管理', '0', '0', '8', null, 'fa-cog', null);
INSERT INTO `manage_menu` VALUES ('8a8ab0b246dc81120146dc8180df001f', '用户管理', '0', '1', '1', 'userController.do?index', null, '8a8ab0b246dc81120146dc8180d2001a');
INSERT INTO `manage_menu` VALUES ('8a8ab0b246dc81120146dc8180e70023', '菜单管理', '1', '1', '3', 'menuController.do?menuIndex', null, '4028863157addb8c0157ade1e15b0001');
INSERT INTO `manage_menu` VALUES ('ff8080815e6997af015e699cf3e70003', '责任人档案', '0', '1', '1', 'ownerController.do?index', null, '4028863158285237015828f5e4c00001');
INSERT INTO `manage_menu` VALUES ('ff8080815e7a20f4015e7a233ece0005', '司机档案', '0', '1', '2', 'driverController.do?index', null, '4028863158285237015828f5e4c00001');
INSERT INTO `manage_menu` VALUES ('ff8080815e991de8015e993a1c2d0008', '到期提醒', '0', '0', '1', null, 'fa-bell', null);
INSERT INTO `manage_menu` VALUES ('ff8080815e991de8015e993a8a5e000b', '车辆到期', '0', '1', '1', 'vehicleWarnController.do?index', null, 'ff8080815e991de8015e993a1c2d0008');
INSERT INTO `manage_menu` VALUES ('ff8080815ed05b2b015ed05df9130002', '租户充值', '1', '1', '2', 'rechargeController.do?index', null, '402886325bf05a9e015bf05c60590001');
INSERT INTO `manage_menu` VALUES ('ff8080815edac8e9015edaca1aba0001', '账单明细', '0', '1', '6', 'billController.do?index', null, '8a8ab0b246dc81120146dc8180d2001a');
INSERT INTO `manage_menu` VALUES ('ff8080815ee6cf5a015ee6d059140001', '保险管理', '0', '0', '3', null, 'fa-shield', null);
INSERT INTO `manage_menu` VALUES ('ff8080815ee6cf5a015ee6d19e6b0006', '车辆保险', '0', '1', '1', 'insuranceController.do?index', null, 'ff8080815ee6cf5a015ee6d059140001');
INSERT INTO `manage_menu` VALUES ('ff8080815f422492015f422675e90002', '财务管理', '0', '0', '4', null, 'fa-cny', null);
INSERT INTO `manage_menu` VALUES ('ff8080815f422492015f4226e3e00004', '费用类型', '0', '1', '5', 'expensesController.do?index', null, 'ff8080815f422492015f422675e90002');
INSERT INTO `manage_menu` VALUES ('ff8080815f4bcadb015f4bd102540001', '收车辆款', '0', '1', '1', 'incomeController.do?index', null, 'ff8080815f422492015f422675e90002');
INSERT INTO `manage_menu` VALUES ('ff8080815f579c79015f579e26050001', '系统监控', '1', '0', '101', null, 'fa-desktop', null);
INSERT INTO `manage_menu` VALUES ('ff8080815f579c79015f579f713d0005', '定时任务', '1', '0', '102', null, 'fa-tasks', null);

-- ----------------------------
-- Table structure for manage_notice
-- ----------------------------
DROP TABLE IF EXISTS `manage_notice`;
CREATE TABLE `manage_notice` (
  `id` varchar(32) NOT NULL,
  `title` varchar(50) NOT NULL COMMENT '标题',
  `content` longtext NOT NULL COMMENT '内容',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manage_notice
-- ----------------------------

-- ----------------------------
-- Table structure for manage_paper
-- ----------------------------
DROP TABLE IF EXISTS `manage_paper`;
CREATE TABLE `manage_paper` (
  `id` varchar(32) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT '试卷名称',
  `type` varchar(10) NOT NULL COMMENT '分类',
  `status` varchar(10) NOT NULL COMMENT '状态',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manage_paper
-- ----------------------------

-- ----------------------------
-- Table structure for manage_paper_question
-- ----------------------------
DROP TABLE IF EXISTS `manage_paper_question`;
CREATE TABLE `manage_paper_question` (
  `paper_id` varchar(32) DEFAULT NULL,
  `question_id` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manage_paper_question
-- ----------------------------

-- ----------------------------
-- Table structure for manage_question
-- ----------------------------
DROP TABLE IF EXISTS `manage_question`;
CREATE TABLE `manage_question` (
  `id` varchar(32) NOT NULL,
  `qdb` varchar(10) NOT NULL COMMENT '题库',
  `status` varchar(10) NOT NULL COMMENT '状态',
  `content` longtext NOT NULL COMMENT '内容',
  `answer` varchar(5) NOT NULL COMMENT '答案',
  `resolve` varchar(255) DEFAULT NULL COMMENT '解析',
  `option_data` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manage_question
-- ----------------------------

-- ----------------------------
-- Table structure for manage_recharge
-- ----------------------------
DROP TABLE IF EXISTS `manage_recharge`;
CREATE TABLE `manage_recharge` (
  `id` varchar(32) NOT NULL,
  `tenant_id` varchar(32) NOT NULL COMMENT '租户',
  `amount` decimal(10,1) NOT NULL COMMENT '金额',
  `way` varchar(10) NOT NULL COMMENT '交费方式',
  `recharge_date` date NOT NULL COMMENT '交费日期',
  `status` varchar(10) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='租户交费';

-- ----------------------------
-- Records of manage_recharge
-- ----------------------------

-- ----------------------------
-- Table structure for manage_safe_education
-- ----------------------------
DROP TABLE IF EXISTS `manage_safe_education`;
CREATE TABLE `manage_safe_education` (
  `id` varchar(32) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT '课程名称',
  `type` varchar(10) NOT NULL COMMENT '分类',
  `duration` int(5) NOT NULL COMMENT '课程时长',
  `status` varchar(10) NOT NULL COMMENT '状态',
  `content` longtext NOT NULL COMMENT '内容',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manage_safe_education
-- ----------------------------

-- ----------------------------
-- Table structure for manage_safe_option
-- ----------------------------
DROP TABLE IF EXISTS `manage_safe_option`;
CREATE TABLE `manage_safe_option` (
  `id` varchar(32) NOT NULL,
  `question_id` varchar(32) NOT NULL COMMENT '试题',
  `sn` varchar(50) NOT NULL COMMENT '序号',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manage_safe_option
-- ----------------------------

-- ----------------------------
-- Table structure for manage_safe_question
-- ----------------------------
DROP TABLE IF EXISTS `manage_safe_question`;
CREATE TABLE `manage_safe_question` (
  `id` varchar(32) NOT NULL,
  `qdb` varchar(10) NOT NULL COMMENT '题库',
  `status` varchar(10) NOT NULL COMMENT '状态',
  `content` longtext NOT NULL COMMENT '内容',
  `answer` varchar(5) NOT NULL COMMENT '答案',
  `resolve` varchar(255) DEFAULT NULL COMMENT '解析',
  `option_data` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manage_safe_question
-- ----------------------------

-- ----------------------------
-- Table structure for manage_schedule_job
-- ----------------------------
DROP TABLE IF EXISTS `manage_schedule_job`;
CREATE TABLE `manage_schedule_job` (
  `id` varchar(32) NOT NULL,
  `job_name` varchar(50) NOT NULL COMMENT '任务名称',
  `bean_name` varchar(50) NOT NULL COMMENT 'bean名称',
  `method_name` varchar(50) NOT NULL COMMENT '方法名称',
  `params` varchar(50) DEFAULT NULL COMMENT '参数',
  `cron_expression` varchar(50) NOT NULL COMMENT '表达式',
  `status` varchar(10) NOT NULL COMMENT '状态',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manage_schedule_job
-- ----------------------------
INSERT INTO `manage_schedule_job` VALUES ('2c91ea5e65beda910165e68eb2d404b2', '计算车辆动态报表数据', 'jobExecuteService', 'calRptVehicleDynamicData', null, '0 7 1 1/1 * ?', '0', null);
INSERT INTO `manage_schedule_job` VALUES ('2c91ea5e65beda910165e6900dd504b4', '计算车辆状态报表数据', 'jobExecuteService', 'calRptVehicleStatusData', null, '0 8 1 1/1 * ?', '0', null);
INSERT INTO `manage_schedule_job` VALUES ('402881e45f7ff887015f8009008c0002', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0 0 1 1/1 * ?', '0', null);
INSERT INTO `manage_schedule_job` VALUES ('402881e45f7ff887015f800bb13c0005', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0 1 1 1/1 * ?', '0', null);
INSERT INTO `manage_schedule_job` VALUES ('402881e45f7ff887015f800c84700007', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0 2 1 1/1 * ?', '0', null);
INSERT INTO `manage_schedule_job` VALUES ('402881e46163ad8f016163b130c30002', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '0 4 1 1/1 * ?', '0', null);
INSERT INTO `manage_schedule_job` VALUES ('402881e46163ad8f016163b311340009', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0 5 1 1/1 * ?', '0', null);
INSERT INTO `manage_schedule_job` VALUES ('402881e46163ad8f016163b3d0b3000b', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0 6 1 1/1 * ?', '0', null);
INSERT INTO `manage_schedule_job` VALUES ('402881e55fe10f92015fe112018a0001', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0 3 1 1/1 * ?', '0', null);
INSERT INTO `manage_schedule_job` VALUES ('402881e6647df35401647dff2cbb0002', '注销责任人', 'jobExecuteService', 'disableOwner', null, '0 7 1 L * ?', '0', null);
INSERT INTO `manage_schedule_job` VALUES ('402881e6647df35401647e00f76f0005', '注销司机', 'jobExecuteService', 'disableDriver', null, '0 8 1 L * ?', '0', null);

-- ----------------------------
-- Table structure for manage_schedule_job_log
-- ----------------------------
DROP TABLE IF EXISTS `manage_schedule_job_log`;
CREATE TABLE `manage_schedule_job_log` (
  `id` varchar(32) NOT NULL,
  `job_name` varchar(50) NOT NULL COMMENT '任务名称',
  `bean_name` varchar(50) NOT NULL COMMENT 'bean名称',
  `method_name` varchar(50) NOT NULL COMMENT '方法名称',
  `params` varchar(50) DEFAULT NULL COMMENT '参数',
  `status` varchar(10) NOT NULL COMMENT '状态',
  `error` varchar(255) DEFAULT NULL COMMENT '失败信息',
  `times` int(11) DEFAULT NULL COMMENT '耗时',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manage_schedule_job_log
-- ----------------------------
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a0164f1483ac60000', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '26', '2018-08-01 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a0164f14a0f950001', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '70', '2018-08-01 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a0164f14be44e0002', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '61', '2018-08-01 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a0164f14db9c10003', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '242', '2018-08-01 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a0164f66f81050004', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '21', '2018-08-02 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a0164f67155bd0005', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '12', '2018-08-02 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a0164f674154d0006', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '128', '2018-08-02 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a0164fb95dcfe0007', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '7', '2018-08-03 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a0164fb97b1b30008', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '7', '2018-08-03 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a0164fb9986b00009', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '67', '2018-08-03 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a016500bb4e94000a', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '7', '2018-08-04 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a016500bd2361000b', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '18', '2018-08-04 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a016500bef822000c', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '21', '2018-08-04 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a016500c0cd4d000d', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '130', '2018-08-04 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a016505e1aa91000e', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '3', '2018-08-05 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a016505e55426000f', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '21', '2018-08-05 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a016505e63e8c0010', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '30', '2018-08-05 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a01650b08069a0011', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '8', '2018-08-06 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a01650b09db620012', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '20', '2018-08-06 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a01650b0bb0230013', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '24', '2018-08-06 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a01650b0d85390014', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '102', '2018-08-06 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a0165102f4cee0015', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '4', '2018-08-07 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a0165103121b70016', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '12', '2018-08-07 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a01651032f6920017', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '35', '2018-08-07 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a01651554be980018', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '8', '2018-08-08 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a0165155693670019', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '27', '2018-08-08 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a016515586820001a', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '21', '2018-08-08 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a0165155a3d36001b', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '105', '2018-08-08 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a01651a7c04f3001c', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '4', '2018-08-09 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a01651a7cef73001d', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '34', '2018-08-09 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a01651a7ec41e001e', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '15', '2018-08-09 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a01651a809939001f', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '102', '2018-08-09 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a01651fa176930020', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '6', '2018-08-10 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a01651fa34b610021', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '22', '2018-08-10 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a01651fa435b10022', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '4', '2018-08-10 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a01651fa60a8e0023', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '30', '2018-08-10 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a016524c7d2930024', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '5', '2018-08-11 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a016524c8bcf70025', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '8', '2018-08-11 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a016524ca91b00026', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '5', '2018-08-11 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a016524cc66890027', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '29', '2018-08-11 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a016529ef18f60028', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '4', '2018-08-12 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a016529f0035d0029', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '18', '2018-08-12 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a016529f1d81f002a', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '20', '2018-08-12 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a016529f3ad3f002b', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '116', '2018-08-12 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a01652f148aa0002c', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '2', '2018-08-13 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a01652f1749b3002d', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '7', '2018-08-13 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a01652f191e90002e', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '37', '2018-08-13 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a0165343bd0f2002f', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '2', '2018-08-14 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a0165343da5b50030', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '6', '2018-08-14 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a0165343f7a920031', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '32', '2018-08-14 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a0165396142910032', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '2', '2018-08-15 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a0165396317690033', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '25', '2018-08-15 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a01653964ec1f0034', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '14', '2018-08-15 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a01653966c12c0035', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '93', '2018-08-15 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a01653e879e920036', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '7', '2018-08-16 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a01653e8973660037', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '26', '2018-08-16 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a01653e8b48190038', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '11', '2018-08-16 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a01653e8d1d250039', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '90', '2018-08-16 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a016543aee4f1003a', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '3', '2018-08-17 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a016543b0b9b3003b', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '4', '2018-08-17 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a016543b28e86003c', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '27', '2018-08-17 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a016548d4568f003d', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '5', '2018-08-18 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a016548d62b5b003e', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '17', '2018-08-18 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a016548d8001c003f', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '12', '2018-08-18 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a016548d8ea900040', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '34', '2018-08-18 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a01654dfab29d0041', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '16', '2018-08-19 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a01654dfc87650042', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '22', '2018-08-19 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a01654dfe5c1b0043', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '12', '2018-08-19 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a01654e00311c0044', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '72', '2018-08-19 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a01655321f8ef0045', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '2', '2018-08-20 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a01655323cdb10046', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '3', '2018-08-20 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a01655325a2940047', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '25', '2018-08-20 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a0165584854f50048', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '8', '2018-08-21 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a0165584a29b30049', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '6', '2018-08-21 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a0165584bfe80004a', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '21', '2018-08-21 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a01655d6eb0f7004b', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '6', '2018-08-22 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a01655d7085b1004c', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '2', '2018-08-22 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a01655d725a89004d', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '25', '2018-08-22 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a016562942294004e', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '3', '2018-08-23 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a01656295f758004f', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '10', '2018-08-23 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1483a01656297cc200050', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '14', '2018-08-23 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f149250164f14925740000', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '110', '2018-08-01 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f149250164f14af9d20001', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '36', '2018-08-01 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f149250164f14ccf170002', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '165', '2018-08-01 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f149250164f66e96a20003', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '19', '2018-08-02 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f149250164f6706b830004', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '57', '2018-08-02 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f149250164f672403d0005', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '50', '2018-08-02 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f149250164f6732aa70006', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '55', '2018-08-02 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f149250164fb94f29c0007', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '8', '2018-08-03 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f149250164fb96c7730008', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '33', '2018-08-03 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f149250164fb989c3f0009', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '39', '2018-08-03 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f149250164fb9a71f5000a', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '290', '2018-08-03 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f14925016500bc38fe000b', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '9', '2018-08-04 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f14925016500be0db9000c', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '7', '2018-08-04 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f14925016500bfe29d000d', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '47', '2018-08-04 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f14925016505e294f9000e', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '10', '2018-08-05 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f14925016505e37f64000f', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '20', '2018-08-05 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f14925016505e469b90010', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '13', '2018-08-05 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f14925016505e729a40011', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '212', '2018-08-05 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1492501650b08f0f20012', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '3', '2018-08-06 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1492501650b0ac5b40013', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '2', '2018-08-06 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1492501650b0c9aa00014', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '48', '2018-08-06 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f149250165102e62940015', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '3', '2018-08-07 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1492501651030376d0016', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '25', '2018-08-07 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f14925016510320c220017', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '18', '2018-08-07 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1492501651033e14b0018', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '125', '2018-08-07 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1492501651555a8f90019', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '8', '2018-08-08 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f14925016515577db9001a', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '10', '2018-08-08 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f14925016515595293001b', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '35', '2018-08-08 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1492501651a7b1a98001c', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '2', '2018-08-09 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1492501651a7dd9b4001d', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '6', '2018-08-09 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1492501651a7fae8e001e', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '35', '2018-08-09 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1492501651fa260f8001f', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '9', '2018-08-10 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1492501651fa520230020', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '22', '2018-08-10 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1492501651fa6f5470021', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '123', '2018-08-10 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f14925016524c9a7690022', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '22', '2018-08-11 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f14925016524cb7c230023', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '15', '2018-08-11 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f14925016524cd51670024', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '152', '2018-08-11 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f14925016529ee2e990025', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '11', '2018-08-12 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f14925016529f0edb40026', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '4', '2018-08-12 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f14925016529f2c2940027', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '36', '2018-08-12 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1492501652f1574f10028', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '7', '2018-08-13 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1492501652f165f670029', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '22', '2018-08-13 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1492501652f18341f002a', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '13', '2018-08-13 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1492501652f1a097a002b', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '141', '2018-08-13 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f149250165343ae68f002c', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '4', '2018-08-14 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f149250165343cbb88002d', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '61', '2018-08-14 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f149250165343e901a002e', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '14', '2018-08-14 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1492501653440655e002f', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '142', '2018-08-14 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f14925016539622cf40030', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '6', '2018-08-15 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f149250165396401b50031', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '8', '2018-08-15 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1492501653965d6990032', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '43', '2018-08-15 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1492501653e8888f10033', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '2', '2018-08-16 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1492501653e8a5dc00034', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '12', '2018-08-16 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1492501653e8c32930035', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '34', '2018-08-16 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f14925016543adfa940036', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '4', '2018-08-17 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f14925016543afcf6a0037', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '25', '2018-08-17 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f14925016543b1a4220038', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '19', '2018-08-17 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f14925016543b3794c0039', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '123', '2018-08-17 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f14925016548d540f3003a', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '3', '2018-08-18 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f14925016548d715be003b', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '10', '2018-08-18 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f14925016548d9d539003c', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '111', '2018-08-18 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1492501654dfb9cf1003d', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '4', '2018-08-19 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1492501654dfd71b8003e', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '13', '2018-08-19 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1492501654dff4686003f', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '25', '2018-08-19 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f14925016553210e8e0040', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '4', '2018-08-20 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1492501655322e3610041', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '22', '2018-08-20 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1492501655324b8190042', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '15', '2018-08-20 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f14925016553268d360043', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '105', '2018-08-20 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f14925016558476a910044', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '2', '2018-08-21 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f14925016558493f620045', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '19', '2018-08-21 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f149250165584b141f0046', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '17', '2018-08-21 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f149250165584ce92c0047', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '92', '2018-08-21 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1492501655d6dc68f0048', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '4', '2018-08-22 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1492501655d6f9b660049', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '24', '2018-08-22 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1492501655d717019004a', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '13', '2018-08-22 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1492501655d73452c004b', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '95', '2018-08-22 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f14925016562950cf0004c', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '5', '2018-08-23 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1492501656296e1af004d', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '5', '2018-08-23 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1492501656298b687004e', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '28', '2018-08-23 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e64f1492501656299a12f004f', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '92', '2018-08-23 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65655c400165655c40b30000', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '0', null, '175', '2018-08-23 13:57:49');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65655c400165655c40f90001', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '181', '2018-08-23 13:57:49');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65655c8f0165655c8fce0000', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '596', '2018-08-23 13:58:09');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65655c8f01656569c4310001', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '26', '2018-08-23 14:12:35');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f016567ba7f020000', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '98', '2018-08-24 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f016567bc53d80001', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '135', '2018-08-24 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f016567be29120002', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '0', null, '258', '2018-08-24 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f016567bffee60003', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '525', '2018-08-24 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f01656ce2af720004', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '37', '2018-08-25 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f01656ce4846f0005', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '0', null, '100', '2018-08-25 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f01656ce65a420006', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '367', '2018-08-25 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f0165720736980007', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '4', '2018-08-26 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f016572090b760008', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '37', '2018-08-26 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f0165720ae05d0009', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '0', null, '72', '2018-08-26 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f0165720cb5a8000a', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '215', '2018-08-26 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f0165772d9296000b', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '7', '2018-08-27 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f0165772f6761000c', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '22', '2018-08-27 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f016577313c4d000d', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '0', null, '67', '2018-08-27 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f016577331195000e', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '199', '2018-08-27 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f01657c54d904000f', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '22', '2018-08-28 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f01657c55c36f0010', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '29', '2018-08-28 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f01657c5798440011', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '0', null, '49', '2018-08-28 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f0165817b34f10012', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '2', '2018-08-29 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f0165817d09c60013', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '24', '2018-08-29 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f0165817edebb0014', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '77', '2018-08-29 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f016586a190f30015', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '5', '2018-08-30 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f016586a365b20016', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '5', '2018-08-30 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f016586a53a9b0017', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '46', '2018-08-30 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f01658bc702930018', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '7', '2018-08-31 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f01658bc8d75d0019', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '17', '2018-08-31 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f01658bcaac44001a', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '0', null, '56', '2018-08-31 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f01658bcc8132001b', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '104', '2018-08-31 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f01658bce584a001c', '注销司机', 'jobExecuteService', 'disableDriver', null, '0', null, '704', '2018-08-31 01:08:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f016590ed5e91001d', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '3', '2018-09-01 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f016590ef3397001e', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '49', '2018-09-01 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f016590f1082c001f', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '0', null, '21', '2018-09-01 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f016590f2dd340020', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '98', '2018-09-01 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f01659614a4f00021', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '2', '2018-09-02 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f0165961679b40022', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '6', '2018-09-02 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f016596184e930023', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '37', '2018-09-02 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f01659b3a16a60024', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '16', '2018-09-03 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f01659b3beb6b0025', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '26', '2018-09-03 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f01659b3dc02b0026', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '0', null, '31', '2018-09-03 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f01659b3f951f0027', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '75', '2018-09-03 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f0165a06072910028', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '6', '2018-09-04 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f0165a06247610029', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '25', '2018-09-04 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f0165a0641c2c002a', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '0', null, '33', '2018-09-04 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f0165a065f162002b', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '152', '2018-09-04 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f0165a587b8f5002c', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '5', '2018-09-05 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f0165a5898db4002d', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '4', '2018-09-05 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f0165a58b6298002e', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '44', '2018-09-05 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f0165aaae14ef002f', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '2', '2018-09-06 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f0165aaafe9c50030', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '4', '2018-09-06 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f0165aab1be970031', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '41', '2018-09-06 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f0165afd470fa0032', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '15', '2018-09-07 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f0165afd645b00033', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '5', '2018-09-07 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f0165afd9053e0034', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '112', '2018-09-07 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f0165b4faccf90035', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '9', '2018-09-08 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f0165b4fca1ba0036', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '8', '2018-09-08 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f0165b4fd8c340037', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '0', null, '35', '2018-09-08 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f0165b4ff612b0038', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '95', '2018-09-08 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f0165ba2128ef0039', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '6', '2018-09-09 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f0165ba22fdb6003a', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '7', '2018-09-09 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567ba7f0165ba24d28a003b', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '30', '2018-09-09 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb69016567bb69100000', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '15', '2018-08-24 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb69016567bd3df30001', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '60', '2018-08-24 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb69016567bf13530002', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '230', '2018-08-24 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb6901656ce0da9d0003', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '13', '2018-08-25 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb6901656ce1c4f80004', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '8', '2018-08-25 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb6901656ce399b10005', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '2', '2018-08-25 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb6901656ce56ea70006', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '53', '2018-08-25 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb690165720820f20007', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '5', '2018-08-26 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb6901657209f5ae0008', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '4', '2018-08-26 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb690165720bcaa40009', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '52', '2018-08-26 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb690165772e7cfa000a', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '9', '2018-08-27 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb690165773051b9000b', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '9', '2018-08-27 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb690165773226a5000c', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '53', '2018-08-27 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb6901657c53ee92000d', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '2', '2018-08-28 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb6901657c56adb0000e', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '4', '2018-08-28 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb6901657c588298000f', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '42', '2018-08-28 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb6901657c596d670010', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '152', '2018-08-28 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb690165817a4a8e0011', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '3', '2018-08-29 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb690165817c1f650012', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '25', '2018-08-29 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb690165817df42a0013', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '0', null, '30', '2018-08-29 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb690165817fc95b0014', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '141', '2018-08-29 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb69016586a0a6920015', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '3', '2018-08-30 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb69016586a27b710016', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '25', '2018-08-30 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb69016586a4502c0017', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '0', null, '29', '2018-08-30 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb69016586a625330018', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '99', '2018-08-30 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb6901658bc7ecf50019', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '4', '2018-08-31 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb6901658bc9c1b3001a', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '6', '2018-08-31 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb6901658bcb9681001b', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '19', '2018-08-31 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb6901658bcd6ca9001c', '注销责任人', 'jobExecuteService', 'disableOwner', null, '0', null, '380', '2018-08-31 01:07:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb69016590ee48f0001d', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '2', '2018-09-01 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb69016590f01dac001e', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '3', '2018-09-01 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb69016590f1f28b001f', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '30', '2018-09-01 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb6901659613ba8e0020', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '3', '2018-09-02 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb69016596158f540021', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '11', '2018-09-02 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb6901659617642d0022', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '0', null, '33', '2018-09-02 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb690165961939040023', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '59', '2018-09-02 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb6901659b3b00f00024', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '4', '2018-09-03 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb6901659b3cd5b20025', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '5', '2018-09-03 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb6901659b3eaa7f0026', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '20', '2018-09-03 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb690165a0615cf00027', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '2', '2018-09-04 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb690165a06331af0028', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '2', '2018-09-04 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb690165a06506910029', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '34', '2018-09-04 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb690165a586ce94002a', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '7', '2018-09-05 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb690165a588a361002b', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '20', '2018-09-05 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb690165a58a7825002c', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '0', null, '22', '2018-09-05 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb690165a58c4d34002d', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '98', '2018-09-05 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb690165aaad2a9a002e', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '3', '2018-09-06 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb690165aaaeff6b002f', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '32', '2018-09-06 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb690165aab0d4240030', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '0', null, '25', '2018-09-06 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb690165aab2a9160031', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '76', '2018-09-06 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb690165afd386910032', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '2', '2018-09-07 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb690165afd55b5a0033', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '11', '2018-09-07 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb690165afd7303e0034', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '0', null, '43', '2018-09-07 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb690165afd81a8b0035', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '33', '2018-09-07 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb690165b4f9e2930036', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '5', '2018-09-08 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb690165b4fbb7680037', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '28', '2018-09-08 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb690165b4fe76920038', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '32', '2018-09-08 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb690165ba203e950039', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '4', '2018-09-09 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb690165ba221358003a', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '10', '2018-09-09 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb690165ba23e823003b', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '0', null, '19', '2018-09-09 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e6567bb690165ba25bd15003c', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '71', '2018-09-09 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf469a0165bf469aa20000', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '10', '2018-09-10 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf469a0165bf486f880001', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '58', '2018-09-10 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf469a0165bf4a44ec0002', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '0', null, '212', '2018-09-10 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf469a0165bf4c1a2c0003', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '349', '2018-09-10 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf469a0165c46de0ff0004', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '17', '2018-09-11 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf469a0165c46fb5bb0005', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '13', '2018-09-11 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf469a0165c4718ad20006', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '101', '2018-09-11 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf469a0165c9943cf50007', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '6', '2018-09-12 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf469a0165c99611b40008', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '6', '2018-09-12 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf469a0165c997e69f0009', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '45', '2018-09-12 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf469a0165ceba98f3000a', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '7', '2018-09-13 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf469a0165cebc6db6000b', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '7', '2018-09-13 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf469a0165cebe4290000c', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '38', '2018-09-13 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf469a0165d3e0f4f3000d', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '2', '2018-09-14 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf469a0165d3e1df63000e', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '21', '2018-09-14 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf469a0165d3e3b450000f', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '0', null, '53', '2018-09-14 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf469a0165d3e5894d0010', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '130', '2018-09-14 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf469a0165d90666930011', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '4', '2018-09-15 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf469a0165d90925b50012', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '5', '2018-09-15 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf469a0165d90afa8f0013', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '38', '2018-09-15 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf469a0165de2cc2980014', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '5', '2018-09-16 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf469a0165de2e975f0015', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '19', '2018-09-16 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf469a0165de306c270016', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '0', null, '30', '2018-09-16 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf469a0165de32413e0017', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '116', '2018-09-16 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf469a0165e3531e970018', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '7', '2018-09-17 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf469a0165e354f35f0019', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '13', '2018-09-17 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf469a0165e356c83b001a', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '0', null, '44', '2018-09-17 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf469a0165e3589d2d001b', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '89', '2018-09-17 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf469a0165e8797a8c001c', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '2', '2018-09-18 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf469a0165e87b4f62001d', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '24', '2018-09-18 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf469a0165e87d243b001e', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '0', null, '45', '2018-09-18 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf469a0165e87fe32e001f', '计算车辆动态报表数据', 'jobExecuteService', 'calVehicleRptDynamicData', null, '1', 'java.lang.NoSuchMethodException: com.sun.proxy.$Proxy71.calVehicleRptDynamicData()', '0', '2018-09-18 01:07:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf47850165bf47855c0000', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '96', '2018-09-10 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf47850165bf4959db0001', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '37', '2018-09-10 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf47850165bf4b2fcd0002', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '349', '2018-09-10 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf47850165c46cf6ad0003', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '19', '2018-09-11 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf47850165c46ecba50004', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '86', '2018-09-11 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf47850165c470a09f0005', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '0', null, '143', '2018-09-11 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf47850165c47276660006', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '407', '2018-09-11 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf47850165c99352900007', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '5', '2018-09-12 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf47850165c99527720008', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '36', '2018-09-12 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf47850165c996fc610009', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '0', null, '83', '2018-09-12 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf47850165c998d1d4000a', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '266', '2018-09-12 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf47850165ceb9ae98000b', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '7', '2018-09-13 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf47850165cebb837e000c', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '48', '2018-09-13 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf47850165cebd587c000d', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '0', null, '110', '2018-09-13 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf47850165cebf2daf000e', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '224', '2018-09-13 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf47850165d3e00a98000f', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '10', '2018-09-14 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf47850165d3e2c9c30010', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '19', '2018-09-14 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf47850165d3e49ebe0011', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '78', '2018-09-14 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf47850165d90750f00012', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '6', '2018-09-15 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf47850165d9083b730013', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '36', '2018-09-15 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf47850165d90a104d0014', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '0', null, '61', '2018-09-15 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf47850165d90be5910015', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '194', '2018-09-15 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf47850165de2dad000016', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '11', '2018-09-16 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf47850165de2f81bd0017', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '9', '2018-09-16 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf47850165de3156b60018', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '66', '2018-09-16 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf47850165e35408ef0019', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '6', '2018-09-17 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf47850165e355ddb2001a', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '5', '2018-09-17 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf47850165e357b2a6001b', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '57', '2018-09-17 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf47850165e87a64f4001c', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '3', '2018-09-18 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf47850165e87c39b3001d', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '6', '2018-09-18 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf47850165e87e0eb7001e', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '76', '2018-09-18 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf47850165e87ef960001f', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '152', '2018-09-18 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('2c91ea5e65bf47850165e880cd900020', '计算车辆状态报表数据', 'jobExecuteService', 'calVehicleRptStatusData', null, '1', 'java.lang.NoSuchMethodException: com.sun.proxy.$Proxy162.calVehicleRptStatusData()', '0', '2018-09-18 01:08:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e460d6b6ea0160d6b6eaff0000', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '48', '2018-01-09 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e460d6b6ea0160d6c012640001', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '12', '2018-01-09 01:10:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e460d6b6ea0160d6c93a670002', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '84', '2018-01-09 01:20:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e460d6b6ea0160d6d261ed0003', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '29', '2018-01-09 01:30:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e460e62a000160e62a008d0000', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '35', '2018-01-12 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e460e62a000160e633265d0001', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '11', '2018-01-12 01:10:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e460e62a000160e63c4e2c0002', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '30', '2018-01-12 01:20:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e460e62a000160e64576050003', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '53', '2018-01-12 01:30:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e4610a368301610a3683580000', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '139', '2018-01-19 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e4610a368301610a3faa690001', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '21', '2018-01-19 01:10:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e4610a368301610a48d2a20002', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '145', '2018-01-19 01:20:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e4610a368301610a51fa090003', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '55', '2018-01-19 01:30:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e4611140bb01611140bbb10000', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '45', '2018-01-20 09:48:30');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e4611140bb01611140cfbe0001', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '24', '2018-01-20 09:48:36');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e4611ecff201611ecff2de0000', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '34', '2018-01-23 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e4611ecff201611ed91a5f0001', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '14', '2018-01-23 01:10:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e4611ecff201611ee242390002', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '41', '2018-01-23 01:20:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e4611ecff201611eeb69fd0003', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '46', '2018-01-23 01:30:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e46163b961016163b961430000', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '0', null, '332487', '2018-02-05 10:03:36');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e46163bf89016163bf89fe0000', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '0', null, '129294', '2018-02-05 10:13:43');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e46163bf89016163cac3970001', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '16536', '2018-02-05 10:27:52');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e46163cdd1016163cdd17c0000', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '124177', '2018-02-05 10:29:24');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e46163cdd1016163d0658d0001', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '0', null, '14936', '2018-02-05 10:34:02');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e46163cdd1016163d177dd0002', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '59522', '2018-02-05 10:34:28');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e46163d4fb016163d4fb1a0000', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '97132', '2018-02-05 10:37:41');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e46185cf23016185cf23160000', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '80', '2018-02-12 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e46185cf23016185d00d140001', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '23', '2018-02-12 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e46185cf23016185d0f7ec0002', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '151', '2018-02-12 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e46185cf23016185d1e1d50003', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '33', '2018-02-12 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e46185cf23016185d2cc510004', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '0', null, '59', '2018-02-12 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e46185cf23016185d3b6c20005', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '80', '2018-02-12 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e46185cf23016185d4a1850006', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '158', '2018-02-12 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e55fa66f94015fa66f94e30000', '租户扣费', 'jobExecuteService', 'deductionFee', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '11', '2017-11-10 22:57:31');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e55fa66f94015fa66fa31d0001', '清除被禁用户记录', 'jobExecuteService', 'enableUserLogin', null, '0', null, '13', '2017-11-10 22:57:35');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e55fa66f94015fa66fad5f0002', '清除被禁管理员记录', 'jobExecuteService', 'enableManageUserLogin', null, '0', null, '12', '2017-11-10 22:57:38');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e55fa66f94015fa671ba6e0003', '租户扣费', 'jobExecuteService', 'deductionFee', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '38', '2017-11-10 22:59:52');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e55fa66f94015fa67558680004', '租户扣费', 'jobExecuteService', 'deductionFee', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '203500', '2017-11-10 23:00:26');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e55fa66f94015fa67769920005', '租户扣费', 'jobExecuteService', 'deductionFee', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '138373', '2017-11-10 23:03:46');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e55fa66f94015fa678792a0006', '租户扣费', 'jobExecuteService', 'deductionFee', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '13690', '2017-11-10 23:07:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e55fa67aff015fa67aff500000', '租户扣费', 'jobExecuteService', 'deductionFee', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '72956', '2017-11-10 23:08:47');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e55fa67c7f015fa67c7fe20000', '租户扣费', 'jobExecuteService', 'deductionFee', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '19212', '2017-11-10 23:11:19');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e55fa67c7f015fa681c4540001', '租户扣费', 'jobExecuteService', 'deductionFee', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '118138', '2017-11-10 23:15:25');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e55fa67c7f015fa6824f760002', '租户扣费', 'jobExecuteService', 'deductionFee', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '25653', '2017-11-10 23:17:33');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e55fa67c7f015fa683139f0003', '租户扣费', 'jobExecuteService', 'deductionFee', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '46184', '2017-11-10 23:18:03');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e55fa67c7f015fa68495ce0004', '租户扣费', 'jobExecuteService', 'deductionFee', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '94457', '2017-11-10 23:18:53');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e55fa6ab3b015fa6ab3b120000', '租户扣费', 'jobExecuteService', 'deductionFee', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '19', '2017-11-11 00:02:41');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e55fa6ae31015fa6ae312a0000', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '44', '2017-11-11 00:05:55');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e55fa6dfb6015fa6dfb6cf0000', '清除被禁管理员记录', 'jobExecuteService', 'enableManageUserLogin', null, '0', null, '20', '2017-11-11 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e55fa6dfb6015fa6e8de620001', '清除被禁用户记录', 'jobExecuteService', 'enableUserLogin', null, '0', null, '11', '2017-11-11 01:10:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e55fa6dfb6015fa6f206810002', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '113', '2017-11-11 01:20:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e55fc5c5de015fc5c5dee70000', '清除被禁管理员记录', 'jobExecuteService', 'enableManageUserLogin', null, '0', null, '40', '2017-11-17 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e55fc5c5de015fc5cf065f0001', '清除被禁用户记录', 'jobExecuteService', 'enableUserLogin', null, '0', null, '13', '2017-11-17 01:10:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e55fc5c5de015fc5d82e490002', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '58', '2017-11-17 01:20:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e55fcaec3a015fcaec3ae00000', '清除被禁管理员记录', 'jobExecuteService', 'enableManageUserLogin', null, '0', null, '43', '2017-11-18 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e55fcaec3a015fcaf5625d0001', '清除被禁用户记录', 'jobExecuteService', 'enableUserLogin', null, '0', null, '13', '2017-11-18 01:10:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e55fcaec3a015fcafe8a430002', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '51', '2017-11-18 01:20:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e55fdf85aa015fdf85aadc0000', '清除被禁管理员记录', 'jobExecuteService', 'enableManageUserLogin', null, '0', null, '36', '2017-11-22 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e55fdf85aa015fdf8ed25f0001', '清除被禁用户记录', 'jobExecuteService', 'enableUserLogin', null, '0', null, '11', '2017-11-22 01:10:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e55fdf85aa015fdf97fa4d0002', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '60', '2017-11-22 01:20:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e55feef8bf015feef8bf110000', '清除被禁管理员记录', 'jobExecuteService', 'enableManageUserLogin', null, '0', null, '68', '2017-11-25 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e55feef8bf015fef01e65b0001', '清除被禁用户记录', 'jobExecuteService', 'enableUserLogin', null, '0', null, '10', '2017-11-25 01:10:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e55feef8bf015fef0b0e550002', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '69', '2017-11-25 01:20:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e55feef8bf015fef1435f30003', '保险到期无效', 'jobExecuteService', 'insExpire', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '34', '2017-11-25 01:30:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e55feef8bf015ff41f1a9e0004', '清除被禁管理员记录', 'jobExecuteService', 'enableManageUserLogin', null, '0', null, '9', '2017-11-26 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e55feef8bf015ff428426d0005', '清除被禁用户记录', 'jobExecuteService', 'enableUserLogin', null, '0', null, '27', '2017-11-26 01:10:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e55feef8bf015ff4316a300006', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '33', '2017-11-26 01:20:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e55feef8bf015ff43a91d80007', '保险到期无效', 'jobExecuteService', 'insExpire', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '8', '2017-11-26 01:30:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e560009c6e0160009c6e1a0000', '保险到期无效', 'jobExecuteService', 'insExpire', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '42287', '2017-11-28 11:11:38');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e560009c6e0160009e5b000001', '保险到期无效', 'jobExecuteService', 'insExpire', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '89023', '2017-11-28 11:12:57');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e56000a24a016000a24af90000', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '18598', '2017-11-28 11:18:26');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e56000a24a016000a4f7cd0001', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '12758', '2017-11-28 11:21:27');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e560182b9f0160182b9f0a0000', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '81', '2017-12-03 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e560182b9f01601834c6660001', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '19', '2017-12-03 01:10:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e560182b9f0160183dee410002', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '49', '2017-12-03 01:20:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e560182b9f0160184715ef0003', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '26', '2017-12-03 01:30:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e561f71b0a0161f71b0af60000', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '51', '2018-03-06 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e561f71b0a0161f71bf5140001', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '23', '2018-03-06 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e561f71b0a0161f71ce0040002', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '176', '2018-03-06 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e561f71b0a0161f71dc9ff0003', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '69', '2018-03-06 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e561f71b0a0161f71eb44b0004', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '59', '2018-03-06 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e561f71b0a0161f71f9ee70005', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '120', '2018-03-06 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e561f71b0a0161f720899e0006', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '207', '2018-03-06 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e5624980ca01624980cafa0000', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '24', '2018-03-22 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e5624980ca01624981b5100001', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '31', '2018-03-22 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e5624980ca01624982a02d0002', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '165', '2018-03-22 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e5624980ca0162498389fb0003', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '79', '2018-03-22 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e5624980ca0162498474a50004', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '84', '2018-03-22 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e5624980ca016249855f160005', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '103', '2018-03-22 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e5624980ca016249864a0c0006', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '200', '2018-03-22 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e5628c737601628c7376f40000', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '23', '2018-04-04 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e5628c737601628c7461170001', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '30', '2018-04-04 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e5628c737601628c754ba80002', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '87', '2018-04-04 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e5628c737601628c7635f20003', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '63', '2018-04-04 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e5628c737601628c7720680004', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '89', '2018-04-04 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e5628c737601628c780ac30005', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '86', '2018-04-04 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e5628c737601628c78f5a80006', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '213', '2018-04-04 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e562a633420162a63342e40000', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '30', '2018-04-09 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e562a633420162a6342d000001', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '20', '2018-04-09 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e562a633420162a63517b50002', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '101', '2018-04-09 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e562a633420162a63601d60003', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '45', '2018-04-09 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e562a633420162a636ec5e0004', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '72', '2018-04-09 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e562a633420162a637d6be0005', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '79', '2018-04-09 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e562a633420162a638c17b0006', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '176', '2018-04-09 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e562e3ff920162e3ff92fd0000', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '50', '2018-04-21 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e562e3ff920162e4007d000001', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '12', '2018-04-21 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e562e3ff920162e40167f30002', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '161', '2018-04-21 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e562e3ff920162e40251e10003', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '55', '2018-04-21 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e562e3ff920162e4033c620004', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '68', '2018-04-21 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e562e3ff920162e40426d00005', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '90', '2018-04-21 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e562e3ff920162e40511b60006', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '216', '2018-04-21 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e565ea32450165ea3245980000', '计算车辆动态报表数据', 'jobExecuteService', 'calRptVehicleDynamicData', null, '0', null, '390', '2018-09-18 09:01:27');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e76a9151d7016a9151d7610000', '计算车辆动态报表数据', 'jobExecuteService', 'calRptVehicleDynamicData', null, '0', null, '308', '2019-05-07 16:03:41');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e76a9151d7016a91540e1d0001', '计算车辆动态报表数据', 'jobExecuteService', 'calRptVehicleDynamicData', null, '0', null, '108', '2019-05-07 16:06:06');
INSERT INTO `manage_schedule_job_log` VALUES ('402881e76a9151d7016a91541d950002', '计算车辆状态报表数据', 'jobExecuteService', 'calRptVehicleStatusData', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '84', '2019-05-07 16:06:10');
INSERT INTO `manage_schedule_job_log` VALUES ('f842b80f6388cb13016388cb13f20000', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '171', '2018-05-23 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('f842b80f6388cb13016388cbfd490001', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '16', '2018-05-23 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('f842b80f6388cb13016388cce8930002', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '203', '2018-05-23 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('f842b80f6388cb13016388cdd2180003', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '46', '2018-05-23 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('f842b80f6388cb13016388cebca70004', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '62', '2018-05-23 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('f842b80f6388cb13016388cfa7170005', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '109', '2018-05-23 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('f842b80f6388cb13016388d091a60006', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '125', '2018-05-23 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('f842b80f63c697640163c69764130000', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '312', '2018-06-04 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('f842b80f63c697640163c6984d690001', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '62', '2018-06-04 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('f842b80f63c697640163c69939bd0002', '租户扣费', 'jobExecuteService', 'deductionFee', null, '0', null, '531', '2018-06-04 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('f842b80f63c697640163c69a22680003', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '125', '2018-06-04 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('f842b80f63c697640163c69b0d640004', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '234', '2018-06-04 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('f842b80f63c697640163c69bf7950005', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '234', '2018-06-04 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('f842b80f63c697640163c69ce2820006', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '313', '2018-06-04 01:06:00');
INSERT INTO `manage_schedule_job_log` VALUES ('f842b80f63c697640163cbbdbf180007', '清除被禁管理员记录', 'jobExecuteService', 'deleteManageUserLogin', null, '0', null, '0', '2018-06-05 01:00:00');
INSERT INTO `manage_schedule_job_log` VALUES ('f842b80f63c697640163cbbea94a0008', '清除被禁用户记录', 'jobExecuteService', 'deleteUserLogin', null, '0', null, '0', '2018-06-05 01:01:00');
INSERT INTO `manage_schedule_job_log` VALUES ('f842b80f63c697640163cbbf938a0009', '租户扣费', 'jobExecuteService', 'deductionFee', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '15', '2018-06-05 01:02:00');
INSERT INTO `manage_schedule_job_log` VALUES ('f842b80f63c697640163cbc07e19000a', '保险到期无效', 'jobExecuteService', 'insExpire', null, '0', null, '0', '2018-06-05 01:03:00');
INSERT INTO `manage_schedule_job_log` VALUES ('f842b80f63c697640163cbc16879000b', '计算首页车辆动态数据', 'jobExecuteService', 'calIndexDynamicData', null, '1', 'java.util.concurrent.ExecutionException: luxing.exception.BusinessException: 执行定时任务失败', '47', '2018-06-05 01:04:00');
INSERT INTO `manage_schedule_job_log` VALUES ('f842b80f63c697640163cbc252f8000c', '计算首页车辆状态数据', 'jobExecuteService', 'calIndexStatusData', null, '0', null, '46', '2018-06-05 01:05:00');
INSERT INTO `manage_schedule_job_log` VALUES ('f842b80f63c697640163cbc33d68000d', '计算首页到期提醒数据', 'jobExecuteService', 'calIndexWarnData', null, '0', null, '109', '2018-06-05 01:06:00');

-- ----------------------------
-- Table structure for manage_tenant
-- ----------------------------
DROP TABLE IF EXISTS `manage_tenant`;
CREATE TABLE `manage_tenant` (
  `id` varchar(32) NOT NULL,
  `number` varchar(50) NOT NULL COMMENT '编号',
  `name` varchar(50) NOT NULL COMMENT '名称',
  `province_id` varchar(32) NOT NULL COMMENT '省',
  `city_id` varchar(32) NOT NULL COMMENT '市',
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  `credit_code` varchar(50) DEFAULT NULL,
  `status` varchar(10) NOT NULL COMMENT '状态',
  `balance` decimal(10,1) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='租户';

-- ----------------------------
-- Records of manage_tenant
-- ----------------------------
INSERT INTO `manage_tenant` VALUES ('402881e45f81056b015f810d3a770004', '372001', '大象货车公司', '17', '1703', '文峰区', null, '0', '9999.0', null, 'zhangzhichao', '2017-11-03 16:44:09', 'zhangzhichao', '2019-11-09 08:52:52');

-- ----------------------------
-- Table structure for manage_user
-- ----------------------------
DROP TABLE IF EXISTS `manage_user`;
CREATE TABLE `manage_user` (
  `id` varchar(32) NOT NULL,
  `name` varchar(20) NOT NULL COMMENT '用户名',
  `real_name` varchar(50) NOT NULL COMMENT '真实姓名',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人id',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manage_user
-- ----------------------------
INSERT INTO `manage_user` VALUES ('402881e45f805051015f805519f60016', 'zhangzhichao', '张志超', '83c2f737cf6467430c445e213e681342', null, null, null, '2017-11-03 13:23:02', 'admin');

-- ----------------------------
-- Table structure for manage_user_login
-- ----------------------------
DROP TABLE IF EXISTS `manage_user_login`;
CREATE TABLE `manage_user_login` (
  `id` varchar(32) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `login_num` int(5) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manage_user_login
-- ----------------------------
INSERT INTO `manage_user_login` VALUES ('402881ed6e58121b016e586056b3001f', '18855558888', '127.0.0.1', '1', '2019-11-11 10:52:19');

-- ----------------------------
-- Table structure for manage_user_menu
-- ----------------------------
DROP TABLE IF EXISTS `manage_user_menu`;
CREATE TABLE `manage_user_menu` (
  `user_id` varchar(32) DEFAULT NULL,
  `menu_id` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manage_user_menu
-- ----------------------------
INSERT INTO `manage_user_menu` VALUES ('402881e45f805051015f805519f60016', 'ff8080815f579c79015f579f713d0005');
INSERT INTO `manage_user_menu` VALUES ('402881e45f805051015f805519f60016', '402881e5622db4a801622db76c090002');
INSERT INTO `manage_user_menu` VALUES ('402881e45f805051015f805519f60016', 'ff8080815ed05b2b015ed05df9130002');
INSERT INTO `manage_user_menu` VALUES ('402881e45f805051015f805519f60016', '40289ff95bb8c42e015bb8d09e5d0004');
INSERT INTO `manage_user_menu` VALUES ('402881e45f805051015f805519f60016', '402881e5628075bd016280815adc0001');
INSERT INTO `manage_user_menu` VALUES ('402881e45f805051015f805519f60016', '402886325dcba999015dcbab5be60001');
INSERT INTO `manage_user_menu` VALUES ('402881e45f805051015f805519f60016', '8a8ab0b246dc81120146dc8180e70023');
INSERT INTO `manage_user_menu` VALUES ('402881e45f805051015f805519f60016', '402886325d07c86d015d07d0f4f00001');
INSERT INTO `manage_user_menu` VALUES ('402881e45f805051015f805519f60016', 'ff8080815f579c79015f579e26050001');
INSERT INTO `manage_user_menu` VALUES ('402881e45f805051015f805519f60016', '402886315a5ea680015a5f940b170002');
INSERT INTO `manage_user_menu` VALUES ('402881e45f805051015f805519f60016', '402886315a63ac5e015a63adfe840001');
INSERT INTO `manage_user_menu` VALUES ('402881e45f805051015f805519f60016', '402886325bf05a9e015bf05c60590001');
INSERT INTO `manage_user_menu` VALUES ('402881e45f805051015f805519f60016', '402881e56208d7050162094cf07b0009');
INSERT INTO `manage_user_menu` VALUES ('402881e45f805051015f805519f60016', '402881e45f7f7182015f7f729e220001');
INSERT INTO `manage_user_menu` VALUES ('402881e45f805051015f805519f60016', '4028863157addb8c0157ade1e15b0001');
INSERT INTO `manage_user_menu` VALUES ('402881e45f805051015f805519f60016', '402881e56208d7050162093fa9740001');
INSERT INTO `manage_user_menu` VALUES ('402881e45f805051015f805519f60016', '402886325bd13be6015bd13bf13a0000');
INSERT INTO `manage_user_menu` VALUES ('402881e45f805051015f805519f60016', '402886325e17014f015e17050fd50004');
INSERT INTO `manage_user_menu` VALUES ('402881e45f805051015f805519f60016', '402886325bf05a9e015bf05eae0e0004');

-- ----------------------------
-- Table structure for manage_user_session
-- ----------------------------
DROP TABLE IF EXISTS `manage_user_session`;
CREATE TABLE `manage_user_session` (
  `id` varchar(32) NOT NULL,
  `user_id` varchar(50) NOT NULL COMMENT '用户',
  `session_id` varchar(50) NOT NULL COMMENT 'session',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manage_user_session
-- ----------------------------
INSERT INTO `manage_user_session` VALUES ('402881e56a62e747016a633f0d7a0000', '402881e45f811136015f8111d2ce0000', '50037906372436593E29A862944664DD');
INSERT INTO `manage_user_session` VALUES ('402881ec6a6d5af2016a6d5eab1c003d', '402881ec6a6d5af2016a6d5df50c0038', '87174FBC9982934F171C7347D6D31B08');
INSERT INTO `manage_user_session` VALUES ('402881ed6e58121b016e581c99590004', '402881ed6e58121b016e581c326d0001', 'EE95EC14DE6C178E3295C4B0F399C520');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars_copy
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars_copy`;
CREATE TABLE `qrtz_calendars_copy` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_calendars_copy
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(120) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('TCScheduler', 'TASK_2c91ea5e65beda910165e68eb2d404b2', 'DEFAULT', '0 7 1 1/1 * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('TCScheduler', 'TASK_2c91ea5e65beda910165e6900dd504b4', 'DEFAULT', '0 8 1 1/1 * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('TCScheduler', 'TASK_402881e45f7ff887015f8009008c0002', 'DEFAULT', '0 0 1 1/1 * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('TCScheduler', 'TASK_402881e45f7ff887015f800bb13c0005', 'DEFAULT', '0 1 1 1/1 * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('TCScheduler', 'TASK_402881e45f7ff887015f800c84700007', 'DEFAULT', '0 2 1 1/1 * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('TCScheduler', 'TASK_402881e46163ad8f016163b130c30002', 'DEFAULT', '0 4 1 1/1 * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('TCScheduler', 'TASK_402881e46163ad8f016163b311340009', 'DEFAULT', '0 5 1 1/1 * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('TCScheduler', 'TASK_402881e46163ad8f016163b3d0b3000b', 'DEFAULT', '0 6 1 1/1 * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('TCScheduler', 'TASK_402881e55fe10f92015fe112018a0001', 'DEFAULT', '0 3 1 1/1 * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('TCScheduler', 'TASK_402881e6647df35401647dff2cbb0002', 'DEFAULT', '0 7 1 L * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('TCScheduler', 'TASK_402881e6647df35401647e00f76f0005', 'DEFAULT', '0 8 1 L * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `IDX_QRTZ_FT_TRIG_INST_NAME` (`SCHED_NAME`,`INSTANCE_NAME`) USING BTREE,
  KEY `IDX_QRTZ_FT_INST_JOB_REQ_RCVRY` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`) USING BTREE,
  KEY `IDX_QRTZ_FT_J_G` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`) USING BTREE,
  KEY `IDX_QRTZ_FT_JG` (`SCHED_NAME`,`JOB_GROUP`) USING BTREE,
  KEY `IDX_QRTZ_FT_T_G` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  KEY `IDX_QRTZ_FT_TG` (`SCHED_NAME`,`TRIGGER_GROUP`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_J_REQ_RECOVERY` (`SCHED_NAME`,`REQUESTS_RECOVERY`) USING BTREE,
  KEY `IDX_QRTZ_J_GRP` (`SCHED_NAME`,`JOB_GROUP`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('TCScheduler', 'TASK_2c91ea5e65beda910165e68eb2d404b2', 'DEFAULT', null, 'manage.sys.model.ScheduleJobModel', '0', '0', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372001D6D616E6167652E7379732E656E746974792E5363686564756C654A6F62E6770C977801573E0200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C0002696471007E00094C00076A6F624E616D6571007E00094C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000772656D61726B7371007E00094C000673746174757371007E000978707400116A6F62457865637574655365727669636574000D302037203120312F31202A203F740020326339316561356536356265646139313031363565363865623264343034623274001EE8AEA1E7AE97E8BDA6E8BE86E58AA8E68081E68AA5E8A1A8E695B0E68DAE74001863616C52707456656869636C6544796E616D6963446174617070740001307800);
INSERT INTO `qrtz_job_details` VALUES ('TCScheduler', 'TASK_2c91ea5e65beda910165e6900dd504b4', 'DEFAULT', null, 'manage.sys.model.ScheduleJobModel', '0', '0', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372001D6D616E6167652E7379732E656E746974792E5363686564756C654A6F62E6770C977801573E0200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C0002696471007E00094C00076A6F624E616D6571007E00094C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000772656D61726B7371007E00094C000673746174757371007E000978707400116A6F62457865637574655365727669636574000D302038203120312F31202A203F740020326339316561356536356265646139313031363565363930306464353034623474001EE8AEA1E7AE97E8BDA6E8BE86E78AB6E68081E68AA5E8A1A8E695B0E68DAE74001763616C52707456656869636C65537461747573446174617070740001307800);
INSERT INTO `qrtz_job_details` VALUES ('TCScheduler', 'TASK_402881e45f7ff887015f8009008c0002', 'DEFAULT', null, 'manage.sys.model.ScheduleJobModel', '0', '0', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372001D6D616E6167652E7379732E656E746974792E5363686564756C654A6F62E6770C977801573E0200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C0002696471007E00094C00076A6F624E616D6571007E00094C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000772656D61726B7371007E00094C000673746174757371007E000978707400116A6F62457865637574655365727669636574000D302030203120312F31202A203F740020343032383831653435663766663838373031356638303039303038633030303274001BE6B885E999A4E8A2ABE7A681E7AEA1E79086E59198E8AEB0E5BD9574001564656C6574654D616E616765557365724C6F67696E7070740001307800);
INSERT INTO `qrtz_job_details` VALUES ('TCScheduler', 'TASK_402881e45f7ff887015f800bb13c0005', 'DEFAULT', null, 'manage.sys.model.ScheduleJobModel', '0', '0', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372001D6D616E6167652E7379732E656E746974792E5363686564756C654A6F62E6770C977801573E0200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C0002696471007E00094C00076A6F624E616D6571007E00094C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000772656D61726B7371007E00094C000673746174757371007E000978707400116A6F62457865637574655365727669636574000D302031203120312F31202A203F7400203430323838316534356637666638383730313566383030626231336330303035740018E6B885E999A4E8A2ABE7A681E794A8E688B7E8AEB0E5BD9574000F64656C657465557365724C6F67696E7070740001307800);
INSERT INTO `qrtz_job_details` VALUES ('TCScheduler', 'TASK_402881e45f7ff887015f800c84700007', 'DEFAULT', null, 'manage.sys.model.ScheduleJobModel', '0', '0', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372001D6D616E6167652E7379732E656E746974792E5363686564756C654A6F62E6770C977801573E0200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C0002696471007E00094C00076A6F624E616D6571007E00094C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000772656D61726B7371007E00094C000673746174757371007E000978707400116A6F62457865637574655365727669636574000D302032203120312F31202A203F740020343032383831653435663766663838373031356638303063383437303030303774000CE7A79FE688B7E689A3E8B4B974000C646564756374696F6E4665657070740001307800);
INSERT INTO `qrtz_job_details` VALUES ('TCScheduler', 'TASK_402881e46163ad8f016163b130c30002', 'DEFAULT', null, 'manage.sys.model.ScheduleJobModel', '0', '0', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372001D6D616E6167652E7379732E656E746974792E5363686564756C654A6F62E6770C977801573E0200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C0002696471007E00094C00076A6F624E616D6571007E00094C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000772656D61726B7371007E00094C000673746174757371007E000978707400116A6F62457865637574655365727669636574000D302034203120312F31202A203F740020343032383831653436313633616438663031363136336231333063333030303274001EE8AEA1E7AE97E9A696E9A1B5E8BDA6E8BE86E58AA8E68081E695B0E68DAE74001363616C496E64657844796E616D6963446174617070740001307800);
INSERT INTO `qrtz_job_details` VALUES ('TCScheduler', 'TASK_402881e46163ad8f016163b311340009', 'DEFAULT', null, 'manage.sys.model.ScheduleJobModel', '0', '0', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372001D6D616E6167652E7379732E656E746974792E5363686564756C654A6F62E6770C977801573E0200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C0002696471007E00094C00076A6F624E616D6571007E00094C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000772656D61726B7371007E00094C000673746174757371007E000978707400116A6F62457865637574655365727669636574000D302035203120312F31202A203F740020343032383831653436313633616438663031363136336233313133343030303974001EE8AEA1E7AE97E9A696E9A1B5E8BDA6E8BE86E78AB6E68081E695B0E68DAE74001263616C496E646578537461747573446174617070740001307800);
INSERT INTO `qrtz_job_details` VALUES ('TCScheduler', 'TASK_402881e46163ad8f016163b3d0b3000b', 'DEFAULT', null, 'manage.sys.model.ScheduleJobModel', '0', '0', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372001D6D616E6167652E7379732E656E746974792E5363686564756C654A6F62E6770C977801573E0200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C0002696471007E00094C00076A6F624E616D6571007E00094C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000772656D61726B7371007E00094C000673746174757371007E000978707400116A6F62457865637574655365727669636574000D302036203120312F31202A203F740020343032383831653436313633616438663031363136336233643062333030306274001EE8AEA1E7AE97E9A696E9A1B5E588B0E69C9FE68F90E98692E695B0E68DAE74001063616C496E6465785761726E446174617070740001307800);
INSERT INTO `qrtz_job_details` VALUES ('TCScheduler', 'TASK_402881e55fe10f92015fe112018a0001', 'DEFAULT', null, 'manage.sys.model.ScheduleJobModel', '0', '0', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372001D6D616E6167652E7379732E656E746974792E5363686564756C654A6F62E6770C977801573E0200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C0002696471007E00094C00076A6F624E616D6571007E00094C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000772656D61726B7371007E00094C000673746174757371007E000978707400116A6F62457865637574655365727669636574000D302033203120312F31202A203F7400203430323838316535356665313066393230313566653131323031386130303031740012E4BF9DE999A9E588B0E69C9FE697A0E69588740009696E734578706972657070740001307800);
INSERT INTO `qrtz_job_details` VALUES ('TCScheduler', 'TASK_402881e6647df35401647dff2cbb0002', 'DEFAULT', null, 'manage.sys.model.ScheduleJobModel', '0', '0', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372001D6D616E6167652E7379732E656E746974792E5363686564756C654A6F62E6770C977801573E0200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C0002696471007E00094C00076A6F624E616D6571007E00094C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000772656D61726B7371007E00094C000673746174757371007E000978707400116A6F62457865637574655365727669636574000B3020372031204C202A203F740020343032383831653636343764663335343031363437646666326362623030303274000FE6B3A8E99480E8B4A3E4BBBBE4BABA74000C64697361626C654F776E65727070740001307800);
INSERT INTO `qrtz_job_details` VALUES ('TCScheduler', 'TASK_402881e6647df35401647e00f76f0005', 'DEFAULT', null, 'manage.sys.model.ScheduleJobModel', '0', '0', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372001D6D616E6167652E7379732E656E746974792E5363686564756C654A6F62E6770C977801573E0200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C0002696471007E00094C00076A6F624E616D6571007E00094C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000772656D61726B7371007E00094C000673746174757371007E000978707400116A6F62457865637574655365727669636574000B3020382031204C202A203F740020343032383831653636343764663335343031363437653030663736663030303574000CE6B3A8E99480E58FB8E69CBA74000D64697361626C654472697665727070740001307800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('TCScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('TCScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('TCScheduler', 'WIN10-8122212011573440994046', '1573443217643', '15000');

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_J` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`) USING BTREE,
  KEY `IDX_QRTZ_T_JG` (`SCHED_NAME`,`JOB_GROUP`) USING BTREE,
  KEY `IDX_QRTZ_T_C` (`SCHED_NAME`,`CALENDAR_NAME`) USING BTREE,
  KEY `IDX_QRTZ_T_G` (`SCHED_NAME`,`TRIGGER_GROUP`) USING BTREE,
  KEY `IDX_QRTZ_T_STATE` (`SCHED_NAME`,`TRIGGER_STATE`) USING BTREE,
  KEY `IDX_QRTZ_T_N_STATE` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`) USING BTREE,
  KEY `IDX_QRTZ_T_N_G_STATE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`) USING BTREE,
  KEY `IDX_QRTZ_T_NEXT_FIRE_TIME` (`SCHED_NAME`,`NEXT_FIRE_TIME`) USING BTREE,
  KEY `IDX_QRTZ_T_NFT_ST` (`SCHED_NAME`,`TRIGGER_STATE`,`NEXT_FIRE_TIME`) USING BTREE,
  KEY `IDX_QRTZ_T_NFT_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`) USING BTREE,
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`) USING BTREE,
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE_GRP` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_GROUP`,`TRIGGER_STATE`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('TCScheduler', 'TASK_2c91ea5e65beda910165e68eb2d404b2', 'DEFAULT', 'TASK_2c91ea5e65beda910165e68eb2d404b2', 'DEFAULT', null, '1573492020000', '-1', '5', 'WAITING', 'CRON', '1573266148000', '0', null, '2', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372001D6D616E6167652E7379732E656E746974792E5363686564756C654A6F62E6770C977801573E0200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C0002696471007E00094C00076A6F624E616D6571007E00094C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000772656D61726B7371007E00094C000673746174757371007E000978707400116A6F62457865637574655365727669636574000D302037203120312F31202A203F740020326339316561356536356265646139313031363565363865623264343034623274001EE8AEA1E7AE97E8BDA6E8BE86E58AA8E68081E68AA5E8A1A8E695B0E68DAE74001863616C52707456656869636C6544796E616D6963446174617070740001307800);
INSERT INTO `qrtz_triggers` VALUES ('TCScheduler', 'TASK_2c91ea5e65beda910165e6900dd504b4', 'DEFAULT', 'TASK_2c91ea5e65beda910165e6900dd504b4', 'DEFAULT', null, '1573492080000', '-1', '5', 'WAITING', 'CRON', '1573266148000', '0', null, '2', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372001D6D616E6167652E7379732E656E746974792E5363686564756C654A6F62E6770C977801573E0200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C0002696471007E00094C00076A6F624E616D6571007E00094C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000772656D61726B7371007E00094C000673746174757371007E000978707400116A6F62457865637574655365727669636574000D302038203120312F31202A203F740020326339316561356536356265646139313031363565363930306464353034623474001EE8AEA1E7AE97E8BDA6E8BE86E78AB6E68081E68AA5E8A1A8E695B0E68DAE74001763616C52707456656869636C65537461747573446174617070740001307800);
INSERT INTO `qrtz_triggers` VALUES ('TCScheduler', 'TASK_402881e45f7ff887015f8009008c0002', 'DEFAULT', 'TASK_402881e45f7ff887015f8009008c0002', 'DEFAULT', null, '1573491600000', '-1', '5', 'WAITING', 'CRON', '1573266148000', '0', null, '2', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372001D6D616E6167652E7379732E656E746974792E5363686564756C654A6F62E6770C977801573E0200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C0002696471007E00094C00076A6F624E616D6571007E00094C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000772656D61726B7371007E00094C000673746174757371007E000978707400116A6F62457865637574655365727669636574000D302030203120312F31202A203F740020343032383831653435663766663838373031356638303039303038633030303274001BE6B885E999A4E8A2ABE7A681E7AEA1E79086E59198E8AEB0E5BD9574001564656C6574654D616E616765557365724C6F67696E7070740001307800);
INSERT INTO `qrtz_triggers` VALUES ('TCScheduler', 'TASK_402881e45f7ff887015f800bb13c0005', 'DEFAULT', 'TASK_402881e45f7ff887015f800bb13c0005', 'DEFAULT', null, '1573491660000', '-1', '5', 'WAITING', 'CRON', '1573266149000', '0', null, '2', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372001D6D616E6167652E7379732E656E746974792E5363686564756C654A6F62E6770C977801573E0200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C0002696471007E00094C00076A6F624E616D6571007E00094C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000772656D61726B7371007E00094C000673746174757371007E000978707400116A6F62457865637574655365727669636574000D302031203120312F31202A203F7400203430323838316534356637666638383730313566383030626231336330303035740018E6B885E999A4E8A2ABE7A681E794A8E688B7E8AEB0E5BD9574000F64656C657465557365724C6F67696E7070740001307800);
INSERT INTO `qrtz_triggers` VALUES ('TCScheduler', 'TASK_402881e45f7ff887015f800c84700007', 'DEFAULT', 'TASK_402881e45f7ff887015f800c84700007', 'DEFAULT', null, '1573491720000', '-1', '5', 'WAITING', 'CRON', '1573266149000', '0', null, '2', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372001D6D616E6167652E7379732E656E746974792E5363686564756C654A6F62E6770C977801573E0200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C0002696471007E00094C00076A6F624E616D6571007E00094C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000772656D61726B7371007E00094C000673746174757371007E000978707400116A6F62457865637574655365727669636574000D302032203120312F31202A203F740020343032383831653435663766663838373031356638303063383437303030303774000CE7A79FE688B7E689A3E8B4B974000C646564756374696F6E4665657070740001307800);
INSERT INTO `qrtz_triggers` VALUES ('TCScheduler', 'TASK_402881e46163ad8f016163b130c30002', 'DEFAULT', 'TASK_402881e46163ad8f016163b130c30002', 'DEFAULT', null, '1573491840000', '-1', '5', 'WAITING', 'CRON', '1573266149000', '0', null, '2', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372001D6D616E6167652E7379732E656E746974792E5363686564756C654A6F62E6770C977801573E0200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C0002696471007E00094C00076A6F624E616D6571007E00094C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000772656D61726B7371007E00094C000673746174757371007E000978707400116A6F62457865637574655365727669636574000D302034203120312F31202A203F740020343032383831653436313633616438663031363136336231333063333030303274001EE8AEA1E7AE97E9A696E9A1B5E8BDA6E8BE86E58AA8E68081E695B0E68DAE74001363616C496E64657844796E616D6963446174617070740001307800);
INSERT INTO `qrtz_triggers` VALUES ('TCScheduler', 'TASK_402881e46163ad8f016163b311340009', 'DEFAULT', 'TASK_402881e46163ad8f016163b311340009', 'DEFAULT', null, '1573491900000', '-1', '5', 'WAITING', 'CRON', '1573266149000', '0', null, '2', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372001D6D616E6167652E7379732E656E746974792E5363686564756C654A6F62E6770C977801573E0200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C0002696471007E00094C00076A6F624E616D6571007E00094C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000772656D61726B7371007E00094C000673746174757371007E000978707400116A6F62457865637574655365727669636574000D302035203120312F31202A203F740020343032383831653436313633616438663031363136336233313133343030303974001EE8AEA1E7AE97E9A696E9A1B5E8BDA6E8BE86E78AB6E68081E695B0E68DAE74001263616C496E646578537461747573446174617070740001307800);
INSERT INTO `qrtz_triggers` VALUES ('TCScheduler', 'TASK_402881e46163ad8f016163b3d0b3000b', 'DEFAULT', 'TASK_402881e46163ad8f016163b3d0b3000b', 'DEFAULT', null, '1573491960000', '-1', '5', 'WAITING', 'CRON', '1573266149000', '0', null, '2', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372001D6D616E6167652E7379732E656E746974792E5363686564756C654A6F62E6770C977801573E0200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C0002696471007E00094C00076A6F624E616D6571007E00094C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000772656D61726B7371007E00094C000673746174757371007E000978707400116A6F62457865637574655365727669636574000D302036203120312F31202A203F740020343032383831653436313633616438663031363136336233643062333030306274001EE8AEA1E7AE97E9A696E9A1B5E588B0E69C9FE68F90E98692E695B0E68DAE74001063616C496E6465785761726E446174617070740001307800);
INSERT INTO `qrtz_triggers` VALUES ('TCScheduler', 'TASK_402881e55fe10f92015fe112018a0001', 'DEFAULT', 'TASK_402881e55fe10f92015fe112018a0001', 'DEFAULT', null, '1573491780000', '-1', '5', 'WAITING', 'CRON', '1573266149000', '0', null, '2', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372001D6D616E6167652E7379732E656E746974792E5363686564756C654A6F62E6770C977801573E0200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C0002696471007E00094C00076A6F624E616D6571007E00094C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000772656D61726B7371007E00094C000673746174757371007E000978707400116A6F62457865637574655365727669636574000D302033203120312F31202A203F7400203430323838316535356665313066393230313566653131323031386130303031740012E4BF9DE999A9E588B0E69C9FE697A0E69588740009696E734578706972657070740001307800);
INSERT INTO `qrtz_triggers` VALUES ('TCScheduler', 'TASK_402881e6647df35401647dff2cbb0002', 'DEFAULT', 'TASK_402881e6647df35401647dff2cbb0002', 'DEFAULT', null, '1575047220000', '-1', '5', 'WAITING', 'CRON', '1573266149000', '0', null, '2', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372001D6D616E6167652E7379732E656E746974792E5363686564756C654A6F62E6770C977801573E0200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C0002696471007E00094C00076A6F624E616D6571007E00094C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000772656D61726B7371007E00094C000673746174757371007E000978707400116A6F62457865637574655365727669636574000B3020372031204C202A203F740020343032383831653636343764663335343031363437646666326362623030303274000FE6B3A8E99480E8B4A3E4BBBBE4BABA74000C64697361626C654F776E65727070740001307800);
INSERT INTO `qrtz_triggers` VALUES ('TCScheduler', 'TASK_402881e6647df35401647e00f76f0005', 'DEFAULT', 'TASK_402881e6647df35401647e00f76f0005', 'DEFAULT', null, '1575047280000', '-1', '5', 'WAITING', 'CRON', '1573266149000', '0', null, '2', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372001D6D616E6167652E7379732E656E746974792E5363686564756C654A6F62E6770C977801573E0200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C0002696471007E00094C00076A6F624E616D6571007E00094C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000772656D61726B7371007E00094C000673746174757371007E000978707400116A6F62457865637574655365727669636574000B3020382031204C202A203F740020343032383831653636343764663335343031363437653030663736663030303574000CE6B3A8E99480E58FB8E69CBA74000D64697361626C654472697665727070740001307800);

-- ----------------------------
-- Table structure for rpt_vehicle
-- ----------------------------
DROP TABLE IF EXISTS `rpt_vehicle`;
CREATE TABLE `rpt_vehicle` (
  `id` varchar(32) NOT NULL,
  `tenant_id` varchar(32) NOT NULL COMMENT '租户',
  `type` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT '名称',
  `rpt_year` varchar(10) NOT NULL COMMENT '年份',
  `sort` int(5) NOT NULL,
  `m1` int(10) DEFAULT NULL,
  `m2` int(10) DEFAULT NULL,
  `m3` int(10) DEFAULT NULL,
  `m4` int(10) DEFAULT NULL,
  `m5` int(10) DEFAULT NULL,
  `m6` int(10) DEFAULT NULL,
  `m7` int(10) DEFAULT NULL,
  `m8` int(10) DEFAULT NULL,
  `m9` int(10) DEFAULT NULL,
  `m10` int(10) DEFAULT NULL,
  `m11` int(10) DEFAULT NULL,
  `m12` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rpt_vehicle
-- ----------------------------

-- ----------------------------
-- Table structure for safe_accident
-- ----------------------------
DROP TABLE IF EXISTS `safe_accident`;
CREATE TABLE `safe_accident` (
  `id` varchar(32) NOT NULL,
  `tenant_id` varchar(32) NOT NULL COMMENT '租户',
  `vehicle_id` varchar(32) NOT NULL COMMENT '车辆',
  `driver_name` varchar(50) NOT NULL COMMENT '驾驶员',
  `location` varchar(50) NOT NULL COMMENT '事故地点',
  `accident_date` datetime NOT NULL COMMENT '事故时间',
  `detail` varchar(255) DEFAULT NULL COMMENT '事故经过',
  `register_by` varchar(50) NOT NULL COMMENT '登记人',
  `register_date` datetime NOT NULL COMMENT '登记日期',
  `status` varchar(10) NOT NULL COMMENT '状态',
  `type` varchar(10) DEFAULT NULL COMMENT '事故性质',
  `responsible` int(5) DEFAULT NULL COMMENT '责任比例',
  `apply_amount` decimal(10,1) DEFAULT NULL COMMENT '报赔金额',
  `real_amount` decimal(10,1) DEFAULT NULL COMMENT '实赔金额',
  `ins_company` varchar(32) DEFAULT NULL COMMENT '保险公司',
  `end_date` date DEFAULT NULL COMMENT '到期日期',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='事故记录';

-- ----------------------------
-- Records of safe_accident
-- ----------------------------

-- ----------------------------
-- Table structure for study_exam
-- ----------------------------
DROP TABLE IF EXISTS `study_exam`;
CREATE TABLE `study_exam` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `tenant_id` varchar(32) NOT NULL COMMENT '租户',
  `paper_id` varchar(32) NOT NULL COMMENT '试卷',
  `create_date` datetime DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='安全考试';

-- ----------------------------
-- Records of study_exam
-- ----------------------------

-- ----------------------------
-- Table structure for study_exam_detail
-- ----------------------------
DROP TABLE IF EXISTS `study_exam_detail`;
CREATE TABLE `study_exam_detail` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `tenant_id` varchar(32) NOT NULL COMMENT '租户',
  `status` varchar(10) NOT NULL,
  `driver_id` varchar(32) NOT NULL COMMENT '司机',
  `safe_exam_id` varchar(32) NOT NULL COMMENT '安全考试',
  `correct_rate` decimal(5,1) DEFAULT NULL COMMENT '正确率',
  `signature` varchar(255) DEFAULT NULL COMMENT '签名',
  `create_date` datetime DEFAULT NULL COMMENT '考试日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考试详情';

-- ----------------------------
-- Records of study_exam_detail
-- ----------------------------

-- ----------------------------
-- Table structure for study_study
-- ----------------------------
DROP TABLE IF EXISTS `study_study`;
CREATE TABLE `study_study` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `tenant_id` varchar(32) NOT NULL COMMENT '租户',
  `safe_education_id` varchar(32) NOT NULL COMMENT '安全学习',
  `create_date` datetime DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='安全课堂';

-- ----------------------------
-- Records of study_study
-- ----------------------------

-- ----------------------------
-- Table structure for study_study_detail
-- ----------------------------
DROP TABLE IF EXISTS `study_study_detail`;
CREATE TABLE `study_study_detail` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `tenant_id` varchar(32) NOT NULL COMMENT '租户',
  `status` varchar(10) NOT NULL,
  `driver_id` varchar(32) NOT NULL COMMENT '司机',
  `safe_study_id` varchar(32) NOT NULL COMMENT '安全学习',
  `signature` varchar(255) DEFAULT NULL COMMENT '签名',
  `create_date` datetime DEFAULT NULL COMMENT '学习日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学习详情';

-- ----------------------------
-- Records of study_study_detail
-- ----------------------------

-- ----------------------------
-- Table structure for sys_bill
-- ----------------------------
DROP TABLE IF EXISTS `sys_bill`;
CREATE TABLE `sys_bill` (
  `id` varchar(32) NOT NULL,
  `tenant_id` varchar(32) NOT NULL COMMENT '租户',
  `name` varchar(50) NOT NULL COMMENT '名称',
  `type` varchar(10) NOT NULL COMMENT '类型',
  `amount` decimal(10,1) NOT NULL COMMENT '金额',
  `deal_date` datetime NOT NULL COMMENT '处理日期',
  `operator` varchar(50) NOT NULL COMMENT '操作人',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='账户明细';

-- ----------------------------
-- Records of sys_bill
-- ----------------------------

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` varchar(32) NOT NULL,
  `tenant_id` varchar(32) NOT NULL,
  `group_id` varchar(32) NOT NULL,
  `name` varchar(50) NOT NULL,
  `dict_order` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('2c91ea5e65670f790165671f0e00003d', '402881e45f81056b015f810d3a770004', 'ff8080815ee6cf5a015ee6df17e3000f', '人保财险', '1');
INSERT INTO `sys_dict` VALUES ('2c91ea5e65670f790165671f3275003f', '402881e45f81056b015f810d3a770004', 'ff8080815ee6cf5a015ee6df17e3000f', '平安保险', '2');
INSERT INTO `sys_dict` VALUES ('2c91ea5e65beda910165c28531ea009b', '402881e45f81056b015f810d3a770004', '2c91ea5e65beda910165c277451b008c', '人保财险', '1');
INSERT INTO `sys_dict` VALUES ('2c91ea5e65beda910165c2854ceb009d', '402881e45f81056b015f810d3a770004', '2c91ea5e65beda910165c277451b008c', '交通局', '2');
INSERT INTO `sys_dict` VALUES ('402881e45f811136015f811aeebe0004', '402881e45f81056b015f810d3a770004', '402886325aad610f015aad6379a40000', '经理', '4');
INSERT INTO `sys_dict` VALUES ('402881e45f811136015f811b029f0003', '402881e45f81056b015f810d3a770004', '402886325aad610f015aad6379a40000', '财务', '2');
INSERT INTO `sys_dict` VALUES ('402881e45f811136015f811b5ce60003', '402881e45f81056b015f810d3a770004', '402886325aad610f015aad6379a40000', '安全', '3');
INSERT INTO `sys_dict` VALUES ('402881e46151889b016151c25e4b0002', '402881e45f81056b015f810d3a770004', '402886325cee1ea8015cee2322500009', '扣押', '2');
INSERT INTO `sys_dict` VALUES ('402881e461540de50161540eb6b00003', '402881e45f81056b015f810d3a770004', '402886325aad610f015aad6379a40000', '行政', '5');
INSERT INTO `sys_dict` VALUES ('402881e4617dcce201617dd0d8350003', '402881e45f81056b015f810d3a770004', '402881e4617d2bbe01617d6d54a30004', '身份证', '1');
INSERT INTO `sys_dict` VALUES ('402881e4617dcce201617dd0ee940003', '402881e45f81056b015f810d3a770004', '402881e4617d2bbe01617d6d54a30004', '驾驶证', '2');
INSERT INTO `sys_dict` VALUES ('402881e4617dcce201617dd10e110003', '402881e45f81056b015f810d3a770004', '402881e4617d2bbe01617d6d54a30004', '资格证', '3');
INSERT INTO `sys_dict` VALUES ('402881e4617dcce201617dd15bc10003', '402881e45f81056b015f810d3a770004', '402881e4617d2bbe01617d6d54a30004', '车辆登记证', '4');
INSERT INTO `sys_dict` VALUES ('402881e4617dcce201617dd17a3c0013', '402881e45f81056b015f810d3a770004', '402881e4617d2bbe01617d6d54a30004', '车辆行驶证', '5');
INSERT INTO `sys_dict` VALUES ('402881e4617dcce201617dd1d4330012', '402881e45f81056b015f810d3a770004', '402881e4617d2bbe01617d6d54a30004', '营运证', '6');
INSERT INTO `sys_dict` VALUES ('402881e4617dcce201617dd222bb0013', '402881e45f81056b015f810d3a770004', '402881e4617d2bbe01617d6d54a30004', '合同', '7');
INSERT INTO `sys_dict` VALUES ('402881e4617dcce201617dd2670e0013', '402881e45f81056b015f810d3a770004', '402881e4617d2bbe01617d6d54a30004', '车身照', '8');
INSERT INTO `sys_dict` VALUES ('402881e55fc2b891015fc2ba356f0003', '402881e45f81056b015f810d3a770004', '402886325cee1ea8015cee2322500009', '正常', '1');
INSERT INTO `sys_dict` VALUES ('402881e55fc2b891015fc2ba57eb0004', '402881e45f81056b015f810d3a770004', '402886325cee1ea8015cee2322500009', '失联', '3');
INSERT INTO `sys_dict` VALUES ('402881e664efacbf0164efb1fd200005', '402881e45f81056b015f810d3a770004', '402886325aad610f015aad6379a40000', '档案', '1');
INSERT INTO `sys_dict` VALUES ('402881ea68979fd7016898268a6e0002', '402881e45f81056b015f810d3a770004', 'ff8080815ee6cf5a015ee6df17e3000f', '测试', '3');
INSERT INTO `sys_dict` VALUES ('402881ea6898327a0168983669420000', '402881e45f81056b015f810d3a770004', 'ff8080815ee6cf5a015ee6df17e3000f', '安盛天平', '4');
INSERT INTO `sys_dict` VALUES ('402881ec6a855be9016a858babc30009', '402881e45f81056b015f810d3a770004', '402881ec6a855be9016a858aa41c0005', '不计免赔', '1');
INSERT INTO `sys_dict` VALUES ('402881ec6a855be9016a858bca8e000b', '402881e45f81056b015f810d3a770004', '402881ec6a855be9016a858aa41c0005', '车辆损失险', '2');
INSERT INTO `sys_dict` VALUES ('402881ec6a855be9016a858be906000d', '402881e45f81056b015f810d3a770004', '402881ec6a855be9016a858aa41c0005', '第三者责任险', '3');
INSERT INTO `sys_dict` VALUES ('402881ec6a855be9016a858c02d6000f', '402881e45f81056b015f810d3a770004', '402881ec6a855be9016a858aa41c0005', '车上人员责任险', '4');

-- ----------------------------
-- Table structure for sys_dict_group
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_group`;
CREATE TABLE `sys_dict_group` (
  `id` varchar(32) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_dict_group
-- ----------------------------
INSERT INTO `sys_dict_group` VALUES ('2c91ea5e65beda910165c277451b008c', 'unit', '往来单位');
INSERT INTO `sys_dict_group` VALUES ('402881e4617d2bbe01617d6d54a30004', 'picType', '图片类型');
INSERT INTO `sys_dict_group` VALUES ('402881ec6a855be9016a858aa41c0005', 'insKind', '商业险种');
INSERT INTO `sys_dict_group` VALUES ('402886325aad610f015aad6379a40000', 'department', '部门');
INSERT INTO `sys_dict_group` VALUES ('402886325cee1ea8015cee2322500009', 'vehicleStatus', '车辆状态');
INSERT INTO `sys_dict_group` VALUES ('ff8080815ee6cf5a015ee6df17e3000f', 'insCompany', '保险公司');

-- ----------------------------
-- Table structure for sys_index_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_index_data`;
CREATE TABLE `sys_index_data` (
  `id` varchar(32) NOT NULL,
  `tenant_id` varchar(32) NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` int(10) NOT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_index_data
-- ----------------------------
INSERT INTO `sys_index_data` VALUES ('2c91ea5e65beda910165e87d242704bb', '402881e45f81056b015f810d3a770004', 'currentAmount', '1', '1');
INSERT INTO `sys_index_data` VALUES ('2c91ea5e65beda910165e87d242f04bc', '402881e45f81056b015f810d3a770004', 'monthAdd', '2', '1');
INSERT INTO `sys_index_data` VALUES ('2c91ea5e65beda910165e87d242f04bd', '402881e45f81056b015f810d3a770004', 'monthReduce', '3', '1');
INSERT INTO `sys_index_data` VALUES ('2c91ea5e65beda910165e87d242f04be', '402881e45f81056b015f810d3a770004', 'yearDynamic', '4', '1');
INSERT INTO `sys_index_data` VALUES ('2c91ea5e65bedac80165e87e0ea20244', '402881e45f81056b015f810d3a770004', '扣押', '5', '2');
INSERT INTO `sys_index_data` VALUES ('2c91ea5e65bedac80165e87e0ea40245', '402881e45f81056b015f810d3a770004', '正常', '6', '2');
INSERT INTO `sys_index_data` VALUES ('2c91ea5e65bedac80165e87e0ea40246', '402881e45f81056b015f810d3a770004', '失联', '6', '2');
INSERT INTO `sys_index_data` VALUES ('2c91ea5e65bedac80165e87ef9170253', '402881e45f81056b015f810d3a770004', '行驶证到期', '67', '3');
INSERT INTO `sys_index_data` VALUES ('2c91ea5e65bedac80165e87ef9190254', '402881e45f81056b015f810d3a770004', '行驶证到期', '67', '4');
INSERT INTO `sys_index_data` VALUES ('2c91ea5e65bedac80165e87ef9190255', '402881e45f81056b015f810d3a770004', '行驶证到期', '0', '5');
INSERT INTO `sys_index_data` VALUES ('2c91ea5e65bedac80165e87ef9190256', '402881e45f81056b015f810d3a770004', '营运证到期', '0', '3');
INSERT INTO `sys_index_data` VALUES ('2c91ea5e65bedac80165e87ef9190257', '402881e45f81056b015f810d3a770004', '营运证到期', '4', '4');
INSERT INTO `sys_index_data` VALUES ('2c91ea5e65bedac80165e87ef9190258', '402881e45f81056b015f810d3a770004', '营运证到期', '0', '5');
INSERT INTO `sys_index_data` VALUES ('2c91ea5e65bedac80165e87ef9190259', '402881e45f81056b015f810d3a770004', '二维到期', '4234', '3');
INSERT INTO `sys_index_data` VALUES ('2c91ea5e65bedac80165e87ef919025a', '402881e45f81056b015f810d3a770004', '二维到期', '0', '4');
INSERT INTO `sys_index_data` VALUES ('2c91ea5e65bedac80165e87ef919025b', '402881e45f81056b015f810d3a770004', '二维到期', '234', '5');
INSERT INTO `sys_index_data` VALUES ('2c91ea5e65bedac80165e87ef919025c', '402881e45f81056b015f810d3a770004', '合同到期', '24', '3');
INSERT INTO `sys_index_data` VALUES ('2c91ea5e65bedac80165e87ef919025d', '402881e45f81056b015f810d3a770004', '合同到期', '0', '4');
INSERT INTO `sys_index_data` VALUES ('2c91ea5e65bedac80165e87ef919025e', '402881e45f81056b015f810d3a770004', '合同到期', '0', '5');
INSERT INTO `sys_index_data` VALUES ('2c91ea5e65bedac80165e87ef919025f', '402881e45f81056b015f810d3a770004', '保险到期', '423', '3');
INSERT INTO `sys_index_data` VALUES ('2c91ea5e65bedac80165e87ef9190260', '402881e45f81056b015f810d3a770004', '保险到期', '0', '4');
INSERT INTO `sys_index_data` VALUES ('2c91ea5e65bedac80165e87ef9190261', '402881e45f81056b015f810d3a770004', '保险到期', '42', '5');
INSERT INTO `sys_index_data` VALUES ('2c91ea5e65bedac80165e87ef9190262', '402881e45f81056b015f810d3a770004', '财务到期', '0', '3');
INSERT INTO `sys_index_data` VALUES ('2c91ea5e65bedac80165e87ef9190263', '402881e45f81056b015f810d3a770004', '财务到期', '0', '4');
INSERT INTO `sys_index_data` VALUES ('2c91ea5e65bedac80165e87ef9190264', '402881e45f81056b015f810d3a770004', '财务到期', '42', '5');
INSERT INTO `sys_index_data` VALUES ('2c91ea5e65bedac80165e87ef9190265', '402881e45f81056b015f810d3a770004', '贷款到期', '42', '3');
INSERT INTO `sys_index_data` VALUES ('2c91ea5e65bedac80165e87ef9190266', '402881e45f81056b015f810d3a770004', '贷款到期', '42', '4');
INSERT INTO `sys_index_data` VALUES ('2c91ea5e65bedac80165e87ef9190267', '402881e45f81056b015f810d3a770004', '贷款到期', '465', '5');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` varchar(32) NOT NULL,
  `tenant_id` varchar(32) NOT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `content` varchar(1500) NOT NULL,
  `operate_type` varchar(10) NOT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `operate_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('402881ed6e586435016e586730c30001', '402881e45f81056b015f810d3a770004', '18855558888', '管理员', '用户:管理员,登陆成功', '1', '127.0.0.1', '2019-11-11 10:59:48');

-- ----------------------------
-- Table structure for sys_region
-- ----------------------------
DROP TABLE IF EXISTS `sys_region`;
CREATE TABLE `sys_region` (
  `id` varchar(32) NOT NULL COMMENT 'ID',
  `name` varchar(50) NOT NULL COMMENT '城市名',
  `area` varchar(10) DEFAULT NULL,
  `license_plate` varchar(50) DEFAULT NULL,
  `pid` varchar(32) NOT NULL COMMENT '父ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_region
-- ----------------------------
INSERT INTO `sys_region` VALUES ('1', '中国', '', '', '0');
INSERT INTO `sys_region` VALUES ('10', '上海市', '', '', '1');
INSERT INTO `sys_region` VALUES ('1001', '上海市', '021', '沪', '10');
INSERT INTO `sys_region` VALUES ('11', '江苏省', '', '', '1');
INSERT INTO `sys_region` VALUES ('1101', '南京市', '025', '苏A', '11');
INSERT INTO `sys_region` VALUES ('1102', '无锡市', '510', '苏B', '11');
INSERT INTO `sys_region` VALUES ('1103', '镇江市', '511', '苏L', '11');
INSERT INTO `sys_region` VALUES ('1104', '苏州市', '512', '苏E', '11');
INSERT INTO `sys_region` VALUES ('1105', '南通市', '513', '苏F', '11');
INSERT INTO `sys_region` VALUES ('1106', '扬州市', '514', '苏K', '11');
INSERT INTO `sys_region` VALUES ('1107', '盐城市', '515', '苏J', '11');
INSERT INTO `sys_region` VALUES ('1108', '徐州市', '516', '苏C', '11');
INSERT INTO `sys_region` VALUES ('1109', '淮安市', '517', '苏H', '11');
INSERT INTO `sys_region` VALUES ('1110', '连云港市', '518', '苏G', '11');
INSERT INTO `sys_region` VALUES ('1111', '常州市', '519', '苏D', '11');
INSERT INTO `sys_region` VALUES ('1112', '泰州市', '523', '苏M', '11');
INSERT INTO `sys_region` VALUES ('1113', '宿迁市', '527', '苏N', '11');
INSERT INTO `sys_region` VALUES ('12', '浙江省', '', '', '1');
INSERT INTO `sys_region` VALUES ('1201', '衢州市', '570', '浙H', '12');
INSERT INTO `sys_region` VALUES ('1202', '杭州市', '571', '浙A', '12');
INSERT INTO `sys_region` VALUES ('1203', '湖州市', '572', '浙E', '12');
INSERT INTO `sys_region` VALUES ('1204', '嘉兴市', '573', '浙F', '12');
INSERT INTO `sys_region` VALUES ('1205', '宁波市', '574', '浙B', '12');
INSERT INTO `sys_region` VALUES ('1206', '绍兴市', '575', '浙D', '12');
INSERT INTO `sys_region` VALUES ('1207', '台州市', '576', '浙J', '12');
INSERT INTO `sys_region` VALUES ('1208', '温州市', '577', '浙C', '12');
INSERT INTO `sys_region` VALUES ('1209', '丽水市', '578', '浙K', '12');
INSERT INTO `sys_region` VALUES ('1210', '金华市', '579', '浙G', '12');
INSERT INTO `sys_region` VALUES ('1211', '舟山市', '580', '浙L', '12');
INSERT INTO `sys_region` VALUES ('13', '安徽省', '', '', '1');
INSERT INTO `sys_region` VALUES ('1301', '滁州市', '550', '皖M', '13');
INSERT INTO `sys_region` VALUES ('1302', '合肥市', '551', '皖A', '13');
INSERT INTO `sys_region` VALUES ('1303', '蚌埠市', '552', '皖C', '13');
INSERT INTO `sys_region` VALUES ('1304', '芜湖市', '553', '皖B', '13');
INSERT INTO `sys_region` VALUES ('1305', '淮南市', '554', '皖D', '13');
INSERT INTO `sys_region` VALUES ('1306', '马鞍山市', '555', '皖E', '13');
INSERT INTO `sys_region` VALUES ('1307', '安庆市', '556', '皖H', '13');
INSERT INTO `sys_region` VALUES ('1308', '宿州市', '557', '皖L', '13');
INSERT INTO `sys_region` VALUES ('1309', '阜阳市', '558', '皖K', '13');
INSERT INTO `sys_region` VALUES ('1310', '黄山市', '559', '皖J', '13');
INSERT INTO `sys_region` VALUES ('1311', '淮北市', '561', '皖F', '13');
INSERT INTO `sys_region` VALUES ('1312', '铜陵市', '562', '皖G', '13');
INSERT INTO `sys_region` VALUES ('1313', '宣城市', '563', '皖P', '13');
INSERT INTO `sys_region` VALUES ('1314', '六安市', '564', '皖N', '13');
INSERT INTO `sys_region` VALUES ('1315', '巢湖市', '565', '皖A', '13');
INSERT INTO `sys_region` VALUES ('1316', '池州市', '566', '皖R', '13');
INSERT INTO `sys_region` VALUES ('1317', '亳州市', '558', '皖S', '13');
INSERT INTO `sys_region` VALUES ('14', '福建省', '', '', '1');
INSERT INTO `sys_region` VALUES ('1401', '福州市', '591', '闽A', '14');
INSERT INTO `sys_region` VALUES ('1402', '厦门市', '592', '闽D', '14');
INSERT INTO `sys_region` VALUES ('1403', '宁德市', '593', '闽J', '14');
INSERT INTO `sys_region` VALUES ('1404', '莆田市', '594', '闽B', '14');
INSERT INTO `sys_region` VALUES ('1405', '泉州市', '595', '闽C', '14');
INSERT INTO `sys_region` VALUES ('1406', '漳州市', '596', '闽E', '14');
INSERT INTO `sys_region` VALUES ('1407', '龙岩市', '597', '闽F', '14');
INSERT INTO `sys_region` VALUES ('1408', '三明市', '598', '闽G', '14');
INSERT INTO `sys_region` VALUES ('1409', '南平市', '599', '闽H', '14');
INSERT INTO `sys_region` VALUES ('15', '江西省', '', '', '1');
INSERT INTO `sys_region` VALUES ('1501', '鹰潭市', '701', '赣L', '15');
INSERT INTO `sys_region` VALUES ('1502', '新余市', '790', '赣K', '15');
INSERT INTO `sys_region` VALUES ('1503', '南昌市', '791', '赣', '15');
INSERT INTO `sys_region` VALUES ('1504', '九江市', '792', '赣G', '15');
INSERT INTO `sys_region` VALUES ('1505', '上饶市', '793', '赣E', '15');
INSERT INTO `sys_region` VALUES ('1506', '抚州市', '794', '赣F', '15');
INSERT INTO `sys_region` VALUES ('1507', '宜春市', '795', '赣C', '15');
INSERT INTO `sys_region` VALUES ('1508', '吉安市', '796', '赣D', '15');
INSERT INTO `sys_region` VALUES ('1509', '赣州市', '797', '赣B', '15');
INSERT INTO `sys_region` VALUES ('1510', '景德镇市', '798', '赣H', '15');
INSERT INTO `sys_region` VALUES ('1511', '萍乡市', '799', '赣J', '15');
INSERT INTO `sys_region` VALUES ('16', '山东省', '', '', '1');
INSERT INTO `sys_region` VALUES ('1601', '菏泽市', '530', '鲁R', '16');
INSERT INTO `sys_region` VALUES ('1602', '济南市', '531', '鲁A', '16');
INSERT INTO `sys_region` VALUES ('1603', '青岛市', '532', '鲁', '16');
INSERT INTO `sys_region` VALUES ('1604', '淄博市', '533', '鲁C', '16');
INSERT INTO `sys_region` VALUES ('1605', '德州市', '534', '鲁N', '16');
INSERT INTO `sys_region` VALUES ('1606', '烟台市', '535', '鲁', '16');
INSERT INTO `sys_region` VALUES ('1607', '潍坊市', '536', '鲁', '16');
INSERT INTO `sys_region` VALUES ('1608', '济宁市', '537', '鲁H', '16');
INSERT INTO `sys_region` VALUES ('1609', '泰安市', '538', '鲁J', '16');
INSERT INTO `sys_region` VALUES ('1610', '临沂市', '539', '鲁Q', '16');
INSERT INTO `sys_region` VALUES ('1611', '滨州市', '543', '鲁M', '16');
INSERT INTO `sys_region` VALUES ('1612', '东营市', '546', '鲁E', '16');
INSERT INTO `sys_region` VALUES ('1613', '威海市', '631', '鲁K', '16');
INSERT INTO `sys_region` VALUES ('1614', '枣庄市', '632', '鲁D', '16');
INSERT INTO `sys_region` VALUES ('1615', '日照市', '633', '鲁L', '16');
INSERT INTO `sys_region` VALUES ('1616', '莱芜市', '634', '鲁S', '16');
INSERT INTO `sys_region` VALUES ('1617', '聊城市', '635', '鲁P', '16');
INSERT INTO `sys_region` VALUES ('17', '河南省', '', '', '1');
INSERT INTO `sys_region` VALUES ('1701', '商丘市', '370', '豫N', '17');
INSERT INTO `sys_region` VALUES ('1702', '郑州市', '371', '豫A', '17');
INSERT INTO `sys_region` VALUES ('1703', '安阳市', '372', '豫E', '17');
INSERT INTO `sys_region` VALUES ('1704', '新乡市', '373', '豫G', '17');
INSERT INTO `sys_region` VALUES ('1705', '许昌市', '374', '豫K', '17');
INSERT INTO `sys_region` VALUES ('1706', '平顶山市', '375', '豫D', '17');
INSERT INTO `sys_region` VALUES ('1707', '信阳市', '376', '豫S', '17');
INSERT INTO `sys_region` VALUES ('1708', '南阳市', '377', '豫R', '17');
INSERT INTO `sys_region` VALUES ('1709', '开封市', '378', '豫B', '17');
INSERT INTO `sys_region` VALUES ('1710', '洛阳市', '379', '豫C', '17');
INSERT INTO `sys_region` VALUES ('1711', '焦作市', '391', '豫H', '17');
INSERT INTO `sys_region` VALUES ('1712', '鹤壁市', '392', '豫F', '17');
INSERT INTO `sys_region` VALUES ('1713', '濮阳市', '393', '豫J', '17');
INSERT INTO `sys_region` VALUES ('1714', '周口市', '394', '豫P', '17');
INSERT INTO `sys_region` VALUES ('1715', '漯河市', '395', '豫L', '17');
INSERT INTO `sys_region` VALUES ('1716', '驻马店市', '396', '豫Q', '17');
INSERT INTO `sys_region` VALUES ('1717', '三门峡市', '398', '豫M', '17');
INSERT INTO `sys_region` VALUES ('18', '湖北省', '', '', '1');
INSERT INTO `sys_region` VALUES ('1801', '武汉市', '027', '鄂A', '18');
INSERT INTO `sys_region` VALUES ('1802', '襄樊市', '710', '鄂F', '18');
INSERT INTO `sys_region` VALUES ('1803', '鄂州市', '711', '鄂G', '18');
INSERT INTO `sys_region` VALUES ('1804', '孝感市', '712', '鄂K', '18');
INSERT INTO `sys_region` VALUES ('1805', '黄冈市', '713', '鄂J', '18');
INSERT INTO `sys_region` VALUES ('1806', '黄石市', '714', '鄂B', '18');
INSERT INTO `sys_region` VALUES ('1807', '咸宁市', '715', '鄂L', '18');
INSERT INTO `sys_region` VALUES ('1808', '荆州市', '716', '鄂D', '18');
INSERT INTO `sys_region` VALUES ('1809', '宜昌市', '717', '鄂E', '18');
INSERT INTO `sys_region` VALUES ('1810', '恩施土家族苗族自治州', '718', '鄂Q', '18');
INSERT INTO `sys_region` VALUES ('1811', '十堰市', '719', '鄂C', '18');
INSERT INTO `sys_region` VALUES ('1812', '随州市', '722', '鄂S', '18');
INSERT INTO `sys_region` VALUES ('1813', '荆门市', '724', '鄂H', '18');
INSERT INTO `sys_region` VALUES ('19', '湖南省', '', '', '1');
INSERT INTO `sys_region` VALUES ('1901', '岳阳市', '730', '湘F', '19');
INSERT INTO `sys_region` VALUES ('1902', '长沙市', '731', '湘A', '19');
INSERT INTO `sys_region` VALUES ('1903', '湘潭市', '732', '湘C', '19');
INSERT INTO `sys_region` VALUES ('1904', '株洲市', '733', '湘B', '19');
INSERT INTO `sys_region` VALUES ('1905', '衡阳市', '734', '湘D', '19');
INSERT INTO `sys_region` VALUES ('1906', '郴州市', '735', '湘L', '19');
INSERT INTO `sys_region` VALUES ('1907', '常德市', '736', '湘J', '19');
INSERT INTO `sys_region` VALUES ('1908', '益阳市', '737', '湘H', '19');
INSERT INTO `sys_region` VALUES ('1909', '娄底市', '738', '湘K', '19');
INSERT INTO `sys_region` VALUES ('1910', '邵阳市', '739', '湘E', '19');
INSERT INTO `sys_region` VALUES ('1911', '湘西土家族苗族自治州', '743', '湘U', '19');
INSERT INTO `sys_region` VALUES ('1912', '张家界市', '744', '湘G', '19');
INSERT INTO `sys_region` VALUES ('1913', '怀化市', '745', '湘N', '19');
INSERT INTO `sys_region` VALUES ('1914', '永州市', '746', '湘M', '19');
INSERT INTO `sys_region` VALUES ('2', '北京市', '', '', '1');
INSERT INTO `sys_region` VALUES ('20', '广东省', '', '', '1');
INSERT INTO `sys_region` VALUES ('2001', '广州市', '020', '粤A', '20');
INSERT INTO `sys_region` VALUES ('2002', '汕尾市', '660', '粤N', '20');
INSERT INTO `sys_region` VALUES ('2003', '阳江市', '662', '粤Q', '20');
INSERT INTO `sys_region` VALUES ('2004', '揭阳市', '663', '粤V', '20');
INSERT INTO `sys_region` VALUES ('2005', '茂名市', '668', '粤K', '20');
INSERT INTO `sys_region` VALUES ('2006', '江门市', '750', '粤J', '20');
INSERT INTO `sys_region` VALUES ('2007', '韶关市', '751', '粤F', '20');
INSERT INTO `sys_region` VALUES ('2008', '惠州市', '752', '粤L', '20');
INSERT INTO `sys_region` VALUES ('2009', '梅州市', '753', '粤M', '20');
INSERT INTO `sys_region` VALUES ('201', '北京', '010', '京', '2');
INSERT INTO `sys_region` VALUES ('2010', '汕头市', '754', '粤D', '20');
INSERT INTO `sys_region` VALUES ('2011', '深圳市', '755', '粤B', '20');
INSERT INTO `sys_region` VALUES ('2012', '珠海市', '756', '粤C', '20');
INSERT INTO `sys_region` VALUES ('2013', '佛山市', '757', '粤', '20');
INSERT INTO `sys_region` VALUES ('2014', '肇庆市', '758', '粤H', '20');
INSERT INTO `sys_region` VALUES ('2015', '湛江市', '759', '粤G', '20');
INSERT INTO `sys_region` VALUES ('2016', '中山市', '760', '粤T', '20');
INSERT INTO `sys_region` VALUES ('2017', '河源市', '762', '粤P', '20');
INSERT INTO `sys_region` VALUES ('2018', '清远市', '763', '粤R', '20');
INSERT INTO `sys_region` VALUES ('2019', '云浮市', '766', '粤W', '20');
INSERT INTO `sys_region` VALUES ('2020', '潮州市', '768', '粤U', '20');
INSERT INTO `sys_region` VALUES ('2021', '东莞市', '769', '粤S', '20');
INSERT INTO `sys_region` VALUES ('21', '广西壮族自治区', '', '', '1');
INSERT INTO `sys_region` VALUES ('2101', '防城港市', '770', '桂P', '21');
INSERT INTO `sys_region` VALUES ('2102', '南宁市', '771', '桂A', '21');
INSERT INTO `sys_region` VALUES ('2103', '崇左市', '771', '桂F', '21');
INSERT INTO `sys_region` VALUES ('2104', '柳州市', '772', '桂B', '21');
INSERT INTO `sys_region` VALUES ('2105', '来宾市', '772', '桂G', '21');
INSERT INTO `sys_region` VALUES ('2106', '桂林市', '773', '桂C', '21');
INSERT INTO `sys_region` VALUES ('2107', '梧州市', '774', '桂D', '21');
INSERT INTO `sys_region` VALUES ('2108', '贺州市', '774', '桂J', '21');
INSERT INTO `sys_region` VALUES ('2109', '玉林市', '775', '桂K', '21');
INSERT INTO `sys_region` VALUES ('2110', '贵港市', '775', '桂R', '21');
INSERT INTO `sys_region` VALUES ('2111', '百色市', '776', '桂L', '21');
INSERT INTO `sys_region` VALUES ('2112', '钦州市', '777', '桂N', '21');
INSERT INTO `sys_region` VALUES ('2113', '河池市', '778', '桂M', '21');
INSERT INTO `sys_region` VALUES ('2114', '北海市', '779', '桂E', '21');
INSERT INTO `sys_region` VALUES ('22', '海南省', '', '', '1');
INSERT INTO `sys_region` VALUES ('2201', '儋州市', '890', '琼F', '22');
INSERT INTO `sys_region` VALUES ('2202', '海口市', '898', '琼A', '22');
INSERT INTO `sys_region` VALUES ('2203', '三亚市', '899', '琼B', '22');
INSERT INTO `sys_region` VALUES ('23', '重庆市', '', '', '1');
INSERT INTO `sys_region` VALUES ('2301', '重庆', '023', '渝', '23');
INSERT INTO `sys_region` VALUES ('24', '四川省', '', '', '1');
INSERT INTO `sys_region` VALUES ('2401', '成都市', '028', '川A', '24');
INSERT INTO `sys_region` VALUES ('2402', '眉山市', '028', '川Z', '24');
INSERT INTO `sys_region` VALUES ('2403', '资阳市', '028', '川M', '24');
INSERT INTO `sys_region` VALUES ('2404', '攀枝花市', '812', '川D', '24');
INSERT INTO `sys_region` VALUES ('2405', '自贡市', '813', '川C', '24');
INSERT INTO `sys_region` VALUES ('2406', '绵阳市', '816', '川B', '24');
INSERT INTO `sys_region` VALUES ('2407', '南充市', '817', '川R', '24');
INSERT INTO `sys_region` VALUES ('2408', '达州市', '818', '川S', '24');
INSERT INTO `sys_region` VALUES ('2409', '遂宁市', '825', '川J', '24');
INSERT INTO `sys_region` VALUES ('2410', '广安市', '826', '川X', '24');
INSERT INTO `sys_region` VALUES ('2411', '巴中市', '827', '川Y', '24');
INSERT INTO `sys_region` VALUES ('2412', '泸州市', '830', '川E', '24');
INSERT INTO `sys_region` VALUES ('2413', '宜宾市', '831', '川Q', '24');
INSERT INTO `sys_region` VALUES ('2414', '内江市', '832', '川K', '24');
INSERT INTO `sys_region` VALUES ('2415', '乐山市', '833', '川L', '24');
INSERT INTO `sys_region` VALUES ('2416', '凉山彝族自治州', '834', '川W', '24');
INSERT INTO `sys_region` VALUES ('2417', '雅安市', '835', '川T', '24');
INSERT INTO `sys_region` VALUES ('2418', '甘孜藏族自治州', '836', '川V', '24');
INSERT INTO `sys_region` VALUES ('2419', '阿坝藏族羌族自治州', '837', '川U', '24');
INSERT INTO `sys_region` VALUES ('2420', '德阳市', '838', '川F', '24');
INSERT INTO `sys_region` VALUES ('2421', '广元市', '839', '川H', '24');
INSERT INTO `sys_region` VALUES ('25', '贵州省', '', '', '1');
INSERT INTO `sys_region` VALUES ('2501', '贵阳市', '851', '贵A', '25');
INSERT INTO `sys_region` VALUES ('2502', '遵义市', '852', '贵C', '25');
INSERT INTO `sys_region` VALUES ('2503', '安顺市', '853', '贵G', '25');
INSERT INTO `sys_region` VALUES ('2504', '黔南布依族苗族自治州', '854', '贵J', '25');
INSERT INTO `sys_region` VALUES ('2505', '黔东南苗族侗族自治州', '855', '贵H', '25');
INSERT INTO `sys_region` VALUES ('2506', '铜仁地区', '856', '贵D', '25');
INSERT INTO `sys_region` VALUES ('2507', '毕节地区', '857', '贵F', '25');
INSERT INTO `sys_region` VALUES ('2508', '六盘水市', '858', '贵B', '25');
INSERT INTO `sys_region` VALUES ('2509', '黔西南布依族苗族自治州', '859', '贵E', '25');
INSERT INTO `sys_region` VALUES ('26', '云南省', '', '', '1');
INSERT INTO `sys_region` VALUES ('2601', '西双版纳傣族自治州', '691', '云K', '26');
INSERT INTO `sys_region` VALUES ('2602', '德宏傣族景颇族自治州', '692', '云N', '26');
INSERT INTO `sys_region` VALUES ('2603', '昭通市', '870', '云C', '26');
INSERT INTO `sys_region` VALUES ('2604', '昆明市', '871', '云A', '26');
INSERT INTO `sys_region` VALUES ('2605', '大理白族自治州', '872', '云L', '26');
INSERT INTO `sys_region` VALUES ('2606', '红河哈尼族彝族自治州', '873', '云G', '26');
INSERT INTO `sys_region` VALUES ('2607', '曲靖市', '874', '云D', '26');
INSERT INTO `sys_region` VALUES ('2608', '保山市', '875', '云M', '26');
INSERT INTO `sys_region` VALUES ('2609', '文山壮族苗族自治州', '876', '云H', '26');
INSERT INTO `sys_region` VALUES ('2610', '玉溪市', '877', '云F', '26');
INSERT INTO `sys_region` VALUES ('2611', '楚雄彝族自治州', '878', '云E', '26');
INSERT INTO `sys_region` VALUES ('2612', '普洱市', '879', '云J', '26');
INSERT INTO `sys_region` VALUES ('2613', '临沧市', '883', '云S', '26');
INSERT INTO `sys_region` VALUES ('2614', '怒江傈僳族自治州', '886', '云Q', '26');
INSERT INTO `sys_region` VALUES ('2615', '迪庆藏族自治州', '887', '云R', '26');
INSERT INTO `sys_region` VALUES ('2616', '丽江市', '888', '云P', '26');
INSERT INTO `sys_region` VALUES ('27', '西藏自治区', '', '', '1');
INSERT INTO `sys_region` VALUES ('2701', '拉萨市', '891', '藏A', '27');
INSERT INTO `sys_region` VALUES ('2702', '日喀则地区', '892', '藏D', '27');
INSERT INTO `sys_region` VALUES ('2703', '山南地区', '893', '藏C', '27');
INSERT INTO `sys_region` VALUES ('2704', '林芝地区', '894', '藏G', '27');
INSERT INTO `sys_region` VALUES ('2705', '昌都地区', '895', '藏B', '27');
INSERT INTO `sys_region` VALUES ('2706', '那曲地区', '896', '藏E', '27');
INSERT INTO `sys_region` VALUES ('2707', '阿里地区', '897', '藏F', '27');
INSERT INTO `sys_region` VALUES ('28', '陕西省', '', '', '1');
INSERT INTO `sys_region` VALUES ('2801', '西安市', '029', '陕A', '28');
INSERT INTO `sys_region` VALUES ('2802', '咸阳市', '910', '陕D', '28');
INSERT INTO `sys_region` VALUES ('2803', '延安市', '911', '陕J', '28');
INSERT INTO `sys_region` VALUES ('2804', '榆林市', '912', '陕K', '28');
INSERT INTO `sys_region` VALUES ('2805', '渭南市', '913', '陕E', '28');
INSERT INTO `sys_region` VALUES ('2806', '商洛市', '914', '陕H', '28');
INSERT INTO `sys_region` VALUES ('2807', '安康市', '915', '陕G', '28');
INSERT INTO `sys_region` VALUES ('2808', '汉中市', '916', '陕F', '28');
INSERT INTO `sys_region` VALUES ('2809', '宝鸡市', '917', '陕C', '28');
INSERT INTO `sys_region` VALUES ('2810', '铜川市', '919', '陕B', '28');
INSERT INTO `sys_region` VALUES ('29', '甘肃省', '', '', '1');
INSERT INTO `sys_region` VALUES ('2901', '临夏回族自治州', '930', '甘N', '29');
INSERT INTO `sys_region` VALUES ('2902', '兰州市', '931', '甘A', '29');
INSERT INTO `sys_region` VALUES ('2903', '定西市', '932', '甘J', '29');
INSERT INTO `sys_region` VALUES ('2904', '平凉市', '933', '甘L', '29');
INSERT INTO `sys_region` VALUES ('2905', '庆阳市', '934', '甘M', '29');
INSERT INTO `sys_region` VALUES ('2906', '武威市', '935', '甘H', '29');
INSERT INTO `sys_region` VALUES ('2907', '金昌市', '935', '甘C', '29');
INSERT INTO `sys_region` VALUES ('2908', '张掖市', '936', '甘G', '29');
INSERT INTO `sys_region` VALUES ('2909', '酒泉市', '937', '甘F', '29');
INSERT INTO `sys_region` VALUES ('2910', '嘉峪关市', '937', '甘B', '29');
INSERT INTO `sys_region` VALUES ('2911', '天水市', '938', '甘E', '29');
INSERT INTO `sys_region` VALUES ('2912', '陇南市', '939', '甘K', '29');
INSERT INTO `sys_region` VALUES ('2913', '甘南藏族自治州', '941', '甘P', '29');
INSERT INTO `sys_region` VALUES ('2914', '白银市', '943', '甘D', '29');
INSERT INTO `sys_region` VALUES ('3', '天津市', '', '', '1');
INSERT INTO `sys_region` VALUES ('30', '青海省', '', '', '1');
INSERT INTO `sys_region` VALUES ('3001', '海北藏族自治州', '970', '青C', '30');
INSERT INTO `sys_region` VALUES ('3002', '西宁市', '971', '青A', '30');
INSERT INTO `sys_region` VALUES ('3003', '海东地区', '972', '青B', '30');
INSERT INTO `sys_region` VALUES ('3004', '黄南藏族自治州', '973', '青D', '30');
INSERT INTO `sys_region` VALUES ('3005', '海南藏族自治州', '974', '青E', '30');
INSERT INTO `sys_region` VALUES ('3006', '果洛藏族自治州', '975', '青F', '30');
INSERT INTO `sys_region` VALUES ('3007', '玉树藏族自治州', '976', '青G', '30');
INSERT INTO `sys_region` VALUES ('3008', '海西蒙古族藏族自治州', '977', '青H', '30');
INSERT INTO `sys_region` VALUES ('301', '天津', '022', '津', '3');
INSERT INTO `sys_region` VALUES ('31', '宁夏回族自治区', '', '', '1');
INSERT INTO `sys_region` VALUES ('3101', '银川市', '951', '宁A', '31');
INSERT INTO `sys_region` VALUES ('3102', '石嘴山市', '952', '宁B', '31');
INSERT INTO `sys_region` VALUES ('3103', '吴忠市', '953', '宁C', '31');
INSERT INTO `sys_region` VALUES ('3104', '固原市', '954', '宁D', '31');
INSERT INTO `sys_region` VALUES ('3105', '中卫市', '955', '宁E', '31');
INSERT INTO `sys_region` VALUES ('32', '新疆维吾尔自治区', '', '', '1');
INSERT INTO `sys_region` VALUES ('3201', '塔城地区', '901', '新G', '32');
INSERT INTO `sys_region` VALUES ('3202', '哈密地区', '902', '新L', '32');
INSERT INTO `sys_region` VALUES ('3203', '和田地区', '903', '新R', '32');
INSERT INTO `sys_region` VALUES ('3204', '阿勒泰地区', '906', '新H', '32');
INSERT INTO `sys_region` VALUES ('3205', '克孜勒苏柯尔克孜自治州', '908', '新P', '32');
INSERT INTO `sys_region` VALUES ('3206', '博尔塔拉蒙古自治州', '909', '新E', '32');
INSERT INTO `sys_region` VALUES ('3207', '克拉玛依市', '990', '新J', '32');
INSERT INTO `sys_region` VALUES ('3208', '乌鲁木齐市', '991', '新A', '32');
INSERT INTO `sys_region` VALUES ('3209', '昌吉回族自治州', '994', '新B', '32');
INSERT INTO `sys_region` VALUES ('3210', '吐鲁番地区', '995', '新K', '32');
INSERT INTO `sys_region` VALUES ('3211', '巴音郭楞蒙古自治州', '996', '新M', '32');
INSERT INTO `sys_region` VALUES ('3212', '阿克苏地区', '997', '新N', '32');
INSERT INTO `sys_region` VALUES ('3213', '喀什地区', '998', '新Q', '32');
INSERT INTO `sys_region` VALUES ('3214', '伊犁哈萨克自治州', '999', '新', '32');
INSERT INTO `sys_region` VALUES ('4', '河北省', '', '', '1');
INSERT INTO `sys_region` VALUES ('401', '邯郸市', '310', '冀D', '4');
INSERT INTO `sys_region` VALUES ('402', '石家庄市', '311', '冀A', '4');
INSERT INTO `sys_region` VALUES ('403', '保定市', '312', '冀F', '4');
INSERT INTO `sys_region` VALUES ('404', '张家口市', '313', '冀G', '4');
INSERT INTO `sys_region` VALUES ('405', '承德市', '314', '冀H', '4');
INSERT INTO `sys_region` VALUES ('406', '唐山市', '315', '冀B', '4');
INSERT INTO `sys_region` VALUES ('407', '廊坊市', '316', '冀R', '4');
INSERT INTO `sys_region` VALUES ('408', '沧州市', '317', '冀J', '4');
INSERT INTO `sys_region` VALUES ('409', '衡水市', '318', '冀T', '4');
INSERT INTO `sys_region` VALUES ('410', '邢台市', '319', '冀E', '4');
INSERT INTO `sys_region` VALUES ('411', '秦皇岛市', '335', '冀C', '4');
INSERT INTO `sys_region` VALUES ('5', '山西省', '', '', '1');
INSERT INTO `sys_region` VALUES ('501', '朔州市', '349', '晋F', '5');
INSERT INTO `sys_region` VALUES ('502', '忻州市', '350', '晋H', '5');
INSERT INTO `sys_region` VALUES ('503', '太原市', '351', '晋', '5');
INSERT INTO `sys_region` VALUES ('504', '大同市', '352', '晋B', '5');
INSERT INTO `sys_region` VALUES ('505', '阳泉市', '353', '晋C', '5');
INSERT INTO `sys_region` VALUES ('506', '晋中市', '354', '晋K', '5');
INSERT INTO `sys_region` VALUES ('507', '长治市', '355', '晋D', '5');
INSERT INTO `sys_region` VALUES ('508', '晋城市', '356', '晋E', '5');
INSERT INTO `sys_region` VALUES ('509', '临汾市', '357', '晋L', '5');
INSERT INTO `sys_region` VALUES ('510', '吕梁市', '358', '晋J', '5');
INSERT INTO `sys_region` VALUES ('511', '运城市', '359', '晋M', '5');
INSERT INTO `sys_region` VALUES ('6', '内蒙古自治区', '', '', '1');
INSERT INTO `sys_region` VALUES ('601', '呼伦贝尔市', '470', '蒙E', '6');
INSERT INTO `sys_region` VALUES ('602', '呼和浩特市', '471', '蒙A', '6');
INSERT INTO `sys_region` VALUES ('603', '包头市', '472', '蒙B', '6');
INSERT INTO `sys_region` VALUES ('604', '乌海市', '473', '蒙C', '6');
INSERT INTO `sys_region` VALUES ('605', '乌兰察布市', '474', '蒙J', '6');
INSERT INTO `sys_region` VALUES ('606', '通辽市', '475', '蒙G', '6');
INSERT INTO `sys_region` VALUES ('607', '赤峰市', '476', '蒙D', '6');
INSERT INTO `sys_region` VALUES ('608', '鄂尔多斯市', '477', '蒙K', '6');
INSERT INTO `sys_region` VALUES ('609', '巴彦淖尔市', '478', '蒙L', '6');
INSERT INTO `sys_region` VALUES ('610', '锡林郭勒盟', '479', '蒙H', '6');
INSERT INTO `sys_region` VALUES ('611', '兴安盟', '482', '蒙F', '6');
INSERT INTO `sys_region` VALUES ('612', '阿拉善盟', '483', '蒙M', '6');
INSERT INTO `sys_region` VALUES ('7', '辽宁省', '', '', '1');
INSERT INTO `sys_region` VALUES ('701', '沈阳市', '024', '辽A', '7');
INSERT INTO `sys_region` VALUES ('702', '铁岭市', '410', '辽M', '7');
INSERT INTO `sys_region` VALUES ('703', '大连市', '411', '辽B', '7');
INSERT INTO `sys_region` VALUES ('704', '鞍山市', '412', '辽C', '7');
INSERT INTO `sys_region` VALUES ('705', '抚顺市', '413', '辽D', '7');
INSERT INTO `sys_region` VALUES ('706', '本溪市', '414', '辽E', '7');
INSERT INTO `sys_region` VALUES ('707', '丹东市', '415', '辽F', '7');
INSERT INTO `sys_region` VALUES ('708', '锦州市', '416', '辽G', '7');
INSERT INTO `sys_region` VALUES ('709', '营口市', '417', '辽H', '7');
INSERT INTO `sys_region` VALUES ('710', '阜新市', '418', '辽J', '7');
INSERT INTO `sys_region` VALUES ('711', '辽阳市', '419', '辽K', '7');
INSERT INTO `sys_region` VALUES ('712', '朝阳市', '421', '辽N', '7');
INSERT INTO `sys_region` VALUES ('713', '盘锦市', '427', '辽L', '7');
INSERT INTO `sys_region` VALUES ('714', '葫芦岛市', '429', '辽P', '7');
INSERT INTO `sys_region` VALUES ('8', '吉林省', '', '', '1');
INSERT INTO `sys_region` VALUES ('801', '长春市', '431', '吉A', '8');
INSERT INTO `sys_region` VALUES ('802', '吉林市', '432', '吉B', '8');
INSERT INTO `sys_region` VALUES ('803', '延边朝鲜族自治州', '433', '吉H', '8');
INSERT INTO `sys_region` VALUES ('804', '四平市', '434', '吉C', '8');
INSERT INTO `sys_region` VALUES ('805', '通化市', '435', '吉E', '8');
INSERT INTO `sys_region` VALUES ('806', '白城市', '436', '吉G', '8');
INSERT INTO `sys_region` VALUES ('807', '辽源市', '437', '吉D', '8');
INSERT INTO `sys_region` VALUES ('808', '松原市', '438', '吉J', '8');
INSERT INTO `sys_region` VALUES ('809', '白山市', '439', '吉F', '8');
INSERT INTO `sys_region` VALUES ('9', '黑龙江省', '', '', '1');
INSERT INTO `sys_region` VALUES ('901', '哈尔滨市', '451', '黑', '9');
INSERT INTO `sys_region` VALUES ('902', '齐齐哈尔市', '452', '黑B', '9');
INSERT INTO `sys_region` VALUES ('903', '牡丹江市', '453', '黑C', '9');
INSERT INTO `sys_region` VALUES ('904', '佳木斯市', '454', '黑D', '9');
INSERT INTO `sys_region` VALUES ('905', '绥化市', '455', '黑M', '9');
INSERT INTO `sys_region` VALUES ('906', '黑河市', '456', '黑N', '9');
INSERT INTO `sys_region` VALUES ('907', '大兴安岭地区', '457', '黑P', '9');
INSERT INTO `sys_region` VALUES ('908', '伊春市', '458', '黑F', '9');
INSERT INTO `sys_region` VALUES ('909', '大庆市', '459', '黑E', '9');
INSERT INTO `sys_region` VALUES ('910', '七台河市', '464', '黑K', '9');
INSERT INTO `sys_region` VALUES ('911', '鸡西市', '467', '黑G', '9');
INSERT INTO `sys_region` VALUES ('912', '鹤岗市', '468', '黑H', '9');
INSERT INTO `sys_region` VALUES ('913', '双鸭山市', '469', '黑J', '9');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(32) NOT NULL,
  `phone` varchar(11) NOT NULL COMMENT '手机',
  `name` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `department` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人id',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('402881ed6e58121b016e581c326d0001', '18855558888', '管理员', '0b65433c14fe008aca82d1abad219834', '402881e461540de50161540eb6b00003', null, null, '2019-11-11 09:37:53', '管理员');

-- ----------------------------
-- Table structure for sys_user_login
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_login`;
CREATE TABLE `sys_user_login` (
  `id` varchar(32) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `login_num` int(5) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_login
-- ----------------------------
INSERT INTO `sys_user_login` VALUES ('402881e96a9b39de016a9b3a39960000', '15518855110', '127.0.0.1', '2', '2019-05-09 14:14:05');

-- ----------------------------
-- Table structure for sys_user_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_menu`;
CREATE TABLE `sys_user_menu` (
  `user_id` varchar(32) DEFAULT NULL,
  `menu_id` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_menu
-- ----------------------------
INSERT INTO `sys_user_menu` VALUES ('402881ed6e58121b016e581c326d0001', '402881e46101d38701610384658f0009');
INSERT INTO `sys_user_menu` VALUES ('402881ed6e58121b016e581c326d0001', '2c91ea5e65beda910165d5e041150399');
INSERT INTO `sys_user_menu` VALUES ('402881ed6e58121b016e581c326d0001', '8a8ab0b246dc81120146dc8180d2001a');
INSERT INTO `sys_user_menu` VALUES ('402881ed6e58121b016e581c326d0001', '2c91ea5e65beda910165d5dfe8cf0397');
INSERT INTO `sys_user_menu` VALUES ('402881ed6e58121b016e581c326d0001', '402881e76a90c71d016a90e86e130007');
INSERT INTO `sys_user_menu` VALUES ('402881ed6e58121b016e581c326d0001', 'ff8080815ee6cf5a015ee6d059140001');
INSERT INTO `sys_user_menu` VALUES ('402881ed6e58121b016e581c326d0001', 'ff8080815edac8e9015edaca1aba0001');
INSERT INTO `sys_user_menu` VALUES ('402881ed6e58121b016e581c326d0001', '402881e76a90c71d016a90ed60ca0013');
INSERT INTO `sys_user_menu` VALUES ('402881ed6e58121b016e581c326d0001', '2c91ea5e65beda910165d5e08499039b');
INSERT INTO `sys_user_menu` VALUES ('402881ed6e58121b016e581c326d0001', '402881e4602987f101602995ae200003');
INSERT INTO `sys_user_menu` VALUES ('402881ed6e58121b016e581c326d0001', '402881e76a90c71d016a90ec39ea000d');
INSERT INTO `sys_user_menu` VALUES ('402881ed6e58121b016e581c326d0001', '4028863158285237015828f69d1d0003');
INSERT INTO `sys_user_menu` VALUES ('402881ed6e58121b016e581c326d0001', 'ff8080815e991de8015e993a1c2d0008');
INSERT INTO `sys_user_menu` VALUES ('402881ed6e58121b016e581c326d0001', '402881e4604d862a01604d8b6e5f0001');
INSERT INTO `sys_user_menu` VALUES ('402881ed6e58121b016e581c326d0001', 'ff8080815e7a20f4015e7a233ece0005');
INSERT INTO `sys_user_menu` VALUES ('402881ed6e58121b016e581c326d0001', '402881e76a90c71d016a90e934c3000b');
INSERT INTO `sys_user_menu` VALUES ('402881ed6e58121b016e581c326d0001', '402886325c4275ac015c4278cb9b0003');
INSERT INTO `sys_user_menu` VALUES ('402881ed6e58121b016e581c326d0001', '402881e76a90c71d016a90e8ed530009');
INSERT INTO `sys_user_menu` VALUES ('402881ed6e58121b016e581c326d0001', '402881e76a90c71d016a90ed15840011');
INSERT INTO `sys_user_menu` VALUES ('402881ed6e58121b016e581c326d0001', '402886325c1fdccc015c1ff3c0c50001');
INSERT INTO `sys_user_menu` VALUES ('402881ed6e58121b016e581c326d0001', '402881e5629d482901629d7cb09d000e');
INSERT INTO `sys_user_menu` VALUES ('402881ed6e58121b016e581c326d0001', 'ff8080815ee6cf5a015ee6d19e6b0006');
INSERT INTO `sys_user_menu` VALUES ('402881ed6e58121b016e581c326d0001', '8a8ab0b246dc81120146dc8180df001f');
INSERT INTO `sys_user_menu` VALUES ('402881ed6e58121b016e581c326d0001', '402886325ce91582015ce91f08120001');
INSERT INTO `sys_user_menu` VALUES ('402881ed6e58121b016e581c326d0001', '4028863158285237015828f5e4c00001');
INSERT INTO `sys_user_menu` VALUES ('402881ed6e58121b016e581c326d0001', '402881e4604a4e4601604a5b87ff0002');
INSERT INTO `sys_user_menu` VALUES ('402881ed6e58121b016e581c326d0001', '402881e4611645cf016116684c840003');
INSERT INTO `sys_user_menu` VALUES ('402881ed6e58121b016e581c326d0001', 'ff8080815f4bcadb015f4bd102540001');
INSERT INTO `sys_user_menu` VALUES ('402881ed6e58121b016e581c326d0001', 'ff8080815e991de8015e993a8a5e000b');
INSERT INTO `sys_user_menu` VALUES ('402881ed6e58121b016e581c326d0001', '2c91ea5e65beda910165bedd199d0004');
INSERT INTO `sys_user_menu` VALUES ('402881ed6e58121b016e581c326d0001', '402881e76a90c71d016a90ec8b52000f');
INSERT INTO `sys_user_menu` VALUES ('402881ed6e58121b016e581c326d0001', '402886325ca5f98a015ca60ce9350003');
INSERT INTO `sys_user_menu` VALUES ('402881ed6e58121b016e581c326d0001', 'ff8080815f422492015f422675e90002');
INSERT INTO `sys_user_menu` VALUES ('402881ed6e58121b016e581c326d0001', 'ff8080815e6997af015e699cf3e70003');
INSERT INTO `sys_user_menu` VALUES ('402881ed6e58121b016e581c326d0001', '402881e46131f63a016131fd016b0002');
INSERT INTO `sys_user_menu` VALUES ('402881ed6e58121b016e581c326d0001', '402881e4604d862a01604d8d09720003');
INSERT INTO `sys_user_menu` VALUES ('402881ed6e58121b016e581c326d0001', '402881e4604d862a01604d8dcba90005');
INSERT INTO `sys_user_menu` VALUES ('402881ed6e58121b016e581c326d0001', '402881e5629d482901629d77a49c0004');
INSERT INTO `sys_user_menu` VALUES ('402881ed6e58121b016e581c326d0001', 'ff8080815f422492015f4226e3e00004');
INSERT INTO `sys_user_menu` VALUES ('402881ed6e58121b016e581c326d0001', '402881e76a90c71d016a90e7b33e0005');
INSERT INTO `sys_user_menu` VALUES ('402881ed6e58121b016e581c326d0001', '2c91ea5e65beda910165bedc4c8c0002');

-- ----------------------------
-- Table structure for sys_user_tenant
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_tenant`;
CREATE TABLE `sys_user_tenant` (
  `user_id` varchar(32) NOT NULL DEFAULT '',
  `tenant_id` varchar(32) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_tenant
-- ----------------------------
INSERT INTO `sys_user_tenant` VALUES ('402881ed6e58121b016e581c326d0001', '402881e45f81056b015f810d3a770004');

-- ----------------------------
-- Table structure for warn_type
-- ----------------------------
DROP TABLE IF EXISTS `warn_type`;
CREATE TABLE `warn_type` (
  `id` varchar(32) NOT NULL,
  `tenant_id` varchar(32) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of warn_type
-- ----------------------------
INSERT INTO `warn_type` VALUES ('402881e55f99087d015f993e42860002', '402881e45f81056b015f810d3a770004', '行驶证到期', '0');
INSERT INTO `warn_type` VALUES ('402881e55f99087d015f993e640f0004', '402881e45f81056b015f810d3a770004', '营运证到期', '0');
INSERT INTO `warn_type` VALUES ('402881e55f99087d015f993e838f0006', '402881e45f81056b015f810d3a770004', '二维到期', '0');
INSERT INTO `warn_type` VALUES ('402881e55f99087d015f993ea03b0008', '402881e45f81056b015f810d3a770004', '合同到期', '0');

-- ----------------------------
-- Table structure for warn_vehicle_his
-- ----------------------------
DROP TABLE IF EXISTS `warn_vehicle_his`;
CREATE TABLE `warn_vehicle_his` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `tenant_id` varchar(32) NOT NULL COMMENT '租户',
  `vehicle_id` varchar(32) NOT NULL COMMENT '车辆',
  `warn_type_id` varchar(32) NOT NULL COMMENT '提醒',
  `pre_warn_date` date NOT NULL COMMENT '办理前提醒日期',
  `after_warn_date` date NOT NULL COMMENT '办理后提醒日期',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='车辆提醒办理记录';

-- ----------------------------
-- Records of warn_vehicle_his
-- ----------------------------
