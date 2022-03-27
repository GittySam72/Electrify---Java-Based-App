-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2020 at 07:10 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electrify`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('sam', '7272');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `meter_number` varchar(20) NOT NULL,
  `month` varchar(20) DEFAULT NULL,
  `units` varchar(5) DEFAULT NULL,
  `amount` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`meter_number`, `month`, `units`, `amount`) VALUES
('14562711804', 'May', '912', '7089'),
('14562711987', 'September', '683', '9300');

-- --------------------------------------------------------

--
-- Table structure for table `billsbymonth`
--

CREATE TABLE `billsbymonth` (
  `meter_number` varchar(20) NOT NULL DEFAULT '01',
  `name` varchar(20) NOT NULL DEFAULT 'demo',
  `january` varchar(10) NOT NULL,
  `february` varchar(10) NOT NULL,
  `march` varchar(10) NOT NULL,
  `april` varchar(10) NOT NULL,
  `may` varchar(10) NOT NULL,
  `june` varchar(10) NOT NULL,
  `july` varchar(10) NOT NULL,
  `august` varchar(10) NOT NULL,
  `september` varchar(10) NOT NULL,
  `october` varchar(10) NOT NULL,
  `november` varchar(10) NOT NULL,
  `december` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `cardno` bigint(20) NOT NULL,
  `expmonth` int(11) NOT NULL,
  `expyear` int(11) NOT NULL,
  `cvv` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`cardno`, `expmonth`, `expyear`, `cvv`) VALUES
(4141222251512222, 12, 26, 172);

-- --------------------------------------------------------

--
-- Table structure for table `currentuser`
--

CREATE TABLE `currentuser` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `main`
--

CREATE TABLE `main` (
  `name` varchar(20) DEFAULT NULL,
  `meter_number` varchar(20) NOT NULL,
  `address` varchar(40) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `meterdetails`
--

CREATE TABLE `meterdetails` (
  `meter_number` varchar(20) NOT NULL,
  `meter_location` varchar(10) DEFAULT NULL,
  `meter_type` varchar(15) DEFAULT NULL,
  `phase_code` varchar(5) DEFAULT NULL,
  `bill_type` varchar(10) DEFAULT NULL,
  `days` varchar(5) DEFAULT NULL,
  `meter_rent` varchar(5) DEFAULT NULL,
  `mcb_rent` varchar(5) DEFAULT NULL,
  `service_rent` varchar(5) DEFAULT NULL,
  `gst` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `newuser`
--

CREATE TABLE `newuser` (
  `userId` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `mobile` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `unitsbymonth`
--

CREATE TABLE `unitsbymonth` (
  `meter_number` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `january` varchar(10) NOT NULL,
  `february` varchar(10) NOT NULL,
  `march` varchar(10) NOT NULL,
  `april` varchar(10) NOT NULL,
  `may` varchar(10) NOT NULL,
  `june` varchar(10) NOT NULL,
  `july` varchar(10) NOT NULL,
  `august` varchar(10) NOT NULL,
  `september` varchar(10) NOT NULL,
  `october` varchar(10) NOT NULL,
  `november` varchar(10) NOT NULL,
  `december` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`meter_number`);

--
-- Indexes for table `billsbymonth`
--
ALTER TABLE `billsbymonth`
  ADD PRIMARY KEY (`meter_number`);

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`cardno`),
  ADD UNIQUE KEY `cardno` (`cardno`);

--
-- Indexes for table `currentuser`
--
ALTER TABLE `currentuser`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `main`
--
ALTER TABLE `main`
  ADD PRIMARY KEY (`meter_number`),
  ADD UNIQUE KEY `meter_number` (`meter_number`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `meterdetails`
--
ALTER TABLE `meterdetails`
  ADD PRIMARY KEY (`meter_number`);

--
-- Indexes for table `newuser`
--
ALTER TABLE `newuser`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `unitsbymonth`
--
ALTER TABLE `unitsbymonth`
  ADD PRIMARY KEY (`meter_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `newuser`
--
ALTER TABLE `newuser`
  MODIFY `userId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
