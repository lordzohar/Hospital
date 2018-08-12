-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 14, 2017 at 04:39 PM
-- Server version: 5.7.16-0ubuntu0.16.04.1
-- PHP Version: 7.0.8-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `dname` varchar(50) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `specialization` varchar(200) NOT NULL,
  `department` varchar(20) NOT NULL,
  `vid` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`dname`, `mobile`, `designation`, `specialization`, `department`, `vid`) VALUES
('Dr Akshay Kharmale', '9203154789', 'Duty Medical Officer', ' Accident & Emergency Service', 'Pathology', 1),
('Dr Quid Zohar Morbiwala', '9822654468', 'Consultant Cardiologist', 'Cardiology', 'Cardiology', 3),
('Dr Shanawz Shaikh', '9823548911', 'Consultant Physician & Diabetologist', 'General Medicine', 'X-Rays', 2),
('Dr Taha Pipewala', '9892186218', 'Senior Consultant', 'Surgery', 'Sonography', 4);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_days`
--

CREATE TABLE `doctor_days` (
  `vid` int(3) NOT NULL,
  `dayname` varchar(50) NOT NULL,
  `did` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_days`
--

INSERT INTO `doctor_days` (`vid`, `dayname`, `did`) VALUES
(1, 'Wednesday', 1),
(1, 'Thursday', 2),
(1, 'Saturday', 3),
(2, 'Tuesday', 4),
(2, 'Wednesday', 5),
(2, 'Friday', 6),
(3, 'Tuesday', 7),
(3, 'Friday', 8),
(3, 'Sunday', 9),
(4, 'Monday', 10),
(4, 'Wednesday', 11),
(4, 'Friday', 12);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `mobile` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `managerlogin`
--

CREATE TABLE `managerlogin` (
  `mobile` int(10) NOT NULL,
  `password` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `managerregister`
--

CREATE TABLE `managerregister` (
  `name` varchar(100) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobile` int(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `managerregister`
--

INSERT INTO `managerregister` (`name`, `email`, `mobile`, `password`) VALUES
('anas', 'an@eg.com', 1000, '100');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `name` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `dept` varchar(50) NOT NULL,
  `apt_date` date NOT NULL,
  `time` varchar(50) NOT NULL,
  `gender` varchar(2) NOT NULL,
  `e-mail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`name`, `address`, `mobile`, `dept`, `apt_date`, `time`, `gender`, `e-mail`) VALUES
('taha', 'bombay', '123456', 'Pathology', '2017-09-22', '3pm-4pm', 'M', 'taha@gamil.com'),
('imran', 'kalwa', '123456', 'Cardiology', '2017-09-28', '12pm-1pm', 'M', 'imran@em.com'),
('qasim', 'kalwa', '123456', 'Pathology', '2017-09-28', '3pm-4pm', 'M', 'qasim@eg.com'),
('javed', 'kurla', '123456', 'Cardiology', '2017-09-29', '3pm-4pm', 'M', 'javed@hm.com'),
('JKZXSDZ', 'asdsda', '123456', 'Pathology', '2018-02-12', '10am-11am', 'M', 'asd@sdsd'),
('zohar', '225/a', '123456799', 'Pathology', '2017-08-15', '10am - 11am', 'M', 'iamcoolquaid@'),
('snehakimaa', 'sanpada', '12458', 'Sonography', '2017-09-01', '5pm-6pm', 'F', 'sneha@eg.com'),
('sdhzdfj', 'GXFJDTJ', '4561237890', 'X-Rays', '2017-08-20', '12pm-1pm', 'M', 'FTJDYK'),
('mehfooz', 'turbhe', '5252', 'Pathology', '2017-10-01', '10am-11am', 'M', 'meh2@eg.com'),
('akshay', 'ytjfyuglhjgu', '7738967002', 'Cardiology', '2017-08-26', '10am-11am', 'M', 'huilyhuhiflg'),
('jhvkj', 'hyiouijk', '7894561230', 'Pathology', '2017-08-11', '10am-11am', 'M', 'yjhgyuktugh'),
('taha', 'mohd ALI RD', '9005252100', 'X-Rays', '2017-10-21', '12pm-1pm', 'M', 'taha@example.com'),
('taha', 'mohd ALI RD', '9005252100', 'X-Rays', '2017-10-21', '5pm-6pm', 'M', 'taha@example.com'),
('shanawaz', 'mahagiri thane', '9619369340', 'X-Rays', '2017-09-18', '10am-11am', 'M', 'shanu@example.com'),
('shayena', 'kurla', '9619369340', 'Sonography', '2017-09-22', '5pm-6pm', 'F', 'shayena2eg.com'),
('mai', 'adsfdgfhghnghhnghnhn', '9619369340', 'Cardiology', '2017-10-21', '12pm-1pm', 'M', 'gnhjghnghghhgh'),
('zoh', '255/abcd', '9898989898', 'Cardiology', '2017-08-09', '12pm-1pm', 'M', 'zoha@');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`name`, `email`, `mobile`, `password`) VALUES
('saddSA', 'adsds@', '7738967002', 'kharmale'),
('akshay', 'akshay@gmail.com', '7738967002', 'kharmale'),
('asxdcsa', 'aszxsa@', '1234', 'kharmale'),
('bilal', 'bilal@', '124', '124'),
('zohar', 'isdbh@dsnjs', '7738967002', '123'),
('mehfooz', 'meh2@eg.com', '5252', '5252'),
('pj29384044', 'pj29384044@gmail.com', '123456789', '123456789'),
('shanu', 'shanus78622@gmail.com', '9619369340', '9619'),
('shoeb', 'shoeb@gmail.com', '123456789', '987654'),
('SMS', 'sms@gmail.com', '8597456854', '12345678'),
('sneha', 'sneha@eg.com', '12458', '1000'),
('taha', 'taha@example.com', '9005252100', '12345'),
('taha', 'taha@gamil.com', '123456', '123'),
('Xyz', 'xyz@gmail.com', '123456789', '1234');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v1`
--
CREATE TABLE `v1` (
`company` varchar(100)
,`items` varchar(100)
,`quantity` int(100)
,`total` int(100)
,`discount` varchar(100)
,`amount` int(100)
);

-- --------------------------------------------------------

--
-- Structure for view `v1`
--
DROP TABLE IF EXISTS `v1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v1`  AS  select `vendor`.`qoutation`.`company` AS `company`,`vendor`.`qoutation`.`items` AS `items`,`vendor`.`qoutation`.`quantity` AS `quantity`,`vendor`.`qoutation`.`total` AS `total`,`vendor`.`qoutation`.`discount` AS `discount`,`vendor`.`qoutation`.`amount` AS `amount` from `vendor`.`qoutation` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`dname`);

--
-- Indexes for table `doctor_days`
--
ALTER TABLE `doctor_days`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`mobile`);

--
-- Indexes for table `managerlogin`
--
ALTER TABLE `managerlogin`
  ADD PRIMARY KEY (`mobile`);

--
-- Indexes for table `managerregister`
--
ALTER TABLE `managerregister`
  ADD PRIMARY KEY (`mobile`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD UNIQUE KEY `mobile` (`mobile`,`apt_date`,`time`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctor_days`
--
ALTER TABLE `doctor_days`
  MODIFY `did` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
