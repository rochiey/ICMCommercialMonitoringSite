-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2018 at 05:32 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `icm`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `idcategory` int(11) NOT NULL,
  `category_name` varchar(45) DEFAULT NULL,
  `category_type` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`idcategory`, `category_name`, `category_type`) VALUES
(1, 'Shirts', 16),
(2, 'Shoes', 16),
(3, 'Medicine', 15),
(4, 'Shorts', 16),
(5, 'Sandals', 16),
(6, 'Pillows', 16),
(7, 'New', 15),
(8, 'Perfume', 15),
(9, 'Plastics', 16),
(10, 'Food Supplement', 15),
(11, 'Cosmetic', 15),
(12, 'Utensils', 16),
(13, 'Gadgets', 16),
(14, 'Sunglass', 16),
(15, 'Beverages', 15);

-- --------------------------------------------------------

--
-- Table structure for table `category_type`
--

CREATE TABLE `category_type` (
  `idcategory_type` int(11) NOT NULL,
  `category_type_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category_type`
--

INSERT INTO `category_type` (`idcategory_type`, `category_type_name`) VALUES
(15, 'Expirable'),
(16, 'Non-Expirable');

-- --------------------------------------------------------

--
-- Table structure for table `civilstatus`
--

CREATE TABLE `civilstatus` (
  `idCivilStatus` int(11) NOT NULL,
  `Civil_Status` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `civilstatus`
--

INSERT INTO `civilstatus` (`idCivilStatus`, `Civil_Status`) VALUES
(91, 'Single'),
(92, 'Married'),
(93, 'Widower'),
(94, 'Divorce');

-- --------------------------------------------------------

--
-- Table structure for table `credit_transaction`
--

CREATE TABLE `credit_transaction` (
  `idcredit_transaction` int(11) NOT NULL,
  `invoice_ID` int(11) DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  `dealer_ID` int(11) DEFAULT NULL,
  `total_net` decimal(10,2) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `paymentTypeID` int(11) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `penalty` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `credit_transaction`
--

INSERT INTO `credit_transaction` (`idcredit_transaction`, `invoice_ID`, `transaction_date`, `dealer_ID`, `total_net`, `amount`, `paymentTypeID`, `due_date`, `penalty`) VALUES
(1, NULL, '2016-08-17', 1, '38.70', '2000.00', 432, NULL, '3.59'),
(2, 64, '2016-08-17', 1, '38.70', '0.00', 243, '2016-09-23', '3.59'),
(3, 69, '2016-08-17', 1, '38.70', '0.00', 243, '2016-09-23', '3.59'),
(4, 70, '2016-08-17', 1, '38.70', '0.00', 243, '2016-09-23', '3.59'),
(5, 147, '2016-08-18', 11, '38.70', '0.00', 243, '2016-09-24', '3.59'),
(7, 148, '2018-05-17', 12, '38.70', '0.00', 243, '2018-06-23', '3.59'),
(8, 149, '2018-05-17', 12, '38.70', '0.00', 243, '2018-06-23', '3.59'),
(9, 150, '2018-05-18', 12, '38.70', '0.00', 243, '2018-06-24', '3.59'),
(10, 151, '2018-05-18', 12, '38.70', '0.00', 243, NULL, '3.59'),
(11, 151, '2018-05-18', 12, '38.70', '195.00', 432, NULL, '3.59'),
(12, 152, '2018-05-18', 13, '38.70', '0.00', 243, NULL, '3.59'),
(13, 153, '2018-05-18', 13, '38.70', '0.00', 243, '2018-06-24', '3.59'),
(14, 152, '2018-05-18', 13, '38.70', '390.00', 432, NULL, '3.59'),
(15, 154, '2018-05-18', 13, '38.70', '0.00', 243, '2018-06-24', '3.59'),
(16, 159, '2018-05-20', 13, '38.70', '0.00', 243, '2018-06-26', '3.59'),
(17, 160, '2018-05-21', 13, '38.70', '0.00', 243, '2018-06-27', '3.59');

-- --------------------------------------------------------

--
-- Table structure for table `dealer`
--

CREATE TABLE `dealer` (
  `iddealer` int(11) NOT NULL,
  `registration_date` date NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `middle_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) NOT NULL,
  `gender` int(11) NOT NULL,
  `birthday` date NOT NULL,
  `Civil_Status` int(11) NOT NULL,
  `Nationality` varchar(45) DEFAULT NULL,
  `Address` varchar(95) NOT NULL,
  `Email_Address` varchar(45) DEFAULT NULL,
  `contact_number` varchar(45) NOT NULL,
  `occupation` varchar(45) DEFAULT NULL,
  `credit_limit` decimal(10,2) NOT NULL,
  `available_credit` decimal(10,2) NOT NULL,
  `max_return_days` int(11) NOT NULL,
  `sponsor` varchar(45) DEFAULT NULL,
  `balance` decimal(10,2) DEFAULT NULL,
  `due_date` int(11) DEFAULT NULL,
  `total_penalty` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dealer`
--

INSERT INTO `dealer` (`iddealer`, `registration_date`, `first_name`, `middle_name`, `last_name`, `gender`, `birthday`, `Civil_Status`, `Nationality`, `Address`, `Email_Address`, `contact_number`, `occupation`, `credit_limit`, `available_credit`, `max_return_days`, `sponsor`, `balance`, `due_date`, `total_penalty`) VALUES
(1, '2016-08-10', 'Rhodiza', 'Ngojo', 'villanueva', 15, '1996-01-18', 91, 'Filipino', 'Trento Pblacion agusan del sur', 'Trento Pblacion agusan del sur', '09515151', 'Housewife', '15400.00', '873.10', 12, 'Alejandro', '38.70', 37, '0.00'),
(2, '2016-08-10', 'Roberto', 'Sanchez', 'Reyes', 15, '1992-02-03', 91, 'filipino', 'Rosario, Agusan del Sur', 'Rosario, Agusan del Sur', '0953533462', 'student', '30000.00', '30000.00', 15, 'Manuel', '38.70', 37, '0.00'),
(3, '2016-08-10', 'Imelda', 'Catanus', 'Vevencia', 16, '1986-01-18', 92, 'filipino', 'Bayugan city', 'Bayugan city', '09456845341', 'Teacher', '10000.00', '63955.00', 15, 'Alejandro', '38.70', 37, '0.00'),
(4, '2016-08-11', 'Richard', 'Canete', 'Abudiente', 15, '1991-04-01', 91, 'filipino', 'Trento Agusan Del Sur', 'Trento Agusan Del Sur', '09153123112', 'Construction Worker', '1500.00', '1500.00', 15, 'Rochie Yamit', '38.70', 37, '0.00'),
(5, '2016-08-16', 'Liza', 'Capiz', 'Romero', 15, '1986-05-09', 92, 'filipino', 'Sta. Josefa Agusan Del Sur', 'Sta. Josefa Agusan Del Sur', '09486548656', 'housewifes', '1500.00', '1500.00', 12, 'Alejandro Abulog', '38.70', 37, '0.00'),
(6, '2016-08-18', 'Roch', 'C', 'Yamit', 15, '2016-01-01', 91, 'Filipino', 'Panabo', 'Panabo', '091231', 'Farmer', '1500.00', '1500.00', 1, 'test', '38.70', 37, '0.00'),
(8, '2016-08-18', 'test', 'asd', 'test', 15, '2016-01-01', 91, '', 'test', '', 'test', '', '1123.00', '123.00', 1, 'test', '38.70', 37, '0.00'),
(9, '2016-08-18', 'A', 'B', 'C', 15, '2016-01-01', 91, '', 'D', '', '0915485878', '', '3000.00', '2500.00', 1, 'Richard Abudiente', '38.70', 37, '0.00'),
(10, '2016-08-18', 'Rody', '', 'Duterte', 15, '2016-01-01', 91, 'Filipino', 'Matina', '', '0945878957', 'President', '2000.00', '2000.00', 7, 'Imelda Vevencia', '38.70', 37, '0.00'),
(11, '2016-08-18', 'Ferdinand', '', 'Marcos', 15, '2016-01-01', 91, '', 'RIP', 'test@test.com', '099554854', '', '1500.00', '431.25', 1, 'Roberto Reyes', '38.70', 37, '0.00'),
(12, '2018-05-17', 'Alejandro', '', 'Abulog', 15, '2016-01-01', 91, '', 'asdadadadaa', '', '21312312', '', '1539.00', '1539.00', 15, 'Roch Yamit', '38.70', 37, '0.00'),
(13, '2018-05-18', 'Jorge', '', 'Bush', 15, '2016-01-01', 91, '', 'trento, agusannnnn', 'trento, agusannnnn', '12313131', '', '1578.00', '989.40', 7, 'Rhodiza villanueva', '38.70', 37, '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `dealer_supplier_bridge`
--

CREATE TABLE `dealer_supplier_bridge` (
  `iddealer_supplier_bridge` int(11) NOT NULL,
  `supplierID` int(11) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `dealerID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dealer_supplier_bridge`
--

INSERT INTO `dealer_supplier_bridge` (`iddealer_supplier_bridge`, `supplierID`, `discount`, `dealerID`) VALUES
(1, 1, 50, 1),
(2, 2, 22, 1),
(3, 3, 20, 1),
(4, 4, 35, 1),
(5, 5, 25, 1),
(6, 1, 22, 2),
(7, 2, 22, 2),
(8, 3, 22, 2),
(9, 4, 35, 2),
(10, 5, 25, 2),
(11, 1, 30, 3),
(12, 2, 20, 3),
(13, 3, 20, 3),
(14, 4, 35, 3),
(15, 5, 25, 3),
(16, 1, 50, 4),
(17, 2, 15, 4),
(18, 3, 20, 4),
(19, 4, 35, 4),
(20, 5, 25, 4),
(21, 1, 50, 5),
(22, 2, 20, 5),
(23, 3, 20, 5),
(24, 4, 35, 5),
(25, 5, 25, 5),
(26, 6, 42, 5),
(36, 1, 22, 6),
(37, 2, 22, 6),
(38, 3, 25, 6),
(39, 4, 22, 6),
(40, 5, 22, 6),
(41, 6, 22, 6),
(42, 7, 25, 6),
(43, 8, 25, 6),
(44, 9, 22, 6),
(45, 1, 22, 6),
(46, 2, 22, 6),
(47, 3, 25, 6),
(48, 4, 22, 6),
(49, 5, 22, 6),
(50, 6, 22, 6),
(51, 7, 25, 6),
(52, 8, 25, 6),
(53, 9, 22, 6),
(54, 1, 22, 8),
(55, 2, 22, 8),
(56, 3, 25, 8),
(57, 4, 22, 8),
(58, 5, 22, 8),
(59, 6, 22, 8),
(60, 7, 25, 8),
(61, 8, 25, 8),
(62, 9, 22, 8),
(63, 1, 22, 9),
(64, 2, 22, 9),
(65, 3, 25, 9),
(66, 4, 22, 9),
(67, 5, 22, 9),
(68, 6, 22, 9),
(69, 7, 25, 9),
(70, 8, 25, 9),
(71, 9, 22, 9),
(72, 1, 22, 10),
(73, 2, 22, 10),
(74, 3, 25, 10),
(75, 4, 22, 10),
(76, 5, 22, 10),
(77, 6, 22, 10),
(78, 7, 25, 10),
(79, 8, 25, 10),
(80, 9, 22, 10),
(81, 1, 5, 11),
(82, 2, 5, 11),
(83, 3, 10, 11),
(84, 4, 5, 11),
(85, 5, 22, 11),
(86, 6, 22, 11),
(87, 7, 25, 11),
(88, 8, 25, 11),
(89, 9, 22, 11),
(90, 1, 22, 12),
(91, 2, 22, 12),
(92, 3, 25, 12),
(93, 4, 22, 12),
(94, 5, 22, 12),
(95, 6, 22, 12),
(96, 7, 25, 12),
(97, 8, 25, 12),
(98, 9, 22, 12),
(99, 1, 22, 13),
(100, 2, 22, 13),
(101, 3, 25, 13),
(102, 4, 22, 13),
(103, 5, 22, 13),
(104, 6, 22, 13),
(105, 7, 25, 13),
(106, 8, 25, 13),
(107, 9, 22, 13);

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `idgender` int(11) NOT NULL,
  `gender_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`idgender`, `gender_name`) VALUES
(15, 'Male'),
(16, 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_out`
--

CREATE TABLE `inventory_out` (
  `idinventory_out` int(11) NOT NULL,
  `idsupplier` int(11) NOT NULL,
  `remarks` varchar(30) NOT NULL,
  `transaction_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory_out`
--

INSERT INTO `inventory_out` (`idinventory_out`, `idsupplier`, `remarks`, `transaction_date`) VALUES
(1, 4, 'Bad Condition', '2018-05-30');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_out_list`
--

CREATE TABLE `inventory_out_list` (
  `idinventory_out_list` int(11) NOT NULL,
  `transactNo` int(11) NOT NULL,
  `barcode` varchar(20) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory_out_list`
--

INSERT INTO `inventory_out_list` (`idinventory_out_list`, `transactNo`, `barcode`, `quantity`) VALUES
(1, 1, 'PHLZD00005945', 10);

-- --------------------------------------------------------

--
-- Table structure for table `inventory_transactions`
--

CREATE TABLE `inventory_transactions` (
  `idinventory_transaction` int(11) NOT NULL,
  `transact_date` date DEFAULT NULL,
  `transact_type` varchar(45) DEFAULT NULL,
  `POid` int(11) DEFAULT NULL,
  `remarks` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inventory_transactions`
--

INSERT INTO `inventory_transactions` (`idinventory_transaction`, `transact_date`, `transact_type`, `POid`, `remarks`) VALUES
(1, '2016-08-16', 'Inventory IN', 2, 'Good Condition'),
(2, '2016-08-16', 'Inventory IN', 1, 'Good Condition'),
(3, '2016-08-17', 'Sales Order', 64, 'Credit'),
(4, '2016-08-17', 'Sales Order', 69, 'Credit'),
(5, '2016-08-17', 'Sales Order', 70, 'Credit'),
(6, '2016-08-17', 'Inventory IN', 3, 'Good Condition'),
(7, '2016-08-17', 'RETURN', 70, 'Damaged'),
(8, '2016-08-17', 'RETURN', 69, 'Damaged'),
(9, '2016-08-17', 'Sales Order', 86, 'Cash'),
(10, '2016-08-17', 'Sales Order', 87, 'Cash'),
(11, '2016-08-17', 'Inventory IN', 4, 'Good Condition'),
(12, '2016-08-17', 'Inventory IN', 6, 'Good Condition'),
(13, '2016-08-18', 'Inventory IN', 7, 'Good Condition'),
(14, '2016-08-18', 'Inventory IN', 15, 'Good Condition'),
(15, '2016-08-18', 'Inventory IN', 16, 'Good Condition'),
(16, '2016-08-18', 'Inventory IN', 17, 'Good Condition'),
(17, '2016-08-18', 'Sales Order', 91, 'Cash'),
(18, '2016-08-18', 'Sales Order', 91, 'Cash'),
(19, '2016-08-18', 'Sales Order', 91, 'Cash'),
(20, '2016-08-18', 'Sales Order', 91, 'Cash'),
(21, '2016-08-18', 'Sales Order', 91, 'Cash'),
(22, '2016-08-18', 'Sales Order', 91, 'Cash'),
(23, '2016-08-18', 'Sales Order', 91, 'Cash'),
(24, '2016-08-18', 'Sales Order', 91, 'Cash'),
(25, '2016-08-18', 'Sales Order', 91, 'Cash'),
(26, '2016-08-18', 'Sales Order', 114, 'Cash'),
(27, '2016-08-18', 'Sales Order', 115, 'Cash'),
(28, '2016-08-18', 'Sales Order', 115, 'Cash'),
(29, '2016-08-18', 'Sales Order', 115, 'Cash'),
(30, '2016-08-18', 'Sales Order', 116, 'Cash'),
(31, '2016-08-18', 'Sales Order', 116, 'Cash'),
(32, '2016-08-18', 'Inventory IN', 18, 'Good Condition'),
(33, '2016-08-18', 'Sales Order', 118, 'Cash'),
(34, '2016-08-18', 'Inventory IN', 19, 'Good Condition'),
(35, '2016-08-18', 'Inventory IN', 21, 'Good Condition'),
(36, '2016-08-18', 'Sales Order', 119, 'Cash'),
(37, '2016-08-18', 'Inventory IN', 22, 'Good Condition'),
(38, '2016-08-18', 'Inventory IN', 23, 'Good Condition'),
(39, '2016-08-18', 'Sales Order', 146, 'Cash'),
(40, '2016-08-18', 'Sales Order', 147, 'Credit'),
(41, '2016-08-18', 'RETURN', 146, 'Damaged'),
(42, '2018-05-17', 'Sales Order', 148, 'Credit'),
(43, '2018-05-17', 'Sales Order', 148, 'Credit'),
(44, '2018-05-17', 'Sales Order', 149, 'Credit'),
(45, '2018-05-18', 'Sales Order', 150, 'Credit'),
(46, '2018-05-18', 'Sales Order', 151, 'Credit'),
(47, '2018-05-18', 'Sales Order', 152, 'Credit'),
(48, '2018-05-18', 'Sales Order', 153, 'Credit'),
(49, '2018-05-18', 'Sales Order', 154, 'Credit'),
(50, '2018-05-18', 'Sales Order', 155, 'Cash'),
(51, '2018-05-18', 'Sales Order', 156, 'Cash'),
(52, '2018-05-18', 'Sales Order', 157, 'Cash'),
(53, '2018-05-19', 'RETURN', 152, 'Damaged'),
(54, '2018-05-20', 'Sales Order', 158, 'Cash'),
(55, '2018-05-20', 'RETURN', 158, 'Change Size'),
(56, '2018-05-20', 'Sales Order', 159, 'Credit'),
(57, '2018-05-21', 'Sales Order', 160, 'Credit'),
(58, '2018-05-21', 'RETURN', 160, 'Change Size'),
(59, '2018-05-21', 'RETURN', 160, 'Change Size'),
(60, '2018-05-21', 'RETURN', 160, 'Damaged'),
(61, '2018-05-22', 'Inventory OUT', NULL, 'Bad Condition'),
(62, '2018-05-28', 'Inventory OUT', NULL, 'Expired Product'),
(63, '2018-05-30', 'Inventory OUT', 0, 'Bad Condition'),
(64, '2018-05-30', 'Inventory OUT', 0, 'Bad Condition'),
(65, '2018-05-30', 'Inventory OUT', 1, 'Bad Condition'),
(66, '2018-06-01', 'Inventory IN', 23, 'Good Condition'),
(67, '2018-06-01', 'Inventory IN', 23, 'Good Condition'),
(68, '2018-06-01', 'Inventory IN', 23, 'Good Condition'),
(69, '2018-06-01', 'Inventory IN', 24, 'Good Condition');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `idinvoice` int(11) NOT NULL,
  `CustomerDealer` int(11) DEFAULT NULL,
  `payment_type` int(11) DEFAULT NULL,
  `date_of_transaction` date DEFAULT NULL,
  `amount_paid` decimal(10,2) DEFAULT NULL,
  `total_net` decimal(10,2) DEFAULT NULL,
  `total_refund` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`idinvoice`, `CustomerDealer`, `payment_type`, `date_of_transaction`, `amount_paid`, `total_net`, `total_refund`) VALUES
(86, NULL, 234, '2016-08-17', '5000.00', '4495.00', NULL),
(87, NULL, 234, '2016-08-17', '200.00', '150.00', NULL),
(116, NULL, 234, '2016-08-18', '1500.00', '1497.00', NULL),
(118, NULL, 234, '2016-08-18', '33000.00', '32392.00', NULL),
(119, NULL, 234, '2016-08-18', '300.00', '285.00', NULL),
(146, 11, 234, '2016-08-18', '1500.00', '1282.50', '213.75'),
(148, 12, 243, '2018-05-17', '0.00', '390.00', NULL),
(149, 12, 243, '2018-05-17', '0.00', '195.00', NULL),
(150, 12, 243, '2018-05-18', '0.00', '35.10', NULL),
(151, 12, 243, '2018-05-18', '0.00', '195.00', NULL),
(152, 13, 243, '2018-05-18', '0.00', '390.00', '390.00'),
(153, 13, 243, '2018-05-18', '0.00', '81.90', NULL),
(154, 13, 243, '2018-05-18', '0.00', '0.00', NULL),
(157, NULL, 234, '2018-05-18', '500.00', '30.00', NULL),
(158, 13, 234, '2018-05-20', '100.00', '58.50', '58.50'),
(159, 13, 243, '2018-05-20', '0.00', '117.00', NULL),
(160, 13, 243, '2018-05-21', '0.00', '608.40', '12.00');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_supplier`
--

CREATE TABLE `invoice_supplier` (
  `idinvoice_supplier` int(11) NOT NULL,
  `supplier_SOno` varchar(11) DEFAULT NULL,
  `date_of_order` date DEFAULT NULL,
  `date_of_purchase` date DEFAULT NULL,
  `balance` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice_supplier`
--

INSERT INTO `invoice_supplier` (`idinvoice_supplier`, `supplier_SOno`, `date_of_order`, `date_of_purchase`, `balance`) VALUES
(1, NULL, '2016-08-16', NULL, '0.00'),
(2, '2186', '2016-08-16', '2016-06-28', '0.00'),
(3, '12313111', '2016-08-17', '2016-08-17', '0.00'),
(4, '12566', '2016-08-17', '2016-08-15', '0.00'),
(5, NULL, '2016-08-17', NULL, '0.00'),
(6, '785547', '2016-08-17', '2016-08-29', '0.00'),
(15, '2342342', '2016-08-18', '2016-08-18', '0.00'),
(16, '6546584', '2016-08-18', '2016-08-24', '0.00'),
(17, '445896', '2016-08-18', '2016-08-16', '0.00'),
(18, '45454', '2016-08-18', '2017-08-31', '0.00'),
(19, '44875', '2016-08-18', '2016-08-24', '0.00'),
(20, NULL, '2016-08-18', NULL, '0.00'),
(21, '145236', '2016-08-18', '2016-08-15', '0.00'),
(22, '1452369', '2016-08-18', '2016-08-14', '0.00'),
(23, '123123123', '2016-08-18', '2018-05-22', '0.00'),
(24, '22222222', '2018-06-01', '2018-06-01', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `payment_type`
--

CREATE TABLE `payment_type` (
  `idpayment_type` int(11) NOT NULL,
  `payment_type_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_type`
--

INSERT INTO `payment_type` (`idpayment_type`, `payment_type_name`) VALUES
(234, 'Cash'),
(243, 'Credit'),
(432, 'Credit Pull-out');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `idproduct` int(11) NOT NULL,
  `barcode` varchar(20) NOT NULL,
  `supplier` int(11) DEFAULT NULL,
  `product_name` varchar(45) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `product_size` varchar(10) DEFAULT NULL,
  `product_color` int(11) DEFAULT NULL,
  `expiration` date DEFAULT NULL,
  `selling_price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`idproduct`, `barcode`, `supplier`, `product_name`, `category`, `product_size`, `product_color`, `expiration`, `selling_price`, `quantity`) VALUES
(1, 'PHLZD00005945', 4, 'Superman Shirt', 1, 'L', 5, NULL, 250, 13),
(2, '4800131291683', 1, 'Hello Kitty Adult Pillow', 6, '20x30', 7, NULL, 15, 24),
(3, '6954941712192', 1, 'Hello Kitty Adult Pillow', 6, '20x36', 7, NULL, 15, 27),
(4, '', 5, 'Anta Garnet', 2, '5', 8, NULL, 3999, 10),
(5, '', 5, 'Anta Garnet', 2, '6', 8, NULL, 3999, 10),
(6, '', 5, 'Anta Garnet', 2, '7', 8, NULL, 3999, 10),
(7, '', 5, 'Anta Garnet', 2, '8', 8, NULL, 3999, 2),
(8, '', 5, 'Anta Garnet', 2, '9', 8, NULL, 3999, 10),
(9, '', 5, 'Anta Garnet', 2, '10', 8, NULL, 3999, 10),
(10, '', 5, 'Anta Garnet', 2, '11', 8, NULL, 3999, 10),
(11, '', 5, 'Anta Garnet', 2, '12', 8, NULL, 3999, 10),
(12, '', 3, 'Carot Soup', 1, '-', 9, NULL, 100, 75),
(13, '', 2, 'Hayden', 8, '-', 2, '2018-07-16', 499, 47),
(14, '', 4, 'Iron Man', 1, 'S', 5, NULL, 20, 30),
(15, '', 4, 'Iron Man', 1, 'M', 5, NULL, 20, 40),
(16, '', 4, 'Iron Man', 1, 'L', 5, NULL, 20, 20),
(17, '', 4, 'Iron Man', 1, 'XL', 5, NULL, 20, 20),
(22, '', 1, 'Iron Maiden', 1, 'S', 5, NULL, 20, 25),
(23, '', 1, 'Iron Maiden', 1, 'M', 5, NULL, 20, 1),
(24, '', 7, 'Pitcher', 9, '-', 5, NULL, 50, 78),
(25, '', 4, 'Suicide Squad Shirts', 1, 'S', 6, NULL, 20, 20),
(26, '', 4, 'Suicide Squad Shirts', 1, 'M', 6, NULL, 20, 20),
(27, '', 9, 'Gracious', 5, '5', 2, NULL, 565, 30),
(28, '', 9, 'Gracious', 5, '6', 2, NULL, 565, 15),
(29, '', 9, 'Gracious', 5, '7', 2, NULL, 565, 15),
(30, '', 9, 'Gracious', 5, '8', 2, NULL, 565, 15),
(31, '', 9, 'Gracious', 5, '9', 2, NULL, 565, 15),
(32, '', 9, 'Gracious', 5, '10', 2, NULL, 565, 15),
(33, '', 4, 'Green Tea', 3, '30g', 8, '2016-08-17', 2699, 1),
(34, '', 2, 'La Feur', 8, '220mL', 10, '2017-03-31', 499, 30),
(35, '', 3, 'Black Coffee', 15, '300g', 5, '2017-05-10', 285, 59),
(36, '', 9, 'Red Berry Juice', 15, '250g', 1, '2017-09-18', 400, 0),
(37, '', 7, 'Golden Cup', 9, '-', 3, NULL, 500, 0),
(38, '', 7, 'Silve Cup', 9, '-', 6, NULL, 280, 0),
(39, '', 4, 'Colorado', 1, 'S', 2, NULL, 499, 10),
(40, '', 4, 'Colorado', 1, 'M', 2, NULL, 499, 10),
(41, '', 4, 'Colorado', 1, 'L', 2, NULL, 499, 10),
(42, '', 4, 'Colorado', 1, 'XL', 2, NULL, 499, 20),
(43, '123123123', 4, 'Iron Man', 1, 'S', 5, '2018-05-24', 52, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_color`
--

CREATE TABLE `product_color` (
  `idproduct_color` int(11) NOT NULL,
  `color_code` varchar(10) NOT NULL,
  `color_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_color`
--

INSERT INTO `product_color` (`idproduct_color`, `color_code`, `color_name`) VALUES
(1, 'RED', 'Red'),
(2, 'BLU', 'Blue'),
(3, 'YLW', 'yellow'),
(4, 'VLT', 'violet'),
(5, 'BLCK', 'black'),
(6, 'WHI', 'White'),
(7, 'PNK', 'Pink'),
(8, 'GRN', 'Green'),
(9, 'ORG', 'Orange'),
(10, 'VIO', 'Violet');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_list`
--

CREATE TABLE `purchase_order_list` (
  `idpurchase_order_list` int(11) NOT NULL,
  `idinvoice` int(11) NOT NULL,
  `Item_Code` int(11) DEFAULT NULL,
  `Item_Name` varchar(45) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Unit_Price` decimal(10,2) DEFAULT NULL,
  `Discount_Percent` int(11) DEFAULT NULL,
  `Discounted_Price` decimal(10,2) DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `refund` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchase_order_list`
--

INSERT INTO `purchase_order_list` (`idpurchase_order_list`, `idinvoice`, `Item_Code`, `Item_Name`, `Quantity`, `Unit_Price`, `Discount_Percent`, `Discounted_Price`, `total_price`, `refund`) VALUES
(1, 64, 1, 'Hello Kitty Adult Pillow', 0, '899.00', 50, '450.00', '4495.00', '390.00'),
(2, 69, 1, 'Hello Kitty Adult Pillow', 0, '899.00', 50, '450.00', '2247.50', '390.00'),
(3, 70, 13, 'Hayden', 19, '499.00', 22, '389.00', '7784.40', '389.22'),
(4, 86, 1, 'Hello Kitty Adult Pillow', 0, '899.00', 0, '899.00', '4495.00', '390.00'),
(5, 87, 3, 'Hello Kitty Adult Pillow', 10, '15.00', 0, '15.00', '150.00', NULL),
(23, 116, 13, 'Hayden', 3, '499.00', 0, '499.00', '1497.00', NULL),
(24, 118, 7, 'Anta Garnet', 8, '3999.00', 0, '3999.00', '31992.00', NULL),
(25, 118, 14, 'Iron Man', 20, '20.00', 0, '20.00', '400.00', NULL),
(26, 119, 35, 'Black Coffee', 4, '285.00', 0, '285.00', '285.00', '213.75'),
(27, 146, 35, 'Black Coffee', 4, '285.00', 25, '214.00', '1282.50', '213.75'),
(28, 147, 35, 'Black Coffee', 4, '285.00', 25, '214.00', '1068.75', '213.75'),
(29, 150, 2, 'Hello Kitty Adult Pillow', 0, '15.00', 22, '12.00', '35.10', '58.50'),
(30, 151, 1, 'Superman Shirt', 0, '250.00', 22, '195.00', '195.00', '390.00'),
(31, 152, 1, 'Superman Shirt', 0, '250.00', 22, '195.00', '390.00', '390.00'),
(32, 153, 2, 'Hello Kitty Adult Pillow', 0, '15.00', 22, '12.00', '81.90', '58.50'),
(35, 157, 2, 'Hello Kitty Adult Pillow', 0, '15.00', 0, '15.00', '30.00', '58.50'),
(36, 158, 2, 'Hello Kitty Adult Pillow', 0, '15.00', 22, '12.00', '58.50', '58.50'),
(37, 159, 2, 'Hello Kitty Adult Pillow', 5, '15.00', 22, '12.00', '58.50', NULL),
(38, 159, 3, 'Hello Kitty Adult Pillow', 5, '15.00', 22, '12.00', '58.50', NULL),
(39, 160, 1, 'Superman Shirt', 0, '250.00', 22, '195.00', '585.00', '585.00'),
(40, 160, 2, 'Hello Kitty Adult Pillow', 0, '15.00', 22, '12.00', '23.40', '12.00');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_supplier`
--

CREATE TABLE `purchase_order_supplier` (
  `idpurchase_order_supplier` int(11) NOT NULL,
  `productID` int(11) DEFAULT NULL,
  `productName` varchar(45) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `salesOrderNo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchase_order_supplier`
--

INSERT INTO `purchase_order_supplier` (`idpurchase_order_supplier`, `productID`, `productName`, `quantity`, `salesOrderNo`) VALUES
(1, 13, 'Hayden', 20, 1),
(2, 1, 'Hello Kitty Adult Pillow', 15, 2),
(3, 2, 'Hello Kitty Adult Pillow', 15, 2),
(4, 3, 'Hello Kitty Adult Pillow', 15, 2),
(5, 22, 'Iron Maiden', 20, 2),
(6, 23, 'Iron Maiden', 20, 2),
(7, 1, 'Hello Kitty Adult Pillow', 30, 3),
(8, 27, 'Gracious', 30, 4),
(9, 28, 'Gracious', 15, 4),
(10, 29, 'Gracious', 15, 4),
(11, 30, 'Gracious', 15, 4),
(12, 31, 'Gracious', 15, 4),
(13, 32, 'Gracious', 15, 4),
(14, 14, 'Iron Man', 20, 5),
(15, 15, 'Iron Man', 20, 5),
(16, 16, 'Iron Man', 20, 5),
(17, 17, 'Iron Man', 20, 5),
(18, 18, 'Superman Shirt', 25, 5),
(19, 19, 'Superman Shirt', 25, 5),
(20, 20, 'Superman Shirt', 25, 5),
(21, 21, 'Superman Shirt', 25, 5),
(22, 25, 'Suicide Squad Shirts', 20, 5),
(23, 26, 'Suicide Squad Shirts', 20, 5),
(24, 33, 'Amicom Shockproof Phone', 4, 5),
(25, 14, 'Iron Man', 20, 6),
(26, 15, 'Iron Man', 20, 6),
(27, 16, 'Iron Man', 20, 6),
(28, 17, 'Iron Man', 20, 6),
(29, 25, 'Suicide Squad Shirts', 20, 6),
(30, 26, 'Suicide Squad Shirts', 20, 6),
(31, 33, 'Green Tea', 4, 6),
(43, 2, 'Hello Kitty Adult Pillow', 15, 15),
(44, 3, 'Hello Kitty Adult Pillow', 15, 15),
(45, 12, 'Carot Soup', 100, 16),
(46, 35, 'Black Coffee', 75, 17),
(47, 4, 'Anta Garnet', 10, 18),
(48, 5, 'Anta Garnet', 10, 18),
(49, 6, 'Anta Garnet', 10, 18),
(50, 7, 'Anta Garnet', 10, 18),
(51, 8, 'Anta Garnet', 10, 18),
(52, 9, 'Anta Garnet', 10, 18),
(53, 10, 'Anta Garnet', 10, 18),
(54, 11, 'Anta Garnet', 10, 18),
(55, 22, 'Iron Maiden', 5, 19),
(56, 34, 'La Feur', 15, 20),
(57, 34, 'La Feur', 2, 21),
(58, 24, 'Pitcher', 78, 22),
(59, 39, 'Colorado', 10, 23),
(60, 40, 'Colorado', 10, 23),
(61, 41, 'Colorado', 10, 23),
(62, 42, 'Colorado', 20, 23),
(63, 1, 'Superman Shirt', 10, 23),
(64, 1, 'Superman Shirt', 1, 23),
(65, 1, 'Superman Shirt', 1, 24);

-- --------------------------------------------------------

--
-- Table structure for table `return_history`
--

CREATE TABLE `return_history` (
  `idreturn_history` int(11) NOT NULL,
  `return_date` date DEFAULT NULL,
  `customer_name` varchar(45) DEFAULT NULL,
  `return_reason` varchar(45) DEFAULT NULL,
  `refund` decimal(10,2) DEFAULT NULL,
  `invoiceID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `return_history`
--

INSERT INTO `return_history` (`idreturn_history`, `return_date`, `customer_name`, `return_reason`, `refund`, `invoiceID`) VALUES
(1, '2016-08-17', 'Rhodiza villanueva', 'Damaged', '389.22', 70),
(2, '2016-08-17', 'Rhodiza villanueva', 'Damaged', '449.50', 69),
(3, '2016-08-18', 'Ferdinand Marcos', 'Damaged', '213.75', 146),
(4, '2018-05-19', 'Jorge Bush', 'Damaged', '390.00', 152),
(5, '2018-05-20', 'Jorge Bush', 'Change Size', '58.50', 158),
(6, '2018-05-21', 'Jorge Bush', 'Change Size', '585.00', 160),
(7, '2018-05-21', 'Jorge Bush', 'Change Size', '11.70', 160),
(8, '2018-05-21', 'Jorge Bush', 'Damaged', '12.00', 160);

-- --------------------------------------------------------

--
-- Table structure for table `return_list`
--

CREATE TABLE `return_list` (
  `idreturn_list` int(11) NOT NULL,
  `transactNo` int(11) NOT NULL,
  `idproduct` int(11) NOT NULL,
  `total_net` decimal(10,2) NOT NULL,
  `returned_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `idsupplier` int(11) NOT NULL,
  `supplier_name` varchar(45) DEFAULT NULL,
  `contact_number` varchar(45) DEFAULT NULL,
  `contact_person` varchar(45) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`idsupplier`, `supplier_name`, `contact_number`, `contact_person`, `discount`) VALUES
(1, 'Daki', '0919154518', 'Elizabeth', 22),
(2, 'Avon', '0916846548', 'Rhodiza', 22),
(3, 'Elise', '0907156846', 'Grace', 25),
(4, 'MSE', '0919486586', 'Anne', 22),
(5, 'Natasha', '0916815886', 'Richard', 22),
(6, 'Ever Bilena', '0946184865', 'Concepcion', 22),
(7, 'Tupperware', '0907168496', 'Miriam', 25),
(8, 'Personal Collection', '0905156158', 'Rose', 25),
(9, 'Red Logo', '0918764846', 'Jake', 22);

-- --------------------------------------------------------

--
-- Table structure for table `systemaccount`
--

CREATE TABLE `systemaccount` (
  `ID` int(11) NOT NULL,
  `First_Name` varchar(45) NOT NULL,
  `Middle_Name` varchar(45) DEFAULT NULL,
  `Last_Name` varchar(45) NOT NULL,
  `gender` int(11) NOT NULL,
  `birthday` date NOT NULL,
  `Civil_Status` int(11) NOT NULL,
  `Nationality` varchar(45) DEFAULT NULL,
  `Address` varchar(95) NOT NULL,
  `Email_Address` varchar(45) DEFAULT NULL,
  `Contact_Number` varchar(45) NOT NULL,
  `registration_date` date NOT NULL,
  `Occupation` varchar(45) DEFAULT NULL,
  `Username` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `usertype` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `systemaccount`
--

INSERT INTO `systemaccount` (`ID`, `First_Name`, `Middle_Name`, `Last_Name`, `gender`, `birthday`, `Civil_Status`, `Nationality`, `Address`, `Email_Address`, `Contact_Number`, `registration_date`, `Occupation`, `Username`, `Password`, `usertype`) VALUES
(3, 'Rochie', 'canete', 'Yamit', 15, '1996-01-18', 91, 'Amerano', 'Panabo City', 'rochieyamit@gmail.com', '09474242424', '2016-08-10', 'Student', 'roch', 'f', 51),
(4, 'Manuel', 'Dupa', 'Cagatin', 15, '2016-02-06', 91, 'filipino', 'Poblacion Trento Agusan Del Sur', 'manuelcagatin@gmail.com', '09071171844', '2016-08-16', 'Freelancer', 'manuel', 'rfszjq', 51),
(5, 'jorge', 'd', 'cumaling', 15, '1987-01-01', 92, '', 'Tagum city', 'none', '09525252525', '2016-08-17', 'Student', 'jorge', 'otwlj', 21),
(6, 'A', 'B', 'C', 15, '2016-01-01', 91, '', 'D', '', '09989', '2016-08-18', '', 'Anonymous', 'fstsdrtzx', 51);

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

CREATE TABLE `usertype` (
  `idusertype` int(11) NOT NULL,
  `usertype_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`idusertype`, `usertype_name`) VALUES
(21, 'User'),
(51, 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`idcategory`),
  ADD KEY `category_type_idx` (`category_type`);

--
-- Indexes for table `category_type`
--
ALTER TABLE `category_type`
  ADD PRIMARY KEY (`idcategory_type`);

--
-- Indexes for table `civilstatus`
--
ALTER TABLE `civilstatus`
  ADD PRIMARY KEY (`idCivilStatus`);

--
-- Indexes for table `credit_transaction`
--
ALTER TABLE `credit_transaction`
  ADD PRIMARY KEY (`idcredit_transaction`),
  ADD KEY `dealerID_idx` (`dealer_ID`),
  ADD KEY `invoiceID_idx` (`invoice_ID`),
  ADD KEY `paymentID_idx` (`paymentTypeID`);

--
-- Indexes for table `dealer`
--
ALTER TABLE `dealer`
  ADD PRIMARY KEY (`iddealer`),
  ADD KEY `gender` (`gender`),
  ADD KEY `dealer_name` (`first_name`),
  ADD KEY `civilstatus_idx` (`Civil_Status`);

--
-- Indexes for table `dealer_supplier_bridge`
--
ALTER TABLE `dealer_supplier_bridge`
  ADD PRIMARY KEY (`iddealer_supplier_bridge`),
  ADD KEY `supplierID_idx` (`supplierID`),
  ADD KEY `dealerID_idx` (`dealerID`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`idgender`);

--
-- Indexes for table `inventory_out`
--
ALTER TABLE `inventory_out`
  ADD PRIMARY KEY (`idinventory_out`),
  ADD KEY `idsupplier` (`idsupplier`);

--
-- Indexes for table `inventory_out_list`
--
ALTER TABLE `inventory_out_list`
  ADD PRIMARY KEY (`idinventory_out_list`),
  ADD KEY `transact_no` (`transactNo`);

--
-- Indexes for table `inventory_transactions`
--
ALTER TABLE `inventory_transactions`
  ADD PRIMARY KEY (`idinventory_transaction`),
  ADD KEY `stockin_idx` (`transact_date`),
  ADD KEY `stockout_idx` (`transact_date`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`idinvoice`),
  ADD KEY `payment_type` (`payment_type`),
  ADD KEY `dealer_name` (`CustomerDealer`),
  ADD KEY `walk_in_name` (`CustomerDealer`);

--
-- Indexes for table `invoice_supplier`
--
ALTER TABLE `invoice_supplier`
  ADD PRIMARY KEY (`idinvoice_supplier`);

--
-- Indexes for table `payment_type`
--
ALTER TABLE `payment_type`
  ADD PRIMARY KEY (`idpayment_type`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`idproduct`),
  ADD KEY `color` (`product_color`),
  ADD KEY `size` (`product_size`),
  ADD KEY `supplier` (`supplier`),
  ADD KEY `category_idx` (`category`);

--
-- Indexes for table `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`idproduct_color`),
  ADD UNIQUE KEY `color_code_UNIQUE` (`color_code`);

--
-- Indexes for table `purchase_order_list`
--
ALTER TABLE `purchase_order_list`
  ADD PRIMARY KEY (`idpurchase_order_list`),
  ADD KEY `itemCode_idx` (`Item_Code`),
  ADD KEY `invoiceID_idx` (`idinvoice`);

--
-- Indexes for table `purchase_order_supplier`
--
ALTER TABLE `purchase_order_supplier`
  ADD PRIMARY KEY (`idpurchase_order_supplier`),
  ADD KEY `IDproduct_idx` (`productID`),
  ADD KEY `SOnum_idx` (`salesOrderNo`);

--
-- Indexes for table `return_history`
--
ALTER TABLE `return_history`
  ADD PRIMARY KEY (`idreturn_history`),
  ADD KEY `invoiceID_idx` (`invoiceID`);

--
-- Indexes for table `return_list`
--
ALTER TABLE `return_list`
  ADD PRIMARY KEY (`idreturn_list`),
  ADD KEY `transactNo` (`transactNo`),
  ADD KEY `productid` (`idproduct`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`idsupplier`);

--
-- Indexes for table `systemaccount`
--
ALTER TABLE `systemaccount`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `userType` (`usertype`),
  ADD KEY `gender_idx` (`gender`),
  ADD KEY `civilstatus_idx` (`Civil_Status`);

--
-- Indexes for table `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`idusertype`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `idcategory` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `category_type`
--
ALTER TABLE `category_type`
  MODIFY `idcategory_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `credit_transaction`
--
ALTER TABLE `credit_transaction`
  MODIFY `idcredit_transaction` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `dealer`
--
ALTER TABLE `dealer`
  MODIFY `iddealer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `dealer_supplier_bridge`
--
ALTER TABLE `dealer_supplier_bridge`
  MODIFY `iddealer_supplier_bridge` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `inventory_out`
--
ALTER TABLE `inventory_out`
  MODIFY `idinventory_out` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inventory_out_list`
--
ALTER TABLE `inventory_out_list`
  MODIFY `idinventory_out_list` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inventory_transactions`
--
ALTER TABLE `inventory_transactions`
  MODIFY `idinventory_transaction` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `idinvoice` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `invoice_supplier`
--
ALTER TABLE `invoice_supplier`
  MODIFY `idinvoice_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `idproduct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `product_color`
--
ALTER TABLE `product_color`
  MODIFY `idproduct_color` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `purchase_order_list`
--
ALTER TABLE `purchase_order_list`
  MODIFY `idpurchase_order_list` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `purchase_order_supplier`
--
ALTER TABLE `purchase_order_supplier`
  MODIFY `idpurchase_order_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `return_history`
--
ALTER TABLE `return_history`
  MODIFY `idreturn_history` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `return_list`
--
ALTER TABLE `return_list`
  MODIFY `idreturn_list` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `idsupplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `systemaccount`
--
ALTER TABLE `systemaccount`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_type` FOREIGN KEY (`category_type`) REFERENCES `category_type` (`idcategory_type`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `credit_transaction`
--
ALTER TABLE `credit_transaction`
  ADD CONSTRAINT `dealer` FOREIGN KEY (`dealer_ID`) REFERENCES `dealer` (`iddealer`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `invoice` FOREIGN KEY (`invoice_ID`) REFERENCES `invoice` (`idinvoice`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `paymentType` FOREIGN KEY (`paymentTypeID`) REFERENCES `payment_type` (`idpayment_type`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dealer`
--
ALTER TABLE `dealer`
  ADD CONSTRAINT `civilstatus` FOREIGN KEY (`Civil_Status`) REFERENCES `civilstatus` (`idCivilStatus`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `gender` FOREIGN KEY (`gender`) REFERENCES `gender` (`idgender`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dealer_supplier_bridge`
--
ALTER TABLE `dealer_supplier_bridge`
  ADD CONSTRAINT `dealerID` FOREIGN KEY (`dealerID`) REFERENCES `dealer` (`iddealer`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `supplierID` FOREIGN KEY (`supplierID`) REFERENCES `supplier` (`idsupplier`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `inventory_out`
--
ALTER TABLE `inventory_out`
  ADD CONSTRAINT `idsupplier` FOREIGN KEY (`idsupplier`) REFERENCES `supplier` (`idsupplier`);

--
-- Constraints for table `inventory_out_list`
--
ALTER TABLE `inventory_out_list`
  ADD CONSTRAINT `transact_no` FOREIGN KEY (`transactNo`) REFERENCES `inventory_out` (`idinventory_out`);

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `customer.dealer` FOREIGN KEY (`CustomerDealer`) REFERENCES `dealer` (`iddealer`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `payment.type` FOREIGN KEY (`payment_type`) REFERENCES `payment_type` (`idpayment_type`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `category` FOREIGN KEY (`category`) REFERENCES `category` (`idcategory`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `color` FOREIGN KEY (`product_color`) REFERENCES `product_color` (`idproduct_color`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `supplier` FOREIGN KEY (`supplier`) REFERENCES `supplier` (`idsupplier`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `purchase_order_list`
--
ALTER TABLE `purchase_order_list`
  ADD CONSTRAINT `invoiceID` FOREIGN KEY (`idinvoice`) REFERENCES `invoice` (`idinvoice`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `itemCode` FOREIGN KEY (`Item_Code`) REFERENCES `product` (`idproduct`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `purchase_order_supplier`
--
ALTER TABLE `purchase_order_supplier`
  ADD CONSTRAINT `IDproduct` FOREIGN KEY (`productID`) REFERENCES `product` (`idproduct`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `SOnum` FOREIGN KEY (`salesOrderNo`) REFERENCES `invoice_supplier` (`idinvoice_supplier`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `return_history`
--
ALTER TABLE `return_history`
  ADD CONSTRAINT `idinvoice` FOREIGN KEY (`invoiceID`) REFERENCES `invoice` (`idinvoice`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `return_list`
--
ALTER TABLE `return_list`
  ADD CONSTRAINT `productid` FOREIGN KEY (`idproduct`) REFERENCES `product` (`idproduct`),
  ADD CONSTRAINT `transactNo` FOREIGN KEY (`transactNo`) REFERENCES `return_history` (`idreturn_history`);

--
-- Constraints for table `systemaccount`
--
ALTER TABLE `systemaccount`
  ADD CONSTRAINT `genderid` FOREIGN KEY (`gender`) REFERENCES `gender` (`idgender`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `idcivilstatus` FOREIGN KEY (`Civil_Status`) REFERENCES `civilstatus` (`idCivilStatus`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `idusertype` FOREIGN KEY (`usertype`) REFERENCES `usertype` (`idusertype`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
