-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 15, 2020 at 09:31 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `safeboda`
--

-- --------------------------------------------------------

--
-- Table structure for table `promo_codes`
--

DROP TABLE IF EXISTS `promo_codes`;
CREATE TABLE IF NOT EXISTS `promo_codes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promo_code` varchar(30) NOT NULL,
  `origin` varchar(100) NOT NULL,
  `destination` varchar(100) NOT NULL,
  `radius` tinyint(2) NOT NULL,
  `expiry` varchar(20) NOT NULL,
  `status` enum('Active','Inactive','Deactivated','Expired') NOT NULL DEFAULT 'Active',
  `date_added` datetime NOT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_unique_promo` (`promo_code`,`status`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `promo_codes`
--

INSERT INTO `promo_codes` (`id`, `promo_code`, `origin`, `destination`, `radius`, `expiry`, `status`, `date_added`, `date_modified`) VALUES
(1, 'abcd-defg-frgh-jhuk', 'ghaziabad', 'delhi', 3, '2020-11-15 19:47:15', 'Active', '2019-11-16 11:47:15', '2020-11-15 08:22:28'),
(2, 'abcd-defg-frgh-jhqi', 'ghaziabad', 'gurgaon', 10, '2021-01-15 11:47:15', 'Active', '2020-01-15 11:47:15', '2020-11-15 06:57:18'),
(3, 'abcd-defg-frgh-jhur', 'delhi', 'faridabad', 50, '2021-08-15 11:47:15', 'Active', '2020-08-14 11:47:15', '2020-11-15 06:57:34');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
