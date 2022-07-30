-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2022 at 09:48 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `log`
--

-- --------------------------------------------------------

--
-- Table structure for table `balance`
--

CREATE TABLE `balance` (
  `id` int(200) NOT NULL,
  `initiolbalance` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `balance`
--

INSERT INTO `balance` (`id`, `initiolbalance`) VALUES
(0, '1000');

-- --------------------------------------------------------

--
-- Table structure for table `logini`
--

CREATE TABLE `logini` (
  `Username` varchar(250) NOT NULL,
  `Password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logini`
--

INSERT INTO `logini` (`Username`, `Password`) VALUES
('\0', '\0'),
('\0', '\0'),
('\0', '\0'),
('\0', '\0');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(40) NOT NULL,
  `phonenumber` varchar(15) NOT NULL,
  `age` int(20) NOT NULL,
  `language` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `phonenumber`, `age`, `language`) VALUES
(7, 'Muhawenimana ', 'Marie Delphine', 'Adelphine', 'muhawedeliphine@gmail.com', 'Adelphine@123', '7654322778', 0, 'English'),
(8, 'Muhawenimana ', 'Marie Delphine', 'Adelphine', 'mutanguhav@gmail.com', '12345', '7654322778', 0, 'English'),
(9, 'adede', 'muhoza', 'Adelphine', 'mutanguhav@gmail.com', '1234', '7654322778', 0, 'English'),
(10, 'mami', 'Marie Delphine', 'Adelphine', 'muhawedeliphine@gmail.com', 'mami', '7654322778', 26, 'English'),
(11, 'Muhawenimana ', 'Marie Delphine', 'Claire', 'mutanguhav@gmail.com', 'Claire@123', '0784711439', 0, 'English'),
(12, 'rafiki', 'vuganeza', 'rafiki', 'rafiki@gmail.com', '123', '0785', 0, 'French'),
(13, '', '', '', '', '', '', 0, ''),
(14, 'rafiki', 'vuganeza', 'rafiki', 'rafiki@gmail.com', '12345', '0785', 0, 'English'),
(15, 'aline', 'vuganeza', 'aline', 'rafiki@gmail.com', 'Aline@123', '0785', 26, 'English'),
(16, 'enjo', 'vuganeza', 'aline', 'rafiki@gmail.com', 'Enjo@123', '0785', 0, 'English'),
(17, '', '', '', '', '', '', 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `balance`
--
ALTER TABLE `balance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
