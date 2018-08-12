-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 14, 2017 at 04:40 PM
-- Server version: 5.7.16-0ubuntu0.16.04.1
-- PHP Version: 7.0.8-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vendor`
--

-- --------------------------------------------------------

--
-- Table structure for table `qoutation`
--

CREATE TABLE `qoutation` (
  `company` varchar(100) NOT NULL,
  `items` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `total` int(100) NOT NULL,
  `discount` varchar(100) NOT NULL,
  `amount` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qoutation`
--

INSERT INTO `qoutation` (`company`, `items`, `quantity`, `total`, `discount`, `amount`) VALUES
('aiktc', 'Aspirin', 500, 5000, '20', 4000),
('ash', 'Dispirin', 100, 1000, '10', 900),
('d;gksd;lmkg', 'Crocin', 100, 5000, '1200', 65435),
('global1', 'Dicologem', 100, 1000, '0', 1000),
('globalmedical', 'Diclogem', 10000, 5000, '0', 4500),
('happy', 'Aspirin', 10, 1000, '0', 4000),
('kjj', 'Crocin', 100, 100, '10%', 15000),
('zohar', 'Crocin', 10, 20, '0', 20);

-- --------------------------------------------------------

--
-- Table structure for table `vendorlogin`
--

CREATE TABLE `vendorlogin` (
  `mobileno` int(12) NOT NULL,
  `password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vendorregister`
--

CREATE TABLE `vendorregister` (
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `mobileno` int(12) NOT NULL,
  `password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendorregister`
--

INSERT INTO `vendorregister` (`name`, `email`, `mobileno`, `password`) VALUES
('zohar', 'zohar', 100, '100'),
('pradynesh', 'pd@jhh.com', 420, '240'),
('galib', 'galib@gmail.com', 123456, '123'),
('shanu', 'shanu@example.com', 232323, '1230'),
('taha', 'taha@example.com', 252525, '12345'),
('hussain', 'hussain@eg.com', 556655, '1002'),
('Mehfooz', 'meh@fake.com', 123123123, '123'),
('Aliakbar Nathani', 'ali@fake.com', 123456789, '123'),
('Mehfooz', 'meh@fake.com', 1231231234, '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `qoutation`
--
ALTER TABLE `qoutation`
  ADD PRIMARY KEY (`company`);

--
-- Indexes for table `vendorlogin`
--
ALTER TABLE `vendorlogin`
  ADD PRIMARY KEY (`mobileno`);

--
-- Indexes for table `vendorregister`
--
ALTER TABLE `vendorregister`
  ADD PRIMARY KEY (`mobileno`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
