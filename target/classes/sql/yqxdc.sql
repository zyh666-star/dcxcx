/*
Navicat MySQL Data Transfer

Source Server         : 10.2.10.201111
Source Server Version : 50540
Source Host           : 10.2.10.201:3306
Source Database       : yqxdc

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2020-02-19 16:01:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cusorders
-- ----------------------------
DROP TABLE IF EXISTS `cusorders`;
CREATE TABLE `cusorders` (
  `ORDERID` varchar(50) NOT NULL,
  `CUSID` varchar(50) DEFAULT NULL,
  `ORDERTIME` datetime DEFAULT NULL,
  `ORDERSTATE` int(11) DEFAULT NULL COMMENT '0--临时\r\n            1--下单\r\n            2--正在处理\r\n            3--处理完成',
  `ORDERTOTLEPRICE` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ORDERID`),
  KEY `FK_Relationship_5` (`CUSID`),
  CONSTRAINT `FK_Relationship_5` FOREIGN KEY (`CUSID`) REFERENCES `customer` (`CUSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cusorders
-- ----------------------------
INSERT INTO `cusorders` VALUES ('27ee7cc1-225a-4691-ac8c-3d7c1bf6eb79', '2f445731-f684-48ea-82ac-506aa2274b68', '2019-07-25 00:57:25', '2', '30.00');
INSERT INTO `cusorders` VALUES ('33ca4499-f203-406d-b98a-6fc23c0ae88f', '67284b48-efc7-46d5-9821-2fa6463821c8', '2019-10-31 20:26:59', '2', '42.00');
INSERT INTO `cusorders` VALUES ('444e3290-c3e2-4e60-a964-9da918e1f324', 'b41da318-7cce-4dbc-8f29-8db8cc55f63d', '2019-10-31 15:42:21', '3', '40.00');
INSERT INTO `cusorders` VALUES ('50938013-f7d5-4a55-806f-d821985a6cb4', '9a8502d8-50b6-4fc6-81b7-412d04d07879', '2019-01-07 17:48:54', '2', '50.00');
INSERT INTO `cusorders` VALUES ('51c6ae71-0f37-4017-aea5-5e4b478e0213', '2f445731-f684-48ea-82ac-506aa2274b68', '2019-07-25 00:57:23', '2', '30.00');
INSERT INTO `cusorders` VALUES ('7cc4533e-b3a0-4ffb-b07e-32e86fea8809', '4078ab0d-0365-481b-b4ed-27ca6049c93d', '2019-07-24 09:10:37', '2', '15.00');
INSERT INTO `cusorders` VALUES ('9bdf4c6c-55d2-4f27-b583-6a609fcfb5c5', '4078ab0d-0365-481b-b4ed-27ca6049c93d', '2019-07-25 00:57:07', '2', '30.00');
INSERT INTO `cusorders` VALUES ('9ebc6f97-31de-463a-84c9-67e9ef0bba48', '79e97094-8749-4cf6-812b-5e1308c94aa2', '2019-07-25 00:58:10', '2', '30.00');

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `CUSID` varchar(50) NOT NULL,
  `OPENID` varchar(50) DEFAULT NULL,
  `NICKNAME` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`CUSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('140ae449-3856-4276-9e96-8b54976839e7', null, null);
INSERT INTO `customer` VALUES ('2f445731-f684-48ea-82ac-506aa2274b68', null, null);
INSERT INTO `customer` VALUES ('4078ab0d-0365-481b-b4ed-27ca6049c93d', null, null);
INSERT INTO `customer` VALUES ('4e5fd423-bd8a-4fe4-ada4-116a7d8fd862', null, null);
INSERT INTO `customer` VALUES ('4fef6c7f-10a1-421d-b49b-f00007d2834c', null, null);
INSERT INTO `customer` VALUES ('50f86d4e-36af-443e-8553-1a2d9bb6a0df', null, null);
INSERT INTO `customer` VALUES ('57d747f7-1d9c-447c-94ea-f41dd3ce7923', null, null);
INSERT INTO `customer` VALUES ('66dd3560-8622-4fee-89f7-468a2c80e513', null, null);
INSERT INTO `customer` VALUES ('67284b48-efc7-46d5-9821-2fa6463821c8', 'olHda5JpWhjTEvOXv_ZdNQj799gQ', 'Not Found');
INSERT INTO `customer` VALUES ('71ec9ca7-4b62-4b9c-ac71-211c2df6811e', null, null);
INSERT INTO `customer` VALUES ('729e0bab-fb0b-4482-a14d-66470856c0bb', null, null);
INSERT INTO `customer` VALUES ('74853d73-2ed2-4ff2-bc35-b9d4c953a13f', null, null);
INSERT INTO `customer` VALUES ('75a264c9-b157-488c-8a6a-f10f03478397', null, null);
INSERT INTO `customer` VALUES ('79e97094-8749-4cf6-812b-5e1308c94aa2', null, null);
INSERT INTO `customer` VALUES ('7a8346b2-2eaa-4aca-98d1-a01be9f7c98c', null, null);
INSERT INTO `customer` VALUES ('7b2378c4-b8c0-48ec-b025-d31e2bf34bd4', null, null);
INSERT INTO `customer` VALUES ('9469a018-5e5b-4fea-ad4b-7df9bec38eda', null, null);
INSERT INTO `customer` VALUES ('9a8502d8-50b6-4fc6-81b7-412d04d07879', 'o06aW5EL7Kqv6y-k_GiW2ltOPQ5w', '张旺');
INSERT INTO `customer` VALUES ('a2cb24f0-d2a1-4b34-9233-a72e427fd414', 'olHda5JpWhjTEvOXv_ZdNQj799gQ', 'Not Found');
INSERT INTO `customer` VALUES ('a91a14a9-4396-4504-ac8a-861b3844300f', null, null);
INSERT INTO `customer` VALUES ('b41da318-7cce-4dbc-8f29-8db8cc55f63d', 'olHda5JpWhjTEvOXv_ZdNQj799gQ', 'Not Found');
INSERT INTO `customer` VALUES ('c295dd88-d577-469c-920a-614beefe15b5', null, null);
INSERT INTO `customer` VALUES ('ce49ab3b-dcf4-498f-9b05-5df6c3f24928', null, null);
INSERT INTO `customer` VALUES ('d18a25b7-3a7c-434d-b53d-2e81ce3378cc', null, null);
INSERT INTO `customer` VALUES ('d43e16c8-1d9d-466b-bf6b-3baf75474439', null, null);
INSERT INTO `customer` VALUES ('dcda9b0d-12e2-4e3b-a86e-5a0ae26a82ad', null, null);
INSERT INTO `customer` VALUES ('f7198324-07ea-4053-8c9f-66359d264aea', null, null);
INSERT INTO `customer` VALUES ('fc1dd52f-34e6-48e5-af29-8bc8d7f4efe9', 'olHda5JpWhjTEvOXv_ZdNQj799gQ', 'Not Found');
INSERT INTO `customer` VALUES ('fc5a0712-3cc0-406c-a293-c57bbc3a66e8', null, null);

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `GID` varchar(50) NOT NULL,
  `GTID` varchar(50) DEFAULT NULL,
  `GNAME` varchar(100) DEFAULT NULL,
  `GPRICE` decimal(10,2) DEFAULT NULL,
  `GSTATE` int(11) DEFAULT NULL,
  `GCONTENT` text,
  `GIMG` varchar(200) DEFAULT NULL,
  `GTIME` int(11) DEFAULT NULL COMMENT '需要时间（单位：分钟）',
  PRIMARY KEY (`GID`),
  KEY `FK_Relationship_4` (`GTID`),
  CONSTRAINT `FK_Relationship_4` FOREIGN KEY (`GTID`) REFERENCES `goodstype` (`GTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '1', '回锅肉', '15.00', '1', '回锅肉（Twice-cooked pork slices） [1]  ，是一种四川传统菜式中家常（味型）菜肴的代表菜肴之一，属于川菜系列。制作原料主要有猪后臀肉、青椒、蒜苗等，口味独特，色泽红亮，肥而不腻。', '84d30114-e005-4e53-8b71-58445c214296.jpg', '1');
INSERT INTO `goods` VALUES ('2', '1', '盐煎肉', '12.00', '1', '盐煎肉，四川传统特色名菜，属川菜，是川菜家常风味菜肴的代表作，与回锅肉共称为姐妹菜。本品以猪后臀肉为原料烹制方法加工而成，成菜肉片鲜嫩，颜色深红，干香酥嫩，味道鲜美，具有浓厚的地方风味。', null, '1');
INSERT INTO `goods` VALUES ('3', '2', '剁椒鱼头', '12.00', '1', '剁椒鱼头（英文名：Chop bell pepper fish head）是湖南省的传统名菜，属于湘菜系。据传，起源和清代文人黄宗宪有关。\r\n通常以鳙鱼鱼头、剁椒为主料，配以豉油、姜、葱、蒜等辅料蒸制而成。菜品色泽红亮、味浓、肉质细嫩。肥而不腻、口感软糯、鲜辣适口。', '6a9a4217-b069-4b51-a7a0-37a5a45fe9e8.jpg', '12');
INSERT INTO `goods` VALUES ('3119fa26-b9a8-4e39-a561-9b99ab8c9745', '1', '44', '11.00', '1', '2122', '328e035d-c15e-4365-9fe7-918a63ae6a22.exe', '11');
INSERT INTO `goods` VALUES ('495e7e8f-b0fc-4569-9640-eef9dbe212c3', '4', '蛋黄豆腐', '20.00', '1', '主要以咸蛋黄和豆腐为原料的家常菜，鲜香可口，简单易学，?豆腐100克，鸡胸脯肉35克，熟咸鸭蛋黄2个，熟油25克，湿淀粉5克，精盐2克，味精1克，葱花4克，鲜汤适量，香油少许', '1039fbe8-bdda-4a98-906d-9be6c87543c0.png', '4');
INSERT INTO `goods` VALUES ('4d2e05cd-2ee6-4601-802e-9889bc3de72a', '1', '水煮肉片', '22.00', '1', '水煮肉片（Poached spicy slices of pork），是一道地方新创名菜，起源于自贡，发扬于西南，属于川菜中著名的家常菜 [1]  。因肉片未经划油，以水煮熟故名水煮肉片。\r\n水煮肉片肉味香辣，软嫩，易嚼。吃时肉嫩菜鲜 ，汤红油亮，麻辣味浓，最宜下饭，为家常美食之一。特色是“麻、辣、鲜、香”。其起源于上世纪30年代， 自贡名厨范吉安(1887 -1982年)，创新出风味突出的水煮肉片。', '4e3c5ec5-a7d9-4af7-a500-e0f9419c6fb0.jpg', '1');
INSERT INTO `goods` VALUES ('59ff6ed6-e72c-46a8-8444-11012b97d0f4', '2', '东坡肘子', '10.00', '1', '东坡肘子，四川省眉山市特产，国家地理标志产品。\r\n东坡肘子具有汤汁乳白，猪肘烂软，肉质细嫩、肉味醇香、有嚼头，肥而不腻等优点。', 'cab20af1-376b-497a-b1f5-9942dc7a0282.jpg', '5');
INSERT INTO `goods` VALUES ('61a9c503-2dfc-4eec-bfcd-8ff53d810c98', '1', 'hahah', '11.00', '1', '2121', '8b075131-760c-4915-a1a0-14a335ef5da8.jpg', '11');
INSERT INTO `goods` VALUES ('65da137d-54db-4e9f-bbb2-74dc1d9793fc', '3', '凉拌萝卜丝', '18.00', '1', '凉拌萝卜丝，菜肴名，是拌萝卜丝的一种，清凉可口，适合下酒。可以增强机体免疫功能、帮助消化、帮助营养物质的吸收、防癌抗癌。', '2fc79e5c-9003-4ca8-86af-ff1b43ba8728.jpg', '1');
INSERT INTO `goods` VALUES ('6a212e75-d4e8-492a-a697-dac99d6ef92c', '1', '侉炖鱼', '50.00', '1', '侉炖鱼是山东省传统名菜，属于鲁菜系。侉炖的方法可以减少鱼的营养损失，因为鱼不直接与热油接触。蛋白质不易被破坏，也不会产生致癌物质。\r\n主料是草鱼、五花肉、豆腐，口味是豉香。工艺是炖', '9ac6adb4-ef68-4bfd-af84-93409d04c1f8.jpg', '5');
INSERT INTO `goods` VALUES ('82c75a6e-a4fd-43f6-a28f-906ec688e17b', '1', '21212121', '11.00', '1', '2dwdwed', '68100382-289e-43a2-b5f8-eb4c21a93b19.jpg', '11');
INSERT INTO `goods` VALUES ('877ec4b2-4d76-432e-b2f7-2a45a7a24590', '1', '回锅肉', '20.00', '1', '回锅肉（Twice-cooked pork slices） [1]  ，是一种四川传统菜式中家常（味型）菜肴的代表菜肴之一，属于川菜系列。制作原料主要有猪后臀肉、青椒、蒜苗等，口味独特，色泽红亮，肥而不腻。', '766ff5a2-9f8b-4f2f-a59f-cfb3e474136e.jpg', '20');
INSERT INTO `goods` VALUES ('aac6504e-59c7-4708-a320-24277eebdf68', '3', '太极豆腐', '20.00', '1', '以豆腐和蛋清、鲜贝同打为泥，中间夹上一层虾仁和蟹粉，上面用豆苗泥浇成太极的图案。两边分别用龙眼和樱桃装饰，蒸熟即成。', '5038bd35-0bda-459d-a947-c3a1a31f49da.jpg', '2');
INSERT INTO `goods` VALUES ('d5dd48c1-17a3-4b6f-b2c7-9b4d21405c96', '1', '爆炒牛肉', '30.00', '1', '牛肉干的脂肪含量低，而且味道鲜美，用高压锅焖过的牛肉干既有嚼劲，又满足味蕾的需要，是吃货的一大追求。', '4f882ab5-b307-44e5-91ae-239fe20ab209.png', '3');
INSERT INTO `goods` VALUES ('da585464-08d8-469a-8b14-d0b01c6d68d9', '1', 'test', '22.00', '1', '2rewrw', 'e0f74972-5095-4f52-9547-5a14bfbbe2d5.jpg', '22');
INSERT INTO `goods` VALUES ('db03f373-2386-4974-92f0-203a98d460fe', '2', '外婆菜', '10.00', '1', '外婆菜又名万菜，是湖南湘西地区一道家常菜，原料选用大头菜、白萝卜、豇豆、刀豆、茄子等，以湘西传统的民间制作方法晒干放入坛内腌制而成，不添加任何色素和防腐剂，腌制成功之后加上朝天椒、杭椒、红干椒、植物油、食盐、大蒜等爆炒即可食用，炒好之后特别香辣，刚好体现了湘菜最大的特点，是难得一见的时尚湘菜，下饭拌饭极好，口感美味，品之逾香，具有开胃下饭，降血脂、软化血管、滋养容颜的功效。', '8cb33cc5-f307-4737-8aab-ea8af7a25ec2.jpg', '5');
INSERT INTO `goods` VALUES ('e3d49c69-0e60-44c5-9c62-487befa4aff8', '1', 'haha', '555.00', '1', 'e4s5e4w5e45w4e5w4ew5', 'c6095f09-5909-4648-818e-8c20d046df56.jpg', '55');
INSERT INTO `goods` VALUES ('f85cac4c-0f1f-4b7b-98e4-da344fa42cd2', '3', '山东老家火锅', '80.00', '1', '山东老家火锅是以老式火锅、木炭、老母鸡《煮好》、母鸡汤为原材制作而成的火锅。', '109b92a9-a983-4464-8154-47fc8af50405.jpg', '5');
INSERT INTO `goods` VALUES ('fe974731-5f4f-47af-b835-2790b5405c87', '4', '拔丝芋头', '19.00', '1', '拔丝芋头是一道山东的传统名菜，属于鲁系。芋头营养价值高，富含蛋白质、钙、磷、铁、钾、镁、钠、胡萝卜素、烟酸、维生素C、B族维生素、皂角甙等多种成分，有益胃、宽肠、通便、解毒、补中益肝肾、消肿止痛、益胃健脾、散结、调节中气、化痰、添精益髓等功效。该食谱美味营养。同时要注意，多食芋头会导致肠胃胀气，芋头一定要熟食，生食有微毒。', 'a6f45204-661c-4776-81b1-0f5d2d36cf83.png', '2');

-- ----------------------------
-- Table structure for goodstype
-- ----------------------------
DROP TABLE IF EXISTS `goodstype`;
CREATE TABLE `goodstype` (
  `GTID` varchar(50) NOT NULL,
  `GTNAME` varchar(30) DEFAULT NULL,
  `GTSTATE` int(11) DEFAULT NULL,
  PRIMARY KEY (`GTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodstype
-- ----------------------------
INSERT INTO `goodstype` VALUES ('1', '川菜', '1');
INSERT INTO `goodstype` VALUES ('2', '粤菜', '1');
INSERT INTO `goodstype` VALUES ('3', '鲁菜', '1');
INSERT INTO `goodstype` VALUES ('4', '徽菜', '1');
INSERT INTO `goodstype` VALUES ('d05495d5-2a2f-4255-85eb-dd464d5f8abb', 'test', '0');

-- ----------------------------
-- Table structure for orderdetail
-- ----------------------------
DROP TABLE IF EXISTS `orderdetail`;
CREATE TABLE `orderdetail` (
  `GID` varchar(50) DEFAULT NULL,
  `ORDERID` varchar(50) DEFAULT NULL,
  `ODID` varchar(50) NOT NULL DEFAULT '',
  `ODPRICE` decimal(10,2) DEFAULT NULL,
  `ODCOUNT` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ODID`),
  KEY `FK_Relationship_6` (`ORDERID`),
  KEY `FK_Relationship_7` (`GID`),
  CONSTRAINT `FK_Relationship_6` FOREIGN KEY (`ORDERID`) REFERENCES `cusorders` (`ORDERID`),
  CONSTRAINT `FK_Relationship_7` FOREIGN KEY (`GID`) REFERENCES `goods` (`GID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderdetail
-- ----------------------------
INSERT INTO `orderdetail` VALUES ('61a9c503-2dfc-4eec-bfcd-8ff53d810c98', '33ca4499-f203-406d-b98a-6fc23c0ae88f', '0208166c-bd7d-4130-8df4-ac10ef278b92', '11.00', '2.00');
INSERT INTO `orderdetail` VALUES ('1', '7cc4533e-b3a0-4ffb-b07e-32e86fea8809', '07ae32d4-63bb-4e51-b6a4-e60e14a4c9fa', '15.00', '1.00');
INSERT INTO `orderdetail` VALUES ('1', '9ebc6f97-31de-463a-84c9-67e9ef0bba48', '43a7e3fb-bac3-4817-9057-6975abb21fba', '15.00', '2.00');
INSERT INTO `orderdetail` VALUES ('1', '27ee7cc1-225a-4691-ac8c-3d7c1bf6eb79', '56c21773-9440-4e77-9d9c-c60aa341fafd', '15.00', '2.00');
INSERT INTO `orderdetail` VALUES ('877ec4b2-4d76-432e-b2f7-2a45a7a24590', '33ca4499-f203-406d-b98a-6fc23c0ae88f', '6c81eb06-307f-4ee0-9d4d-802dfcfc4371', '20.00', '1.00');
INSERT INTO `orderdetail` VALUES ('1', '50938013-f7d5-4a55-806f-d821985a6cb4', '7105c0ea-f16f-4665-afff-808d2c1e3705', '15.00', '1.00');
INSERT INTO `orderdetail` VALUES ('1', '51c6ae71-0f37-4017-aea5-5e4b478e0213', '80cca2ac-0b73-4d7c-a31a-b7bdfdab4216', '15.00', '2.00');
INSERT INTO `orderdetail` VALUES ('1', '9bdf4c6c-55d2-4f27-b583-6a609fcfb5c5', '904c68aa-69fe-493d-9764-ecff287afcbb', '15.00', '2.00');
INSERT INTO `orderdetail` VALUES ('2', '50938013-f7d5-4a55-806f-d821985a6cb4', '959ae34f-31a6-4949-913e-4fb821a3f648', '12.00', '1.00');
INSERT INTO `orderdetail` VALUES ('4d2e05cd-2ee6-4601-802e-9889bc3de72a', '50938013-f7d5-4a55-806f-d821985a6cb4', 'a73d1cac-f7c2-44d0-9e8a-484448fc613e', '22.00', '1.00');
INSERT INTO `orderdetail` VALUES ('877ec4b2-4d76-432e-b2f7-2a45a7a24590', '444e3290-c3e2-4e60-a964-9da918e1f324', 'b5f29a5e-5af7-4014-935c-af8a218e7b4b', '20.00', '2.00');

-- ----------------------------
-- Table structure for roleright
-- ----------------------------
DROP TABLE IF EXISTS `roleright`;
CREATE TABLE `roleright` (
  `RRID` varchar(50) NOT NULL,
  `ROLEID` varchar(50) DEFAULT NULL,
  `FUNID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`RRID`),
  KEY `FK_Relationship_1` (`ROLEID`),
  KEY `FK_Relationship_2` (`FUNID`),
  CONSTRAINT `FK_Relationship_1` FOREIGN KEY (`ROLEID`) REFERENCES `sysrole` (`ROLEID`),
  CONSTRAINT `FK_Relationship_2` FOREIGN KEY (`FUNID`) REFERENCES `sysfunction` (`FUNID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roleright
-- ----------------------------
INSERT INTO `roleright` VALUES ('20efe3fb-232e-4f92-9cd0-ed8c075d8fbd', '9b620176-f6d9-49dd-949c-b43f0dfa2edc', 'fd5de97e-fd0d-48a6-990c-f12295381376');
INSERT INTO `roleright` VALUES ('397862c2-6bb0-483c-aa53-2bc1a26a4d4a', '4aeb14b6-662d-425e-8885-5b5dae38fdbe', 'fd5de97e-fd0d-48a6-990c-f12295381376');
INSERT INTO `roleright` VALUES ('4a69f19e-82e2-416f-bfdd-a58bfd16686b', 'fec7a434-2202-4ada-bd3c-bcc489d4136c', 'a7515575-dc72-48eb-a45f-5ef85c2a8b7f');
INSERT INTO `roleright` VALUES ('75102d64-3c45-4b7e-9989-0fd8b19c3783', 'fec7a434-2202-4ada-bd3c-bcc489d4136c', '22b60d90-80ab-4a3c-b2f9-e8f8675848f7');
INSERT INTO `roleright` VALUES ('8134782f-2d37-4db9-9de8-c7f02fb14f8f', '4aeb14b6-662d-425e-8885-5b5dae38fdbe', '872d6c33-a4cc-463b-ad93-2d33088f910f');
INSERT INTO `roleright` VALUES ('81531dbc-4b68-4300-aaaf-f8a622b9e834', '4aeb14b6-662d-425e-8885-5b5dae38fdbe', '15d1d5bf-84fc-4ff3-aab1-efca6965961e');
INSERT INTO `roleright` VALUES ('90bdbe54-d853-4960-add5-03548348e468', '9b620176-f6d9-49dd-949c-b43f0dfa2edc', 'a7515575-dc72-48eb-a45f-5ef85c2a8b7f');
INSERT INTO `roleright` VALUES ('accac4f4-e36a-4487-b4e3-b62cf6bd3d79', '4aeb14b6-662d-425e-8885-5b5dae38fdbe', '22b60d90-80ab-4a3c-b2f9-e8f8675848f7');
INSERT INTO `roleright` VALUES ('b1b102aa-dd96-496b-9cd7-357a93aec550', '4aeb14b6-662d-425e-8885-5b5dae38fdbe', '6205bf45-6add-434f-b2fb-2adcf951b9eb');
INSERT INTO `roleright` VALUES ('b871aaca-7f72-4c44-9c78-8f97ae17695a', 'fec7a434-2202-4ada-bd3c-bcc489d4136c', 'fd5de97e-fd0d-48a6-990c-f12295381376');
INSERT INTO `roleright` VALUES ('d066e53a-af7d-4698-9ea5-e44d0b9cb6bc', 'fec7a434-2202-4ada-bd3c-bcc489d4136c', '15d1d5bf-84fc-4ff3-aab1-efca6965961e');
INSERT INTO `roleright` VALUES ('e5c040f1-d947-4376-97c5-6e05916a9780', '4aeb14b6-662d-425e-8885-5b5dae38fdbe', 'a7515575-dc72-48eb-a45f-5ef85c2a8b7f');
INSERT INTO `roleright` VALUES ('e8974641-5496-433f-9c13-dc2e875d7ee9', '4aeb14b6-662d-425e-8885-5b5dae38fdbe', '82280854-7ec8-495e-b3d7-4c713812062c');
INSERT INTO `roleright` VALUES ('f6806795-bc75-45a2-8bd6-ce9c01e428cb', 'fec7a434-2202-4ada-bd3c-bcc489d4136c', '6205bf45-6add-434f-b2fb-2adcf951b9eb');
INSERT INTO `roleright` VALUES ('fae23cec-dd94-4a58-abac-b0485eadf96c', 'fec7a434-2202-4ada-bd3c-bcc489d4136c', '82280854-7ec8-495e-b3d7-4c713812062c');

-- ----------------------------
-- Table structure for sysfunction
-- ----------------------------
DROP TABLE IF EXISTS `sysfunction`;
CREATE TABLE `sysfunction` (
  `FUNID` varchar(50) NOT NULL,
  `FUNNAME` varchar(30) DEFAULT NULL,
  `FUNPID` varchar(50) DEFAULT NULL,
  `FUNURL` varchar(200) DEFAULT NULL,
  `FUNSTATE` int(11) DEFAULT NULL,
  PRIMARY KEY (`FUNID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sysfunction
-- ----------------------------
INSERT INTO `sysfunction` VALUES ('049383c9-3a55-42bc-a757-bbdecb3141e2', '商品管理', '-1', '', '1');
INSERT INTO `sysfunction` VALUES ('15d1d5bf-84fc-4ff3-aab1-efca6965961e', '系统角色管理', 'c6966d17-2ddc-4ee4-a52a-3a20f83be493', '/sys/role/list', '1');
INSERT INTO `sysfunction` VALUES ('22b60d90-80ab-4a3c-b2f9-e8f8675848f7', '商品类型管理', '049383c9-3a55-42bc-a757-bbdecb3141e2', '/sys/goods/goodstype/list', '1');
INSERT INTO `sysfunction` VALUES ('6205bf45-6add-434f-b2fb-2adcf951b9eb', '订单管理', '049383c9-3a55-42bc-a757-bbdecb3141e2', '/sys/order/list', '1');
INSERT INTO `sysfunction` VALUES ('82280854-7ec8-495e-b3d7-4c713812062c', '商品管理', '049383c9-3a55-42bc-a757-bbdecb3141e2', '/sys/goods/list', '1');
INSERT INTO `sysfunction` VALUES ('872d6c33-a4cc-463b-ad93-2d33088f910f', 'test', 'c6966d17-2ddc-4ee4-a52a-3a20f83be493', '/sys/', '0');
INSERT INTO `sysfunction` VALUES ('a7515575-dc72-48eb-a45f-5ef85c2a8b7f', '系统功能管理', 'c6966d17-2ddc-4ee4-a52a-3a20f83be493', '/sys/fun/list', '1');
INSERT INTO `sysfunction` VALUES ('c6966d17-2ddc-4ee4-a52a-3a20f83be493', '系统管理', '-1', '', '1');
INSERT INTO `sysfunction` VALUES ('fd5de97e-fd0d-48a6-990c-f12295381376', '用户管理', 'c6966d17-2ddc-4ee4-a52a-3a20f83be493', '/sys/user/list', '1');

-- ----------------------------
-- Table structure for sysrole
-- ----------------------------
DROP TABLE IF EXISTS `sysrole`;
CREATE TABLE `sysrole` (
  `ROLEID` varchar(50) NOT NULL,
  `ROLENAME` varchar(20) DEFAULT NULL,
  `ROLESTATE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ROLEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sysrole
-- ----------------------------
INSERT INTO `sysrole` VALUES ('100be032-6dbe-4834-a4e7-2d980b15958a', '55hahahah', '1');
INSERT INTO `sysrole` VALUES ('4aeb14b6-662d-425e-8885-5b5dae38fdbe', '1313131', '0');
INSERT INTO `sysrole` VALUES ('5e6c012c-d2b8-4d8c-92cd-ad2bfee2b577', '魏汝稳热望', '1');
INSERT INTO `sysrole` VALUES ('80380ced-90d2-42cb-9b93-f5c8c87b6226', '普通用户', '1');
INSERT INTO `sysrole` VALUES ('9b620176-f6d9-49dd-949c-b43f0dfa2edc', '管理员', '1');
INSERT INTO `sysrole` VALUES ('9fc6c7ca-ae95-4965-9735-0c17acaaa82c', 'lubenwei666', '1');
INSERT INTO `sysrole` VALUES ('b0c1e79f-25b9-43d3-be55-713e9555ba38', '卢本伟', '1');
INSERT INTO `sysrole` VALUES ('b4727061-95e4-4e62-8a1a-28049c41facc', '普通用户', '1');
INSERT INTO `sysrole` VALUES ('ba5c434b-aa10-4085-907e-e4d35093a9e3', '66666666', '1');
INSERT INTO `sysrole` VALUES ('d340215f-cae1-42aa-b1bb-de9577633d41', '用户1', '1');
INSERT INTO `sysrole` VALUES ('d7d988b4-34a4-4494-8ffd-a47063603456', '1121313', '1');
INSERT INTO `sysrole` VALUES ('f4108009-45de-4a95-a9ec-e9bc80995151', '55开', '1');
INSERT INTO `sysrole` VALUES ('fec7a434-2202-4ada-bd3c-bcc489d4136c', '卢本伟牛逼', '1');

-- ----------------------------
-- Table structure for sysuser
-- ----------------------------
DROP TABLE IF EXISTS `sysuser`;
CREATE TABLE `sysuser` (
  `USERID` varchar(50) NOT NULL,
  `ROLEID` varchar(50) DEFAULT NULL,
  `USERNAME` varchar(30) DEFAULT NULL,
  `USERPWD` varchar(99) DEFAULT NULL,
  `USERSEX` char(2) DEFAULT NULL,
  `USERTRUENAME` varchar(30) DEFAULT NULL,
  `USERSTATE` int(11) DEFAULT NULL,
  PRIMARY KEY (`USERID`),
  KEY `FK_Relationship_3` (`ROLEID`),
  CONSTRAINT `FK_Relationship_3` FOREIGN KEY (`ROLEID`) REFERENCES `sysrole` (`ROLEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sysuser
-- ----------------------------
INSERT INTO `sysuser` VALUES ('6d27ec6d-6d95-437c-a1d8-3462b82a6e1d', '9b620176-f6d9-49dd-949c-b43f0dfa2edc', 'admin', '$2a$10$BJoM1TXZzrRH4qCnWB5QkOzKg4G19ZvwDf1IsEnAY4/2EkMh4dttC', '1', '张三', '1');
INSERT INTO `sysuser` VALUES ('9fb8ed6d-c4be-46b0-8b8a-c71897be3f35', '9b620176-f6d9-49dd-949c-b43f0dfa2edc', 'liuer', '$2a$10$tDpCg5cbBXjN6VlCZIdtMeS9vTLj6TbQyWTY68Qp44VAHIzaVjNU.', '1', '六二', '1');
INSERT INTO `sysuser` VALUES ('e8010fdf-fc4e-4f65-a203-e0a96e988c6b', 'b4727061-95e4-4e62-8a1a-28049c41facc', 'wangwu', '123456', '1', '王五', '1');
INSERT INTO `sysuser` VALUES ('ee47a0c6-1938-4877-8f62-9c74dbe147f5', 'b4727061-95e4-4e62-8a1a-28049c41facc', 'lisi', '123456', '0', '李四', '1');
