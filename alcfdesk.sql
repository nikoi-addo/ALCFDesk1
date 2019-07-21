-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 21, 2019 at 06:12 PM
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
  `attend1` varchar(3) NOT NULL DEFAULT 'no',
  `attend2` varchar(3) NOT NULL DEFAULT 'no',
  `attend3` varchar(3) NOT NULL DEFAULT 'no',
  `tattend1` double NOT NULL DEFAULT '0',
  `tattend2` double NOT NULL DEFAULT '0',
  `tattend3` double NOT NULL DEFAULT '0',
  `source` varchar(4) NOT NULL,
  `expectations` text NOT NULL,
  `registrar` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eventregistration`
--

INSERT INTO `eventregistration` (`id`, `fname`, `lname`, `email`, `phone`, `location`, `dob`, `attend1`, `attend2`, `attend3`, `tattend1`, `tattend2`, `tattend3`, `source`, `expectations`, `registrar`) VALUES
(1, 'a', 'b', 'a@g.com', '0263192377', 'a', '2019-07-11', 'no', 'yes', 'yes', 0, 0, 0, 'cat1', '', 'Rudimentary'),
(2, 'My', 'Name', 'is@not.necessary', '02774839203', 'But', '2019-07-29', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Great expectations, for the power of God to be revealed.', 'Rudimentary'),
(3, 'Frank', 'Olsen', 'frolansekn@mail.com', '0303193299', 'Accra', '2019-07-09', 'no', 'no', 'no', 0, 0, 0, 'cat2', 'Great ones', 'Rudimentary'),
(4, 'Lara', 'Vel', 'vellara@mailto.io', '124', 'Tema', '2019-07-09', 'no', 'no', 'no', 0, 0, 0, 'cat2', 'HOpe', 'Rudimentary'),
(6, 'Load', 'Balance', 'load@gmail.com', '02774839203', 'Tarkwa', '', 'yes', 'N/A', 'no', 0, 0, 0, 'cat0', '', 'Rudimentary'),
(7, 'Note', 'Note', 'note2@email.com', '', 'Soma', '', 'no', 'N/A', 'no', 0, 0, 0, 'cat0', '', 'Rudimentary'),
(11, 'nopa', 'nopa', 'note2@email.com', '', 'jaljlfkjd', '', 'no', 'N/A', 'no', 0, 0, 0, 'cat0', '', 'Rudimentary'),
(12, 'Tribe', 'Freedom', 'tfree@gmail.com', '', 'Tarkwa', '', 'yes', 'sat', 'no', 0, 0, 0, 'cat1', '', 'Mingleemma'),
(13, 'Top', 'Fillier', 'tfillier@yahoo.co.uk', '', 'Tema', '', 'no', 'no', 'yes', 0, 0, 0, 'cat0', '', 'Mingleemma'),
(14, 'Made', 'In', 'tarkwa@256.time', '', 'Accra', '', 'no', 'yes', 'no', 0, 0, 0, 'cat2', '', 'Mingleemma'),
(15, 'Lead', 'Waverq', 'lead@gmail.com', '', 'Tema', '', 'yes', 'yes', 'no', 1563732086, 1563731966, 0, 'cat0', '', 'Mingleemma');

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
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
