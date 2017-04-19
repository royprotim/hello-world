-- phpMyAdmin SQL Dump
-- version 4.6.4deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 19, 2017 at 10:26 PM
-- Server version: 5.7.17-0ubuntu0.16.10.1
-- PHP Version: 7.1.2-4+deb.sury.org~yakkety+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iiitg_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `event_problem`
--

CREATE TABLE `event_problem` (
  `event_code` varchar(30) NOT NULL,
  `Code_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_problem`
--

INSERT INTO `event_problem` (`event_code`, `Code_id`) VALUES
('EVNT001', 'PBLM001'),
('EVNT001', 'PBLM002'),
('EVNT001', 'PBLM003'),
('EVNT001', 'PBLM005'),
('EVNT002', 'PBLM001'),
('EVNT002', 'PBLM004'),
('EVNT002', 'PBLM009'),
('EVNT002', 'PBLM007'),
('EVNT001', 'PBLM004');

-- --------------------------------------------------------

--
-- Table structure for table `EVNT001`
--

CREATE TABLE `EVNT001` (
  `user_id` varchar(25) NOT NULL,
  `problem_id` varchar(25) NOT NULL,
  `id` int(10) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `result` varchar(255) NOT NULL,
  `time` time NOT NULL,
  `runtime` varchar(255) NOT NULL,
  `memory` varchar(255) NOT NULL,
  `lang` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EVNT001`
--

INSERT INTO `EVNT001` (`user_id`, `problem_id`, `id`, `date`, `result`, `time`, `runtime`, `memory`, `lang`, `address`) VALUES
('1401004', 'PBLM001', 1, '2017-04-14', 'Correct', '10:34:22', '0.15', '8,192 bytes\n', 'c', 'EVNT001/SOL1.txt'),
('1401004', 'PBLM002', 2, '2017-04-14', 'CompilationError', '10:35:32', '0', '0', 'c', 'EVNT001/SOL2.txt'),
('1401004', 'PBLM002', 3, '2017-04-14', 'Incorrect', '10:35:50', '0.02', '81,056 bytes\n', 'cpp', 'EVNT001/SOL3.txt'),
('1401004', 'PBLM002', 4, '2017-04-14', 'CompilationError', '10:37:36', '0', '0', 'py', 'EVNT001/SOL4.txt'),
('1401004', 'PBLM002', 5, '2017-04-14', 'Correct', '10:39:14', '0.03', '3,112,579 bytes\n', 'py', 'EVNT001/SOL5.txt'),
('1401004', 'PBLM003', 6, '2017-04-14', 'Correct', '10:40:50', '0.02', '82,447 bytes\n', 'cpp', 'EVNT001/SOL6.txt'),
('1401001', 'PBLM001', 7, '2017-04-14', 'Correct', '10:48:48', '0.00', '8,192 bytes\n', 'C', 'EVNT001/SOL7.txt'),
('1401001', 'PBLM002', 8, '2017-04-14', 'Correct', '10:49:34', '0.03', '3,112,579 bytes\n', 'Python', 'EVNT001/SOL8.txt'),
('1401002', 'PBLM003', 9, '2017-04-14', 'Correct', '10:50:29', '0.00', '82,447 bytes\n', 'C++', 'EVNT001/SOL9.txt'),
('1401004', 'PBLM001', 10, '2017-04-19', 'Correct', '02:32:46', '0.01', '8,192 bytes\n', 'C', 'EVNT001/SOL10.txt'),
('1401004', 'PBLM001', 11, '2017-04-19', 'Correct', '03:01:05', '0.00', '8,192 bytes\n', 'C', 'EVNT001/SOL11.txt'),
('1401004', 'PBLM001', 12, '2017-04-19', 'Correct', '07:23:08', '0.00', '8,192 bytes\n', 'C', 'EVNT001/SOL12.txt');

-- --------------------------------------------------------

--
-- Table structure for table `EVNT001_Ranking`
--

CREATE TABLE `EVNT001_Ranking` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `PBLM004` varchar(20) DEFAULT NULL,
  `PBLM005` varchar(20) DEFAULT NULL,
  `PBLM003` varchar(20) DEFAULT NULL,
  `PBLM002` varchar(20) DEFAULT NULL,
  `PBLM001` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EVNT001_Ranking`
--

INSERT INTO `EVNT001_Ranking` (`user_id`, `PBLM004`, `PBLM005`, `PBLM003`, `PBLM002`, `PBLM001`) VALUES
(1401004, NULL, NULL, '20', '20', '80'),
(1401001, NULL, NULL, NULL, '20', '80'),
(1401002, NULL, NULL, '20', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `EVNT001_Submission`
--

CREATE TABLE `EVNT001_Submission` (
  `submission_id` int(10) UNSIGNED NOT NULL,
  `run_time` varchar(255) NOT NULL,
  `mem_usage` varchar(255) NOT NULL,
  `result` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EVNT001_Submission`
--

INSERT INTO `EVNT001_Submission` (`submission_id`, `run_time`, `mem_usage`, `result`) VALUES
(1, '0.01', '8,192 bytes\n', 'Correct'),
(1, '0.00', '8,192 bytes\n', 'Correct'),
(1, '0.00', '8,192 bytes\n', 'Correct'),
(1, '0.15', '8,192 bytes\n', 'Correct'),
(2, '0', '0', 'CompilationError'),
(3, '0.02', '81,056 bytes\n', 'Incorrect'),
(4, '0', '0', 'CompilationError'),
(5, '0.03', '3,112,579 bytes\n', 'Correct'),
(6, '0.02', '82,447 bytes\n', 'Correct'),
(7, '0.00', '8,192 bytes\n', 'Correct'),
(7, '0.00', '8,192 bytes\n', 'Correct'),
(7, '0.00', '8,192 bytes\n', 'Correct'),
(7, '0.00', '8,192 bytes\n', 'Correct'),
(8, '0.03', '3,112,579 bytes\n', 'Correct'),
(9, '0.00', '82,447 bytes\n', 'Correct'),
(10, '0.01', '8,192 bytes\n', 'Correct'),
(10, '0.02', '8,192 bytes\n', 'Correct'),
(10, '0.00', '8,192 bytes\n', 'Correct'),
(10, '0.01', '8,192 bytes\n', 'Correct'),
(11, '0.00', '8,192 bytes\n', 'Correct'),
(11, '0.00', '8,192 bytes\n', 'Correct'),
(11, '0.00', '8,192 bytes\n', 'Correct'),
(11, '0.00', '8,192 bytes\n', 'Correct'),
(12, '0.00', '8,192 bytes\n', 'Correct'),
(12, '0.00', '8,192 bytes\n', 'Correct'),
(12, '0.00', '8,192 bytes\n', 'Correct'),
(12, '0.00', '8,192 bytes\n', 'Correct');

-- --------------------------------------------------------

--
-- Table structure for table `EVNT002`
--

CREATE TABLE `EVNT002` (
  `user_id` varchar(25) NOT NULL,
  `problem_id` varchar(25) NOT NULL,
  `id` int(10) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `result` varchar(255) NOT NULL,
  `time` time NOT NULL,
  `runtime` varchar(255) NOT NULL,
  `memory` varchar(255) NOT NULL,
  `lang` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EVNT002`
--

INSERT INTO `EVNT002` (`user_id`, `problem_id`, `id`, `date`, `result`, `time`, `runtime`, `memory`, `lang`, `address`) VALUES
('1401004', 'PBLM001', 1, '2017-04-14', 'Correct', '10:47:46', '0.00', '8,192 bytes\n', 'C', 'EVNT002/SOL1.txt');

-- --------------------------------------------------------

--
-- Table structure for table `EVNT002_Ranking`
--

CREATE TABLE `EVNT002_Ranking` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `PBLM007` varchar(20) DEFAULT NULL,
  `PBLM009` varchar(20) DEFAULT NULL,
  `PBLM004` varchar(20) DEFAULT NULL,
  `PBLM001` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EVNT002_Ranking`
--

INSERT INTO `EVNT002_Ranking` (`user_id`, `PBLM007`, `PBLM009`, `PBLM004`, `PBLM001`) VALUES
(1401004, NULL, NULL, NULL, '80');

-- --------------------------------------------------------

--
-- Table structure for table `EVNT002_Submission`
--

CREATE TABLE `EVNT002_Submission` (
  `submission_id` int(10) UNSIGNED NOT NULL,
  `run_time` varchar(255) NOT NULL,
  `mem_usage` varchar(255) NOT NULL,
  `result` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EVNT002_Submission`
--

INSERT INTO `EVNT002_Submission` (`submission_id`, `run_time`, `mem_usage`, `result`) VALUES
(1, '0.00', '8,192 bytes\n', 'Correct'),
(1, '0.00', '8,192 bytes\n', 'Correct'),
(1, '0.00', '8,192 bytes\n', 'Correct'),
(1, '0.00', '8,192 bytes\n', 'Correct');

-- --------------------------------------------------------

--
-- Table structure for table `practice_event`
--

CREATE TABLE `practice_event` (
  `event_code` varchar(30) NOT NULL,
  `event_name` varchar(30) NOT NULL,
  `start_date` varchar(30) NOT NULL,
  `end_date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `practice_event`
--

INSERT INTO `practice_event` (`event_code`, `event_name`, `start_date`, `end_date`) VALUES
('EVNT001', 'ASSIGNMENT101', '19 April 2017 - 09:00 am', '20 May 2017 - 09:00 am'),
('EVNT002', 'ASSIGNMENT102', '14 April 2017 - 09:00 am', '04 May 2017 - 09:00 am');

-- --------------------------------------------------------

--
-- Table structure for table `practice_problem`
--

CREATE TABLE `practice_problem` (
  `problem_id` varchar(11) NOT NULL,
  `problem_name` varchar(30) NOT NULL,
  `problem_setter` varchar(30) NOT NULL,
  `running_time` float NOT NULL,
  `memory_usage` int(11) NOT NULL,
  `problem_def` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `practice_problem`
--

INSERT INTO `practice_problem` (`problem_id`, `problem_name`, `problem_setter`, `running_time`, `memory_usage`, `problem_def`) VALUES
('PBLM001', 'terrible_chandu', 'John', 1, 256, 'practice_problems/PBLM001.txt'),
('PBLM002', 'Small Factorials', 'Abhishek', 1, 256, 'practice_problems/PBLM002.txt'),
('PBLM003', 'Complete_String', 'paul', 2, 256, 'practice_problems/PBLM003.txt'),
('PBLM004', 'Consecutive Letters', 'abhishek', 2, 256, 'practice_problems/PBLM004.txt'),
('PBLM005', 'factorial', 'Albert', 1, 256, 'practice_problems/PBLM005.txt'),
('PBLM006', 'Palindrome', 'Albert', 1, 256, 'practice_problems/PBLM006.txt'),
('PBLM007', 'Dimension', 'Abhishek', 2, 256, 'practice_problems/PBLM007.txt'),
('PBLM008', 'finding Median', 'Abhishek', 1, 256, 'practice_problems/PBLM008.txt'),
('PBLM009', 'Lapindrome', 'Albert', 1, 256, 'practice_problems/PBLM009.txt'),
('PBLM010', 'abhdsif', 'e', 1, 234, 'practice_problems/PBLM010.txt'),
('PBLM011', 'String king', 'Pratim', 1, 256, 'practice_problems/PBLM011.txt');

-- --------------------------------------------------------

--
-- Table structure for table `practice_solution`
--

CREATE TABLE `practice_solution` (
  `user_id` varchar(25) NOT NULL,
  `problem_id` varchar(25) NOT NULL,
  `id` int(20) NOT NULL,
  `date` date DEFAULT NULL,
  `result` varchar(25) NOT NULL,
  `time` time NOT NULL,
  `runtime` varchar(5) NOT NULL,
  `memory` varchar(20) NOT NULL,
  `lang` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `practice_solution`
--

INSERT INTO `practice_solution` (`user_id`, `problem_id`, `id`, `date`, `result`, `time`, `runtime`, `memory`, `lang`, `address`) VALUES
('1401004', 'PBLM001', 1, '2017-04-19', 'Correct', '07:19:21', '0.00', '8,192 bytes\n', 'C', 'practice_solution/SOL1.txt'),
('1401004', 'PBLM003', 2, '2017-04-19', 'Correct', '07:20:08', '0.00', '82,447 bytes\n', 'C++', 'practice_solution/SOL2.txt');

-- --------------------------------------------------------

--
-- Table structure for table `practice_submission`
--

CREATE TABLE `practice_submission` (
  `submission_id` int(11) NOT NULL,
  `run_time` varchar(5) NOT NULL,
  `mem_usage` varchar(20) NOT NULL,
  `result` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `practice_submission`
--

INSERT INTO `practice_submission` (`submission_id`, `run_time`, `mem_usage`, `result`) VALUES
(1, '0.00', '8,192 bytes\n', 'Correct'),
(1, '0.00', '8,192 bytes\n', 'Correct'),
(1, '0.00', '8,192 bytes\n', 'Correct'),
(1, '0.00', '8,192 bytes\n', 'Correct'),
(2, '0.00', '82,447 bytes\n', 'Correct');

-- --------------------------------------------------------

--
-- Table structure for table `test_cases`
--

CREATE TABLE `test_cases` (
  `problem_id` varchar(20) NOT NULL,
  `problem_input` varchar(50) NOT NULL,
  `problem_output` varchar(50) NOT NULL,
  `marks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_cases`
--

INSERT INTO `test_cases` (`problem_id`, `problem_input`, `problem_output`, `marks`) VALUES
('PBLM001', 'practice_in_cases/1.txt', 'practice_out_cases/1.txt', 20),
('PBLM002', 'practice_in_cases/2.txt', 'practice_out_cases/2.txt', 20),
('PBLM003', 'practice_in_cases/3.txt', 'practice_out_cases/3.txt', 20),
('PBLM004', 'practice_in_cases/4.txt', 'practice_out_cases/4.txt', 20),
('PBLM005', 'practice_in_cases/5.txt', 'practice_out_cases/5.txt', 20),
('PBLM006', 'practice_in_cases/6.txt', 'practice_out_cases/6.txt', 20),
('PBLM007', 'practice_in_cases/7.txt', 'practice_out_cases/7.txt', 20),
('PBLM008', 'practice_in_cases/8.txt', 'practice_out_cases/8.txt', 20),
('PBLM009', 'practice_in_cases/9.txt', 'practice_out_cases/9.txt', 20),
('PBLM001', 'practice_in_cases/10.txt', 'practice_out_cases/10.txt', 20),
('PBLM001', 'practice_in_cases/11.txt', 'practice_out_cases/11.txt', 20),
('PBLM010', 'practice_in_cases/12.txt', 'practice_out_cases/12.txt', 20),
('PBLM010', 'practice_in_cases/13.txt', 'practice_out_cases/13.txt', 20),
('PBLM010', 'practice_in_cases/14.txt', 'practice_out_cases/14.txt', 20),
('PBLM001', 'practice_in_cases/15.txt', 'practice_out_cases/15.txt', 20);

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`username`, `password`, `type`) VALUES
('1401001', '1231', 1),
('1401002', '1232', 1),
('1401003', 'abc', 1),
('1401004', '1234', 1),
('1401005', 'abc', 1),
('1401006', 'abc', 1),
('admin', 'admin', 2),
('pratim', 'admin', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event_problem`
--
ALTER TABLE `event_problem`
  ADD KEY `event_code` (`event_code`);

--
-- Indexes for table `practice_event`
--
ALTER TABLE `practice_event`
  ADD PRIMARY KEY (`event_code`);

--
-- Indexes for table `practice_problem`
--
ALTER TABLE `practice_problem`
  ADD PRIMARY KEY (`problem_id`);

--
-- Indexes for table `test_cases`
--
ALTER TABLE `test_cases`
  ADD KEY `problem_id` (`problem_id`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD UNIQUE KEY `username` (`username`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
