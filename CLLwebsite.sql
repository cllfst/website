-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 02, 2018 at 11:36 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.0.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `CLLwebsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `Message`
--

CREATE TABLE `Message` (
  `id` int(255) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Subject` varchar(100) NOT NULL,
  `Message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Message`
--

INSERT INTO `Message` (`id`, `Name`, `Email`, `Subject`, `Message`) VALUES
(20, 'bilel', 'bilelmek@gmail.com', 'bonjour', 'First '),
(21, 'bilel', 'bilelmek@gmail.com', 'bonjour', 'First '),
(22, 'bilel', 'bilelmek@gmail.com', 'bonjour', 'First '),
(23, 'bilel', 'bilelmek@gmail.com', 'bonjour', 'First '),
(24, 'bilel', 'bilelmek@gmail.com', 'bonjour', 'First '),
(25, 'bilel', 'bilelmek@gmail.com', 'bonjour', 'First '),
(26, 'ilfjqfsdf', 'sdfsdfsdf@qsdq', 'qdqsdqs', 'dqsdqsfqfrg'),
(27, 'ilfjqfsdf', 'sdfsdfsdf@qsdq', 'qdqsdqs', 'dqsdqsfqfrg'),
(28, 'ilfjqfsdf', 'sdfsdfsdf@qsdq', 'qdqsdqs', 'dqsdqsfqfrg'),
(29, 'dqd', 'qdqs@qsdq', 'sdqs', 'qsdqs'),
(30, 'dqd', 'qdqs@qsdq', 'sdqs', 'qsdqs'),
(31, 'dqd', 'qdqs@qsdq', 'sdqs', 'qsdqs'),
(32, 'dqd', 'qdqs@qsdq', 'sdqs', 'qsdqs'),
(33, 'dqd', 'qdqs@qsdq', 'sdqs', 'qsdqs'),
(34, 'dqd', 'qdqs@qsdq', 'sdqs', 'qsdqs');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Message`
--
ALTER TABLE `Message`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Message`
--
ALTER TABLE `Message`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
