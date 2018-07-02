
-- 导出 mpet 的数据库结构
CREATE DATABASE IF NOT EXISTS `mpet` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mpet`;


-- 导出  表 mpet.account 结构
CREATE TABLE IF NOT EXISTS `account` (
  `username` varchar(80) NOT NULL,
  `password` varchar(60) DEFAULT NULL,
  `email` varchar(80) NOT NULL,
  `xm` varchar(80) NOT NULL,
  `address` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 7168 kB; InnoDB free: 6144 kB';

-- 正在导出表  mpet.account 的数据：~70 rows (大约)
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` (`username`, `password`, `email`, `xm`, `address`) VALUES
	('121212', '111', '123@123.com', '111', '222'),
	('12211', '111', 'wk@123.com', '121212', '121212'),
	('1221233434', '111', 'wk@123.com', '121212', '1123123'),
	('123', '123', '123@123', '123', '123'),
	('1454334', '111', '123@123.com', '12312', '1231232'),
	('223232224', '111', 'wk@123.com', '12123', '11212'),
	('23223', '111', '345345@123', '123', '121'),
	('232323', '1111', 'wk2003119@163.com', 'sdfsdsd', '11212'),
	('23423', '111', '123@123.com', '123', '123123'),
	('234234', '111', '123@qq.com', '2343434', '你好'),
	('2444', '111', 'wk@123.com', '1212', '122112'),
	('333', '111', 'we@123.com', '12312', '1233123'),
	('3434341', '111', 'wk@123.com', '12323', '121212'),
	('35345666', '1212', '123@123.com', '12312', '12312312'),
	('4444', '111', '123@123.com', '123', '1232'),
	('44443', '111', 'wk2003119@163.com', 'sdsdsd', '1212'),
	('45', '111', '123@123.com', '23123', '123123'),
	('453567gff', '111', 'wk2003119@163.com', 'fggf', '33434534'),
	('666', '111', '234@123.com', 'ty', '123123'),
	('6767', '6767', 'wk2003119@163.com', '4554', '3434'),
	('67679', '6767', 'wk2003119@163.com', '4554', '3434'),
	('77771', '111', 'wk2003119@163.com', '234', '123'),
	('8881', '111', 'wk2003119@163.com', 'ddd', '222'),
	('8888', '111', 'w@123.com', '111', '23232'),
	('8989uuu', '111', 'wk2003119@163.com', '222', '12222'),
	('898y', '111', 'wk2003119@163.com', 'ddd', '121212'),
	('9999', '111', 'w@123.com', 'xsssss', 'dddd'),
	('999988', '111', '123@qq.com', '2343434', '你好'),
	('99999', '123', '123@123.com', 'dffd', '123'),
	('EYEYEY', '111', '123@123.com', '1231', '123'),
	('fsd', '111', 'wk2003119@163.com', 'xxx', 'sdfsd'),
	('halou', '111', '123@123.com', 'niaho', 'dasfdasf'),
	('hello', '111', 'wk2003119@163.com', '11231', '123123123'),
	('HHH', '111', '123@123.com', 'sdf', '123'),
	('hhhh', '111', 'wk@163.com', '111', '4444'),
	('kjkksdf', '111', '123@123.com', '13', '1312'),
	('kkk111', '111', 'wk@123.com', '韩国', '韩国大厦'),
	('KKK12', '999', 'wk@163.com', 'dffdfd', '221'),
	('kkkkk', '111', 'wk2003119@163.com', 'xxxx', 'jjdjdj'),
	('ligon', '111', 'wk2003119@163.com', '理工', '112'),
	('liubing', '111', '2691240021@qq.com', '111', '222'),
	('LLLL', '111', 'wk2003119@163.com', 'LLLL', 'dslflfsl'),
	('pppp', '111', 'wk2003119@163.com', 'sdf', '12'),
	('rtrtr111', '111', 'wk2003119@163.com', 'sdf', '12'),
	('ty', '111', 'wk2003119@163.com', '你好', '12312'),
	('UUU', '111', 'wk@163.com', 'UUU', 'UUU'),
	('UUUU', '1212', '123@123.com', '围困', '想出国发生的'),
	('uuuyyyy', '111', '123@123.com', '123', '12312312'),
	('weewew', '111', '', '', ''),
	('weikun', '119', 'wk2003119@163.com', '卫昆1', '哈尔滨'),
	('weikun12123', '111', 'wk@123.com', 'sdfsdf', '123123'),
	('weikun2333', '111', 'wk2003119@163.com', 'sss', '111'),
	('wewe', '111', 'wk@123.com', '你好', '1212'),
	('www', '111', 'Q@123.com', 'rrr', '2121'),
	('yao', '111', 'wk@123.com', '1212', '32323'),
	('yao111', '111', '123@123.com', '123', '123123'),
	('ytytytu', '111', 'wk2003119@163.com', '222', '121212'),
	('yuchenglong', '111', '123@123.com', '121212', '11212'),
	('YYQ', '110', '123@qq.com', '杨永强', 'hajkfhkasj'),
	('yyyy', '111', 'w@123.com', 'yyy', 'sdfdsfd'),
	('yyyy111212', '111', '123@123.com', '123', '12312'),
	('zhai357', 'qwe', '123@sina.com', 'qwe', '全球'),
	('zhaodongpo', '111', '123@qq.com', '2343434', '你好'),
	('zhaofuyu', '123456', '123@qq.com', 'zhaofuyu', '123456'),
	('公寓', '111', 'wk2003119@163.com', '111', '123'),
	('发71', '111', '123@123.com', '商品', '2312'),
	('哦哦o', '111', '123@123.com', '如同仁堂', '123'),
	('商品', '111', '123@123.com', '商品', '2312'),
	('尚品', '111', 'wk2003119@163.com', '尚品', '尚品'),
	('杨林', '123456', '1434@qq.com', '杨林', 'sfefeff');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;


