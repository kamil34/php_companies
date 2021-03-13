-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2021 at 08:46 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_companies`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `company_name` varchar(100) DEFAULT NULL COMMENT 'Company name.',
  `id` int(255) NOT NULL COMMENT 'Company ID with auto_increment',
  `acc_id` int(255) DEFAULT NULL COMMENT 'Account ID from `users` table',
  `nip` varchar(10) DEFAULT NULL COMMENT 'Company NIP',
  `comment` varchar(100) NOT NULL DEFAULT 'brak' COMMENT 'additional column for a comment.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`company_name`, `id`, `acc_id`, `nip`, `comment`) VALUES
('Russian Dumpling', 1, 2, '8665745775', 'Comment...'),
('McFood', 2, 3, '8123957819', 'Comment...'),
('Kay F\' Ci', 3, 1, '4721912385', 'Comment...'),
('I Know You', 4, 5, '1231231231', 'Comment...'),
('Eclipse', 5, 4, '3748592193', 'Comment...'),
('NoName Company', 6, 7, '2381239598', 'Comment.'),
('Ghost', 7, 6, '3782819058', 'Comment.'),
('The City', 8, 8, '9285091840', 'Comment...'),
('Black Midnight', 9, 9, '5674566345', 'Comment...');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL COMMENT 'user ID with auto_increment',
  `name` varchar(30) DEFAULT NULL COMMENT 'Username'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`) VALUES
(1, 'David'),
(2, 'Adam'),
(3, 'Gabe'),
(4, 'Greg'),
(5, 'Joe'),
(6, 'Leo'),
(7, 'Mark'),
(8, 'Paul'),
(9, 'Charlie');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT COMMENT 'Company ID with auto_increment', AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT COMMENT 'user ID with auto_increment', AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
