-- This will work till registration and login

-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
-- author - crmbabu.com
-- Host: localhost
-- Generation Time: May 19, 2019 at 05:48 PM
-- Server version: 5.7.25
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `saas`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` int(255) NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `last_activity` varchar(255) NOT NULL,
  `user_data` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
(1, 'ba26364a99cfead959509cd7f76f11d5', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', '1558287818', 'a:5:{s:9:\"user_data\";s:0:\"\";s:5:\"email\";s:17:\"shally@shally.com\";s:8:\"nickname\";s:5:\"shaly\";s:2:\"id\";s:1:\"1\";s:7:\"company\";a:2:{s:4:\"name\";s:2:\"DM\";s:2:\"id\";s:1:\"1\";}}');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `createdAt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `email`, `name`, `createdAt`) VALUES
(1, 'shally@shally.com', 'DM', '1558287490');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `createdAt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `nickname`, `salt`, `createdAt`) VALUES
(1, 'shally@shally.com', 'ba34c595b6c1ffee335223ec2d15c2fe', 'shaly', 'be7651b4845843e0f215dc9fde878c81', '1558287490');

-- --------------------------------------------------------

--
-- Table structure for table `user_project`
--

CREATE TABLE `user_project` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_validate`
--

CREATE TABLE `user_validate` (
  `id` int(100) NOT NULL,
  `user` int(100) NOT NULL,
  `code` varchar(255) NOT NULL,
  `createdAt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_validate`
--

INSERT INTO `user_validate` (`id`, `user`, `code`, `createdAt`) VALUES
(1, 1, '53d357369e2664a6fa4a248321c39344', '1558287490');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `user_project`
--
ALTER TABLE `user_project`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `user_validate`
--
ALTER TABLE `user_validate`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_project`
--
ALTER TABLE `user_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_validate`
--
ALTER TABLE `user_validate`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