-- 导出  过程 mpet.addCart 结构
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `addCart`(IN `in_itemid` vaRCHAR(50), IN `in_qty` INT)
BEGIN
	
	set @maxid=0;
	set @orderdate='';
	set @count=0;
	set @qty=0;
	
	select max(orderid),orderdate into @maxid,@orderdate from orders; 
	
	if  @orderdate is null then -- 代表订单还可以添加新商品
		
		 -- 查询本次添加的商品是否在同一订单下还有同种商品，
		-- 如果有，将进行修改数量，如果没有，是真正的新商品，只需要insert。
		
		select count(*) into @count
		
		from cart
		where orderid=@maxid and 
				itemid=in_itemid;
		if @count=0 then
		
			insert into cart(orderid,itemid,quantity)
			values( @maxid ,in_itemid,in_qty);
		
			
			
	   else
	   		select quantity into @qty
	   		from cart
	   		where orderid=@maxid and
	   		      itemid=in_itemid;
				
				call updateCart(@maxid,in_itemid,@qty+in_qty);	
		
			
		end if;
		
		
	else -- 日期为空的时候
		
			select max(orderid)+1 into @maxid from orders; 
			
			insert into orders(orderid)
			values( @maxid );
			
			insert into cart(orderid,itemid,quantity)
			values( @maxid ,in_itemid,in_qty);
		
	end if;
		commit;
	call queryCart(@maxid);
	
	
	
END//
DELIMITER ;


-- 导出  表 mpet.cart 结构
CREATE TABLE IF NOT EXISTS `cart` (
  `orderid` int(11) NOT NULL DEFAULT '0',
  `itemid` varchar(10) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`orderid`,`itemid`),
  KEY `FK_FK_Reference_51` (`itemid`),
  CONSTRAINT `FK_FK_Reference_51` FOREIGN KEY (`itemid`) REFERENCES `item` (`itemid`),
  CONSTRAINT `FK_Relationship_71` FOREIGN KEY (`orderid`) REFERENCES `orders` (`orderid`),
  CONSTRAINT `FK_Relationship_733` FOREIGN KEY (`orderid`) REFERENCES `orders` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 7168 kB; InnoDB free: 6144 kB; (`itemid`) REFER';

