-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 04, 2011 at 04:32 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_nguyenkim`
--
CREATE DATABASE `db_nguyenkim` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `db_nguyenkim`;

-- --------------------------------------------------------

--
-- Table structure for table `catelogies`
--

CREATE TABLE IF NOT EXISTS `catelogies` (
  `catelogyID` int(11) NOT NULL AUTO_INCREMENT,
  `catelogyName` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `catelogyImage` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `catelogyDescription` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parentCatelogy` int(11) DEFAULT NULL,
  PRIMARY KEY (`catelogyID`),
  KEY `FK_catelogies_categoies` (`parentCatelogy`),
  KEY `FK55CA8122640E0BC5` (`parentCatelogy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='BÃ¡ÂºÂ£ng loÃ¡ÂºÂ¡i sÃ¡ÂºÂ£n phÃ¡ÂºÂ©m vÃƒÂ­ dÃ¡Â»Â¥ nhÃ†Â° laptop, Ã„â€˜iÃ¡Â»â€¡n thoÃ¡ÂºÂ¡i, Ã„â€˜iÃ¡Â»â€¡n gia dÃ¡Â»Â¥ng,...' AUTO_INCREMENT=159 ;

--
-- Dumping data for table `catelogies`
--

INSERT INTO `catelogies` (`catelogyID`, `catelogyName`, `catelogyImage`, `catelogyDescription`, `parentCatelogy`) VALUES
(1, 'Điện tử', NULL, 'Hàng điện tử', NULL),
(2, 'Điện lạnh', NULL, 'Hàng điện lạnh', NULL),
(3, 'Gia dụng', NULL, 'Hàng gia dụng', NULL),
(4, 'Tin học', NULL, 'Hàng tin học', NULL),
(5, 'Điện thoại', NULL, 'Các loại điện thoại', NULL),
(6, 'Giải trí', NULL, 'Giả trí', NULL),
(7, 'LCD', NULL, 'Điện tử LCD', 1),
(8, 'Tivi', NULL, 'Điện tử tivi', 1),
(9, 'Dàn máy', NULL, 'Dàn máy', 1),
(10, 'Đầu đĩa', NULL, 'Đầu đĩa', 1),
(11, 'Cassette', NULL, 'Điện tử - Cassetes', 1),
(12, 'Amply', NULL, 'Điện tử - Amply', 1),
(13, 'Loa', NULL, 'Điện tử - Loa', 1),
(14, 'Micro', NULL, 'Điện tử - Micro', 1),
(15, 'Bộ thu phát tín hiệu', NULL, 'Điện tử - thu phát tín hiệu', 1),
(16, 'Phụ kiện', NULL, 'Điện tử  - phụ kiện', 1),
(17, 'Sony', NULL, 'ĐT-LCD-Sony', 7),
(18, 'Sharp', NULL, 'ĐT-LCD-Sharp', 7),
(19, 'JVC', NULL, 'ĐT-LCD-JVC', 7),
(20, 'Panasonic', NULL, 'ĐT-LCD-Panasonic', 7),
(21, 'Toshiba', NULL, 'DDT-LCD-Toshiba', 7),
(22, 'LG', NULL, 'ĐT-LCD-LG', 7),
(23, 'Sam sung', NULL, 'ĐT-LCD-Samsung', 7),
(24, 'Sanyo', NULL, 'ĐT-LCD-Sanyo', 7),
(25, 'LG', NULL, 'ĐT-Tivi-LG', 8),
(26, 'JVC', NULL, 'ĐT-Tivi-JVC', 8),
(27, 'JVC', NULL, 'ĐT - Dàn máy - JVC ', 9),
(28, 'Sony', NULL, 'ĐT- Dàn máy - Sony', 9),
(29, 'Arirang', NULL, 'ĐT- Đầu đĩa - Arirang', 10),
(30, 'Philips', NULL, 'ĐT-Cassete', 11),
(31, 'Cambridge', NULL, 'ĐT - Amply-Cambridge', 12),
(32, 'Master', NULL, 'ĐT - Loa - Master', 13),
(33, 'Guinness', NULL, 'ĐT-Micro', 14),
(34, 'LG', NULL, 'ĐT-Bộ thu phát tín hiệu-LG', 15),
(35, 'Máy lạnh', NULL, 'ĐL-máy lạnh', 2),
(36, 'Máy giặt', NULL, 'ĐL-máy giặt', 2),
(37, 'Tủ lạnh', NULL, 'ĐL-Tủ lạnh', 2),
(38, 'Tủ đông', NULL, 'ĐL-tủ đông', 2),
(39, 'Tủ mát', NULL, 'ĐL-tủ mát', 2),
(40, 'Máy nóng lạnh', NULL, 'ĐL-máy nóng lạnh', 2),
(41, 'Máy nước nóng', NULL, 'ĐL-máy nước nóng', 2),
(42, 'Máy lọc không khí', NULL, 'ĐL-máy lọc không khí', 2),
(43, 'Máy sấy', NULL, 'ĐL-máy sấy', 2),
(44, 'Máy lọc nước', NULL, 'ĐL-máy lọc nước', 2),
(45, 'LG', NULL, 'máy lạnh LG', 35),
(46, 'General', NULL, 'Máy giặt general', 36),
(47, 'Sony', NULL, 'Tủ lạnh', 37),
(48, 'Sanaky', NULL, 'Tủ đông - sanaky', 38),
(49, 'Kiata', NULL, 'Tủ mát - kiat', 39),
(50, 'Kangaroo', NULL, 'Máy nóng lạnh - Kangaroo', 40),
(51, 'Hotwatter', NULL, 'máy nước nóng - hotwatter', 41),
(52, 'Fegurson', NULL, 'Máy sấy - Fegurson', 43),
(53, 'AirSky', NULL, 'Máy lọc không khí - Airsky', 42),
(54, 'Watterfall', NULL, 'Máy lọc nước - Watterfall', 54),
(55, 'Ép trái cây', NULL, 'Gia dụng - ép trái cây', 3),
(56, 'Tefal', NULL, 'GD-ép trái cây', 55),
(57, 'Quạt', NULL, 'GD-quạt', 3),
(58, 'Điện Quang', NULL, 'quạt - ĐQ', 57),
(59, 'Taiha', NULL, 'Quạt - Taiha', 57),
(60, 'Bàn ủi', NULL, 'GĐ-Bản ùi', 3),
(61, 'Philips', NULL, 'Bàn ủi', 60),
(62, 'Nồi', NULL, 'GĐ- nồi', 3),
(63, 'HappyCock', NULL, 'Nồi - Happycock', 62),
(64, 'Shine', NULL, 'Nồi - Shine', 63),
(65, 'Bếp ga - Bếp điện từ', NULL, 'bếp ga bếp điện từ', 3),
(66, 'Shine', NULL, 'Bếp ga- shine', 65),
(67, 'Tefal', NULL, 'Bếp ga - tefal', 65),
(68, 'Nồi cơm điện', NULL, 'Nồi cơm điện', 3),
(69, 'CoockEle', NULL, 'Nồi cơm điện - CoockEle', 68),
(70, 'Lò vi ba', NULL, 'Lò vi ba', 3),
(71, 'LG', NULL, 'lò vi ba LG', 70),
(72, 'Nồi áp suất', NULL, 'Nồi áp suất', 3),
(73, 'Magic', NULL, 'Nồi áp suất - magic', 72),
(74, 'Đèn', NULL, 'Đèn ', 3),
(75, 'Philips', NULL, 'Đèn - Philips', 74),
(76, 'Các sản phẩm khác', NULL, NULL, 3),
(77, 'Notebook', NULL, 'Máy tính xách tay', 4),
(78, 'HP', NULL, 'Máy tính HP', 77),
(79, 'Dell', NULL, 'Máy tính dell', 77),
(80, 'Acer', NULL, 'Máy tính acer', 77),
(81, 'Asus', NULL, 'Máy tính asus', 77),
(82, 'Toshiba', NULL, 'Máy tính toshiba', 77),
(83, 'Sony', NULL, 'Máy tính sony', 77),
(84, 'Apple', NULL, 'Máy tính apple', 77),
(85, 'Lenovo', NULL, 'Máy tính lenovo', 77),
(86, 'Gateway', NULL, 'Máy tính gateway', 77),
(87, 'Samsung', NULL, 'Máy tính sam sung', 77),
(88, 'Gigabyte', NULL, 'Máy tính gigabyte', 77),
(89, 'PC', NULL, 'Máy tính đề bàn', 4),
(90, 'Acer', NULL, 'Máy để bàn Acer', 89),
(91, 'CMS', NULL, 'Máy để bàn CMS', 89),
(92, 'HP', NULL, 'Máy để bàn HP', 89),
(93, 'Lenovo', NULL, 'Máy để bàn lenovo', 89),
(94, 'Dell', NULL, 'Máy để bàn DELL', 89),
(95, 'MonitorLCD', NULL, 'màn hình', 4),
(96, 'Philips', NULL, 'Màn hình philips', 95),
(97, 'Panasonic', NULL, 'Màn hình panasonic', 95),
(98, 'LG', NULL, 'Màn hình LG', 95),
(99, 'ViewSonic', NULL, 'Màn hinh viewsonic', 95),
(100, 'Máy in', NULL, 'Máy in', 4),
(101, 'Epson', NULL, 'Máy in - Epson', 100),
(102, 'Cannon', NULL, 'Máy in - Cannon', 100),
(103, 'HP', NULL, 'Máy in - HP', 100),
(104, 'Samsung', NULL, 'Máy in - Samsung', 100),
(105, 'Brother', NULL, 'Máy in - Brother', 100),
(106, 'Loa', NULL, 'Loa vi tính', 4),
(107, 'Creative', NULL, 'Load - creative', 106),
(108, 'Philips', NULL, 'Loa - philips', 106),
(109, 'Soundmax', NULL, 'Loa - Soundmax', 106),
(110, 'Logitech', NULL, 'Loa - Logitech', 106),
(111, 'Phụ kiện', NULL, 'Phụ kiện máy tính', 4),
(112, 'Mouse', NULL, 'chuột máy tính', 111),
(113, 'Keyboard', NULL, 'bàn phím máy tính', 111),
(114, 'USB', NULL, 'usb', 111),
(115, 'Ổ cứng di động', NULL, 'HDD mobile', 111),
(116, 'Logitech', NULL, 'mouse-logitech', 112),
(117, 'Genius', NULL, 'mouse-genius', 112),
(118, 'Misumi', NULL, 'Mouse-Mitsumi', 112),
(119, 'Dell', NULL, 'Keyboard-Dell', 113),
(120, 'HP', NULL, 'Keyboard-HP', 113),
(121, 'Logitech', NULL, 'Keyboard-Logitech', 113),
(122, 'Kingmax', NULL, 'USB-Kingmax', 114),
(123, 'HP', NULL, 'USB-HP', 114),
(124, 'Samsung', NULL, 'HDDExte-Samsung', 115),
(125, 'Seagate', NULL, 'HDDexte-seagate', 115),
(126, 'Headphone', NULL, 'Tai nghe', 111),
(127, 'Creative', NULL, 'Headphone-creative', 126),
(128, 'Somic', NULL, 'Headphone-somic', 126),
(129, 'Điện thoại di động', NULL, 'Điện thọai', 5),
(130, 'Nokia', NULL, NULL, 129),
(131, 'Mobell', NULL, NULL, 129),
(132, 'LG', NULL, NULL, 129),
(133, 'FMobile', NULL, NULL, 129),
(134, 'QMobile', NULL, NULL, 129),
(135, 'Samsung', NULL, NULL, 129),
(136, 'Blackbery', NULL, NULL, 129),
(137, 'HTC', NULL, NULL, 129),
(138, 'Điện thoại hữu tuyến', NULL, NULL, 5),
(139, 'Panasonic', NULL, NULL, 138),
(140, 'Điện thoại vô tuyến', NULL, NULL, 5),
(141, 'Ge', NULL, NULL, 140),
(142, 'Philips', NULL, NULL, 140),
(143, 'Máy ảnh', NULL, NULL, 6),
(144, 'Cannon', NULL, NULL, 143),
(145, 'Sony', NULL, NULL, 143),
(146, 'Panasonic', NULL, NULL, 143),
(147, 'Fuji', NULL, NULL, 143),
(148, 'Samsung', NULL, NULL, 143),
(149, 'MP3', NULL, NULL, 6),
(150, 'Sony', NULL, NULL, 149),
(151, 'Smartone', NULL, NULL, 149),
(152, 'MP4', NULL, NULL, 6),
(153, 'Creative', NULL, NULL, 152),
(154, 'Sony', NULL, NULL, 152),
(155, 'Smartone', NULL, NULL, 152),
(156, 'Từ điển điện tử', NULL, NULL, 6),
(157, 'Kim từ điển', NULL, NULL, 156),
(158, 'Tân từ điển', NULL, NULL, 156);

-- --------------------------------------------------------

--
-- Table structure for table `catelogies_suppliers`
--

CREATE TABLE IF NOT EXISTS `catelogies_suppliers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `catelogyID` int(11) DEFAULT NULL,
  `supplierID` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='BÃ¡ÂºÂ£ng Danh mÃ¡Â»Â¥c_nhÃƒÂ  sÃ¡ÂºÂ£n xuÃ¡ÂºÂ¥t' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `catelogies_suppliers`
--


-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `customerID` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `middleName` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastName` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `roleID` int(11) DEFAULT NULL,
  `username` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`customerID`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  KEY `FK_Customers_Roles` (`customerID`),
  KEY `FK_Customer_Roles` (`roleID`),
  KEY `FK600E7C554E369739` (`roleID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerID`, `firstName`, `middleName`, `lastName`, `email`, `address`, `phone`, `birthday`, `roleID`, `username`, `password`) VALUES
(1, 'H?', 'Tr??ng HÃ¹ng', 'Minh', 'conguyetnhat@gmail.com', 'qu?n 8', '01657575118', '3889-03-27', NULL, 'minh', NULL),
(2, 'H?', 'Tr??ng Hùng', 'Minh', 'conguyetnhat@gmail.com', 'Qu?n 10', '01657575118', '2011-04-25', 3, 'minh1', 'minh1');

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE IF NOT EXISTS `discounts` (
  `discountID` int(11) NOT NULL AUTO_INCREMENT,
  `productID` int(11) DEFAULT NULL,
  `saleOf` double DEFAULT NULL,
  `fromDate` date DEFAULT NULL,
  `toDate` date DEFAULT NULL,
  PRIMARY KEY (`discountID`),
  KEY `FK_Discounts_Prodcuts` (`productID`),
  KEY `FKF8C63352438E0F63` (`productID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='B?ng gi?m giÃ¡ s?n ph?m' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `discounts`
--


-- --------------------------------------------------------

--
-- Table structure for table `imagelist`
--

CREATE TABLE IF NOT EXISTS `imagelist` (
  `ImageListID` int(11) NOT NULL AUTO_INCREMENT,
  `productID` int(11) DEFAULT NULL,
  `imageURL` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ImageListID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='BÃ¡ÂºÂ£ng nÃƒÂ y mÃƒÂ´ tÃ¡ÂºÂ£ danh sÃƒÂ¡ch hÃƒÂ¬nh Ã¡ÂºÂ£nh cÃ¡Â»Â§a 1 loÃ¡ÂºÂ¡i sÃ¡ÂºÂ£n phÃ¡ÂºÂ©m' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `imagelist`
--


-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE IF NOT EXISTS `orderdetails` (
  `orderDetailID` int(11) NOT NULL AUTO_INCREMENT,
  `orderID` int(11) DEFAULT NULL,
  `productID` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderDetailID`),
  KEY `FK_Oderdetails_Orders` (`orderID`),
  KEY `FK_Oderdetails_Products` (`productID`),
  KEY `FK2EAD3734D99FA8C3` (`orderID`),
  KEY `FK2EAD3734438E0F63` (`productID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Chi tiết đơn đjăt hàng' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `orderdetails`
--


-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `OrderID` int(11) NOT NULL AUTO_INCREMENT,
  `customerID` int(11) DEFAULT NULL,
  `orderDate` date DEFAULT NULL,
  `orderStatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `FK_Orders_Customers` (`customerID`),
  KEY `FK_Orders_Status` (`orderStatus`),
  KEY `FKC3DF62E5C04541A7` (`orderStatus`),
  KEY `FKC3DF62E56381CB9` (`customerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `orders`
--


-- --------------------------------------------------------

--
-- Table structure for table `parameters`
--

CREATE TABLE IF NOT EXISTS `parameters` (
  `ParameterID` int(11) NOT NULL AUTO_INCREMENT,
  `prameterName` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameterType` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameterValue` double DEFAULT NULL,
  PRIMARY KEY (`ParameterID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='bÃ¡ÂºÂ£ng tham sÃ¡Â»â€˜' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `parameters`
--


-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `productID` int(11) NOT NULL AUTO_INCREMENT,
  `catelogyID` int(11) DEFAULT NULL,
  `supplierID` int(11) DEFAULT NULL,
  `productName` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `productDescription` text COLLATE utf8_unicode_ci,
  `productDetail` text COLLATE utf8_unicode_ci,
  `productSmallImage` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `productImagesID` int(11) DEFAULT NULL,
  `productFeatures` text COLLATE utf8_unicode_ci,
  `productComments` text COLLATE utf8_unicode_ci,
  `productTagsID` int(11) DEFAULT NULL,
  `productQuantity` int(11) DEFAULT NULL,
  `productPrice` float DEFAULT NULL,
  `productStatusID` int(11) DEFAULT NULL,
  PRIMARY KEY (`productID`),
  KEY `FK_products_catelogies` (`catelogyID`),
  KEY `FK_products_suppilers` (`supplierID`),
  KEY `FK_Products_ImageList` (`productImagesID`),
  KEY `FK_Products_Status` (`productStatusID`),
  KEY `FK_Products_Tags` (`productTagsID`),
  KEY `FKC42BD1648A41F6F1` (`productTagsID`),
  KEY `FKC42BD164343F0936` (`catelogyID`),
  KEY `FKC42BD1647C003363` (`productStatusID`),
  KEY `FKC42BD164A1C506E6` (`productImagesID`),
  KEY `FKC42BD164D8D096F9` (`supplierID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='BÃ¡ÂºÂ£ng sÃ¡ÂºÂ£n phÃ¡ÂºÂ©m' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productID`, `catelogyID`, `supplierID`, `productName`, `productDescription`, `productDetail`, `productSmallImage`, `productImagesID`, `productFeatures`, `productComments`, `productTagsID`, `productQuantity`, `productPrice`, `productStatusID`) VALUES
(1, 78, NULL, 'NOTEBOOK HP PAVILION DV6-1318TX', NULL, NULL, 'NOTEBOOK-HP-PAVILION-DV6-1318TX_a.jpg', NULL, NULL, NULL, NULL, 10, 25200000, 1),
(2, 78, NULL, 'Notebook-HP-CQ40-501TX', NULL, NULL, '1160565-Notebook-HP-CQ40-501TX.jpg', NULL, NULL, NULL, NULL, 7, 10480000, 1),
(3, 78, NULL, 'NOTEBOOK HP PAVILION DM3-1018TX', NULL, NULL, 'NOTEBOOK HP PAVILION DM3-1018TX.jpg', NULL, NULL, NULL, NULL, 15, 19800000, 1),
(4, 78, NULL, '', NULL, NULL, '1160565-Notebook-HP-CQ40-501TX.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `RoleID` int(11) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`RoleID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='BÃ¡ÂºÂ£ng miÃƒÂªu tÃ¡ÂºÂ£ quyÃ¡Â»Ân hÃ¡ÂºÂ¡n cÃ¡Â»Â§a 1 user(customer)' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`RoleID`, `roleName`) VALUES
(1, 'admin'),
(2, 'user'),
(3, 'admin1');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `StatusID` int(11) NOT NULL AUTO_INCREMENT,
  `statusName` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`StatusID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='tÃƒÂ¬nh trÃ¡ÂºÂ¡ng cÃ¡Â»Â§a sÃ¡ÂºÂ£n phÃ¡ÂºÂ©m' AUTO_INCREMENT=6 ;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`StatusID`, `statusName`) VALUES
(1, 'Mới đặt hàng'),
(2, 'Hủy bởi quản trị'),
(3, 'Chập nhận bởi quản trị'),
(4, 'Khách hàng đã thanh toán'),
(5, 'Hàng đã được chuyển');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE IF NOT EXISTS `suppliers` (
  `suppliersID` int(11) NOT NULL AUTO_INCREMENT,
  `supplierName` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `supplierLogo` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`suppliersID`),
  UNIQUE KEY `supplierName_UNIQUE` (`supplierName`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=24 ;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`suppliersID`, `supplierName`, `supplierLogo`) VALUES
(1, 'LG', NULL),
(2, 'Sony', NULL),
(3, 'Sharp', NULL),
(4, 'JVC', NULL),
(5, 'Panasonic', NULL),
(6, 'Toshiba', NULL),
(7, 'Samsung', NULL),
(8, 'Sanyo', NULL),
(9, 'Apple', NULL),
(10, 'HP', NULL),
(11, 'Dell', NULL),
(12, 'Acer', NULL),
(13, 'Asus', NULL),
(14, 'Lenovo', NULL),
(15, 'Gateway', NULL),
(16, 'Cannon', NULL),
(17, 'Fuji', NULL),
(18, 'Oki', NULL),
(19, 'Microlab', NULL),
(20, 'Creative', NULL),
(21, 'Soundmax', NULL),
(22, 'Gennius', NULL),
(23, 'Logitech', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `TagID` int(11) NOT NULL AUTO_INCREMENT,
  `tagName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`TagID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='CÃƒÂ¡c tÃ¡Â»Â« khÃƒÂ³a (keyword, tag) -> tÃƒÂ¬m kiÃ¡ÂºÂ¿m' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tags`
--


--
-- Constraints for dumped tables
--

--
-- Constraints for table `catelogies`
--
ALTER TABLE `catelogies`
  ADD CONSTRAINT `FK55CA8122640E0BC5` FOREIGN KEY (`parentCatelogy`) REFERENCES `catelogies` (`catelogyID`),
  ADD CONSTRAINT `FK_catelogies_categoies` FOREIGN KEY (`parentCatelogy`) REFERENCES `catelogies` (`catelogyID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `FK600E7C554E369739` FOREIGN KEY (`roleID`) REFERENCES `roles` (`RoleID`),
  ADD CONSTRAINT `FK_Customer_Roles` FOREIGN KEY (`roleID`) REFERENCES `roles` (`RoleID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `discounts`
--
ALTER TABLE `discounts`
  ADD CONSTRAINT `FKF8C63352438E0F63` FOREIGN KEY (`productID`) REFERENCES `products` (`productID`),
  ADD CONSTRAINT `FK_Discounts_Prodcuts` FOREIGN KEY (`productID`) REFERENCES `products` (`productID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `FK2EAD3734438E0F63` FOREIGN KEY (`productID`) REFERENCES `products` (`productID`),
  ADD CONSTRAINT `FK2EAD3734D99FA8C3` FOREIGN KEY (`orderID`) REFERENCES `orders` (`OrderID`),
  ADD CONSTRAINT `FK_Oderdetails_Orders` FOREIGN KEY (`orderID`) REFERENCES `orders` (`OrderID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_Oderdetails_Products` FOREIGN KEY (`productID`) REFERENCES `products` (`productID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FKC3DF62E56381CB9` FOREIGN KEY (`customerID`) REFERENCES `customers` (`customerID`),
  ADD CONSTRAINT `FKC3DF62E5C04541A7` FOREIGN KEY (`orderStatus`) REFERENCES `status` (`StatusID`),
  ADD CONSTRAINT `FK_Orders_Customers` FOREIGN KEY (`customerID`) REFERENCES `customers` (`customerID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_Orders_Status` FOREIGN KEY (`orderStatus`) REFERENCES `status` (`StatusID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FKC42BD164343F0936` FOREIGN KEY (`catelogyID`) REFERENCES `catelogies` (`catelogyID`),
  ADD CONSTRAINT `FKC42BD1647C003363` FOREIGN KEY (`productStatusID`) REFERENCES `status` (`StatusID`),
  ADD CONSTRAINT `FKC42BD1648A41F6F1` FOREIGN KEY (`productTagsID`) REFERENCES `tags` (`TagID`),
  ADD CONSTRAINT `FKC42BD164A1C506E6` FOREIGN KEY (`productImagesID`) REFERENCES `imagelist` (`ImageListID`),
  ADD CONSTRAINT `FKC42BD164D8D096F9` FOREIGN KEY (`supplierID`) REFERENCES `suppliers` (`suppliersID`),
  ADD CONSTRAINT `FK_products_catelogies` FOREIGN KEY (`catelogyID`) REFERENCES `catelogies` (`catelogyID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_Products_ImageList` FOREIGN KEY (`productImagesID`) REFERENCES `imagelist` (`ImageListID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_Products_Status` FOREIGN KEY (`productStatusID`) REFERENCES `status` (`StatusID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_products_suppilers` FOREIGN KEY (`supplierID`) REFERENCES `suppliers` (`suppliersID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_Products_Tags` FOREIGN KEY (`productTagsID`) REFERENCES `tags` (`TagID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
