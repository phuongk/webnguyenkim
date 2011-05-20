-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 20, 2011 at 04:23 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_nguyenkimshop`
--
CREATE DATABASE `db_nguyenkimshop` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `db_nguyenkimshop`;

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
  KEY `FK55CA8122640E0BC5` (`parentCatelogy`),
  KEY `FK55CA8122AB06F155` (`parentCatelogy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='BÃ¡ÂºÂ£ng loÃ¡ÂºÂ¡i sÃ¡ÂºÂ£n phÃ¡ÂºÂ©m vÃƒÂ­ dÃ¡Â»Â¥ nhÃ†Â° laptop, Ã„â€˜iÃ¡Â»â€¡n thoÃ¡ÂºÂ¡i, Ã„â€˜iÃ¡Â»â€¡n gia dÃ¡Â»Â¥ng,...' AUTO_INCREMENT=159 ;

--
-- Dumping data for table `catelogies`
--

INSERT INTO `catelogies` (`catelogyID`, `catelogyName`, `catelogyImage`, `catelogyDescription`, `parentCatelogy`) VALUES
(1, 'Điện tử', 'dientu.jpg', 'Hàng điện tử', NULL),
(2, 'Điện lạnh', 'dienlanh.jpg', 'Hàng điện lạnh', NULL),
(3, 'Gia dụng', 'giadung.jpg', 'Hàng gia dụng', NULL),
(4, 'Tin học', 'tinhoc.jpg', 'Hàng tin học', NULL),
(5, 'Điện thoại', 'vienthong.jpg', 'Các loại điện thoại', NULL),
(6, 'Giải trí', 'giaitri.jpg', 'Giả trí', NULL),
(7, 'LCD', 'dientu/LCD.jpg', 'Điện tử LCD', 1),
(8, 'Tivi', 'dientu/TIVI.jpg', 'Điện tử tivi', 1),
(9, 'Dàn máy', 'dientu/Danmay.jpg', 'Dàn máy', 1),
(10, 'Đầu đĩa', 'dientu/Daudia.jpg', 'Đầu đĩa', 1),
(11, 'Cassette', 'dientu/Cassette.jpg', 'Điện tử - Cassetes', 1),
(12, 'Amply', 'dientu/amply.jpg', 'Điện tử - Amply', 1),
(13, 'Loa', 'dientu/loa.jpg', 'Điện tử - Loa', 1),
(14, 'Micro', 'dientu/micro.jpg', 'Điện tử - Micro', 1),
(15, 'Bộ thu phát tín hiệu', 'null', 'Điện tử - thu phát tín hiệu', 1),
(16, 'Phụ kiện', 'dientu/phukien.jpg', 'Điện tử  - phụ kiện', 1),
(17, 'Sony', 'suppliers/Sony.jpg', 'ĐT-LCD-Sony', 7),
(18, 'Sharp', 'suppliers/Sharp.jpg', 'ĐT-LCD-Sharp', 7),
(19, 'JVC', 'suppliers/JVC.jpg', 'ĐT-LCD-JVC', 7),
(20, 'Panasonic', 'suppliers/Panasonic.jpg', 'ĐT-LCD-Panasonic', 7),
(21, 'Toshiba', 'suppliers/Toshiba.jpg', 'DDT-LCD-Toshiba', 7),
(22, 'LG', 'suppliers/LG.jpg', 'ĐT-LCD-LG', 7),
(23, 'Sam sung', 'suppliers/Samsung.jpg', 'ĐT-LCD-Samsung', 7),
(24, 'Sanyo', 'suppliers/SanyoLogo.gif', 'ĐT-LCD-Sanyo', 7),
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
(35, 'Máy lạnh', 'dienlanh/maylanh.jpg', 'ĐL-máy lạnh', 2),
(36, 'Máy giặt', 'dienlanh/maygiat.jpg', 'ĐL-máy giặt', 2),
(37, 'Tủ lạnh', 'dienlanh/tulanh.jpg', 'ĐL-Tủ lạnh', 2),
(38, 'Tủ đông', 'dienlanh/tudong.jpg', 'ĐL-tủ đông', 2),
(39, 'Tủ mát', 'dienlanh/tumat.jpg', 'ĐL-tủ mát', 2),
(40, 'Máy nóng lạnh', 'dienlanh/maynonglanh.jpg', 'ĐL-máy nóng lạnh', 2),
(41, 'Máy nước nóng', 'dienlanh/maynuocnong.jpg', 'ĐL-máy nước nóng', 2),
(42, 'Máy lọc không khí', 'dienlanh/maylockhongkhi.jpg', 'ĐL-máy lọc không khí', 2),
(43, 'Máy sấy', 'dienlanh/maysay.jpg', 'ĐL-máy sấy', 2),
(44, 'Máy lọc nước', 'dienlanh/maylocnuoc.jpg', 'ĐL-máy lọc nước', 2),
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
(55, 'Ép trái cây', 'giadung/eptraicay.jpg', 'Gia dụng - ép trái cây', 3),
(56, 'Tefal', NULL, 'GD-ép trái cây', 55),
(57, 'Quạt', 'giadung/quat.jpg', 'GD-quạt', 3),
(58, 'Điện Quang', NULL, 'quạt - ĐQ', 57),
(59, 'Taiha', NULL, 'Quạt - Taiha', 57),
(60, 'Bàn ủi', 'giadung/banui.jpg', 'GĐ-Bản ùi', 3),
(61, 'Philips', NULL, 'Bàn ủi', 60),
(62, 'Nồi', 'giadung/noi.jpg', 'GĐ- nồi', 3),
(63, 'HappyCock', NULL, 'Nồi - Happycock', 62),
(64, 'Shine', NULL, 'Nồi - Shine', 63),
(65, 'Bếp ga - Bếp điện từ', 'giadung/bepga.jpg', 'bếp ga bếp điện từ', 3),
(66, 'Shine', NULL, 'Bếp ga- shine', 65),
(67, 'Tefal', NULL, 'Bếp ga - tefal', 65),
(68, 'Nồi cơm điện', 'giadung/noicomdien.jpg', 'Nồi cơm điện', 3),
(69, 'CoockEle', NULL, 'Nồi cơm điện - CoockEle', 68),
(70, 'Lò vi ba', 'giadung/lonuong.jpg', 'Lò vi ba', 3),
(71, 'LG', NULL, 'lò vi ba LG', 70),
(72, 'Nồi áp suất', 'giadung/noiapsuat.jpg', 'Nồi áp suất', 3),
(73, 'Magic', NULL, 'Nồi áp suất - magic', 72),
(74, 'Đèn', 'giadung/den.jpg', 'Đèn ', 3),
(75, 'Philips', NULL, 'Đèn - Philips', 74),
(76, 'Các sản phẩm khác', 'giadung/other.jpg', 'Khác', 3),
(77, 'Notebook', 'tinhoc/notebook.jpg', 'Máy tính xách tay', 4),
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
(89, 'PC', 'tinhoc/pc.jpg', 'Máy tính đề bàn', 4),
(90, 'Acer', NULL, 'Máy để bàn Acer', 89),
(91, 'CMS', NULL, 'Máy để bàn CMS', 89),
(92, 'HP', NULL, 'Máy để bàn HP', 89),
(93, 'Lenovo', NULL, 'Máy để bàn lenovo', 89),
(94, 'Dell', NULL, 'Máy để bàn DELL', 89),
(95, 'MonitorLCD', 'tinhoc/monitor.jpg', 'màn hình', 4),
(96, 'Philips', NULL, 'Màn hình philips', 95),
(97, 'Panasonic', NULL, 'Màn hình panasonic', 95),
(98, 'LG', NULL, 'Màn hình LG', 95),
(99, 'ViewSonic', NULL, 'Màn hinh viewsonic', 95),
(100, 'Máy in', 'tinhoc/mayin.jpg', 'Máy in', 4),
(101, 'Epson', NULL, 'Máy in - Epson', 100),
(102, 'Cannon', NULL, 'Máy in - Cannon', 100),
(103, 'HP', NULL, 'Máy in - HP', 100),
(104, 'Samsung', NULL, 'Máy in - Samsung', 100),
(105, 'Brother', NULL, 'Máy in - Brother', 100),
(106, 'Loa', 'tinhoc/loavt.jpg', 'Loa vi tính', 4),
(107, 'Creative', NULL, 'Load - creative', 106),
(108, 'Philips', NULL, 'Loa - philips', 106),
(109, 'Soundmax', NULL, 'Loa - Soundmax', 106),
(110, 'Logitech', NULL, 'Loa - Logitech', 106),
(111, 'Phụ kiện', 'tinhoc/phukien.jpg', 'Phụ kiện máy tính', 4),
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
(129, 'Điện thoại di động', 'dienthoai/didong.jpg', 'Điện thọai', 5),
(130, 'Nokia', NULL, NULL, 129),
(131, 'Mobell', NULL, NULL, 129),
(132, 'LG', NULL, NULL, 129),
(133, 'FMobile', NULL, NULL, 129),
(134, 'QMobile', NULL, NULL, 129),
(135, 'Samsung', NULL, NULL, 129),
(136, 'Blackbery', NULL, NULL, 129),
(137, 'HTC', NULL, NULL, 129),
(138, 'Điện thoại hữu tuyến', 'dienthoai/huutuyen.jpg', NULL, 5),
(139, 'Panasonic', NULL, NULL, 138),
(140, 'Điện thoại vô tuyến', 'dienthoai/votuyen.jpg', NULL, 5),
(141, 'Ge', NULL, NULL, 140),
(142, 'Philips', NULL, NULL, 140),
(143, 'Máy ảnh', 'giaitri/mayanh.jpg', NULL, 6),
(144, 'Cannon', NULL, NULL, 143),
(145, 'Sony', NULL, NULL, 143),
(146, 'Panasonic', NULL, NULL, 143),
(147, 'Fuji', NULL, NULL, 143),
(148, 'Samsung', NULL, NULL, 143),
(149, 'MP3', 'giaitri/mp3.jpg', NULL, 6),
(150, 'Sony', NULL, NULL, 149),
(151, 'Smartone', NULL, NULL, 149),
(152, 'MP4', 'giaitri/mp4.jpg', NULL, 6),
(153, 'Creative', NULL, NULL, 152),
(154, 'Sony', NULL, NULL, 152),
(155, 'Smartone', NULL, NULL, 152),
(156, 'Từ điển điện tử', 'giaitri/tudien.jpg', NULL, 6),
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
  KEY `FK600E7C554E369739` (`roleID`),
  KEY `FK600E7C558E8877A9` (`roleID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerID`, `firstName`, `middleName`, `lastName`, `email`, `address`, `phone`, `birthday`, `roleID`, `username`, `password`) VALUES
