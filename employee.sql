-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2015 at 04:13 PM
-- Server version: 5.6.11
-- PHP Version: 5.5.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `employee`
--
CREATE DATABASE IF NOT EXISTS `employee` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `employee`;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `designation` varchar(30) NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`eid`, `emp_name`, `address`, `salary`, `designation`) VALUES
(1, 'S. Gamage', '20, Nalandarama road, Nugegoda', 30000, 'Senior manager'),
(2, 'Kanthi Perera', '35, Kohuwala, Nugegoda', 25000, 'Manager'),
(3, 'Thilanka Bowala', '88, Nalandaama road, Nugegoda', 50000, 'Senior manager'),
(4, 'Chathuri Thilakarathne', '38, abc road, Yagoda', 44000, 'Manager'),
(5, 'Gamini Amarasinghe', '45, bdj road, Gampaha', 22000, 'Cleark');

-- --------------------------------------------------------

--
-- Table structure for table `employeedetails`
--

CREATE TABLE IF NOT EXISTS `employeedetails` (
  `regid` int(4) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `age` int(3) NOT NULL,
  `country` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`regid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `employeedetails`
--

INSERT INTO `employeedetails` (`regid`, `firstname`, `lastname`, `age`, `country`, `email`, `username`, `password`) VALUES
(1, 'Thilanka', 'Bowala', 23, 'Sri Lanka', 'thilankabowala@gmail.com', 'thilanka', 'abc123'),
(2, 'Nethali', 'Serasinghe', 21, 'USA', 'nethaliserasinghe@gmail.com', 'nethali93', 'net'),
(3, 'Sanduni', 'Wanniarachchi', 23, 'Sri Lanka', 'sanduni91@gmail.com', 'sanduni', '1991'),
(4, 'Annie', 'Kern', 28, 'USA', 'AnnieKern@gmail.com', 'annie', 'kern');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
