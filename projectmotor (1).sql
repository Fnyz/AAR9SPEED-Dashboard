-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2023 at 07:50 AM
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
-- Database: `projectmotor`
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
(39, 'PHONE');

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
(3, 'JEZREEL', 'BUSICO', 'SAMBOAN', 'jezreel.busico@yahoo', 9232321, '2022-12-31 09:21:57', '2022-12-31 09:21:57');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_history`
--

CREATE TABLE `invoice_history` (
  `INV_ID` int(11) NOT NULL,
  `CUS_ID` int(11) NOT NULL,
  `STAFF_ID` int(11) NOT NULL,
  `INV_TOTAL` double(9,2) NOT NULL,
  `INV_DATE` date DEFAULT NULL,
  `INV_CREATED_AT` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `INV_UPDATED_AT` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(77, 'Redmi Note 11s', 'This is phone!', 10000.00, 13, 39, 3, '2023-01-05 11:02:48', '2023-01-05 11:02:48', 202301, 'images/N3lZiOdS/redmiNote.png', 'ACTIVE'),
(78, 'NOKIA', 'This is new Cellphone!', 1200.00, 5, 39, 4, '2023-01-05 12:57:47', '2023-01-05 12:57:47', 202302, 'images/koHm2Mwa/Nokia-7-.png', 'ACTIVE'),
(79, 'Milk', 'des', 1500.00, 3, 39, 3, '2023-01-06 06:29:39', '2023-01-06 06:40:05', 202303, 'images/qjISvXE7/e35c24b12eb834e7b22d07a0d673cbc8.jpg', 'ACTIVE');

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
(15, 77, 5, 5, 'SUCCESS', '2023-01-05 12:31:02', '2023-01-05 12:31:02', '2023-01-05 12:31:02'),
(16, 77, 5, 1, 'SUCCESS', '2023-01-05 12:38:12', '2023-01-05 12:38:12', '2023-01-05 12:38:12'),
(17, 77, 5, 3, 'SUCCESS', '2023-01-05 12:42:19', '2023-01-05 12:42:19', '2023-01-05 12:42:19'),
(18, 78, 5, 5, 'SUCCESS', '2023-01-05 13:01:12', '2023-01-05 13:01:12', '2023-01-05 13:01:12'),
(19, 79, 5, 3, 'SUCCESS', '2023-01-06 06:30:19', '2023-01-06 06:30:19', '2023-01-06 06:30:19'),
(20, 77, 5, 3, 'SUCCESS', '2023-01-06 06:33:04', '2023-01-06 06:33:04', '2023-01-06 06:33:04');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `STAFF_ID` int(11) NOT NULL,
  `STAFF_USER` varchar(20) NOT NULL,
  `STAFF_PASS` varchar(20) NOT NULL,
  `STAFF_FNAME` varchar(20) DEFAULT NULL,
  `STAFF_LNAME` varchar(20) DEFAULT NULL,
  `STAFF_ADDRESS` varchar(50) DEFAULT NULL,
  `STAFF_EMAIL` varchar(20) DEFAULT NULL,
  `STAFF_PHONENUM` int(11) DEFAULT NULL,
  `STAFF_ROLE` varchar(200) NOT NULL,
  `STAFF_CREATED_AT` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `STAFF_UPDATED_AT` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`STAFF_ID`, `STAFF_USER`, `STAFF_PASS`, `STAFF_FNAME`, `STAFF_LNAME`, `STAFF_ADDRESS`, `STAFF_EMAIL`, `STAFF_PHONENUM`, `STAFF_ROLE`, `STAFF_CREATED_AT`, `STAFF_UPDATED_AT`) VALUES
(3, 'ADMIN2', 'admin2', 'Kent', 'Barugalon', 'Cebu', 'kent@gmail.com', 98656321, 'member', '2023-01-01 08:48:06', '2023-01-01 08:48:06'),
(5, 'Ysa Gwapa', '12345', 'Mark', 'BAKUL', '', 'jezreelbusico@yahoo.', 95632154, 'member', '2023-01-01 12:34:03', '2023-01-01 12:34:03');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `SUPPLIER_ID` int(11) NOT NULL,
  `SUPPLIER_FNAME` varchar(20) DEFAULT NULL,
  `SUPPLIER_LNAME` varchar(20) DEFAULT NULL,
  `SUPPLIER_ADDRESS` varchar(50) DEFAULT NULL,
  `SUPPLIER_EMAIL` varchar(20) DEFAULT NULL,
  `SUPPLIER_PHONENUM` int(11) DEFAULT NULL,
  `SUPPLIER_COMPANY` varchar(250) DEFAULT NULL,
  `SUPPLIER_CREATED_AT` timestamp NOT NULL DEFAULT current_timestamp(),
  `SUPPLIER_UPDATED_AT` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`SUPPLIER_ID`, `SUPPLIER_FNAME`, `SUPPLIER_LNAME`, `SUPPLIER_ADDRESS`, `SUPPLIER_EMAIL`, `SUPPLIER_PHONENUM`, `SUPPLIER_COMPANY`, `SUPPLIER_CREATED_AT`, `SUPPLIER_UPDATED_AT`) VALUES
(3, 'MIKA', 'BETASOLO', 'GORORDO', 'MIKA@YOUPORN.COM', 9456897, 'FALCON INCORPORATION', '2022-12-29 04:53:31', '2022-12-29 04:53:31'),
(4, 'jezree', 'busico', 'suba', 'jez@gmail.com', 9343, 'HEROES INCORPORATION', '2022-12-30 10:48:53', '2022-12-30 10:48:53');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `TRANS_ID` int(11) NOT NULL,
  `INV_ID` int(11) NOT NULL,
  `ITEM_ID` int(11) NOT NULL,
  `TRANS_QUANTITY` int(11) NOT NULL,
  `TRANS_CREATED_AT` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `TRANS_UPDATED_AT` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Indexes for table `invoice_history`
--
ALTER TABLE `invoice_history`
  ADD PRIMARY KEY (`INV_ID`),
  ADD KEY `CUS_ID` (`CUS_ID`),
  ADD KEY `STAFF_ID` (`STAFF_ID`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`ITEM_ID`),
  ADD KEY `CATEGORY_ID` (`CATEGORY_ID`),
  ADD KEY `SUPPLIER_ID` (`SUPPLIER_ID`);

--
-- Indexes for table `purchase_order`
--
ALTER TABLE `purchase_order`
  ADD PRIMARY KEY (`PORD_ID`),
  ADD KEY `STAFF_ID` (`STAFF_ID`),
  ADD KEY `ITEM_ID` (`ITEM_ID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`STAFF_ID`);

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
  ADD KEY `INV_ID` (`INV_ID`),
  ADD KEY `ITEM_ID` (`ITEM_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `CATEGORY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CUS_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `invoice_history`
--
ALTER TABLE `invoice_history`
  MODIFY `INV_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `ITEM_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `purchase_order`
--
ALTER TABLE `purchase_order`
  MODIFY `PORD_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `STAFF_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `SUPPLIER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `TRANS_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoice_history`
--
ALTER TABLE `invoice_history`
  ADD CONSTRAINT `invoice_history_ibfk_1` FOREIGN KEY (`CUS_ID`) REFERENCES `customer` (`CUS_ID`),
  ADD CONSTRAINT `invoice_history_ibfk_2` FOREIGN KEY (`STAFF_ID`) REFERENCES `staff` (`STAFF_ID`);

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
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`INV_ID`) REFERENCES `invoice_history` (`INV_ID`),
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`ITEM_ID`) REFERENCES `item` (`ITEM_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