(1, 'Hồ', 'Trương Hùng', 'Minh', 'conguyetnhat@gmail.com', '92/20B/20/20 Phạm Hùng F4 Q8', '01657575118', '1989-02-27', 1, 'minh', 'minh'),
(2, 'Nguyễn ', 'Thế', 'Phú', 'pisun2@gmail.com', '25 Trần Tấn', NULL, '1989-03-13', 2, 'phu', 'phu'),
(3, 'Trần', 'Hải', 'Nam', 'thnam@gmail.com', 'Ngã 4 Gò Dưa Thủ Đức', NULL, '1989-12-11', 2, 'nam', 'nam'),
(4, 'Nguyễn ', 'Trọng ', 'Hạnh', 'nthanh@gmail.com', 'Phạm Văn Chiêu quận Gò Vấp', NULL, '1989-05-14', 2, 'hanh', 'hanh'),
(5, 'Giang', 'Thành', 'Long', 'gtlong@gmail.com', 'Lê Quang Kim F9 quận 8', '0986466877', '1989-11-01', 2, 'long', 'long'),
(6, 'Mai', 'Văn ', 'Lực', 'mvluc@gmail.com', 'Bình Long - Tân Phú', NULL, '1989-06-06', 2, 'luc', 'luc'),
(7, 'Đặng', 'Hiếu', 'Hiền', 'dhhien@gmail.com', 'Âu Dương Lân quận 8', NULL, '1989-03-29', 2, 'hien', 'hien'),
(8, 'Phan ', 'Vũ ', 'Lâm', 'pvlam@gmail.com', '135B Trần Hưng Đạo quận 1', NULL, '0000-00-00', 2, 'lam', 'lam'),
(9, 'Trần', 'Quốc', 'Bảo', 'tqbao@gmail.com', 'bến xe quận 8', NULL, '1989-07-29', 2, 'bao', 'bao'),
(10, 'Võ ', 'Ngọc Uyên', 'Phương', 'vnuphuong@gmail.com', 'Hẻm 604 Ba tháng 2', NULL, '1989-09-19', 2, 'phuong', 'phuong');

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
  KEY `FKF8C63352438E0F63` (`productID`),
  KEY `FKF8C633523BA318F3` (`productID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='B?ng gi?m giÃ¡ s?n ph?m' AUTO_INCREMENT=11 ;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`discountID`, `productID`, `saleOf`, `fromDate`, `toDate`) VALUES
(1, 27, 0.27, '2011-04-30', NULL),
(2, 10, 0.12, '2011-03-30', '2011-05-30'),
(3, 8, 0.07, '2011-12-05', NULL),
(4, 28, 0.3, '2011-05-19', '2011-06-30'),
(5, 39, 0.2, '2011-05-15', '2012-07-10'),
(6, 48, 0.1, '2011-05-20', NULL),
(7, 45, 0.21, '2011-04-30', NULL),
(8, 55, 0.1, '2011-04-30', NULL),
(10, 25, 0.22, '2011-02-10', NULL);

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
  KEY `FK2EAD3734D99FA8C3` (`orderID`),
  KEY `FK2EAD3734438E0F63` (`productID`),
  KEY `FK2EAD3734A389D653` (`orderID`),
  KEY `FK2EAD37343BA318F3` (`productID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Chi tiết đơn đjăt hàng' AUTO_INCREMENT=13 ;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`orderDetailID`, `orderID`, `productID`, `number`) VALUES
(1, 1, 1, 1),
(2, 1, 5, 2),
(3, 2, 35, 1),
(4, 3, 49, 3),
(5, 4, 23, 1),
(6, 5, 39, 1),
(7, 6, 39, 2),
(8, 7, 22, 1),
(9, 8, 39, 1),
(10, 9, 32, 8),
(11, 9, 45, 7),
(12, 10, 39, 10);

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
  KEY `FKC3DF62E5C04541A7` (`orderStatus`),
  KEY `FKC3DF62E56381CB9` (`customerID`),
  KEY `FKC3DF62E58A2F6F37` (`orderStatus`),
  KEY `FKC3DF62E510C44529` (`customerID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `customerID`, `orderDate`, `orderStatus`) VALUES
(1, 2, '2011-05-19', NULL),
(2, 2, '2011-04-30', NULL),
(3, 3, '2011-05-15', NULL),
(4, 10, '2011-05-18', NULL),
(5, 7, '2011-04-20', NULL),
(6, 7, '2011-05-19', NULL),
(7, 3, '2011-05-19', NULL),
(8, 5, '2011-04-30', NULL),
(9, 6, '2011-04-28', NULL),
(10, 4, '2011-05-12', NULL);

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
  `productSmallImage` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `productImagesID` int(11) DEFAULT NULL,
  `productFeatures` text COLLATE utf8_unicode_ci,
  `productComments` text COLLATE utf8_unicode_ci,
  `productTagsID` int(11) DEFAULT NULL,
  `productQuantity` int(11) DEFAULT NULL,
  `productPrice` float DEFAULT NULL,
  `productStatusID` int(11) DEFAULT NULL,
  `productImportofDate` date DEFAULT NULL,
  PRIMARY KEY (`productID`),
  KEY `FKC42BD1648A41F6F1` (`productTagsID`),
  KEY `FKC42BD164343F0936` (`catelogyID`),
  KEY `FKC42BD1647C003363` (`productStatusID`),
  KEY `FKC42BD164A1C506E6` (`productImagesID`),
  KEY `FKC42BD164D8D096F9` (`supplierID`),
  KEY `FKC42BD16420FA4881` (`productTagsID`),
  KEY `FKC42BD1647B37EEC6` (`catelogyID`),
  KEY `FKC42BD16445EA60F3` (`productStatusID`),
  KEY `FKC42BD164AC512F56` (`productImagesID`),
  KEY `FKC42BD164E35CBF69` (`supplierID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='BÃ¡ÂºÂ£ng sÃ¡ÂºÂ£n phÃ¡ÂºÂ©m' AUTO_INCREMENT=81 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productID`, `catelogyID`, `supplierID`, `productName`, `productDescription`, `productDetail`, `productSmallImage`, `productImagesID`, `productFeatures`, `productComments`, `productTagsID`, `productQuantity`, `productPrice`, `productStatusID`, `productImportofDate`) VALUES
(1, 78, NULL, 'Notebook-HP-NotebookHPG42-485TUPDC', '<div id="content_block_description" class="wysiwyg-content" style="display: block; "><ul><li>Processor : Intel Pentium P6300 </li><li>RAM : 2GB DDR3 </li><li>HDD : 320GB</li><li>Optical Disk Drive : DVD- Rewrite Double Layer</li><li>Display : 14" LED</li><li>Graphics : Intel HD shared</li><li>Webcam,bluetooth,HDMI</li><li>Card Reader : 5.1</li><li>WLAN&nbsp; 802.11b/g, LAN 10/100</li><li>OS: Dos</li></ul></div>', NULL, 'notebook/hp/Notebook-HP-NotebookHPG42-485TUPDC.jpg', NULL, '<div id="content_block_features" class="wysiwyg-content hidden" style="display: block; "><h2 class="subheader">Bảo hành</h2><div class="form-field"><label>Thời gian bảo hành:</label><ul class="no-markers no-margin"><li><img src="/skins/electro/customer/images/icons/checkbox_ticked.gif" width="13" height="13" alt="12 tháng">&nbsp;12 tháng</li></ul></div><div class="form-field"><label>Quy định bảo hành:</label><a target="_blank" href="index.php?dispatch=product_features.view&amp;variant_id=717" title="Nguyễn Kim">Nguyễn Kim</a><a style="margin-left:10px;color:blue; text-decoration:underline;" href="http://www.nguyenkim.com/quy-nh-bo-hanh.html" target="_blank">Thông tin chi tiết</a></div><div class="form-field"><label>Địa điểm bảo hành:</label><a target="_blank" href="index.php?dispatch=product_features.view&amp;variant_id=611" title="Nguyễn Kim">Nguyễn Kim</a><a style="margin-left:10px;color:blue; text-decoration:underline;" href="http://www.nguyenkim.com/thong-tin-bo-hanh.html" target="_blank">Thông tin chi tiết</a></div><h2 class="subheader">Xuất xứ sản phẩm</h2><div class="form-field"><label>Nhà sản xuất:</label><a target="_blank" href="index.php?dispatch=product_features.view&amp;variant_id=815" title="-HP-">-HP-</a></div><div class="form-field"><label>Công nghệ sản xuất theo tiêu chuẩn:</label><a target="_blank" href="index.php?dispatch=product_features.view&amp;variant_id=596" title="-Chính hãng-">-Chính hãng-</a></div><h2 class="subheader">Thông tin chung</h2><div class="form-field"><label>Cấu hình:</label>Intel Pentium P6300 </div><div class="form-field"><label>Trọng lượng :</label>2.2 Kg</div><h2 class="subheader">Bộ xử lý - CPU</h2><div class="form-field"><label>Hãng sản xuất :</label><a target="_blank" href="index.php?dispatch=product_features.view&amp;variant_id=1331" title="Intel">Intel</a></div><div class="form-field"><label>Công nghệ:</label><a target="_blank" href="index.php?dispatch=product_features.view&amp;variant_id=1544" title="Pentium">Pentium</a></div><h2 class="subheader">Bộ nhớ chính - Ram</h2><div class="form-field"><label>Loại Ram:</label><a target="_blank" href="index.php?dispatch=product_features.view&amp;variant_id=941" title="DDR3 SDRAM">DDR3 SDRAM</a></div><div class="form-field"><label>Tốc độ Bus:</label><a target="_blank" href="index.php?dispatch=product_features.view&amp;variant_id=987" title="1333 ">1333 </a></div><div class="form-field"><label>Dung lượng:</label><a target="_blank" href="index.php?dispatch=product_features.view&amp;variant_id=560" title="2GB">2GB</a></div><h2 class="subheader">Ổ đĩa quang</h2><div class="form-field"><label>Loại đĩa quang:</label><a target="_blank" href="index.php?dispatch=product_features.view&amp;variant_id=1731" title="DVD+/-RW Drive">DVD+/-RW Drive</a></div><h2 class="subheader">Màn hình</h2><div class="form-field"><label>Thông tin:</label>14 inch LED HDMI</div><h2 class="subheader">Hệ điều hành</h2><div class="form-field"><label>Hệ điều hành:</label><a target="_blank" href="index.php?dispatch=product_features.view&amp;variant_id=1333" title="FreeDos">FreeDos</a></div><h2 class="subheader">Camera</h2><div class="form-field"><label>Camera:</label><a target="_blank" href="index.php?dispatch=product_features.view&amp;variant_id=1003" title="Có">Có</a></div><h2 class="subheader">Kết nối mạng</h2><div class="form-field"><label>LAN:</label>10/100</div><div class="form-field"><label>Chuẩn WiFi:</label><a target="_blank" href="index.php?dispatch=product_features.view&amp;variant_id=1825" title="802.11b/g">802.11b/g</a></div><div class="form-field"><label>Bluetooth:</label><a target="_blank" href="index.php?dispatch=product_features.view&amp;variant_id=1025" title="Có">Có</a></div><h2 class="subheader">Cổng giao tiếp</h2><div class="form-field"><label>Card Reader:</label><a target="_blank" href="index.php?dispatch=product_features.view&amp;variant_id=925" title="5 trong 1 (SD, MMC, MS, MS Pro, xD)">5 trong 1 (SD, MMC, MS, MS Pro, xD)</a></div><h2 class="subheader">Pin</h2><div class="form-field"><label>Loại Pin (Kèm theo máy):</label><a target="_blank" href="index.php?dispatch=product_features.view&amp;variant_id=1814" title="6 cell">6 cell</a></div></div>', NULL, NULL, 19, 10500000, 1, '2011-05-10'),
(2, 78, NULL, 'NOTEBOOK_HP_PROBOOK_4420S_-_XP918PA_1', NULL, NULL, 'notebook/hp/NOTEBOOK_HP_PROBOOK_4420S_-_XP918PA_1.jpg', NULL, NULL, NULL, NULL, 10, 12900000, 1, '2011-05-09'),
(3, 78, NULL, 'NOTEBOOK_HP_PAVILION_DV4-1505TU', NULL, NULL, 'notebook/hp/NOTEBOOK_HP_PAVILION_DV4-1505TU.jpg', NULL, NULL, NULL, NULL, 15, 15000000, 1, '2011-05-11'),
(4, 78, NULL, 'NOTEBOOK_HP_CQ42-263TU_(XB803PA)', NULL, NULL, 'notebook/hp/NOTEBOOK_HP_CQ42-263TU_(XB803PA).jpg', NULL, NULL, NULL, NULL, 10, 14500000, 1, '2011-04-30'),
(5, 78, NULL, 'NOTEBOOK_HP_COMPAQ_CQ42-221AX', NULL, NULL, 'notebook/hp/NOTEBOOK_HP_COMPAQ_CQ42-221AX.jpg', NULL, NULL, NULL, NULL, 8, 9900000, 1, '2011-04-01'),
(6, 78, NULL, 'NOTEBOOK-HP-PAVILION-DV6-1318TX', NULL, NULL, 'notebook/hp/NOTEBOOK-HP-PAVILION-DV6-1318TX.jpg', NULL, NULL, NULL, NULL, 5, 25200000, 1, '2011-05-12'),
(7, 78, NULL, 'NOTEBOOK_HP__CPQ_CQ42-261TU_XB801PA', NULL, NULL, 'notebook/hp/NOTEBOOK_HP__CPQ_CQ42-261TU_XB801PA.jpg', NULL, NULL, NULL, NULL, 10, 12200000, 1, '2011-03-20'),
(8, 78, NULL, 'NOTEBOOK_HP_COMPAQ_CQ42-218AX', NULL, NULL, 'notebebook/hp/NOTEBOOK_HP_COMPAQ_CQ42-218AX.jpg', NULL, NULL, NULL, NULL, 12, 10200000, 1, '2011-03-08'),
(9, 78, NULL, 'NOTEBOOK_HP_PROBOOK_4420S_-_XP917PA', NULL, NULL, 'notebook/hp/NOTEBOOK_HP_PROBOOK_4420S_-_XP917PA.jpg', NULL, NULL, NULL, NULL, 20, 14900000, 1, '2011-04-19'),
(10, 78, NULL, 'NOTEBOOK_HP_G42-361TX(XT780PA)', NULL, NULL, 'notebook/hp/NOTEBOOK_HP_G42-361TX(XT780PA).jpg', NULL, NULL, NULL, NULL, 15, 17800000, 1, '2011-05-03'),
(11, 78, NULL, 'NOTEBOOK_HP_COMPAQ_CQ42-353TU', NULL, NULL, 'notebook/hp/NOTEBOOK_HP_COMPAQ_CQ42-353TU.jpg', NULL, NULL, NULL, NULL, 7, 10500000, 1, '2011-03-01'),
(12, 78, NULL, 'NOTEBOOK_HP_PAVILION_DM3-1017TX', NULL, NULL, 'notebook/hp/NOTEBOOK_HP_PAVILION_DM3-1017TX.jpg', NULL, NULL, NULL, NULL, 18, 18200000, 1, '2011-02-14'),
(13, 78, NULL, 'NOTEBOOK_HP_COMPAQ_CQ420-XS174PA', NULL, NULL, 'notebook/hp/NOTEBOOK_HP_COMPAQ_CQ420-XS174PA.jpg', NULL, NULL, NULL, NULL, 21, 11200000, 1, '2011-03-05'),
(14, 78, NULL, 'NOTEBOOK_HP_PAVILION_DM3-1018TX', NULL, NULL, 'notebook/hp/NOTEBOOK_HP_PAVILION_DM3-1018TX.jpg', NULL, NULL, NULL, NULL, 30, 19800000, 1, '2011-02-04'),
(15, 78, NULL, 'HP_PAVILION_DV4-1518TX', NULL, NULL, 'notebook/hp/HP_PAVILION_DV4-1518TX.jpg', NULL, NULL, NULL, NULL, 14, 20200000, 1, '2011-02-04'),
(16, 78, NULL, 'NOTEBOOK-HP-PAVILION-DV4-1516TX', NULL, NULL, 'notebook/hp/NOTEBOOK-HP-PAVILION-DV4-1516TX.jpg', NULL, NULL, NULL, NULL, 12, 22000000, 1, '2011-02-04'),
(17, 78, NULL, 'NOTEBOOK_HP_PROBOOK_4720S_WQ948PA', NULL, NULL, 'notebook/hp/NOTEBOOK_HP_PROBOOK_4720S_WQ948PA.jpg', NULL, NULL, NULL, NULL, 22, 20200000, 1, '2011-05-12'),
(18, 78, NULL, 'NOTEBOOK_HP_PROBOOK_4420S-_XY423PA', NULL, NULL, 'notebook/hp/NOTEBOOK_HP_PROBOOK_4420S-_XY423PA.jpg', NULL, NULL, NULL, NULL, 18, 16500000, 1, '2011-05-12'),
(19, 78, NULL, 'NOTEBOOK_HP_PROBOOK_4420S-XB677PA', NULL, NULL, 'notebook/hp/NOTEBOOK_HP_PROBOOK_4420S-XB677PA.jpg', NULL, NULL, NULL, NULL, 14, 15500000, 1, '2011-05-12'),
(20, 78, NULL, 'Notebook-HP-CQ40-501TX', NULL, NULL, 'notebook/hp/1160565-Notebook-HP-CQ40-501TX.jpg', NULL, NULL, NULL, NULL, 19, 11500000, 1, '2011-05-12'),
(21, 78, NULL, 'Notebook-HP-4710S-VF905PA', NULL, NULL, 'notebook/hp/Notebook-HP-4710S-VF905PA.jpg', NULL, NULL, NULL, NULL, 8, 16950000, 1, '2011-05-13'),
(22, 79, NULL, 'NOTEBOOK_DELL_INSPIRON_14-T561138-N4030-BLACK', NULL, NULL, 'notebook/dell/NOTEBOOK_DELL_INSPIRON_14-T561138-N4030-BLACK.jpg', NULL, NULL, NULL, NULL, 13, 14500000, 1, '2011-05-09'),
(23, 79, NULL, 'NOTEBOOK_DELL_INSPIRON_14_T560803_N4030__BLACK', NULL, NULL, 'notebook/dell/NOTEBOOK_DELL_INSPIRON_14_T560803_N4030__BLACK.jpg', NULL, NULL, NULL, NULL, 3, 12000000, 1, '2011-05-09'),
(24, 79, NULL, 'NOTEBOOK_DELL_INSPIRON_14R_-_N4010N(R)_-_P6000_(RED)', NULL, NULL, 'notebook/dell/NOTEBOOK_DELL_INSPIRON_14R_-_N4010N(R)_-_P6000_(RED).jpg', NULL, NULL, NULL, NULL, 8, 11600000, 1, '2011-05-09'),
(25, 79, NULL, 'NOTEBOOK_DELL_INSPIRON_15R_-_N5010N-3350_(BLACK)', NULL, NULL, 'notebook/dell/NOTEBOOK_DELL_INSPIRON_15R_-_N5010N-3350_(BLACK).jpg', NULL, NULL, NULL, NULL, 7, 13900000, 1, '2011-05-09'),
(26, 79, NULL, 'NOTEBOOK_DELL_INSPIRON_15R_-_T560814_-_N5010_-_BLACK', NULL, NULL, 'notebook/dell/NOTEBOOK_DELL_INSPIRON_15R_-_T560814_-_N5010_-_BLACK.jpg', NULL, NULL, NULL, NULL, 12, 16800000, 1, '2011-04-20'),
(27, 79, NULL, 'NOTEBOOK_DELL_INSPIRON_14-T561102-N4030-BLACK', NULL, NULL, 'notebook/dell/DELL_INSPIRON_14-T561102-N4030-BLACK.jpg', NULL, NULL, NULL, NULL, 33, 11900000, 1, '2011-04-20'),
(28, 79, NULL, 'NOTEBOOK_DELL_INSPIRON_15R_-_T561108_-_N5010_-_BLACK', NULL, NULL, 'notebook/dell/NOTEBOOK_DELL_INSPIRON_15R_-_T561108_-_N5010_-_BLACK.jpg', NULL, NULL, NULL, NULL, 12, 14900000, 1, '2011-04-20'),
(29, 79, NULL, 'NOTEBOOK_DELL_VOSTRO_V3500-I3370-SILVER', NULL, NULL, 'notebook/dell/NOTEBOOK_DELL_VOSTRO_V3500-I3370-SILVER.jpg', NULL, NULL, NULL, NULL, 23, 15400000, 1, '2011-04-20'),
(30, 79, NULL, 'NOTEBOOK_DELL_VOSTRO_3500GDG-I3-350M_SILVER', NULL, NULL, 'notebook/dell/NOTEBOOK_DELL_VOSTRO_3500GDG-I3-350M_SILVER.jpg', NULL, NULL, NULL, NULL, 6, 14600000, 1, '2011-03-21'),
(31, 79, NULL, 'NOTEBOOK_DELL_INSPIRON_15R-AIN-N5010N(R)', NULL, NULL, 'notebook/dell/NOTEBOOK_DELL_INSPIRON_15R-AIN-N5010N(R).jpg', NULL, NULL, NULL, NULL, 21, 14600000, 1, '2011-03-21'),
(32, 79, NULL, 'NOTEBOOK_DELL_INSPIRON_15R_-_T561141_-_N5010_-_BLACK', NULL, NULL, 'notebook/dell/NOTEBOOK_DELL_INSPIRON_15R_-_T561141_-_N5010_-_BLACK.jpg', NULL, NULL, NULL, NULL, 22, 16400000, 1, '2011-03-21'),
(33, 79, NULL, 'NOTEBOOK_DELL_INSPIRON_13R-T561137-N3010-BLACK', NULL, NULL, 'notebook/dell/NOTEBOOK_DELL_INSPIRON_13R-T561137-N3010-BLACK.jpg', NULL, NULL, NULL, NULL, 7, 13400000, 1, '2011-03-21'),
(34, 79, NULL, 'NOTEBOOK DELL INSPIRON 13R - AIN - N3010N(R) - I3 - 350 (BLUE)', NULL, NULL, 'notebook/dell/NOTEBOOK DELL INSPIRON 13R - AIN - N3010N(R) - I3 - 350 (BLUE).jpg', NULL, NULL, NULL, NULL, 28, 14200000, 1, '2011-02-12'),
(35, 79, NULL, 'NOTEBOOK_DELL_INSPIRON_13R_-_T560822_-_N3010_-_BLACK', NULL, NULL, 'notebook/dell/NOTEBOOK_DELL_INSPIRON_13R_-_T560822_-_N3010_-_BLACK.jpg', NULL, NULL, NULL, NULL, 23, 14000000, 1, '2011-02-12'),
(36, 79, NULL, 'Notebook-Dell-Inspiron14-N4030-PDC-U560202VN', NULL, NULL, 'notebook/dell/Notebook-Dell-Inspiron14-N4030-PDC-U560202VN.jpg', NULL, NULL, NULL, NULL, 8, 11000000, 1, '2011-02-12'),
(37, 79, NULL, 'Notebook-Dell-Inspiron14R-T56111-T561117-BLACK', NULL, NULL, 'notebook/dell/Notebook-Dell-Inspiron14R-T56111-T561117-BLACK.jpg', NULL, NULL, NULL, NULL, 14, 13800000, 1, '2011-02-12'),
(38, 79, NULL, 'INSPIRON-15R-T560233-N5110-BLACK', NULL, NULL, 'notebook/dell/INSPIRON-15R-T560233-N5110-BLACK.jpg', NULL, NULL, NULL, NULL, 8, 16700000, 1, '2011-05-13'),
(39, 80, NULL, 'NOTEBOOK_ACER_FERRARI_ONE_FO200', NULL, NULL, 'notebook/acer/NOTEBOOK_ACER_FERRARI_ONE_FO200.jpg', NULL, NULL, NULL, NULL, 10, 12900000, 1, '2011-04-28'),
(40, 80, NULL, 'NOTEBOOK_ACER_AS4738-452G50MNKK_black', NULL, NULL, 'notebook/acer/NOTEBOOK_ACER_AS4738-452G50MNKK_black.jpg', NULL, NULL, NULL, NULL, 11, 12790000, 1, '2011-04-28'),
(41, 80, NULL, 'NOTEBOOK_ACER_AS4733Z-451G32MNRR_BLACK', NULL, NULL, 'notebook/acer/NOTEBOOK_ACER_AS4733Z-451G32MNRR_BLACK', NULL, NULL, NULL, NULL, 6, 8800000, 1, '2011-04-28'),
(42, 80, NULL, 'NOTEBOOK_ACER_AS4540-321G32MNBK_(LX.PFN0C.050)', NULL, NULL, 'notebook/acer/NOTEBOOK_ACER_AS4540-321G32MNBK_(LX.PFN0C.050).jpg', NULL, NULL, NULL, NULL, 12, 8500000, 1, '2011-04-28'),
(43, 80, NULL, 'NOTEBOOK_ACER_AS4741Z-P622G32MNKK_BLACK', NULL, NULL, 'notebook/acer/NOTEBOOK_ACER_AS4741Z-P622G32MNKK_BLACK.jpg', NULL, NULL, NULL, NULL, 9, 10250000, 1, '2011-05-02'),
(44, 80, NULL, 'NOTEBOOK_ACER_ASPIRE_AS4736G_-_742G32MN_(006)', NULL, NULL, 'notebook/acer/NOTEBOOK_ACER_ASPIRE_AS4736G_-_742G32MN_(006).jpg', NULL, NULL, NULL, NULL, 12, 11900000, 1, '2011-05-02'),
(45, 80, NULL, 'NOTEBOOK_ACER_AS4745_-_372G32MN_(041)', NULL, NULL, 'notebook/acer/NOTEBOOK_ACER_AS4745_-_372G32MN_(041).jpg', NULL, NULL, NULL, NULL, 7, 12100000, 1, '2011-05-02'),
(46, 80, NULL, 'NOTEBOOK_ACER_AS4820T-452G50MNKS_Black', NULL, NULL, 'notebook/acer/NOTEBOOK_ACER_AS4820T-452G50MNKS_Black.jpg', NULL, NULL, NULL, NULL, 18, 15999000, 1, '2011-05-02'),
(47, 80, NULL, 'NOTEBOOK_ACER_AS5742-452G50MN_(LX.R4L0C.026)_Brown', NULL, NULL, 'notebook/acer/NOTEBOOK_ACER_AS5742-452G50MN_(LX.R4L0C.026)_Brown.jpg', NULL, NULL, NULL, NULL, 5, 13600000, 1, '2011-04-01'),
(48, 80, NULL, 'NOTEBOOK_ACER_AS4738-BROWN(LX.R7K0C.033)', NULL, NULL, 'notebook/acer/NOTEBOOK_ACER_AS4738-BROWN(LX.R7K0C.033).jpg', NULL, NULL, NULL, NULL, 21, 12700000, 1, '2011-04-01'),
(49, 81, NULL, 'NOTEBOOK_ASUS_A42F-VX124', NULL, NULL, 'notebook/asus/NOTEBOOK_ASUS_A42F-VX124.jpg', NULL, NULL, NULL, NULL, 22, 11200000, 1, '2011-04-01'),
(50, 81, NULL, 'NOTEBOOK_ASUS-X42F-VX495', NULL, NULL, 'notebook/asus/NOTEBOOK_ASUS-X42F-VX495.jpg', NULL, NULL, NULL, NULL, 8, 11600000, 1, '2011-04-01'),
(51, 81, NULL, 'NOTEBOOK_ASUS-U31F-RX197D-4', NULL, NULL, 'notebook/asus/NOTEBOOK_ASUS-U31F-RX197D-4.jpg', NULL, NULL, NULL, NULL, 9, 16700000, 1, '2011-04-01'),
(52, 81, NULL, 'NOTEBOOK_U36JC-RX191D', NULL, NULL, 'notebook/asus/NOTEBOOK_U36JC-RX191D.jpg', NULL, NULL, NULL, NULL, 8, 21300000, 1, '2011-04-01'),
(53, 82, NULL, 'NOTEBOOK_TOSHIBA_L645_-_1059UBL_(S001)', NULL, NULL, 'notebook/toshiba/NOTEBOOK_TOSHIBA_L645_-_1059UBL_(S001).jpg', NULL, NULL, NULL, NULL, 12, 13400000, 1, '2011-03-30'),
(54, 82, NULL, 'NOTEBOOK_TOSHIBA_L645_-_1058U_(R001)', NULL, NULL, 'notebook/toshiba/NOTEBOOK_TOSHIBA_L645_-_1058U_(R001).jpg', NULL, NULL, NULL, NULL, 19, 13200000, 1, '2011-03-30'),
(55, 82, NULL, 'Notebook-Toshiba-C640-1027U', NULL, NULL, 'notebook/toshiba/Notebook-Toshiba-C640-1027U.jpg', NULL, NULL, NULL, NULL, 7, 12000000, 1, '2011-03-30'),
(56, 82, NULL, 'NOTEBOOK_TOSHIBA_C640-1008U_(PSCO2L-003001)', NULL, NULL, 'notebook/toshiba/NOTEBOOK_TOSHIBA_C640-1008U_(PSCO2L-003001).jpg', NULL, NULL, NULL, NULL, 20, 12900000, 1, '2011-03-30'),
(57, 82, NULL, 'NOTEBOOK_TOSHIBA_L645-1121X', NULL, NULL, 'notebook/toshiba/NOTEBOOK_TOSHIBA_L645-1121X.jpg', NULL, NULL, NULL, NULL, 8, 13800000, 1, '2011-03-30'),
(58, 83, NULL, 'NOTEBOOK_SONY_VPCYB15AG-P_E1', NULL, NULL, 'notebook/sony/NOTEBOOK_SONY_VPCYB15AG-P_E1.jpg', NULL, NULL, NULL, NULL, 10, 11990000, 1, '2011-05-08'),
(59, 83, NULL, 'NOTEBOOK_SONY_VPCYA15FG-B_E1', NULL, NULL, 'notebook/sony/NOTEBOOK_SONY_VPCYA15FG-B_E1.jpg', NULL, NULL, NULL, NULL, 12, 15900000, 1, '2011-05-08'),
(60, 83, NULL, 'NOTEBOOK_SONY_VPCF135FG-B', NULL, NULL, 'notebook/sony/NOTEBOOK_SONY_VPCF135FG-B.jpg', NULL, NULL, NULL, NULL, 9, 29990000, 1, '2011-05-12'),
(61, 83, NULL, 'NOTEBOOK_SONY_VPCYB15AG-S_E1', NULL, NULL, 'notebook/sony/NOTEBOOK_SONY_VPCYB15AG-S_E1.jpg', NULL, NULL, NULL, NULL, 7, 11990000, 1, '2011-05-08'),
(62, 83, NULL, 'NOTEBOOK-SONY-VPCSB18GG-B', NULL, NULL, 'notebook/sony/NOTEBOOK-SONY-VPCSB18GG-B.jpg', NULL, NULL, NULL, NULL, 8, 30990000, 1, '2011-05-12'),
(63, 84, NULL, 'Notebook-Apple-MC506ZPA', NULL, NULL, 'notebook/apple/Notebook-Apple-MC506ZPA.jpg', NULL, NULL, NULL, NULL, 10, 29000000, 1, '2011-04-28'),
(64, 84, NULL, 'Notebook-Apple-MC700ZPA', NULL, NULL, 'notebook/apple/Notebook-Apple-MC700ZPA.jpg', NULL, NULL, NULL, NULL, 3, 29000000, 1, '2011-05-07'),
(65, 84, NULL, 'Notebook-Apple-MC724ZPA', NULL, NULL, 'notebook/apple/Notebook-Apple-MC724ZPA.jpg', NULL, NULL, NULL, NULL, 9, 3600000, 1, '2011-05-07'),
(66, 85, NULL, 'NOTEBOOK_LENOVO_IDEAPAD_G460', NULL, NULL, 'notebook/lenovo/NOTEBOOK_LENOVO_IDEAPAD_G460jpg', NULL, NULL, NULL, NULL, 20, 1480000, 1, '2011-03-30'),
(67, 85, NULL, 'NOTEBOOK_LENOVO_IDEAPAD_S10-3C_ATOM_N455_(59-056520)', NULL, NULL, 'notebook/lenovo/NOTEBOOK_LENOVO_IDEAPAD_S10-3C_ATOM_N455_(59-056520).jpg', NULL, NULL, NULL, NULL, 3, 1300000, 1, '2011-05-09'),
(68, 87, NULL, 'NOTEBOOK_SAMSUNG_NP_-Q428-DS04VN', NULL, NULL, 'notebook/samsung/NOTEBOOK_SAMSUNG_NP_-Q428-DS04VN.jpg', NULL, NULL, NULL, NULL, 22, 1360000, 1, '2011-05-12'),
(69, 87, NULL, 'Notebook-Samsung-R439-DT08VN', NULL, NULL, 'notebook/samsung/Notebook-Samsung-R439-DT08VN.jpg', NULL, NULL, NULL, NULL, 8, 1372000, 1, '2011-01-04'),
(70, 86, NULL, 'NETBOOK_GATEWAY_LT2006V', NULL, NULL, 'notebook/gateway/NETBOOK_GATEWAY_LT2006V.jpg', NULL, NULL, NULL, NULL, 12, 660000, 1, '2011-01-30'),
(71, 130, NULL, 'NOKIA_C3-00_GREY', NULL, NULL, 'dtdt/nokia/NOKIA_C3-00_GREY.jpg', NULL, NULL, NULL, NULL, 20, 240000, 1, '2011-04-04'),
(72, 130, NULL, 'ĐTDĐ NOKIA E7-00 DARK GREY', NULL, NULL, 'dtdt/nokia/ĐTDĐ NOKIA E7-00 DARK GREY.jpg', NULL, NULL, NULL, NULL, 30, 14490000, 1, '2011-05-13'),
(73, 130, NULL, 'DTDD_NOKIA_C3-00_WHITE', NULL, NULL, 'dtdt/nokia/DTDD_NOKIA_C3-00_WHITE.jpg', NULL, NULL, NULL, NULL, 20, 2450000, 1, '2011-04-20'),
(74, 130, NULL, 'NOKIA-N1280-BLACK', NULL, NULL, 'dtdt/nokia/NOKIA-N1280-BLACK.jpg', NULL, NULL, NULL, NULL, 50, 430000, 1, '2011-01-10'),
(75, 130, NULL, 'Nokia_2700_JET_BLACK', NULL, NULL, 'dtdt/nokia/Nokia_2700_JET_BLACK.jpg', NULL, NULL, NULL, NULL, 35, 1770000, 1, '2011-02-20'),
(76, 130, NULL, 'NOKIA_E72_WHITE', NULL, NULL, 'dtdt/nokia/NOKIA_E72_WHITE.jpg', NULL, NULL, NULL, NULL, 20, 7140000, 1, '2011-05-12'),
(77, 135, NULL, 'SAMSUNG_I9003_MIDNIGHT_BLACK', NULL, NULL, 'dtdt/samsung/DTDD_SAMSUNG_I9003_MIDNIGHT_BLACK.jpg', NULL, NULL, NULL, NULL, 12, 11390000, 1, '2011-05-12'),
(78, 135, NULL, 'SAMSUNG_P1000_CHIC_WHITE', NULL, NULL, 'dtdt/samsung/DTDD_SAMSUNG_P1000_CHIC_WHITE.jpg', NULL, NULL, NULL, NULL, 15, 10790000, 1, '2011-05-13'),
(79, 135, NULL, 'SAMSUNG_C3222_PURE_WHITE', NULL, NULL, 'dtdt/samsung/SAMSUNG_C3222_PURE_WHITE.jpg', NULL, NULL, NULL, NULL, 40, 1890000, 1, '2011-03-12'),
(80, 132, NULL, 'TDĐ_LG_GS290_WO', NULL, NULL, 'dtdt/lg/TDĐ_LG_GS290_WO.jpg', NULL, NULL, NULL, NULL, 80, 1850000, 1, '2011-04-27');

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
  ADD CONSTRAINT `FK_catelogies_categoies` FOREIGN KEY (`parentCatelogy`) REFERENCES `catelogies` (`catelogyID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `FK_Customer_Roles` FOREIGN KEY (`roleID`) REFERENCES `roles` (`RoleID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `discounts`
--
ALTER TABLE `discounts`
  ADD CONSTRAINT `FK_Discounts_Prodcuts` FOREIGN KEY (`productID`) REFERENCES `products` (`productID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `FK_Oderdetails_Orders` FOREIGN KEY (`orderID`) REFERENCES `orders` (`OrderID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_Oderdetails_Products` FOREIGN KEY (`productID`) REFERENCES `products` (`productID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_Orders_Customers` FOREIGN KEY (`customerID`) REFERENCES `customers` (`customerID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_Orders_Status` FOREIGN KEY (`orderStatus`) REFERENCES `status` (`StatusID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_products_catelogies` FOREIGN KEY (`catelogyID`) REFERENCES `catelogies` (`catelogyID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_Products_ImageList` FOREIGN KEY (`productImagesID`) REFERENCES `imagelist` (`ImageListID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_Products_Status` FOREIGN KEY (`productStatusID`) REFERENCES `status` (`StatusID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_products_suppilers` FOREIGN KEY (`supplierID`) REFERENCES `suppliers` (`suppliersID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_Products_Tags` FOREIGN KEY (`productTagsID`) REFERENCES `tags` (`TagID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
