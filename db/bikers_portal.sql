-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2018 at 04:29 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bikers_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `Id` int(11) NOT NULL,
  `Name` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `Id` int(11) NOT NULL,
  `Name` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `Id` int(11) NOT NULL,
  `CartId` text NOT NULL,
  `ItemId` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Image` text NOT NULL,
  `Price` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Total` int(11) NOT NULL,
  `DatePlaced` date NOT NULL,
  `CustomerId` int(11) NOT NULL,
  `Destination` text NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `deliverycarts`
--

CREATE TABLE `deliverycarts` (
  `Id` int(11) NOT NULL,
  `CartId` text NOT NULL,
  `DeliveryCost` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `deliverypoints`
--

CREATE TABLE `deliverypoints` (
  `Id` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Amount` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `profilemaster`
--

CREATE TABLE `profilemaster` (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `PhoneNumber` varchar(200) NOT NULL,
  `IdNumber` int(11) NOT NULL,
  `Password` varchar(200) NOT NULL,
  `Role` varchar(200) NOT NULL,
  `Status` varchar(200) NOT NULL,
  `tokenCode` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profilemaster`
--

INSERT INTO `profilemaster` (`Id`, `Name`, `Email`, `PhoneNumber`, `IdNumber`, `Password`, `Role`, `Status`, `tokenCode`) VALUES
(1, 'Moin', 'moinimam32@gmail.com', '01955688621', 0, '$2y$10$rsSX6LnhI1tojLPEvyyVI.9hWErWxUXwkqyfrL/DMNTSJQyT2mtve', '1', 'Y', 'cc99fcd05b753beda3d123d255ac59d4'),
(25, 'Sarah', 'sarah@gmail.com', '01720610863', 0, '$2y$10$rsSX6LnhI1tojLPEvyyVI.9hWErWxUXwkqyfrL/DMNTSJQyT2mtve', '2', 'Y', 'c29f1997098ad28d20c5021375175660'),
(26, 'William', 'william@gmail.com', '01960138135', 0, '$2y$10$rsSX6LnhI1tojLPEvyyVI.9hWErWxUXwkqyfrL/DMNTSJQyT2mtve', '3', 'Y', 'f5b156fa63b20bc1f689dd5db109f370');

-- --------------------------------------------------------

--
-- Table structure for table `shop_items`
--

CREATE TABLE `shop_items` (
  `Id` int(11) NOT NULL,
  `Category` int(11) NOT NULL,
  `Brand` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Image` text NOT NULL,
  `Colour` text NOT NULL,
  `Description` text NOT NULL,
  `Price` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `SetAsNew` int(11) NOT NULL,
  `FeaturedItem` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `deliverycarts`
--
ALTER TABLE `deliverycarts`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `deliverypoints`
--
ALTER TABLE `deliverypoints`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `profilemaster`
--
ALTER TABLE `profilemaster`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `shop_items`
--
ALTER TABLE `shop_items`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `deliverycarts`
--
ALTER TABLE `deliverycarts`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `deliverypoints`
--
ALTER TABLE `deliverypoints`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `profilemaster`
--
ALTER TABLE `profilemaster`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `shop_items`
--
ALTER TABLE `shop_items`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
