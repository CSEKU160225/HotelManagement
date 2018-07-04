-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2018 at 02:56 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `A_id` int(11) NOT NULL,
  `A_Pass` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`A_id`, `A_Pass`) VALUES
(1, '123'),
(2, '12345');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `E_id` int(11) NOT NULL,
  `E_name` varchar(255) DEFAULT NULL,
  `E_work` varchar(255) DEFAULT NULL,
  `E_pass` int(20) DEFAULT NULL,
  `E_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`E_id`, `E_name`, `E_work`, `E_pass`, `E_type`) VALUES
(13, 'Anam', 'Manager', 123, 'Regular'),
(15, 'Hasan', 'Manager', 123, 'Regular'),
(16, 'Rokib', 'Manager', 123, 'Regular');

-- --------------------------------------------------------

--
-- Table structure for table `geust`
--

CREATE TABLE `geust` (
  `g_id` int(11) NOT NULL,
  `g_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `checkin` date DEFAULT NULL,
  `checkout` date DEFAULT NULL,
  `room_num` int(11) DEFAULT NULL,
  `g_address` varchar(255) DEFAULT NULL,
  `e_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `geust`
--

INSERT INTO `geust` (`g_id`, `g_name`, `gender`, `checkin`, `checkout`, `room_num`, `g_address`, `e_id`) VALUES
(15, 'Abir', 'Male', '2018-01-01', '2018-02-06', 101, ' R.K Road', 13),
(16, 'Essan', 'Male', '2018-01-01', '2018-02-05', 201, ' G M road', 13),
(17, 'Hemel', 'Male', '2018-04-18', '2018-04-25', 206, ' `Khulna', 13);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `R_num` int(20) NOT NULL,
  `R_price` int(20) NOT NULL,
  `R_catagory` varchar(255) NOT NULL,
  `R_status` varchar(255) NOT NULL,
  `R_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`R_num`, `R_price`, `R_catagory`, `R_status`, `R_id`) VALUES
(101, 2500, 'Single', 'Unoccupied', 1),
(102, 2300, 'Double', 'Unoccupied\r\n', 2),
(201, 2700, 'Single', 'Underconstruction', 3),
(203, 2000, 'Single', 'Occupied', 4),
(205, 3000, 'Multiple', 'Unoccupied', 5),
(206, 5000, 'Vip', 'Occupied', 6),
(220, 2500, 'Single', 'Unoccupied', 7),
(301, 6000, 'Vip', 'Occupied', 8),
(302, 3000, 'Single', 'Unoccupied', 9),
(304, 3400, 'Double', 'Underconstruction', 10),
(305, 30000, '', '', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`A_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`E_id`);

--
-- Indexes for table `geust`
--
ALTER TABLE `geust`
  ADD PRIMARY KEY (`g_id`),
  ADD KEY `room_num` (`room_num`),
  ADD KEY `e_id` (`e_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`R_num`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `A_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `E_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `geust`
--
ALTER TABLE `geust`
  MODIFY `g_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `geust`
--
ALTER TABLE `geust`
  ADD CONSTRAINT `geust_ibfk_1` FOREIGN KEY (`room_num`) REFERENCES `room` (`R_num`),
  ADD CONSTRAINT `geust_ibfk_2` FOREIGN KEY (`e_id`) REFERENCES `employee` (`E_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
