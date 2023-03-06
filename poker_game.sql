-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 03, 2023 at 11:23 AM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poker_game`
--

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `id` int(11) NOT NULL,
  `card_number` varchar(20) NOT NULL,
  `suit_id` int(11) NOT NULL,
  `card_rank` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`id`, `card_number`, `suit_id`, `card_rank`) VALUES
(2, '2', 1, 1),
(3, '2', 2, 1),
(4, '2', 3, 1),
(5, '2', 4, 1),
(6, '3', 1, 2),
(7, '3', 2, 2),
(8, '3', 3, 2),
(9, '3', 4, 2),
(10, '4', 1, 3),
(11, '4', 2, 3),
(12, '4', 3, 3),
(13, '4', 4, 3),
(14, '5', 1, 4),
(15, '5', 2, 4),
(16, '5', 3, 4),
(17, '5', 4, 4),
(18, '5', 1, 4),
(19, '6', 2, 5),
(20, '6', 3, 5),
(21, '6', 4, 5),
(22, '7', 1, 6),
(23, '7', 2, 6),
(24, '7', 3, 6),
(25, '7', 4, 6),
(26, '8', 1, 7),
(27, '8', 2, 7),
(28, '8', 3, 7),
(29, '8', 4, 7),
(30, '9', 1, 8),
(31, '9', 2, 8),
(32, '9', 3, 8),
(33, '9', 4, 8),
(34, '10', 1, 9),
(35, '10', 2, 9),
(36, '10', 3, 9),
(37, '10', 4, 9),
(38, 'J', 1, 10),
(39, 'J', 2, 10),
(40, 'J', 3, 10),
(41, 'J', 4, 10),
(42, 'Q', 1, 11),
(43, 'Q', 2, 11),
(44, 'Q', 3, 11),
(45, 'Q', 4, 11),
(46, 'K', 1, 12),
(47, 'K', 2, 12),
(48, 'K', 3, 12),
(49, 'K', 4, 12),
(50, 'A', 1, 13),
(51, 'A', 2, 13),
(52, 'A', 3, 13),
(53, 'A', 4, 13),
(54, 'Joker', 5, 14);

-- --------------------------------------------------------

--
-- Table structure for table `cards_suits`
--

CREATE TABLE `cards_suits` (
  `id` int(11) NOT NULL,
  `suitname` varchar(255) NOT NULL COMMENT 'varchar(255) ie clubs, hearts, diamonds, spade'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cards_suits`
--

INSERT INTO `cards_suits` (`id`, `suitname`) VALUES
(1, 'heart'),
(2, 'club'),
(3, 'spade'),
(4, 'diamond'),
(5, 'wildcard');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cards_suits`
--
ALTER TABLE `cards_suits`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `cards_suits`
--
ALTER TABLE `cards_suits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
