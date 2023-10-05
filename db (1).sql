-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2023 at 09:27 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(6) UNSIGNED ZEROFILL NOT NULL COMMENT 'รหัสสมาชิก',
  `name` varchar(30) NOT NULL COMMENT 'ชื่อ',
  `lastname` varchar(30) NOT NULL COMMENT 'นามสกุล',
  `telephone` int(10) NOT NULL COMMENT 'เบอร์โทร',
  `username` varchar(10) NOT NULL COMMENT 'username',
  `password` varchar(255) NOT NULL COMMENT 'password',
  `status` varchar(1) NOT NULL COMMENT '0=user,1=admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `name`, `lastname`, `telephone`, `username`, `password`, `status`) VALUES
(000005, 'AdminTew&', 'Adminpoy', 2131233343, 'thew', 'd404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db', '1'),
(000006, 'AdminTew&', 'Adminpoy', 2131233343, 'tew', 'd404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db', '0'),
(000008, 'ทิว', 'น่ารัก', 1234545656, 'tw', 'd404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db', '0');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL COMMENT 'ลำดับ',
  `orderID` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'เลขที่ใบสั่งซื้อ',
  `pro_id` int(6) UNSIGNED ZEROFILL NOT NULL COMMENT 'รหัส',
  `orderPrice` float NOT NULL COMMENT 'ราคาสินค้า',
  `orderQty` int(11) NOT NULL COMMENT 'จำนวนที่สั่ง',
  `Total` float NOT NULL COMMENT 'ราคารวม'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `orderID`, `pro_id`, `orderPrice`, `orderQty`, `Total`) VALUES
(19, 0000000025, 000043, 1234, 2, 2468);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pro_id` int(6) UNSIGNED ZEROFILL NOT NULL,
  `pro_name` varchar(100) NOT NULL,
  `type_id` int(3) UNSIGNED ZEROFILL NOT NULL,
  `price` float NOT NULL,
  `amount` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `detail` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pro_id`, `pro_name`, `type_id`, `price`, `amount`, `image`, `detail`) VALUES
(000043, 'sonic', 003, 1234, 0, 'pro_651bcf64d0c06.png', 'ซออู้ เป็นเครื่องดนตรีประเภทเครื่องสี มี 2 สาย มีเสียงทุ้มต่ำ ตัวกะโหลกซอทำด้วยกะลามะพร้าว แต่ใช้กะลามะพร้าวพันธุ์ซอ ขนาดกะโหลกใหญ่เป็นพู มีการแกะสลักกะโหลกให้มีลวดลายวิจิตรบรรจงสวยงาม มะพร้าวพันธุ์ซอนี้ส่วนมากปลูกในอำเภอบางคนทีและอำเภออัมพวา จังหวัดสมุทรสงคราม ซออู้ของไทยมีรูปร่างคล้ายซอชนิดหนึ่งของจีน ที่มีชื่อว่า “ฮู-ฮู้” (Hu-hu) มี 2 สายเหมือนกันแต่ ฮู-ฮู้ มีนมรับสายก่อนจะถึงลูกบิด และลูกบิดอยู่ทางด้านขวามือของผู้เล่น ตรงลูกบิดที่จะสอดเข้าไปในทวนนั้นขุดทวนให้เป็นรางยาวและเอาสายผูกไว้กับก้านลูกบิดในร่องหรือรางนั้น และบางทีซออู้ของไทยอาจเอาแบบอย่างมาจากจีน แต่ในอีกแนวคิดหนึ่งซออู้นั้นอาจเป็นซอที่ประดิษฐ์ขึ้นก่อนซอของจีนและเป็นซอของไทยแท้ ๆ ที่ไม่ได้เลียนแบบมาจากประเทศอื่น เหตุผลเพราะว่าสมัยก่อนมีกลุ่มชนชาวไทยซึ่งอาศัยอยู่ทางตอนใต้ของประเทศจีน ได้อพยพลงมาและชนกลุ่มนี้มีความเจริญทางด้านศิลปะการดนตรี จึงได้คิดประดิษฐ์สร้างดนตรีขึ้นบรรเลง เพื่อความสนุกสนานและเพื่อผ่อนคลายความเครียด จากสาเหตุดังกล่าว จากที่เราเคยอาศัยอยู่ในประเทศจีนจึงเป็นเหตุให้เชื่อว่าเราอาจเลียนแบบมาจากจีน แต่แท้ที่จริงแล้วคนไทยในประเทศจีนเป็');

-- --------------------------------------------------------

--
-- Table structure for table `tb_order`
--

CREATE TABLE `tb_order` (
  `orderID` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'เลขที่ใบสั่งซื้อ',
  `cus_name` varchar(100) NOT NULL COMMENT 'ชื่อนามสกุล',
  `address` text NOT NULL COMMENT 'ที่อยุ่',
  `telephone` varchar(10) NOT NULL COMMENT 'เบอร์',
  `total_price` float NOT NULL COMMENT 'ราคารวม',
  `order_status` varchar(1) NOT NULL COMMENT '0=ยกเลิก,1=ยังไม่ชำระ,2=ชำระแล้ว',
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'วันที่สั่งซื้อ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_order`
--

INSERT INTO `tb_order` (`orderID`, `cus_name`, `address`, `telephone`, `total_price`, `order_status`, `reg_date`) VALUES
(0000000025, 'teerader', '  dfdf', ' 123434555', 2468, '2', '2023-10-03 08:24:07');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `type_id` int(3) UNSIGNED ZEROFILL NOT NULL,
  `type_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`type_id`, `type_name`) VALUES
(003, 'เครื่องดีด'),
(004, 'เครื่องสี'),
(005, 'เครื่องตี'),
(006, 'เครื่องเป่า');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `tb_order`
--
ALTER TABLE `tb_order`
  ADD PRIMARY KEY (`orderID`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'รหัสสมาชิก', AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ลำดับ', AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pro_id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tb_order`
--
ALTER TABLE `tb_order`
  MODIFY `orderID` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'เลขที่ใบสั่งซื้อ', AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `type_id` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
