-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 17, 2018 at 11:07 PM
-- Server version: 5.6.34-log
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `todowithdan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tododata`
--

CREATE TABLE `tododata` (
  `ID` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(70) NOT NULL,
  `description` varchar(500) NOT NULL,
  `due` varchar(30) NOT NULL,
  `status` enum('active','inactive','completed','deleted') NOT NULL,
  `owner` int(10) UNSIGNED NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tododata`
--

INSERT INTO `tododata` (`ID`, `title`, `description`, `due`, `status`, `owner`, `created`, `updated`) VALUES
(1, 'Review Emails', 'review feedback on my emails', '3/18', 'active', 1, '2018-03-17 15:51:02', '2018-03-17 22:51:02'),
(2, 'do react prototypes', 'do my two react component: functional components, and class components(stopwatch)also do bonus challenge', '3/19', 'active', 1, '2018-03-17 15:51:02', '2018-03-17 22:51:02'),
(3, 'finish todoList', 'integrate php and server database with front end so I can finish this project', '3/17', 'active', 1, '2018-03-17 15:55:27', '2018-03-17 22:55:27');

-- --------------------------------------------------------

--
-- Table structure for table `todousers`
--

CREATE TABLE `todousers` (
  `ID` int(10) UNSIGNED NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `status` enum('active','inactive','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `todousers`
--

INSERT INTO `todousers` (`ID`, `username`, `password`, `created`, `updated`, `status`) VALUES
(1, 'Brian', '8c2dfa8f32fb0ee305ae7c0ee34cee', 0, 0, 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tododata`
--
ALTER TABLE `tododata`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `todousers`
--
ALTER TABLE `todousers`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tododata`
--
ALTER TABLE `tododata`
  MODIFY `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `todousers`
--
ALTER TABLE `todousers`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
