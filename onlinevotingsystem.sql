-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2020 at 11:15 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinevotingsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_master`
--

CREATE TABLE `tbl_admin_master` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `cby` varchar(50) DEFAULT NULL,
  `con` datetime DEFAULT CURRENT_TIMESTAMP,
  `uby` varchar(50) DEFAULT NULL,
  `uon` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(10) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin_master`
--

INSERT INTO `tbl_admin_master` (`id`, `name`, `password`, `mobile`, `email`, `cby`, `con`, `uby`, `uon`, `status`) VALUES
(1, 'suraj kumar', '202cb962ac59075b964b07152d234b70', '7004417126', 'test@gmail.com', 'self', '2020-01-31 01:12:33', '1', '2020-10-25 17:18:42', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_candidates_master`
--

CREATE TABLE `tbl_candidates_master` (
  `candidate_id` int(5) NOT NULL,
  `candidate_name` varchar(45) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `con` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_candidates_master`
--

INSERT INTO `tbl_candidates_master` (`candidate_id`, `candidate_name`, `username`, `password`, `con`) VALUES
(24, 'karan', 'test@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-10-25 17:32:53'),
(25, 'candidate1', 'user', '202cb962ac59075b964b07152d234b70', '2020-10-27 14:43:14');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_election_master`
--

CREATE TABLE `tbl_election_master` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `election_for_position` varchar(100) NOT NULL,
  `con` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_election_master`
--

INSERT INTO `tbl_election_master` (`id`, `name`, `description`, `election_for_position`, `con`, `status`) VALUES
(1, 'demo', 'demo elecions', 'VICE PRESIDENT', '2020-10-25 18:04:34', '1'),
(2, 'election 2', 'description of election 2', 'CR', '2020-10-26 18:28:07', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_result_master`
--

CREATE TABLE `tbl_result_master` (
  `id` int(11) NOT NULL,
  `election_id` int(11) NOT NULL,
  `winner` int(11) NOT NULL,
  `winnername` varchar(100) NOT NULL,
  `con` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_result_master`
--

INSERT INTO `tbl_result_master` (`id`, `election_id`, `winner`, `winnername`, `con`) VALUES
(1, 1, 24, 'karan', '2020-10-27 14:52:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_students_master`
--

CREATE TABLE `tbl_students_master` (
  `member_id` int(5) NOT NULL,
  `sname` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `con` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uon` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_students_master`
--

INSERT INTO `tbl_students_master` (`member_id`, `sname`, `username`, `password`, `con`, `uon`) VALUES
(3, 'test', 'test@example.com', '202cb962ac59075b964b07152d234b70', '2020-10-25 15:06:53', '2020-10-26 18:29:42'),
(5, 'Ajay', 'ajaychaubey95@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-10-25 15:06:53', '0000-00-00 00:00:00'),
(6, 'anil', 'anil@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2020-10-25 15:06:53', '2020-10-26 19:52:23'),
(7, 'demo', 'user', '202cb962ac59075b964b07152d234b70', '2020-10-25 17:03:36', '0000-00-00 00:00:00'),
(8, 'student name', 'usernameofstudent', '202cb962ac59075b964b07152d234b70', '2020-10-27 14:42:04', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_votes_master`
--

CREATE TABLE `tbl_votes_master` (
  `id` int(11) NOT NULL,
  `voter_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `election_id` int(11) NOT NULL,
  `con` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_votes_master`
--

INSERT INTO `tbl_votes_master` (`id`, `voter_id`, `candidate_id`, `election_id`, `con`) VALUES
(7, 3, 24, 2, '2020-10-27 13:14:44'),
(8, 3, 24, 2, '2020-10-27 13:15:07'),
(9, 3, 24, 1, '2020-10-27 13:15:18'),
(10, 8, 24, 2, '2020-10-27 14:44:31'),
(11, 8, 24, 1, '2020-10-27 14:55:24'),
(12, 8, 24, 1, '2020-10-27 14:55:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin_master`
--
ALTER TABLE `tbl_admin_master`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- Indexes for table `tbl_candidates_master`
--
ALTER TABLE `tbl_candidates_master`
  ADD PRIMARY KEY (`candidate_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `tbl_election_master`
--
ALTER TABLE `tbl_election_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_result_master`
--
ALTER TABLE `tbl_result_master`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `election_id` (`election_id`);

--
-- Indexes for table `tbl_students_master`
--
ALTER TABLE `tbl_students_master`
  ADD PRIMARY KEY (`member_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `tbl_votes_master`
--
ALTER TABLE `tbl_votes_master`
  ADD PRIMARY KEY (`id`),
  ADD KEY `voter_id` (`voter_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin_master`
--
ALTER TABLE `tbl_admin_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_candidates_master`
--
ALTER TABLE `tbl_candidates_master`
  MODIFY `candidate_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_election_master`
--
ALTER TABLE `tbl_election_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_result_master`
--
ALTER TABLE `tbl_result_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_students_master`
--
ALTER TABLE `tbl_students_master`
  MODIFY `member_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_votes_master`
--
ALTER TABLE `tbl_votes_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_votes_master`
--
ALTER TABLE `tbl_votes_master`
  ADD CONSTRAINT `tbl_votes_master_ibfk_1` FOREIGN KEY (`voter_id`) REFERENCES `tbl_students_master` (`member_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