-- 正在导出表  mpet.cart 的数据：~178 rows (大约)
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` (`orderid`, `itemid`, `quantity`) VALUES
	(1, 'EST_4', 25),
	(1000, 'EST_4', 25),
	(1001, 'EST_4', 25),
	(1002, 'EST_4', 25),
	(1003, 'EST_1', 2),
	(1003, 'EST_19', 6),
	(1003, 'EST_2', 1),
	(1003, 'EST_20', 3),
	(1004, 'EST_2', 1),
	(1004, 'EST_20', 2),
	(1004, 'EST_3', 4),
	(1005, 'EST_21', 3),
	(1006, 'EST_20', 8),
	(1006, 'EST_21', 3),
	(1006, 'EST_9', 7),
	(1007, 'EST_1', 2),
	(1007, 'EST_28', 3),
	(1007, 'EST_5', 7),
	(1008, 'EST_21', 3),
	(1008, 'EST_28', 3),
	(1009, 'EST_21', 3),
	(1010, 'EST_2', 1),
	(1010, 'EST_21', 3),
	(1011, 'EST_2', 1),
	(1011, 'EST_9', 1),
	(1012, 'EST_1', 2),
	(1012, 'EST_9', 1),
	(1013, 'EST_1', 2),
	(1013, 'EST_21', 3),
	(1014, 'EST_1', 2),
	(1014, 'EST_21', 3),
	(1014, 'EST_5', 6),
	(1015, 'EST_21', 3),
	(1015, 'EST_4', 25),
	(1016, 'EST_21', 3),
	(1016, 'EST_3', 4),
	(1017, 'EST_21', 3),
	(1018, 'EST_2', 1),
	(1018, 'EST_27', 3),
	(1018, 'EST_3', 4),
	(1018, 'EST_5', 1),
	(1019, 'EST_5', 4),
	(1020, 'EST_2', 1),
	(1021, 'EST_1', 2),
	(1021, 'EST_2', 1),
	(1022, 'EST_1', 2),
	(1022, 'EST_2', 1),
	(1022, 'EST_21', 3),
	(1023, 'EST_2', 1),
	(1023, 'EST_4', 25),
	(1023, 'EST_5', 3),
	(1024, 'EST_4', 25),
	(1025, 'EST_20', 2),
	(1027, 'EST_2', 1),
	(1027, 'EST_21', 3),
	(1027, 'EST_3', 4),
	(1027, 'EST_5', 1),
	(1028, 'EST_1', 2),
	(1028, 'EST_2', 1),
	(1029, 'EST_21', 3),
	(1029, 'EST_3', 4),
	(1030, 'EST_5', 6),
	(1031, 'EST_20', 100),
	(1031, 'EST_21', 3),
	(1032, 'EST_1', 2),
	(1032, 'EST_15', 1),
	(1032, 'EST_2', 1),
	(1032, 'EST_3', 4),
	(1032, 'EST_5', 3),
	(1033, 'EST_1', 2),
	(1033, 'EST_2', 1),
	(1034, 'EST_28', 3),
	(1034, 'EST_4', 25),
	(1035, 'EST_2', 1),
	(1035, 'EST_27', 3),
	(1035, 'EST_4', 25),
	(1036, 'EST_27', 3),
	(1037, 'EST_15', 1),
	(1037, 'EST_2', 1),
	(1037, 'EST_21', 1),
	(1037, 'EST_4', 1),
	(1042, 'EST_20', 8),
	(1042, 'EST_21', 8),
	(1042, 'EST_4', 8),
	(1042, 'EST_7', 8),
	(1042, 'EST_9', 8),
	(1043, 'EST_21', 1),
	(1043, 'EST_27', 1),
	(1044, 'EST_1', 1),
	(1045, 'EST_21', 3),
	(1046, 'EST_8', 2),
	(1047, 'EST_15', 1),
	(1047, 'EST_3', 4),
	(1047, 'EST_4', 4),
	(1048, 'EST_1', 2),
	(1048, 'EST_20', 7),
	(1048, 'EST_21', 8),
	(1049, 'EST_2', 4),
	(1050, 'EST_1', 1),
	(1051, 'EST_2', 2),
	(1051, 'EST_20', 3),
	(1051, 'EST_3', 5),
	(1052, 'EST_27', 1),
	(1053, 'EST_1', 1),
	(1053, 'EST_2', 1),
	(1053, 'EST_20', 1),
	(1054, 'EST_2', 1),
	(1054, 'EST_4', 1),
	(1055, 'EST_8', 1),
	(1060, 'EST_2', 11),
	(1060, 'EST_20', 9),
	(1060, 'EST_21', 9),
	(1060, 'EST_3', 1),
	(1060, 'EST_5', 9),
	(1061, 'EST_1', 8),
	(1062, 'EST_2', 9),
	(1062, 'EST_21', 8),
	(1063, 'EST_1', 1),
	(1063, 'EST_2', 1),
	(1063, 'EST_21', 1),
	(1063, 'EST_3', 1),
	(1064, 'EST_3', 1),
	(1065, 'EST_2', 1),
	(1066, 'EST_3', 2),
	(1067, 'EST_4', 9),
	(1068, 'EST_4', 5),
	(1069, 'EST_4', 3),
	(1070, 'EST_4', 1),
	(1071, 'EST_1', 1),
	(1071, 'EST_2', 1),
	(1073, 'EST_1', 1),
	(1073, 'EST_20', 1),
	(1073, 'EST_4', -2),
	(1074, 'EST_21', 1),
	(1075, 'EST_3', 3),
	(1076, 'EST_3', 1),
	(1076, 'EST_4', 3),
	(1077, 'EST_22', 1),
	(1077, 'EST_26', 2),
	(1078, 'EST_20', 1),
	(1078, 'EST_4', 1),
	(1079, 'EST_1', 2),
	(1079, 'EST_2', 9),
	(1079, 'EST_21', 8),
	(1079, 'EST_9', 8),
	(1080, 'EST_20', 4),
	(1080, 'EST_21', 5),
	(1080, 'EST_28', 1),
	(1080, 'EST_7', 1),
	(1081, 'EST_9', 5),
	(1082, 'EST_10', 4),
	(1083, 'EST_2', 1),
	(1083, 'EST_9', 1),
	(1084, 'EST_1', 1),
	(1084, 'EST_2', 34),
	(1084, 'EST_3', 11),
	(1084, 'EST_5', 34),
	(1085, 'EST_3', 1),
	(1085, 'EST_5', 1),
	(1086, 'EST_4', 6),
	(1086, 'EST_5', 5),
	(1090, 'EST_4', 10),
	(1091, 'EST_4', 10),
	(1092, 'EST_3', 4),
	(1093, 'EST_1', 1),
	(1093, 'EST_2', 3),
	(1093, 'EST_20', 1),
	(1093, 'EST_21', 3),
	(1093, 'EST_3', 1),
	(1093, 'EST_5', 2),
	(1094, 'EST_3', 1),
	(1094, 'EST_4', 2),
	(1095, 'EST_4', 1),
	(1095, 'EST_5', 1),
	(1096, 'EST_2', 1),
	(1097, 'EST_2', 3),
	(1098, 'EST_1', 1),
	(1098, 'EST_2', 1),
	(1099, 'EST_21', 3),
	(1099, 'EST_5', 4),
	(1100, 'EST_21', 7),
	(1101, 'EST_5', 6);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;


-- 导出  表 mpet.category 结构
CREATE TABLE IF NOT EXISTS `category` (
  `catid` varchar(10) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `descn` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 7168 kB; InnoDB free: 6144 kB';

-- 正在导出表  mpet.category 的数据：~5 rows (大约)
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`catid`, `name`, `descn`) VALUES
	('BIRDS', '鸟类', '<image src="${ppath}/static/images/birds_icon.gif"><font size="5" color="blue"> Birds</font>'),
	('CATS', '猫', '<image src="${ppath}/static/images/cats_icon.gif"><font size="5" color="blue"> Cats</font>'),
	('DOGS', '狗', '<image src="${ppath}/static/images/dogs_icon.gif"><font size="5" color="blue"> Dogs</font>'),
	('FISH', '鱼', '<image src="${ppath}/static/images/fish_icon.gif"><font size="5" color="blue"> Fish</font>'),
	('REPTILES', '爬虫类', '<image src="${ppath}/static/images/reptiles_icon.gif"><font size="5" color="blue"> Reptiles</font>');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;


-- 导出  过程 mpet.delCart 结构
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `delCart`(IN `in_orderid` INT, IN `in_itemid` vARCHAR(50))
BEGIN
	
	delete from Cart
	where orderid=in_orderid and
	  		itemid=in_itemid;
	commit;

	call queryCart(in_orderid);
END//
DELIMITER ;


-- 导出  函数 mpet.func_get_split_string 结构
DELIMITER //
CREATE DEFINER=`root`@`localhost` FUNCTION `func_get_split_string`(`f_string` varchar(1000), `f_delimiter` varchar(5), `f_order` int) RETURNS varchar(255) CHARSET utf8
BEGIN
  -- Get the separated number of given string.
  declare result varchar(255) default '';
  set result = reverse(substring_index(reverse(substring_index(f_string,f_delimiter,f_order)),f_delimiter,1));
  return result;
END//
DELIMITER ;


-- 导出  函数 mpet.func_get_split_string_total 结构
DELIMITER //
CREATE DEFINER=`root`@`localhost` FUNCTION `func_get_split_string_total`(`f_string` varchar(1000), `f_delimiter` varchar(5)
) RETURNS int(11)
BEGIN
  -- Get the total number of given string.
  return 1+(length(f_string) - length(replace(f_string,f_delimiter,'')));
END//
DELIMITER ;


-- 导出  表 mpet.item 结构
CREATE TABLE IF NOT EXISTS `item` (
  `itemid` varchar(10) NOT NULL,
  `productid` varchar(10) NOT NULL,
  `listprice` decimal(10,2) DEFAULT NULL,
  `unitcost` decimal(10,2) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `attr1` varchar(80) DEFAULT NULL,
  `attr2` varchar(80) DEFAULT NULL,
  `attr3` varchar(80) DEFAULT NULL,
  `attr4` varchar(80) DEFAULT NULL,
  `attr5` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`itemid`),
  KEY `FK_fk_item_1` (`productid`),
  CONSTRAINT `FK_fk_item_1` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 7168 kB; (`productid`) REFER `jpetstore/product';

