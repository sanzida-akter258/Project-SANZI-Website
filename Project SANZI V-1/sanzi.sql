-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2023 at 09:05 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sanzi`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_approve`
--

CREATE TABLE `account_approve` (
  `ID` int(11) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Packege` varchar(10) NOT NULL,
  `Ammout` varchar(12) NOT NULL,
  `Phone Number` varchar(15) NOT NULL,
  `Transaction_ID` varchar(40) NOT NULL,
  `Payment_method` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `admin_email` varchar(50) NOT NULL,
  `admin_pass` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`admin_email`, `admin_pass`) VALUES
('rj@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `all_products`
--

CREATE TABLE `all_products` (
  `Product_ID` int(12) NOT NULL,
  `Product_title` varchar(500) NOT NULL,
  `Product_description` varchar(5000) NOT NULL,
  `image` longblob NOT NULL,
  `Product_Price` varchar(10) NOT NULL,
  `Product_Quantity` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `all_products`
--

INSERT INTO `all_products` (`Product_ID`, `Product_title`, `Product_description`, `image`, `Product_Price`, `Product_Quantity`) VALUES
(11, 'TTL to RS485 Module Mutual Conversion SCM Serial Port Hardware Automatic Flow Control', 'Support multi-machine communication, at least 40 nodes can be connected to the same network.\r\n', 0x6173736574732f70726f647563745f696d672f57494e5f32303231313132335f31315f30345f31345f50726f2e6a7067, '400', '3'),
(16, 'diymore ST-Link V2 Shell Programming Unit Mini STM8 STM32 Emulator Downloader with DuPont Cable (Random Color)', 'ewdsc sdvds sdcvdscds scsd', 0x6173736574732f70726f647563745f696d672f494d475f32303233303332315f3137313834362d72656d6f766562672d707265766965772e706e67, '4500', '9');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `Product_ID` varchar(20) NOT NULL,
  `Quantity` varchar(20) NOT NULL,
  `Price` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `controler_login`
--

CREATE TABLE `controler_login` (
  `controler_email` varchar(50) NOT NULL,
  `controler_pass` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `controler_login`
--

INSERT INTO `controler_login` (`controler_email`, `controler_pass`) VALUES
('rj@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Email` varchar(50) NOT NULL,
  `Password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Email`, `Password`) VALUES
('', ''),
('asadsd@gmail.com', 'sadasd'),
('raju@gmail.com', '1234'),
('rj@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `user_registration`
--

CREATE TABLE `user_registration` (
  `ID` int(15) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Packege` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_registration`
--

INSERT INTO `user_registration` (`ID`, `Name`, `Email`, `Password`, `Packege`) VALUES
(1, 'asdad', 'asadsd@gmail.com', 'sadasd', 'STANDARD'),
(2, 'Anupam Kumar', 'anupom@gmail.com', '1234', 'STANDARD'),
(3, 'Raju Raihan', 'raju@gmail.com', '1234', 'PREMIUM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_approve`
--
ALTER TABLE `account_approve`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `all_products`
--
ALTER TABLE `all_products`
  ADD PRIMARY KEY (`Product_ID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Email`);

--
-- Indexes for table `user_registration`
--
ALTER TABLE `user_registration`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_approve`
--
ALTER TABLE `account_approve`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `all_products`
--
ALTER TABLE `all_products`
  MODIFY `Product_ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user_registration`
--
ALTER TABLE `user_registration`
  MODIFY `ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
