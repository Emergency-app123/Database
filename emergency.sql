-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2021 at 07:52 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `emergency`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `flag` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `flag`) VALUES
(1, 'shubham@gmail.com', '$2b$10$2.93LmzX0OFTBAcuxdpSRuyqIrGOch.PX14q.KmuyM1GV1jXchiVe', '');

-- --------------------------------------------------------

--
-- Table structure for table `emergency_details`
--

CREATE TABLE `emergency_details` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `blood_group` varchar(200) NOT NULL,
  `insurance_number` varchar(200) NOT NULL,
  `contact_name` varchar(200) NOT NULL,
  `contact_number` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emergency_details`
--

INSERT INTO `emergency_details` (`id`, `user_id`, `blood_group`, `insurance_number`, `contact_name`, `contact_number`) VALUES
(3, 9, 'A+', '78362828D', 'Shubham', '450778603'),
(4, 10, 'A', '8261847391D', 'harry', '4586731234');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `location_path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `medical_details`
--

CREATE TABLE `medical_details` (
  `id` int(100) NOT NULL,
  `hospital_location` varchar(200) NOT NULL,
  `user_id` int(100) NOT NULL,
  `contact_name` varchar(200) NOT NULL,
  `primary_contact` varchar(200) NOT NULL,
  `secondary_contact` varchar(200) NOT NULL,
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medical_details`
--

INSERT INTO `medical_details` (`id`, `hospital_location`, `user_id`, `contact_name`, `primary_contact`, `secondary_contact`, `remarks`) VALUES
(2, 'ABC', 9, 'Jatinder', '987056342', '9814751900', 'Good');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `notification` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `notification`) VALUES
(16, 10, 'ExponentPushToken[nQR9l_LzRyBktQyg4GELi_]'),
(17, 9, 'ExponentPushToken[nQR9l_LzRyBktQyg4GELi_]'),
(18, 11, 'ExponentPushToken[nQR9l_LzRyBktQyg4GELi_]'),
(19, 12, 'ExponentPushToken[nQR9l_LzRyBktQyg4GELi_]'),
(20, 13, 'ExponentPushToken[nQR9l_LzRyBktQyg4GELi_]');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `img_id` varchar(100) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `report_incident` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `contact`, `email`, `password`, `img_id`, `isActive`, `report_incident`) VALUES
(9, 'shubham', '123456789', 'shubhammaini112@gmail.com', '$2b$10$2.93LmzX0OFTBAcuxdpSRuyqIrGOch.PX14q.KmuyM1GV1jXchiVe', 'f293deaf-2904-458f-961a-8361c6f49f66', 1, 0),
(10, 'shubham', '9814751900', 'shubhammaini11@gmail.com', '$2b$10$2.93LmzX0OFTBAcuxdpSRuyqIrGOch.PX14q.KmuyM1GV1jXchiVe', 'd09df2c4-a2f3-4e28-92b3-1ff1b0921aa8', 1, 0),
(11, 'jatinder', '987056342', 'jatinder@gmail.com', '$2b$10$COI.OqBWcG8bvUXafnDoAer9RGlf2BeXFJttwZxlfkCjBTP6J4rAe', '3c61461d-7c2a-4da4-9664-4cd04eecc84d', 1, 0),
(12, 'jaspal', '9845784621', 'jaspal@gmail.com', '$2b$10$zdCuiPc7qrlLnnfrIZkKw.lofUAwtXvrVntGfuNn9RQ.u8Fgyshhy', '6ad4b356-9fb7-451c-95a0-1420cf99b83c', 1, 0),
(13, 'Virat', '788063256', 'virat@gmail.com', '$2b$10$kPXJ6wSs7wLWJepuFMZBIe4cxsW7ggNpEOBMGKDBOs8ei7DGZA1Pm', '63f092d4-5fd4-46c1-a388-e4a7fcd6b8e6', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emergency_details`
--
ALTER TABLE `emergency_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Foreign_Key` (`user_id`);

--
-- Indexes for table `medical_details`
--
ALTER TABLE `medical_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `emergency_details`
--
ALTER TABLE `emergency_details`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medical_details`
--
ALTER TABLE `medical_details`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `emergency_details`
--
ALTER TABLE `emergency_details`
  ADD CONSTRAINT `emergency_details_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `Foreign_Key` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `medical_details`
--
ALTER TABLE `medical_details`
  ADD CONSTRAINT `medical_details_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
