-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2018 at 08:39 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webix`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `description`) VALUES
(1, 'Engineering', 'The branch of science and technology concerned with the design, building, and use of engines, machines, and structures.'),
(2, 'Architecture', 'In computer engineering, computer architecture is a set of rules and methods that describe the functionality, organization, and implementation of computer systems. Some definitions of architecture define it as describing the capabilities and programming model of a computer but not a particular implementation. In other definitions computer architecture involves instruction set architecture design, microarchitecture design, logic design, and implementation.<br>The purpose of computer architecture is to design a computer that maximizes performance while keeping power consumption in check, costs low relative to the amount of expected performance, and is also very reliable. For this, many aspects are to be considered which includes Instruction Set Design, Functional Organization, Logic Design, and Implementation.'),
(3, 'Finance', 'The management of large amounts of money, especially by governments or large companies.'),
(4, 'Sports', 'Sports includes all forms of competitive physical activity or games which, through casual or organised participation, aim to use, maintain or improve physical ability and skills while providing enjoyment to participants, and in some cases, entertainment for spectators.'),
(5, 'Others', 'Any other category...');

-- --------------------------------------------------------

--
-- Table structure for table `quacat`
--

CREATE TABLE `quacat` (
  `id` int(11) UNSIGNED NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quacat`
--

INSERT INTO `quacat` (`id`, `category`) VALUES
(3, 'Architecture'),
(1, 'Engineering'),
(2, 'Engineering'),
(6, 'Finance'),
(7, 'Finance'),
(40, 'Finance'),
(8, 'Others'),
(4, 'Sports'),
(5, 'Sports');

-- --------------------------------------------------------

--
-- Table structure for table `quans`
--

CREATE TABLE `quans` (
  `id` int(11) UNSIGNED NOT NULL,
  `question` mediumtext NOT NULL,
  `answer` longtext,
  `askedby` varchar(255) NOT NULL,
  `answeredby` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quans`
--

INSERT INTO `quans` (`id`, `question`, `answer`, `askedby`, `answeredby`) VALUES
(1, 'What is computer software?', 'Computer software is a complete package, which includes software program, its documentation and user guide on how to use the software.\r\n', 'parth2844', 'admin'),
(2, 'What is SRS?\r\n', 'SRS or Software Requirement Specification is a document produced at the time of requirement gathering process. It can be also seen as a process of refining requirements and documenting them.\r\n', 'yash', 'admin'),
(3, 'Is a computer architecture class useful for a computer science major who wishes to work as a software engineer?', 'If you ever have to write performance-critical code, having some hardware knowledge is essential - how multi-level caching works, how branch predictors work, how pipelining works and how branches can potentially give you a big performance hit, how filling up a TLB cache can cause all memory operations to slow down, how doing a SIMD operation across cacheline boundaries can be very slow, how cache coherence protocols can slow down your multi-threaded code if you use certain memory access patterns, etc.\r\n<br>or<br>idk\r\n', 'parth2844', 'admin, @ '),
(4, 'What is the world''s greatest sport?\r\n', 'The Greatest Sport in the World Is Not What You''re Thinking. For years, American sports have been dominated by the “big four”: football, basketball, hockey and — of course — baseball. Soccer dominates just about every other corner of the earth.', 'mokshu', 'admin'),
(5, 'What is the best sport to lose weight?\r\n', 'Competitive team sports are another effective way to lose excess pounds. Fast-paced sports with high and constant activity are the most effective fat-burners. Examples include soccer, basketball, football and tennis, all of which burn more than 500 calories per hour for a 130-lb. adult.', 'mokshu', 'admin'),
(6, 'How do you manage money?', 'Beginner''s guide to managing your money. Taking the time to manage your money better can really pay off. It can help you stay on top of your bills and save £1,000s each year. You can use these extra savings to pay off any debts you might have, put them towards your pension, or spend them on your next car or holiday.', 'yash', 'admin'),
(7, 'What are some sources of finances?\r\n', 'Some sources of finance are short term and must be paid back within a year. Other sources of finance are long term and can be paid back over many years. Internal sources of finance are funds found inside the business. For example, profits can be kept back to finance expansion.', 'parth2844', 'admin'),
(8, 'What is the most common search engine?\r\n', 'According to Net Marketshare, Google is the world''s most popular search engine. No shocker there, but you''ve probably never heard of the search engine that''s in second place. It''s called Baidu, and it''s from China.', 'yash', 'mokshu'),
(40, 'what is bitcoin?', 'it is a cryptocurrency\r\n', 'mokshu', 'mokshu');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `join_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `email`, `join_date`) VALUES
(22, 'admin', '$2y$10$FVCwY1BIFSR1nVuQgQTTQOwYKC359.XQmT/DOkBEmUdlCVETihDM2', 'admin', 'admin@gmail.com', '2018-01-28 05:48:17'),
(21, 'mokshu', '$2y$10$aDo55oTuUKmj0nzmacLYeeb8YGsZZGEIBshrNHU/Bhvs.fZmof/ye', 'mokshu', 'mokshu@gmail.com', '2018-01-28 05:47:48'),
(23, 'mz', '$2y$10$tjZwXieWv1V/tJ8QyCZwauj8eWnAlEeYK8tcUcOoJPUmItRzqrdga', 'mokshu', 'mz@gmail.com', '2018-01-28 06:21:38'),
(19, 'parth2844', '$2y$10$Wqu23jOfESgYwkyG/WIZR.XZ4Xc8ZPMePROYGFtla5OsePVGiwN9q', 'parth', 'parth2844@gmail.com', '2018-01-28 05:45:10'),
(20, 'yash', '$2y$10$HYTjIS7WgR6fesEVHEUVEOFKpcCcUFd1MU5mLb19ZavkJVnS1YavW', 'Yash Shah', 'yash@gmail.com', '2018-01-28 05:47:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`,`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `quacat`
--
ALTER TABLE `quacat`
  ADD PRIMARY KEY (`category`,`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `quans`
--
ALTER TABLE `quans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `askedby` (`askedby`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `quans`
--
ALTER TABLE `quans`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `quacat`
--
ALTER TABLE `quacat`
  ADD CONSTRAINT `quacat_ibfk_1` FOREIGN KEY (`id`) REFERENCES `quans` (`id`),
  ADD CONSTRAINT `quacat_ibfk_3` FOREIGN KEY (`category`) REFERENCES `category` (`name`);

--
-- Constraints for table `quans`
--
ALTER TABLE `quans`
  ADD CONSTRAINT `quans_ibfk_1` FOREIGN KEY (`askedby`) REFERENCES `users` (`username`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
