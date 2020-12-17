-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 11, 2020 at 09:05 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `user_id`, `password`) VALUES
('SHAJI P SIJO', 'shaji_sms', 12345);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` varchar(20) NOT NULL,
  `coursename` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `coursename`) VALUES
('CS 201 ', 'DISCRETE COMPUTATIONAL STRUCTURES'),
('CS 202', 'COMPUTER ORGANISATION AND ARCHITECTURE'),
('CS 208', 'PRINCIPLES OF DATABASE DESIGN'),
('CS 231', 'DATA STRUCTURE LAB'),
('CS 232', 'FREE AND OPEN SOURCE SOFTWARE LAB'),
('CY 100', 'ENGINEERING CHEMISTRY'),
('CY 110', 'ENGINEERING CHEMISTRY LAB'),
('MA 101', 'CALCULUS'),
('MA 201', 'LINEAR ALGEBRA AND COMPLEX ANALYSIS');

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `clg_id` varchar(20) NOT NULL,
  `semwise_fee` int(20) NOT NULL,
  `hostel_fee` int(20) DEFAULT NULL,
  `bus_fee` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`clg_id`, `semwise_fee`, `hostel_fee`, `bus_fee`) VALUES
('CS_01', 30000, 10000, 5000),
('CS_02', 30000, NULL, 5000),
('CS_03', 50000, 12000, NULL),
('CS_04', 150000, 12000, NULL),
('CS_05', 150000, 10000, NULL),
('CS_06', 50000, 10000, NULL),
('CS_07', 30000, 10000, NULL),
('CS_08', 30000, 12000, 5500),
('CS_09', 30000, 12000, 5500),
('CS_10', 50000, 10000, 5000),
('CS_11', 50000, NULL, NULL),
('CS_12', 150000, NULL, 4500),
('CS_13', 50000, NULL, 5000),
('CS_14', 50000, NULL, NULL),
('CS_15', 50000, 12000, 5000),
('CS_16', 30000, 10000, NULL),
('CS_17', 30000, 10000, NULL),
('CS_18', 50000, 12000, NULL),
('CS_19', 50000, 12000, NULL),
('CS_20', 150000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `score_card`
--

CREATE TABLE `score_card` (
  `clg_id` varchar(20) NOT NULL,
  `semester` varchar(20) NOT NULL,
  `course_id` varchar(20) NOT NULL,
  `tot_internal` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `score_card`
--

INSERT INTO `score_card` (`clg_id`, `semester`, `course_id`, `tot_internal`) VALUES
('CS_01', 'S1', 'MA 101', '45.00'),
('CS_01', 'S1', 'CY 100', '43.00'),
('CS_01', 'S1', 'CY 110', '39.00'),
('CS_01', 'S2', 'MA 201', '44.00'),
('CS_01', 'S2', 'CS 201 ', '25.00'),
('CS_01', 'S2', 'CS 231', '50.00'),
('CS_01', 'S3', 'CS 202', '22.00'),
('CS_01', 'S3', 'CS 208', '49.00'),
('CS_01', 'S3', 'CS 232', '30.00'),
('CS_02', 'S1', 'MA 101', '45.00'),
('CS_02', 'S1', 'CY 100', '44.00'),
('CS_02', 'S1', 'CY 110', '43.00'),
('CS_02', 'S2', 'MA 201', '49.00'),
('CS_02', 'S2', 'CS 201 ', '50.00'),
('CS_02', 'S2', 'CS 231', '44.00'),
('CS_02', 'S3', 'CS 202', '43.00'),
('CS_02', 'S3', 'CS 208', '41.00'),
('CS_02', 'S3', 'CS 232', '40.00'),
('CS_03', 'S1', 'MA 101', '22.50'),
('CS_03', 'S1', 'CY 100', '30.00'),
('CS_03', 'S1', 'CY 110', '19.00'),
('CS_03', 'S2', 'MA 201', '20.00'),
('CS_03', 'S2', 'CS 201 ', '45.00'),
('CS_03', 'S2', 'CS 231', '32.00'),
('CS_03', 'S3', 'CS 202', '25.00'),
('CS_03', 'S3', 'CS 208', '44.00'),
('CS_03', 'S3', 'CS 232', '39.00'),
('CS_04', 'S1', 'MA 101', '32.00'),
('CS_04', 'S1', 'CY 100', '35.00'),
('CS_04', 'S1', 'CY 110', '40.00'),
('CS_04', 'S2', 'MA 201', '25.00'),
('CS_04', 'S2', 'CS 201 ', '43.00'),
('CS_04', 'S2', 'CS 231', '50.00'),
('CS_04', 'S3', 'CS 202', '23.00'),
('CS_04', 'S3', 'CS 208', '24.00'),
('CS_04', 'S3', 'CS 232', '33.00'),
('CS_05', 'S1', 'MA 101', '35.00'),
('CS_05', 'S1', 'CY 100', '39.00'),
('CS_05', 'S1', 'CY 110', '40.00'),
('CS_05', 'S2', 'MA 201', '42.00'),
('CS_05', 'S2', 'CS 201 ', '50.00'),
('CS_05', 'S2', 'CS 231', '49.00'),
('CS_05', 'S3', 'CS 202', '43.00'),
('CS_05', 'S3', 'CS 208', '33.00'),
('CS_05', 'S3', 'CS 232', '25.00'),
('CS_06', 'S1', 'MA 101', '33.00'),
('CS_06', 'S1', 'CY 100', '43.00'),
('CS_06', 'S1', 'CY 110', '50.00'),
('CS_06', 'S2', 'MA 201', '43.00'),
('CS_06', 'S2', 'CS 201 ', '44.00'),
('CS_06', 'S2', 'CS 231', '47.00'),
('CS_06', 'S3', 'CS 202', '49.00'),
('CS_06', 'S3', 'CS 208', '39.00'),
('CS_06', 'S3', 'CS 232', '39.00'),
('CS_07', 'S1', 'MA 101', '45.00'),
('CS_07', 'S1', 'CY 100', '44.00'),
('CS_07', 'S1', 'CY 110', '49.00'),
('CS_07', 'S2', 'MA 201', '50.00'),
('CS_07', 'S2', 'CS 201 ', '43.00'),
('CS_07', 'S2', 'CS 231', '42.00'),
('CS_07', 'S3', 'CS 202', '47.00'),
('CS_07', 'S3', 'CS 208', '48.00'),
('CS_07', 'S3', 'CS 232', '50.00'),
('CS_08', 'S1', 'MA 101', '27.00'),
('CS_08', 'S1', 'CY 100', '45.00'),
('CS_08', 'S1', 'CY 110', '33.00'),
('CS_08', 'S2', 'MA 201', '32.00'),
('CS_08', 'S2', 'CS 201 ', '43.00'),
('CS_08', 'S2', 'CS 231', '28.00'),
('CS_08', 'S3', 'CS 202', '32.00'),
('CS_08', 'S3', 'CS 208', '33.00'),
('CS_08', 'S3', 'CS 232', '34.00'),
('CS_09', 'S1', 'MA 101', '23.00'),
('CS_09', 'S1', 'CY 100', '22.50'),
('CS_09', 'S1', 'CY 110', '33.00'),
('CS_09', 'S2', 'MA 201', '35.00'),
('CS_09', 'S2', 'CS 201 ', '32.00'),
('CS_09', 'S2', 'CS 231', '40.00'),
('CS_09', 'S3', 'CS 202', '32.00'),
('CS_09', 'S3', 'CS 208', '29.00'),
('CS_09', 'S3', 'CS 232', '30.00'),
('CS_10', 'S1', 'MA 101', '32.00'),
('CS_10', 'S1', 'CY 100', '44.00'),
('CS_10', 'S1', 'CY 110', '50.00'),
('CS_10', 'S2', 'MA 201', '43.00'),
('CS_10', 'S2', 'CS 201 ', '45.00'),
('CS_10', 'S2', 'CS 231', '32.00'),
('CS_10', 'S3', 'CS 202', '39.00'),
('CS_10', 'S3', 'CS 208', '48.00'),
('CS_10', 'S3', 'CS 232', '46.00'),
('CS_11', 'S1', 'MA 101', '28.00'),
('CS_11', 'S1', 'CY 100', '32.00'),
('CS_11', 'S1', 'CY 110', '33.00'),
('CS_11', 'S2', 'MA 201', '34.00'),
('CS_11', 'S2', 'CS 201 ', '23.00'),
('CS_11', 'S2', 'CS 231', '22.50'),
('CS_11', 'S3', 'CS 202', '33.00'),
('CS_11', 'S3', 'CS 208', '35.00'),
('CS_11', 'S3', 'CS 232', '32.00'),
('CS_12', 'S1', 'MA 101', '30.00'),
('CS_12', 'S1', 'CY 100', '50.00'),
('CS_12', 'S1', 'CY 110', '41.00'),
('CS_12', 'S2', 'MA 201', '22.50'),
('CS_12', 'S2', 'CS 201 ', '33.00'),
('CS_12', 'S2', 'CS 231', '43.00'),
('CS_12', 'S3', 'CS 202', '19.00'),
('CS_12', 'S3', 'CS 208', '40.00'),
('CS_12', 'S3', 'CS 232', '35.00'),
('CS_13', 'S1', 'MA 101', '29.00'),
('CS_13', 'S1', 'CY 100', '30.00'),
('CS_13', 'S1', 'CY 110', '30.00'),
('CS_13', 'S2', 'MA 201', '41.00'),
('CS_13', 'S2', 'CS 201 ', '44.00'),
('CS_13', 'S2', 'CS 231', '50.00'),
('CS_13', 'S3', 'CS 202', '32.00'),
('CS_13', 'S3', 'CS 208', '33.00'),
('CS_13', 'S3', 'CS 232', '36.00'),
('CS_14', 'S1', 'MA 101', '22.00'),
('CS_14', 'S1', 'CY 100', '30.00'),
('CS_14', 'S1', 'CY 110', '37.00'),
('CS_14', 'S2', 'MA 201', '18.00'),
('CS_14', 'S2', 'CS 201 ', '29.00'),
('CS_14', 'S2', 'CS 231', '47.00'),
('CS_14', 'S3', 'CS 202', '40.00'),
('CS_14', 'S3', 'CS 208', '41.00'),
('CS_14', 'S3', 'CS 232', '42.00'),
('CS_15', 'S1', 'MA 101', '33.00'),
('CS_15', 'S1', 'CY 100', '21.00'),
('CS_15', 'S1', 'CY 110', '31.00'),
('CS_15', 'S2', 'MA 201', '40.00'),
('CS_15', 'S2', 'CS 201 ', '43.00'),
('CS_15', 'S2', 'CS 231', '45.00'),
('CS_15', 'S3', 'CS 202', '22.50'),
('CS_15', 'S3', 'CS 208', '46.00'),
('CS_15', 'S3', 'CS 232', '47.00'),
('CS_16', 'S1', 'MA 101', '19.00'),
('CS_16', 'S1', 'CY 100', '45.00'),
('CS_16', 'S1', 'CY 110', '31.00'),
('CS_16', 'S2', 'MA 201', '50.00'),
('CS_16', 'S2', 'CS 201 ', '44.00'),
('CS_16', 'S2', 'CS 231', '33.00'),
('CS_16', 'S3', 'CS 202', '48.00'),
('CS_16', 'S3', 'CS 208', '32.00'),
('CS_16', 'S3', 'CS 232', '22.50'),
('CS_17', 'S1', 'MA 101', '30.00'),
('CS_17', 'S1', 'CY 100', '38.00'),
('CS_17', 'S1', 'CY 110', '34.00'),
('CS_17', 'S2', 'MA 201', '40.00'),
('CS_17', 'S2', 'CS 201 ', '48.00'),
('CS_17', 'S2', 'CS 231', '49.00'),
('CS_17', 'S3', 'CS 202', '50.00'),
('CS_17', 'S3', 'CS 208', '44.00'),
('CS_17', 'S3', 'CS 232', '43.00'),
('CS_18', 'S1', 'MA 101', '33.00'),
('CS_18', 'S1', 'CY 100', '45.00'),
('CS_18', 'S1', 'CY 110', '45.00'),
('CS_18', 'S2', 'MA 201', '31.00'),
('CS_18', 'S2', 'CS 201 ', '33.00'),
('CS_18', 'S2', 'CS 231', '29.00'),
('CS_18', 'S3', 'CS 202', '45.00'),
('CS_18', 'S3', 'CS 208', '32.00'),
('CS_18', 'S3', 'CS 232', '31.00'),
('CS_19', 'S1', 'MA 101', '19.00'),
('CS_19', 'S1', 'CY 100', '21.00'),
('CS_19', 'S1', 'CY 110', '33.00'),
('CS_19', 'S2', 'MA 201', '40.00'),
('CS_19', 'S2', 'CS 201 ', '32.00'),
('CS_19', 'S2', 'CS 231', '41.00'),
('CS_19', 'S3', 'CS 202', '44.00'),
('CS_19', 'S3', 'CS 208', '50.00'),
('CS_19', 'S3', 'CS 232', '39.00'),
('CS_20', 'S1', 'MA 101', '21.00'),
('CS_20', 'S1', 'CY 100', '31.00'),
('CS_20', 'S1', 'CY 110', '41.00'),
('CS_20', 'S2', 'MA 201', '44.00'),
('CS_20', 'S2', 'CS 201 ', '19.00'),
('CS_20', 'S2', 'CS 231', '30.00'),
('CS_20', 'S3', 'CS 202', '28.00'),
('CS_20', 'S3', 'CS 208', '50.00'),
('CS_20', 'S3', 'CS 232', '37.00'),
('CS_01', 'S4', 'CS 301', '35.00');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `clg_id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `phone_no` int(11) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`clg_id`, `name`, `dob`, `phone_no`, `email`) VALUES
('CS_01', 'ABHINAV NANDAGOPAL C', '2000-01-22', 674838, 'abhi@gmail.com'),
('CS_02', 'ABHIYA ANN SARA', '2000-09-21', 453233, 'annsara@gmail.com'),
('CS_03', 'NAOMI SARA ALEX', '1999-10-11', 342211, 'naomi123@gamil.com'),
('CS_04', 'EPAN KOSHY', '2000-09-30', 112244, 'epank@gmail.com'),
('CS_05', 'LIVYA MARIAM CHAKO', '2000-01-28', 234567, 'mariamlivs@gamil.com'),
('CS_06', 'RIGVED SAI', '1998-02-02', 328799, 'rigyy@gamil.com'),
('CS_07', 'JULIA SAJAN', '2000-12-30', 678233, 'julia25@gmail.com'),
('CS_08', 'JOSEPH ANNAKUTTY JOSE', '2000-03-25', 434343, 'jo@gmail.com'),
('CS_09', 'MALAVIKA S', '1999-05-19', 673211, 'malu22@gmail.com'),
('CS_10', 'MATHER SUNNY', '2000-04-21', 745322, 'sunnymather@gmail.com'),
('CS_11', 'KOBEL SHAJI', '2000-11-22', 217899, 'kobs@gmail.com'),
('CS_12', ' MARIYAAN PANIKAR SHIJI', '2000-12-25', 356231, 'mariyaanp@gmail.com'),
('CS_13', 'KOBSOORATH KHAN', '2000-01-05', 335587, 'kobsoorathk@gmail.com'),
('CS_14', 'DEVDATH M', '1998-03-19', 245637, 'devdath@gmail.com'),
('CS_15', 'FARZEENA HUSSAIN H', '2000-07-06', 237788, 'farzeena23@gmail.com'),
('CS_16', 'M MOIDEEN', '2000-08-07', 257893, 'mm@gmail.com'),
('CS_17', 'JESLIN KOCHMON', '2000-08-03', 226677, 'jes@gmail.com'),
('CS_18', 'TOBY VARGHEESE', '2000-07-30', 962899, 'tobyv@gmail.com'),
('CS_19', 'ISSA ABRAHAM', '2000-09-07', 548921, 'issa@gmail.com'),
('CS_20', 'LAVANYA MINI', '2000-01-31', 439122, 'lavanyam@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`clg_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