-- 正在导出表  mpet.item 的数据：~28 rows (大约)
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` (`itemid`, `productid`, `listprice`, `unitcost`, `status`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`) VALUES
	('EST_1', 'FI-SW-01', 16.50, 10.00, 'P', 'Large', NULL, NULL, NULL, NULL),
	('EST_10', 'K9-DL-01', 18.50, 12.00, 'P', 'Spotted Adult Female', NULL, NULL, NULL, NULL),
	('EST_11', 'RP-SN-01', 18.50, 12.00, 'P', 'Venomless', NULL, NULL, NULL, NULL),
	('EST_12', 'RP-SN-01', 18.50, 12.00, 'P', 'Rattleless', NULL, NULL, NULL, NULL),
	('EST_13', 'RP-LI-02', 18.50, 12.00, 'P', 'Green Adult', NULL, NULL, NULL, NULL),
	('EST_14', 'FL-DSH-01', 58.50, 12.00, 'P', 'Tailless', NULL, NULL, NULL, NULL),
	('EST_15', 'FL-DSH-01', 23.50, 12.00, 'P', 'With tail', NULL, NULL, NULL, NULL),
	('EST_16', 'FL-DLH-02', 93.50, 12.00, 'P', 'Adult Female', NULL, NULL, NULL, NULL),
	('EST_17', 'FL-DLH-02', 93.50, 12.00, 'P', 'Adult Male', NULL, NULL, NULL, NULL),
	('EST_18', 'AV-CB-01', 193.50, 92.00, 'P', 'Adult Male', NULL, NULL, NULL, NULL),
	('EST_19', 'AV-SB-02', 15.50, 2.00, 'P', 'Adult Male', NULL, NULL, NULL, NULL),
	('EST_2', 'FI-SW-01', 16.50, 10.00, 'P', 'Small', NULL, NULL, NULL, NULL),
	('EST_20', 'FI-FW-02', 5.50, 2.00, 'P', 'Adult Male', NULL, NULL, NULL, NULL),
	('EST_21', 'FI-FW-02', 5.29, 1.00, 'P', 'Adult Female', NULL, NULL, NULL, NULL),
	('EST_22', 'K9-RT-02', 135.50, 100.00, 'P', 'Adult Male', NULL, NULL, NULL, NULL),
	('EST_23', 'K9-RT-02', 145.49, 100.00, 'P', 'Adult Female', NULL, NULL, NULL, NULL),
	('EST_24', 'K9-RT-02', 255.50, 92.00, 'P', 'Adult Male', NULL, NULL, NULL, NULL),
	('EST_25', 'K9-RT-02', 325.29, 90.00, 'P', 'Adult Female', NULL, NULL, NULL, NULL),
	('EST_26', 'K9-CW-01', 125.50, 92.00, 'P', 'Adult Male', NULL, NULL, NULL, NULL),
	('EST_27', 'K9-CW-01', 155.29, 90.00, 'P', 'Adult Female', NULL, NULL, NULL, NULL),
	('EST_28', 'K9-RT-01', 155.29, 90.00, 'P', 'Adult Female', NULL, NULL, NULL, NULL),
	('EST_3', 'FI-SW-02', 18.50, 12.00, 'P', 'Toothless', NULL, NULL, NULL, NULL),
	('EST_4', 'FI-FW-01', 18.50, 12.00, 'P', 'Spotted', NULL, NULL, NULL, NULL),
	('EST_5', 'FI-FW-01', 18.50, 12.00, 'P', 'Spotless', NULL, NULL, NULL, NULL),
	('EST_6', 'K9-BD-01', 18.50, 12.00, 'P', 'Male Adult', NULL, NULL, NULL, NULL),
	('EST_7', 'K9-BD-01', 18.50, 12.00, 'P', 'Female Puppy', NULL, NULL, NULL, NULL),
	('EST_8', 'K9-PO-02', 18.50, 12.00, 'P', 'Male Puppy', NULL, NULL, NULL, NULL),
	('EST_9', 'K9-DL-01', 18.50, 12.00, 'P', 'Spotless Male Puppy', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;


-- 导出  表 mpet.orders 结构
CREATE TABLE IF NOT EXISTS `orders` (
  `orderid` int(11) NOT NULL DEFAULT '0' COMMENT '订单序号',
  `orderdate` date DEFAULT NULL COMMENT '订单日期',
  `totalprice` decimal(10,2) DEFAULT '0.00' COMMENT '总价格',
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 7168 kB; InnoDB free: 6144 kB; (`linenum` `orde';

-- 正在导出表  mpet.orders 的数据：~100 rows (大约)
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`orderid`, `orderdate`, `totalprice`) VALUES
	(1, '2015-05-20', 0.00),
	(1000, '2013-09-13', 0.00),
	(1001, '2015-05-20', 0.00),
	(1002, '2013-09-18', 0.00),
	(1003, '2014-01-14', 0.00),
	(1004, '2014-06-27', 0.00),
	(1005, '2014-06-27', 0.00),
	(1006, '2014-06-27', 0.00),
	(1007, '2014-06-27', 0.00),
	(1008, '2014-06-27', 0.00),
	(1009, '2014-06-27', 0.00),
	(1010, '2014-06-27', 0.00),
	(1011, '2014-06-27', 0.00),
	(1012, '2014-06-27', 0.00),
	(1013, '2014-06-27', 0.00),
	(1014, '2014-06-27', 0.00),
	(1015, '2014-06-27', 0.00),
	(1016, '2014-06-27', 0.00),
	(1017, '2014-06-27', 0.00),
	(1018, '2014-06-27', 0.00),
	(1019, '2014-06-27', 0.00),
	(1020, '2014-06-27', 0.00),
	(1021, '2014-06-27', 0.00),
	(1022, '2013-03-01', 0.00),
	(1023, '2014-09-16', 0.00),
	(1024, '2014-09-16', 0.00),
	(1025, '2014-09-16', 0.00),
	(1027, '2014-12-26', 0.00),
	(1028, '2014-12-26', 0.00),
	(1029, '2014-12-26', 0.00),
	(1030, '2014-12-28', 0.00),
	(1031, '2014-12-28', 0.00),
	(1032, '2015-02-23', 0.00),
	(1033, '2015-02-23', 0.00),
	(1034, '2015-04-06', 0.00),
	(1035, '2015-05-07', 0.00),
	(1036, '2015-05-07', 0.00),
	(1037, '2015-05-20', 0.00),
	(1038, '2015-05-20', 0.00),
	(1039, '2015-05-20', 0.00),
	(1040, '2015-05-20', 0.00),
	(1041, '2015-05-20', 0.00),
	(1042, '2015-05-21', 0.00),
	(1043, '2015-05-21', 0.00),
	(1044, '2015-05-21', 0.00),
	(1045, '2015-05-21', 0.00),
	(1046, '2015-05-21', 0.00),
	(1047, '2015-08-15', 0.00),
	(1048, '2015-08-16', 0.00),
	(1049, '2015-08-16', 0.00),
	(1050, '2015-08-16', 0.00),
	(1051, '2015-12-09', 0.00),
	(1052, '2015-12-09', 0.00),
	(1053, '2015-12-09', 0.00),
	(1054, '2016-01-17', 0.00),
	(1055, '2016-01-17', 0.00),
	(1056, '2016-01-17', 0.00),
	(1057, '2016-01-17', 0.00),
	(1058, '2016-01-17', 0.00),
	(1059, '2016-01-17', 0.00),
	(1060, '2016-01-19', 463.00),
	(1061, '2016-01-19', 132.00),
	(1062, '2016-01-19', 190.00),
	(1063, '2016-01-19', 0.00),
	(1064, '2016-01-19', 0.00),
	(1065, '2016-01-20', 16.00),
	(1066, '2016-01-20', 37.00),
	(1067, '2016-01-20', 37.00),
	(1068, '2016-01-20', 37.00),
	(1069, '2016-01-20', 2052.00),
	(1070, '2016-01-20', 18.00),
	(1071, '2016-01-20', 33.00),
	(1072, '2016-01-20', 18.00),
	(1073, '2016-01-20', 24.00),
	(1074, '2016-01-20', 5.00),
	(1075, '2016-01-20', 55.00),
	(1076, '2016-03-16', 0.00),
	(1077, '2016-03-16', 0.00),
	(1078, '2016-03-23', 0.00),
	(1079, '2016-03-25', 371.00),
	(1080, '2016-03-25', 222.00),
	(1081, '2016-03-25', 92.00),
	(1082, '2016-03-25', 74.00),
	(1083, '2016-03-25', 35.00),
	(1084, '2016-03-26', 0.00),
	(1085, '2016-03-26', 0.00),
	(1086, '2016-09-10', 203.00),
	(1087, '2016-09-13', 0.00),
	(1088, '2016-09-13', 0.00),
	(1089, '2016-09-13', 0.00),
	(1090, '2016-09-13', 0.00),
	(1091, '2016-09-13', 0.00),
	(1092, '2016-09-13', 74.00),
	(1093, '2016-09-13', 0.00),
	(1094, '2016-09-13', 0.00),
	(1095, '2016-09-13', 37.00),
	(1096, '2016-09-13', 16.00),
	(1097, '2016-09-13', 49.00),
	(1098, '2016-09-13', 33.00),
	(1099, '2016-11-14', 0.00),
	(1100, '2016-11-14', 37.00),
	(1101, '2016-11-14', 111.00);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;


-- 导出  表 mpet.product 结构
CREATE TABLE IF NOT EXISTS `product` (
  `productid` varchar(10) NOT NULL,
  `catid` varchar(10) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `descn` varchar(255) DEFAULT NULL,
  `pic` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`productid`),
  KEY `FK_fk_product_1` (`catid`),
  CONSTRAINT `FK_fk_product_1` FOREIGN KEY (`catid`) REFERENCES `category` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 7168 kB; (`category`) REFER `jpetstore/category';

-- 正在导出表  mpet.product 的数据：~16 rows (大约)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`productid`, `catid`, `name`, `descn`, `pic`) VALUES
	('AV-CB-01', 'BIRDS', 'Amazon Parrot', 'Great companion for up to 75 years', 'bird4.gif'),
	('AV-SB-02', 'BIRDS', 'Finch', 'Great stress reliever', 'bird1.gif'),
	('FI-FW-01', 'FISH', 'Koi', 'Fresh Water fish from Japan', 'fish3.gif'),
	('FI-FW-02', 'FISH', 'Goldfish', 'Fresh Water fish from China', 'fish2.gif'),
	('FI-SW-01', 'FISH', 'Angelfish', 'Salt Water fish from Australia', 'fish1.jpg'),
	('FI-SW-02', 'FISH', 'Tiger Shark', 'Salt Water fish from Australia', 'fish4.gif'),
	('FL-DLH-02', 'CATS', 'Persian', 'Friendly house cat, doubles as a princess', 'cat1.gif'),
	('FL-DSH-01', 'CATS', 'Manx', 'Great for reducing mouse populations', 'cat3.gif'),
	('K9-BD-01', 'DOGS', 'Bulldog', 'Friendly dog from England', 'dog2.gif'),
	('K9-CW-01', 'DOGS', 'Chihuahua', 'Great companion dog', 'dog4.gif'),
	('K9-DL-01', 'DOGS', 'Dalmation', 'Great dog for a Fire Station', 'dog5.gif'),
	('K9-PO-02', 'DOGS', 'Poodle', 'Cute dog from France', 'dog6.gif'),
	('K9-RT-01', 'DOGS', 'Golden Retriever', 'Great family dog', 'dog1.gif'),
	('K9-RT-02', 'DOGS', 'Labrador Retriever', 'Great hunting dog', 'dog5.gif'),
	('RP-LI-02', 'REPTILES', 'Iguana', 'Friendly green friend', 'lizard2.gif'),
	('RP-SN-01', 'REPTILES', 'Rattlesnake', 'Doubles as a watch dog', 'lizard3.gif');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;


-- 导出  表 mpet.profile 结构
CREATE TABLE IF NOT EXISTS `profile` (
  `username` varchar(80) NOT NULL,
  `lang` varchar(80) NOT NULL,
  `catid` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`username`),
  KEY `FK_Reference_7` (`catid`),
  CONSTRAINT `FK_Reference_7` FOREIGN KEY (`catid`) REFERENCES `category` (`catid`),
  CONSTRAINT `FK_Relationship_4` FOREIGN KEY (`username`) REFERENCES `account` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 7168 kB; InnoDB free: 6144 kB; (`username`) REF';

-- 正在导出表  mpet.profile 的数据：~35 rows (大约)
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` (`username`, `lang`, `catid`) VALUES
	('123', 'english', 'BIRDS'),
	('1454334', 'eng', 'BIRDS'),
	('223232224', 'english', 'BIRDS'),
	('232323', 'english', 'BIRDS'),
	('234234', 'english', NULL),
	('35345666', 'eng', 'BIRDS'),
	('44443', 'english', 'BIRDS'),
	('453567gff', 'english', NULL),
	('666', 'english', 'CATS'),
	('6767', 'english', 'BIRDS'),
	('77771', 'english', NULL),
	('8881', 'english', NULL),
	('8888', 'chinese', 'REPTILES'),
	('8989uuu', 'english', 'BIRDS'),
	('9999', 'chinese', 'BIRDS'),
	('999988', 'english', NULL),
	('99999', 'chinese', 'CATS'),
	('fsd', 'chinese', 'CATS'),
	('halou', 'english', 'BIRDS'),
	('hello', 'english', NULL),
	('HHH', 'english', 'FISH'),
	('hhhh', 'chinese', 'DOGS'),
	('kkk111', 'english', 'BIRDS'),
	('KKK12', 'chi', 'BIRDS'),
	('liubing', 'english', 'BIRDS'),
	('LLLL', '1', 'BIRDS'),
	('UUU', 'chi', 'BIRDS'),
	('uuuyyyy', 'eng', 'BIRDS'),
	('weewew', 'english', 'BIRDS'),
	('weikun', 'english', 'FISH'),
	('weikun2333', 'english', 'BIRDS'),
	('wewe', 'english', 'CATS'),
	('www', 'english', 'FISH'),
	('yuchenglong', 'eng', 'BIRDS'),
	('YYQ', 'english', 'BIRDS'),
	('yyyy', 'english', 'DOGS'),
	('zhai357', 'chinese', 'BIRDS'),
	('zhaodongpo', 'english', NULL),
	('zhaofuyu', 'english', 'BIRDS'),
	('公寓', 'english', NULL),
	('哦哦o', 'english', NULL),
	('尚品', 'english', NULL),
	('杨林', 'english', 'BIRDS');
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;


-- 导出  过程 mpet.queryCart 结构
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `queryCart`(IN `in_orderid` INT)
BEGIN
	
	
		select * 
		from 	product p,category c,item i,cart a
		where  
		      p.catid=c.catid and
		      i.productid=p.productid and
		      a.itemid=i.itemid and
		      a.orderid=in_orderid;
	
END//
DELIMITER ;


-- 导出  过程 mpet.queryPet 结构
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `queryPet`(IN `in_category` CHAR(10), IN `in_pro` CHAR(10), IN `in_item` CHAR(10))
BEGIN

	
	/*
		in_category:宠物种类，为了查询product表
		in_pro:宠物产品,为了查询item表
		in_item:宠物项目，为了查询单个项目 为了查询item表
		

	*/
	if in_category!='' then
	
		select * from 
			product p,category c
		where  
		      p.catid=in_category and
				p.catid=c.catid;      
		      
	elseif in_pro!='' then
		
		select * 
		from 	product p,category c,item i
		where  i.productid=in_pro and
		       p.catid=c.catid and
		       i.productid=p.productid;
		      
	
		      
	elseif in_item!='' then	      
			select * 
			from 	item i,product p
			where  i.itemid=in_item and
			       i.productid=p.productid;
			      
		
	end if;
	


END//
DELIMITER ;


-- 导出  过程 mpet.updateCartB 结构
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateCartB`(IN `in_olist` varchar(1000), IN `in_qlist` varchar(1000), IN `in_dlist` varchar(1000), IN `f_delimiter` varchar(5)
)
BEGIN
	
  /*
	  in_olist-- 要分割的orderid字符串
	  in_qlist-- 要分割的quantity字符串
	  in_dlist-- 要分割的itemid字符串
	  f_delimiter-- 分隔符
	*/	

  set @cnt = func_get_split_string_total(in_olist,f_delimiter); 
  set @i=0;
  while @i < @cnt  do
    set @i = @i + 1;    
    set @orderid=0+func_get_split_string(in_olist,f_delimiter,@i);
    set @itemid=func_get_split_string(in_dlist,f_delimiter,@i);
    set @quantity=0+func_get_split_string(in_qlist,f_delimiter,@i);    
   
    
    update cart set quantity=@quantity	 
	 where orderid=@orderid
	 and itemid=trim(@itemid); 
     
  end while; 
   commit;
 
  -- select @cnt;
  
   call queryCart(@orderid);
END//
DELIMITER ;


-- 导出  过程 mpet.updateOrders 结构
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateOrders`(IN `in_orderid` INT, IN `in_total` FLOAT)
BEGIN
	update orders 
	set orderdate=now() ,
	totalprice=in_total

	where orderid=in_orderid;
	commit;
END//
DELIMITER ;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
