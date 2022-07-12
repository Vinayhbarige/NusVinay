-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2022 at 08:52 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nusconsultinggroup`
--

-- --------------------------------------------------------

--
-- Table structure for table `clientcompanydata`
--

CREATE TABLE `clientcompanydata` (
  `id` int(11) NOT NULL,
  `parentcompany` varchar(255) NOT NULL,
  `clientcompany` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clientcompanydata`
--

INSERT INTO `clientcompanydata` (`id`, `parentcompany`, `clientcompany`, `country`) VALUES
(9, 'Shell Global', 'Shell Global', 'United States'),
(10, 'Shell Global', 'Shell UK', 'United Kingdom'),
(11, 'Shell UK', 'Shell England', 'United Kingdom'),
(12, 'Shell Global', 'Shell india', 'India');

-- --------------------------------------------------------

--
-- Table structure for table `clientuser`
--

CREATE TABLE `clientuser` (
  `id` int(100) NOT NULL,
  `role` varchar(40) NOT NULL,
  `username` varchar(40) NOT NULL,
  `emailId` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `accountstatus` varchar(10) NOT NULL,
  `parentcompany` varchar(100) NOT NULL,
  `bussinessunit` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clientuser`
--

INSERT INTO `clientuser` (`id`, `role`, `username`, `emailId`, `password`, `accountstatus`, `parentcompany`, `bussinessunit`) VALUES
(1, 'Parent company', 'admin', 'Vijayakumar.kt@qualesce.com', '$2y$10$qY63cKviNjJnD9lAhMZM6uXYClmXRITkhwB.kqgrixjOKu.mfbWqi', '0', 'Shell Global', ''),
(6, 'Client company', 'GGC', 'Vijaykumargowda973012@gmail.com', 'admin', '0', 'GGC', 'GGC Bangalore'),
(7, 'Client company', 'client', '', '$2y$10$pJM7c52BAEc7Gr8AQSPQLOmOSc7WOOjY8As.MQhdlA95QWavZrZve', '0', 'Big Bussiness solution', ''),
(9, 'Client company', 'VijayKT', 'vkt973012@gmail.com', 'admin', '0', 'Shell Global', '');

-- --------------------------------------------------------

--
-- Table structure for table `nususerdata`
--

CREATE TABLE `nususerdata` (
  `id` int(11) NOT NULL,
  `role` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `emailId` varchar(255) NOT NULL,
  `accountstatus` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `parentcompany` varchar(255) NOT NULL,
  `bussinessunit` varchar(255) NOT NULL,
  `User status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nususerdata`
--

INSERT INTO `nususerdata` (`id`, `role`, `username`, `emailId`, `accountstatus`, `password`, `parentcompany`, `bussinessunit`, `User status`) VALUES
(39, 'Parent company', 'vijay', 'vkt3012@gmail.com', '0', 'admin', '', '', 'Active'),
(40, 'Admin', 'vkt', 'vkt@gmail.com', '1', 'admin', '', '', 'Active'),
(44, 'Parent company', 'admin', 'admin@gmail.com', '1', 'admin', 'Shell Global', '', 'Active'),
(45, 'Parent company', 'parent', '', 'Invited', 'admin', 'Acme.co', '', 'Active'),
(46, 'Parent company', 'Shell', 'Shell@gmail.com', 'Invited', 'admin', 'Shell Global', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `parentcompanydata`
--

CREATE TABLE `parentcompanydata` (
  `id` int(11) NOT NULL,
  `parentcompany` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parentcompanydata`
--

INSERT INTO `parentcompanydata` (`id`, `parentcompany`) VALUES
(1, 'Shell Global'),
(2, 'Acme.co'),
(3, 'Big Bussiness solution'),
(4, 'Shell India'),
(5, 'qualesce'),
(6, 'Shell UK'),
(7, 'a'),
(8, 'Shell');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clientcompanydata`
--
ALTER TABLE `clientcompanydata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clientuser`
--
ALTER TABLE `clientuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `emailid` (`emailId`);

--
-- Indexes for table `nususerdata`
--
ALTER TABLE `nususerdata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`,`emailId`),
  ADD UNIQUE KEY `username_2` (`username`,`emailId`),
  ADD UNIQUE KEY `username_3` (`username`),
  ADD UNIQUE KEY `emailId` (`emailId`);

--
-- Indexes for table `parentcompanydata`
--
ALTER TABLE `parentcompanydata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clientcompanydata`
--
ALTER TABLE `clientcompanydata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `clientuser`
--
ALTER TABLE `clientuser`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `nususerdata`
--
ALTER TABLE `nususerdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `parentcompanydata`
--
ALTER TABLE `parentcompanydata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
