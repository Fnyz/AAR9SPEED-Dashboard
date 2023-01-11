-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2023 at 12:10 PM
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
-- Database: `projectmotors`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CATEGORY_ID` int(11) NOT NULL,
  `CATEGORY_NAME` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CATEGORY_ID`, `CATEGORY_NAME`) VALUES
(39, 'PHONE'),
(44, 'FISH'),
(45, 'VEGETABLES');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CUS_ID` int(11) NOT NULL,
  `CUS_FNAME` varchar(20) DEFAULT NULL,
  `CUS_LNAME` varchar(20) DEFAULT NULL,
  `CUS_ADDRESS` varchar(50) DEFAULT NULL,
  `CUS_EMAIL` varchar(20) DEFAULT NULL,
  `CUS_PHONENUM` int(11) DEFAULT NULL,
  `CUS_CREATED_AT` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `CUS_UPDATED_AT` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CUS_ID`, `CUS_FNAME`, `CUS_LNAME`, `CUS_ADDRESS`, `CUS_EMAIL`, `CUS_PHONENUM`, `CUS_CREATED_AT`, `CUS_UPDATED_AT`) VALUES
(3, 'JEZREEL', 'BUSICO', 'SAMBOAN', 'jezreel.busico@yahoo', 9232321, '2022-12-31 09:21:57', '2022-12-31 09:21:57'),
(7, 'KHRISTIAN', 'MANGUBAT', 'gordss', 'bornnomama@gmail.com', 95612541, '2023-01-09 07:08:42', '2023-01-09 07:08:42');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `ITEM_ID` int(11) NOT NULL,
  `ITEM_NAME` varchar(20) NOT NULL,
  `ITEM_DESC` varchar(50) DEFAULT NULL,
  `ITEM_PRICE` double(9,2) DEFAULT NULL,
  `ITEM_QUANTITY` int(11) NOT NULL,
  `CATEGORY_ID` int(11) DEFAULT NULL,
  `SUPPLIER_ID` int(11) DEFAULT NULL,
  `ITEM_CREATED_AT` timestamp NOT NULL DEFAULT current_timestamp(),
  `ITEM_UPDATED_AT` timestamp NOT NULL DEFAULT current_timestamp(),
  `ITEM_CODE` int(11) NOT NULL,
  `ITEM_IMAGE` varchar(500) DEFAULT NULL,
  `ITEM_STATUS` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`ITEM_ID`, `ITEM_NAME`, `ITEM_DESC`, `ITEM_PRICE`, `ITEM_QUANTITY`, `CATEGORY_ID`, `SUPPLIER_ID`, `ITEM_CREATED_AT`, `ITEM_UPDATED_AT`, `ITEM_CODE`, `ITEM_IMAGE`, `ITEM_STATUS`) VALUES
(85, 'Redmi Note 11s', 'This is only demo!', 10000.00, 12, 39, 3, '2023-01-08 10:10:50', '2023-01-09 08:30:23', 202301, 'images/u8hJDJaN/redmiNote.png', 'ACTIVE'),
(86, 'NOKIA', 'This is only demo!', 13000.00, 10, 39, 4, '2023-01-08 10:12:33', '2023-01-09 08:21:30', 202302, 'images/wAC7zlMp/Nokia-7-.png', 'ACTIVE'),
(87, 'IPHONE 14', 'This is only demo!', 25000.00, 10, 39, 3, '2023-01-09 08:15:09', '2023-01-09 08:15:09', 202303, 'images/7BpPtTVH/iphone-14-pro-max-gold-witb-202209_FMT_WHH.jpg', 'ACTIVE'),
(88, 'SAMSUNGSs', 'd', 1200.00, 3, 39, 5, '2023-01-10 07:56:21', '2023-01-10 07:56:21', 202303, 'images/PeOINKAa/1555162 (1).jpg', 'ACTIVE'),
(89, 'Demo product', 'The descrption!', 12000.00, 4, 45, 5, '2023-01-11 08:45:08', '2023-01-11 08:45:08', 202304, 'images/xq9HSzPO/1555162 (1).jpg', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `Noti_id` int(11) NOT NULL,
  `subject` varchar(500) DEFAULT NULL,
  `message` varchar(500) DEFAULT NULL,
  `date_in` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`Noti_id`, `subject`, `message`, `date_in`) VALUES
