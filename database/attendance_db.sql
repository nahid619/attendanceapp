-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2024 at 04:13 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance_details`
--

CREATE TABLE `attendance_details` (
  `faculty_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `on_date` date NOT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance_details`
--

INSERT INTO `attendance_details` (`faculty_id`, `course_id`, `session_id`, `student_id`, `on_date`, `status`) VALUES
(1, 2, 2, 1, '2024-09-29', 'YES'),
(1, 2, 2, 3, '2024-09-29', 'YES'),
(1, 2, 2, 4, '2024-09-29', 'YES'),
(1, 2, 2, 7, '2024-09-29', 'YES'),
(1, 2, 2, 9, '2024-09-29', 'YES'),
(1, 2, 2, 11, '2024-09-29', 'YES'),
(1, 2, 2, 13, '2024-09-29', 'YES'),
(1, 2, 2, 17, '2024-09-29', 'YES'),
(1, 2, 2, 20, '2024-09-29', 'YES'),
(1, 3, 2, 1, '2024-09-29', 'YES'),
(1, 3, 2, 2, '2024-09-29', 'YES'),
(1, 3, 2, 5, '2024-09-29', 'YES'),
(1, 3, 2, 6, '2024-09-29', 'YES'),
(1, 3, 2, 8, '2024-09-29', 'YES'),
(1, 3, 2, 9, '2024-09-29', 'YES'),
(1, 3, 2, 12, '2024-09-29', 'YES'),
(1, 3, 2, 18, '2024-09-29', 'YES'),
(1, 3, 2, 19, '2024-09-29', 'YES'),
(1, 3, 2, 21, '2024-09-29', 'YES'),
(1, 3, 2, 23, '2024-09-29', 'YES'),
(1, 5, 1, 1, '2024-09-29', 'YES'),
(1, 6, 1, 3, '2024-09-29', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `course_allotment`
--

CREATE TABLE `course_allotment` (
  `faculty_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_allotment`
--

INSERT INTO `course_allotment` (`faculty_id`, `course_id`, `session_id`) VALUES
(1, 2, 2),
(1, 3, 2),
(1, 5, 1),
(1, 6, 1),
(2, 3, 2),
(2, 4, 2),
(2, 5, 1),
(2, 6, 1),
(3, 1, 1),
(3, 2, 2),
(3, 4, 2),
(4, 1, 2),
(4, 3, 1),
(4, 4, 1),
(5, 2, 1),
(5, 3, 1),
(5, 3, 2),
(5, 4, 2),
(6, 1, 2),
(6, 5, 1),
(6, 5, 2),
(6, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `course_details`
--

CREATE TABLE `course_details` (
  `id` int(11) NOT NULL,
  `code` varchar(20) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_details`
--

INSERT INTO `course_details` (`id`, `code`, `title`, `credit`) VALUES
(1, 'CSE 314', 'Database management system lab', 2),
(2, 'CSE 323', 'Computer Architecture', 3),
(3, 'CSE 331', 'Operating System and System Programming', 3),
(4, 'CSE 413', 'ARTIFICIAL INTELLIGENCE', 3),
(5, 'CSE 321', 'Theory of Computation and Compiler Design', 3),
(6, 'CSE 233', 'Computer Network ', 3);

-- --------------------------------------------------------

--
-- Table structure for table `course_registration`
--

