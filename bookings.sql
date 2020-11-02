-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2020 at 07:35 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookingcalender`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(255) NOT NULL,
  `name` varchar(190) NOT NULL,
  `email` varchar(235) NOT NULL,
  `date` text NOT NULL,
  `timeslot` varchar(100) NOT NULL,
  `room_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `name`, `email`, `date`, `timeslot`, `room_id`) VALUES
(93, 'adelia', 'adeliaaminah6113@gmail.com', '2020-10-05', '09:15AM-09:30AM', 2),
(94, 'adelia', 'adeliaaminah6113@gmail.com', '2020-10-06', '12:30PM-12:45PM', 1),
(95, 'adelia', 'adeliaaminah6113@gmail.com', '2020-10-06', '11:00AM-11:15AM', 0),
(96, 'NOOR AINI BINTI DIN MOHD', 'noorainibintidinmohd61@gmail.com', '2020-10-15', '14:15PM-14:30PM', 0),
(97, 'adelia', 'adeliaaminah6113@gmail.com', '2020-10-13', '14:00PM-14:15PM', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
