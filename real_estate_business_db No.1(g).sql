-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2025 at 02:34 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `real_estate_business_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `PropertyID` int(11) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(100) NOT NULL,
  `Type` varchar(50) DEFAULT NULL CHECK (`Type` in ('Residential','Commercial','Industrial')),
  `Size` int(11) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Status` varchar(20) DEFAULT NULL CHECK (`Status` in ('Available','Sold','Rented'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`PropertyID`, `Address`, `City`, `Type`, `Size`, `Price`, `Status`) VALUES
(1, 'Plot 45, Bugolobi', 'Kampala', 'Residential', 1200, 150000.00, 'Sold'),
(2, 'Suite 3, Ntinda Complex', 'Kampala', 'Commercial', 800, 250000.00, 'Available'),
(3, 'Plot 7, Industrial Area', 'Kampala', 'Industrial', 5000, 500000.00, 'Available'),
(4, 'Apartment 12B, Muyenga', 'Kampala', 'Residential', 1500, 180000.00, 'Sold'),
(5, 'Office 21, Kololo Heights', 'Kampala', 'Commercial', 1000, 300000.00, 'Rented'),
(6, 'Warehouse 8, Nalukolongo', 'Kampala', 'Industrial', 10000, 800000.00, 'Available'),
(7, 'Villa 3, Munyonyo', 'Kampala', 'Residential', 2000, 350000.00, 'Available'),
(8, 'Plot 14, Nakawa', 'Kampala', 'Industrial', 7000, 700000.00, 'Sold'),
(9, 'Shop 10, Kisementi', 'Kampala', 'Commercial', 600, 200000.00, 'Available'),
(10, 'House 4, Najjera', 'Kampala', 'Residential', 1000, 120000.00, 'Available');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`PropertyID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
