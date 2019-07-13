-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 13, 2019 at 02:15 AM
-- Server version: 5.7.26-0ubuntu0.16.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alcfdesk`
--

-- --------------------------------------------------------

--
-- Table structure for table `eventregistration`
--

CREATE TABLE `eventregistration` (
  `id` int(16) NOT NULL,
  `fname` varchar(32) NOT NULL,
  `lname` varchar(32) NOT NULL,
  `email` varchar(64) NOT NULL,
  `phone` varchar(32) NOT NULL,
  `location` varchar(32) NOT NULL,
  `dob` varchar(16) NOT NULL,
  `dattend1` varchar(3) NOT NULL,
  `dattend2` varchar(3) NOT NULL,
  `dattend3` varchar(3) NOT NULL,
  `source` varchar(4) NOT NULL,
  `expectations` text NOT NULL,
  `usercode` varchar(16) NOT NULL,
  `registrar` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eventregistration`
--

INSERT INTO `eventregistration` (`id`, `fname`, `lname`, `email`, `phone`, `location`, `dob`, `dattend1`, `dattend2`, `dattend3`, `source`, `expectations`, `usercode`, `registrar`) VALUES
(1, 'a', 'b', 'a@g.com', '0263192377', 'a', '2019-07-11', 'no', 'yes', 'yes', 'cat1', '', 'ALC5d289e848b865', 'Rudimentary'),
(2, 'My', 'Name', 'is@not.necessary', '02774839203', 'But', '2019-07-29', 'yes', 'no', 'yes', 'cat1', 'Great expectations, for the power of God to be revealed.', 'ALC5d29032b479ed', 'Rudimentary'),
(3, 'Frank', 'Olsen', 'frolansekn@mail.com', '0303193299', 'Accra', '2019-07-09', 'no', 'yes', 'no', 'cat2', 'Great ones', 'ALC5d290a4769381', 'Rudimentary'),
(4, 'Lara', 'Vel', 'vellara@mailto.io', '124', 'Tema', '2019-07-09', 'no', 'yes', 'no', 'cat2', 'HOpe', 'ALC5d290b95a00d0', 'Rudimentary'),
(6, 'Load', 'Balance', 'load@gmail.com', '02774839203', 'Tarkwa', '', 'no', 'no', 'yes', 'cat0', '', 'ALC5d291036b82a6', 'Rudimentary');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `eventregistration`
--
ALTER TABLE `eventregistration`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usercode` (`usercode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `eventregistration`
--
ALTER TABLE `eventregistration`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
