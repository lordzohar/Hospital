-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 07, 2017 at 09:37 AM
-- Server version: 5.5.46-0ubuntu0.14.04.2
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `medicine`
--

-- --------------------------------------------------------

--
-- Table structure for table `aspirin`
--

CREATE TABLE IF NOT EXISTS `aspirin` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `dealer` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `price` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `aspirin`
--

INSERT INTO `aspirin` (`id`, `dealer`, `address`, `contact`, `price`) VALUES
(1, 'Abbott India Ltd', 'nagpur', '9895523654', 170),
(2, 'rsm pharma disriburtors', 'kashmir', '9895523525', 185),
(3, 'moti and co', 'cochin', '9895552536', 165),
(4, 'vardhaman pharma', 'banglore', '8995523654', 187);

-- --------------------------------------------------------

--
-- Table structure for table `crocin`
--

CREATE TABLE IF NOT EXISTS `crocin` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `dealer` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `price` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `crocin`
--

INSERT INTO `crocin` (`id`, `dealer`, `address`, `contact`, `price`) VALUES
(1, 'Abbott India Ltd', ' mumbai', '9895523654', 20),
(2, 'rsm pharma disriburtors', 'delhi', '9895523525', 18),
(3, 'moti and co', 'chennai', '9895552536', 19),
(4, 'vardhaman pharma', 'banglore', '8995523654', 22);

-- --------------------------------------------------------

--
-- Table structure for table `diclogem`
--

CREATE TABLE IF NOT EXISTS `diclogem` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `dealer` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `price` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `diclogem`
--

INSERT INTO `diclogem` (`id`, `dealer`, `address`, `contact`, `price`) VALUES
(1, 'bakers India Ltd', 'mumbai', '9895443654', 30),
(2, 'akshay pharma disriburtors', 'delhi', '9893323525', 25),
(3, 'abhay and co', 'chennai', '9895552522', 35),
(4, 'david pharma', 'banglore', '7795523654', 20);

-- --------------------------------------------------------

--
-- Table structure for table `disprin`
--

CREATE TABLE IF NOT EXISTS `disprin` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `dealer` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `price` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `disprin`
--

INSERT INTO `disprin` (`id`, `dealer`, `address`, `contact`, `price`) VALUES
(1, 'drugs India Ltd', 'kolkata', '9895524654', 20),
(2, 'anthony pharma disriburtors', 'chandigarh', '9895511525', 15),
(3, 'dsouza and co', 'nashik', '9895552106', 10),
(4, 'kings pharma', 'banglore', '8885523654', 25);

-- --------------------------------------------------------

--
-- Table structure for table `vertin`
--

CREATE TABLE IF NOT EXISTS `vertin` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `dealer` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `price` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `vertin`
--

INSERT INTO `vertin` (`id`, `dealer`, `address`, `contact`, `price`) VALUES
(1, 'Abbott India Ltd', 'fort mumbai', '9895523654', 200),
(2, 'rsm pharma disriburtors', 'delhi', '9895523525', 185),
(3, 'moti and co', 'chennai', '9895552536', 205),
(4, 'vardhaman pharma', 'banglore', '8995523654', 187);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