(3, 'Redmi Note 11s', 'is almost depleted!', '2023-01-07 10:29:37'),
(4, 'Redmi Note 11s', 'is almost depleted!', '2023-01-07 10:29:52'),
(5, 'hhh', 'is successfully added recently!', '2023-01-07 10:30:23'),
(6, 'NOKIAss', 'is almost depleted!', '2023-01-07 11:09:24'),
(7, 'Milk', 'is successfully added recently!', '2023-01-07 13:09:05'),
(8, 'Redmi Note 11s', 'is almost depleted!', '2023-01-08 04:50:27'),
(9, 'Redmi Note 11s', 'is successfully added recently!', '2023-01-08 10:10:50'),
(10, 'NOKIA', 'is successfully added recently!', '2023-01-08 10:12:33'),
(11, 'IPHONE 14', 'is successfully added recently!', '2023-01-09 08:15:09'),
(12, 'SAMSUNGSs', 'is successfully added recently!', '2023-01-10 07:56:21'),
(13, 'Demo product', 'is successfully added recently!', '2023-01-11 08:45:08'),
(14, 'Demo product', 'is almost depleted!', '2023-01-11 08:47:13');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order`
--

CREATE TABLE `purchase_order` (
  `PORD_ID` int(11) NOT NULL,
  `ITEM_ID` int(11) DEFAULT NULL,
  `STAFF_ID` int(11) NOT NULL,
  `PORD_QUANTITY` int(11) NOT NULL,
  `PORD_STATUS` varchar(20) DEFAULT NULL,
  `PORD_DATE` timestamp NULL DEFAULT current_timestamp(),
  `PORD_CREATED_AT` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `PORD_UPDATED_AT` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase_order`
--

INSERT INTO `purchase_order` (`PORD_ID`, `ITEM_ID`, `STAFF_ID`, `PORD_QUANTITY`, `PORD_STATUS`, `PORD_DATE`, `PORD_CREATED_AT`, `PORD_UPDATED_AT`) VALUES
(30, 88, 8, 3, 'SUCCESS', '2023-01-10 07:57:44', '2023-01-10 07:57:44', '2023-01-10 07:57:44'),
(31, 89, 8, 3, 'SUCCESS', '2023-01-11 08:45:29', '2023-01-11 08:45:29', '2023-01-11 08:45:29'),
(32, 89, 8, 1, 'SUCCESS', '2023-01-11 08:46:58', '2023-01-11 08:46:58', '2023-01-11 08:46:58');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `roles` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `roles`) VALUES
(1, 'ADMIN'),
(2, 'STAFF');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `STAFF_ID` int(11) NOT NULL,
  `STAFF_USER` varchar(20) NOT NULL,
  `staff_pass` varchar(50) DEFAULT NULL,
  `STAFF_FNAME` varchar(20) DEFAULT NULL,
  `STAFF_LNAME` varchar(20) DEFAULT NULL,
  `STAFF_ADDRESS` varchar(50) DEFAULT NULL,
  `STAFF_EMAIL` varchar(20) DEFAULT NULL,
  `STAFF_PHONENUM` int(11) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `STAFF_CREATED_AT` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `STAFF_UPDATED_AT` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`STAFF_ID`, `STAFF_USER`, `staff_pass`, `STAFF_FNAME`, `STAFF_LNAME`, `STAFF_ADDRESS`, `STAFF_EMAIL`, `STAFF_PHONENUM`, `role_id`, `STAFF_CREATED_AT`, `STAFF_UPDATED_AT`) VALUES
(8, 'ADMIN', 'admin', 'KHRISTIAN', 'MANGUBAT', 'GORDS', 'khris@gmail.com', 967256321, 1, '2023-01-11 10:23:56', '2023-01-11 10:23:56'),
(9, 'Fnyz', '12345', 'JEZREEL', 'BUSICO', 'SAMBOAN', 'jezreel.busico@yahoo', 2147483647, 2, '2023-01-11 10:44:12', '2023-01-11 10:44:12');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `SUPPLIER_ID` int(11) NOT NULL,
  `SUPPLIER_FNAME` varchar(20) DEFAULT NULL,
  `SUPPLIER_LNAME` varchar(20) DEFAULT NULL,
  `SUPPLIER_ADDRESS` varchar(50) DEFAULT NULL,
  `SUPPLIER_PHONENUM` int(11) DEFAULT NULL,
  `SUPPLIER_COMPANY` varchar(250) DEFAULT NULL,
  `SUPPLIER_CREATED_AT` timestamp NOT NULL DEFAULT current_timestamp(),
  `SUPPLIER_UPDATED_AT` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`SUPPLIER_ID`, `SUPPLIER_FNAME`, `SUPPLIER_LNAME`, `SUPPLIER_ADDRESS`, `SUPPLIER_PHONENUM`, `SUPPLIER_COMPANY`, `SUPPLIER_CREATED_AT`, `SUPPLIER_UPDATED_AT`) VALUES