CREATE TABLE `course_registration` (
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_registration`
--

INSERT INTO `course_registration` (`student_id`, `course_id`, `session_id`) VALUES
(1, 1, 1),
(1, 2, 1),
(1, 2, 2),
(1, 3, 2),
(1, 4, 2),
(1, 5, 1),
(2, 1, 1),
(2, 2, 1),
(2, 3, 1),
(2, 3, 2),
(2, 4, 2),
(2, 6, 2),
(3, 1, 2),
(3, 2, 1),
(3, 2, 2),
(3, 6, 1),
(4, 1, 1),
(4, 2, 2),
(4, 3, 1),
(4, 5, 1),
(4, 5, 2),
(5, 1, 1),
(5, 3, 2),
(5, 5, 1),
(5, 5, 2),
(6, 1, 1),
(6, 3, 2),
(6, 4, 1),
(6, 4, 2),
(6, 5, 1),
(6, 5, 2),
(7, 2, 1),
(7, 2, 2),
(7, 5, 1),
(7, 6, 2),
(8, 1, 2),
(8, 2, 1),
(8, 3, 1),
(8, 3, 2),
(8, 6, 1),
(8, 6, 2),
(9, 1, 1),
(9, 2, 2),
(9, 3, 2),
(9, 4, 2),
(9, 5, 1),
(9, 6, 1),
(10, 1, 2),
(10, 3, 1),
(10, 4, 1),
(10, 4, 2),
(10, 5, 2),
(11, 1, 2),
(11, 2, 1),
(11, 2, 2),
(11, 4, 2),
(11, 5, 1),
(12, 1, 2),
(12, 2, 1),
(12, 3, 2),
(12, 4, 1),
(13, 2, 1),
(13, 2, 2),
(13, 3, 1),
(13, 4, 2),
(13, 6, 1),
(14, 1, 2),
(14, 2, 1),
(14, 3, 1),
(14, 5, 2),
(14, 6, 1),
(14, 6, 2),
(15, 1, 1),
(15, 4, 2),
(15, 5, 2),
(15, 6, 1),
(16, 1, 1),
(16, 1, 2),
(16, 2, 1),
(16, 5, 2),
(17, 2, 1),
(17, 2, 2),
(17, 3, 1),
(17, 4, 2),
(17, 5, 2),
(17, 6, 1),
(18, 3, 2),
(18, 4, 1),
(18, 4, 2),
(18, 5, 1),
(18, 6, 1),
(18, 6, 2),
(19, 1, 1),
(19, 1, 2),
(19, 2, 1),
(19, 3, 1),
(19, 3, 2),
(19, 6, 2),
(20, 2, 1),
(20, 2, 2),
(20, 4, 1),
(20, 4, 2),
(21, 1, 2),
(21, 3, 2),
(21, 4, 1),
(21, 4, 2),
(21, 5, 1),
(22, 1, 1),
(22, 2, 1),
(22, 5, 2),
(22, 6, 1),
(23, 2, 1),
(23, 3, 1),
(23, 3, 2),
(23, 4, 1),
(23, 5, 2),
(23, 6, 2),
(24, 1, 1),
(24, 1, 2),
(24, 5, 1),
(24, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `faculty_details`
--

CREATE TABLE `faculty_details` (
  `id` int(11) NOT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty_details`
--

INSERT INTO `faculty_details` (`id`, `user_name`, `name`, `password`) VALUES
(1, 'nahid', 'Nahid Hasan', '123'),
(2, 'hasan', 'Hasan Ahmed', '123'),
(3, 'nasrin', 'Nasrin Khan', '123'),
(4, 'sakib', 'Sakib Khan', '123'),
(5, 'sams', 'Samsu-zaman', '123'),
(6, 'kim', 'KIM', '123');

-- --------------------------------------------------------

--
-- Table structure for table `session_details`
--

CREATE TABLE `session_details` (
  `id` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `term` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `session_details`
--

INSERT INTO `session_details` (`id`, `year`, `term`) VALUES
(2, 2023, 'AUTUMN SEMESTER'),
(1, 2023, 'SPRING SEMESTER');

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE `student_details` (
  `id` int(11) NOT NULL,
  `roll_no` varchar(20) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`id`, `roll_no`, `name`) VALUES
(1, '201311001', 'Abdul Karim'),
(2, '201311002', 'Farzana Rahman'),
(3, '201311003', 'Tanvir Ahmed'),
(4, '201311004', 'Nusrat Jahan'),
(5, '201311005', 'Hasibul Islam'),
(6, '201311006', 'Mahir Hassan'),
(7, '201311007', 'Sadia Hossain'),
(8, '201311008', 'Mehedi Hasan'),
(9, '201311009', 'Nazia Sultana'),
(10, '201311010', 'Rashedul Alam'),
(11, '201311011', 'Shakib Al Hasan'),
(12, '201311012', 'Fahim Rahman'),
(13, '201311013', 'Ayesha Siddiqua'),
(14, '201311014', 'Tariqul Islam'),
(15, '201311015', 'Tasnim Mahmud'),
(16, '201311016', 'Azim Khan'),
(17, '201311017', 'Shamim Reza'),
(18, '201311018', 'Sabbir Hossain'),
(19, '201311019', 'Rabeya Akhter'),
(20, '201311020', 'Rakibul Islam'),
(21, '201311021', 'Zahidul Islam'),
(22, '201311022', 'Niloy Rahman'),
(23, '201311023', 'Munia Akter'),
(24, '201311024', 'Hasan Mahmud');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance_details`
--
ALTER TABLE `attendance_details`
  ADD PRIMARY KEY (`faculty_id`,`course_id`,`session_id`,`student_id`,`on_date`);

--
-- Indexes for table `course_allotment`
--
ALTER TABLE `course_allotment`
  ADD PRIMARY KEY (`faculty_id`,`course_id`,`session_id`);

--
-- Indexes for table `course_details`
--
ALTER TABLE `course_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `course_registration`
--
ALTER TABLE `course_registration`
  ADD PRIMARY KEY (`student_id`,`course_id`,`session_id`);

--
-- Indexes for table `faculty_details`
--
ALTER TABLE `faculty_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- Indexes for table `session_details`
--
ALTER TABLE `session_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `year` (`year`,`term`);

--
-- Indexes for table `student_details`
--
ALTER TABLE `student_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roll_no` (`roll_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course_details`
--
ALTER TABLE `course_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `faculty_details`
--
ALTER TABLE `faculty_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `session_details`
--
ALTER TABLE `session_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_details`
--
ALTER TABLE `student_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
