-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 19, 2019 at 04:13 PM
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
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(8) NOT NULL,
  `username` varchar(12) NOT NULL,
  `password` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'Mingleemma', 0x3862656261386131616434343737363466633761303162366338383135313062);

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
  `attend1` varchar(3) NOT NULL DEFAULT 'N/A',
  `dattend2` varchar(3) NOT NULL,
  `attend2` varchar(3) NOT NULL DEFAULT 'N/A',
  `dattend3` varchar(3) NOT NULL,
  `attend3` varchar(3) NOT NULL DEFAULT 'N/A',
  `source` varchar(4) NOT NULL,
  `expectations` text NOT NULL,
  `registrar` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eventregistration`
--

INSERT INTO `eventregistration` (`id`, `fname`, `lname`, `email`, `phone`, `location`, `dob`, `dattend1`, `attend1`, `dattend2`, `attend2`, `dattend3`, `attend3`, `source`, `expectations`, `registrar`) VALUES
(1, 'a', 'b', 'a@g.com', '0263192377', 'a', '2019-07-11', 'no', 'N/A', 'yes', 'yes', 'yes', 'N/A', 'cat1', '', 'Rudimentary'),
(2, 'My', 'Name', 'is@not.necessary', '02774839203', 'But', '2019-07-29', 'yes', 'N/A', 'no', 'N/A', 'yes', 'N/A', 'cat1', 'Great expectations, for the power of God to be revealed.', 'Rudimentary'),
(3, 'Frank', 'Olsen', 'frolansekn@mail.com', '0303193299', 'Accra', '2019-07-09', 'no', 'N/A', 'yes', 'N/A', 'no', 'N/A', 'cat2', 'Great ones', 'Rudimentary'),
(4, 'Lara', 'Vel', 'vellara@mailto.io', '124', 'Tema', '2019-07-09', 'no', 'N/A', 'yes', 'N/A', 'no', 'N/A', 'cat2', 'HOpe', 'Rudimentary'),
(6, 'Load', 'Balance', 'load@gmail.com', '02774839203', 'Tarkwa', '', 'no', 'yes', 'no', 'N/A', 'yes', 'N/A', 'cat0', '', 'Rudimentary'),
(7, 'Note', 'Note', 'note2@email.com', '', 'Soma', '', 'no', 'N/A', 'no', 'N/A', 'no', 'N/A', 'cat0', '', 'Rudimentary'),
(11, 'nopa', 'nopa', 'note2@email.com', '', 'jaljlfkjd', '', 'no', 'N/A', 'yes', 'N/A', 'no', 'N/A', 'cat0', '', 'Rudimentary');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eventregistration`
--
ALTER TABLE `eventregistration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `eventregistration`
--
ALTER TABLE `eventregistration`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