(3, 'MIKA', 'BETASOLO', 'GORORDO', 9456897, 'FALCON INCORPORATION', '2022-12-29 04:53:31', '2022-12-29 04:53:31'),
(4, 'jezree', 'busico', 'suba', 9343, 'HEROES INCORPORATION', '2022-12-30 10:48:53', '2022-12-30 10:48:53'),
(5, 'John', 'Doe', 'Cebu city', 568745, 'ALASKA COMPANY', '2023-01-07 09:18:48', '2023-01-09 09:52:04');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `TRANS_ID` int(11) NOT NULL,
  `ITEM_ID` int(11) NOT NULL,
  `CUS_ID` int(11) NOT NULL,
  `STAFF_ID` int(11) NOT NULL,
  `TRANS_CODE` int(11) NOT NULL,
  `TRANS_QUANTITY` int(11) NOT NULL,
  `TRANS_CREATED_AT` timestamp NOT NULL DEFAULT current_timestamp(),
  `TRANS_UPDATED_AT` timestamp NOT NULL DEFAULT current_timestamp(),
  `TRANS_PRICE` double(9,2) DEFAULT NULL,
  `TRANS_PAYMENT` double(9,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`TRANS_ID`, `ITEM_ID`, `CUS_ID`, `STAFF_ID`, `TRANS_CODE`, `TRANS_QUANTITY`, `TRANS_CREATED_AT`, `TRANS_UPDATED_AT`, `TRANS_PRICE`, `TRANS_PAYMENT`) VALUES
(12, 85, 3, 9, 202070, 1, '2023-01-10 07:59:52', '2023-01-10 07:59:52', 13000.00, 30000.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CATEGORY_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CUS_ID`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`ITEM_ID`),
  ADD KEY `CATEGORY_ID` (`CATEGORY_ID`),
  ADD KEY `SUPPLIER_ID` (`SUPPLIER_ID`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`Noti_id`);

--
-- Indexes for table `purchase_order`
--
ALTER TABLE `purchase_order`
  ADD PRIMARY KEY (`PORD_ID`),
  ADD KEY `STAFF_ID` (`STAFF_ID`),
  ADD KEY `ITEM_ID` (`ITEM_ID`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`STAFF_ID`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`SUPPLIER_ID`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`TRANS_ID`),
  ADD KEY `ITEM_ID` (`ITEM_ID`),
  ADD KEY `CUS_ID` (`CUS_ID`),
  ADD KEY `STAFF_ID` (`STAFF_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `CATEGORY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CUS_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `ITEM_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `Noti_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `purchase_order`
--
ALTER TABLE `purchase_order`
  MODIFY `PORD_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `STAFF_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `SUPPLIER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `TRANS_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `category` (`CATEGORY_ID`),
  ADD CONSTRAINT `item_ibfk_2` FOREIGN KEY (`SUPPLIER_ID`) REFERENCES `supplier` (`SUPPLIER_ID`);

--
-- Constraints for table `purchase_order`
--
ALTER TABLE `purchase_order`
  ADD CONSTRAINT `purchase_order_ibfk_2` FOREIGN KEY (`STAFF_ID`) REFERENCES `staff` (`STAFF_ID`),
  ADD CONSTRAINT `purchase_order_ibfk_3` FOREIGN KEY (`ITEM_ID`) REFERENCES `item` (`ITEM_ID`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`ITEM_ID`) REFERENCES `item` (`ITEM_ID`),
  ADD CONSTRAINT `transactions_ibfk_3` FOREIGN KEY (`CUS_ID`) REFERENCES `customer` (`CUS_ID`),
  ADD CONSTRAINT `transactions_ibfk_4` FOREIGN KEY (`STAFF_ID`) REFERENCES `staff` (`STAFF_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
