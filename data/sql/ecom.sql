-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 23, 2016 at 05:35 PM
-- Server version: 5.5.47-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE IF NOT EXISTS `buyer` (
  `buyerid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`buyerid`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE IF NOT EXISTS `item` (
  `itemid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `location` varchar(100) DEFAULT NULL,
  `sellerid` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `sellerid` (`sellerid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`itemid`, `title`, `description`, `image`, `price`, `creationdate`, `location`, `sellerid`, `status`) VALUES
(1, 'Tom Tailor\r\nBlack Checked Regular Fit Casual Shirt', NULL, '1.jpg', 3499, '2016-04-23 02:28:34', 'china', 1, 'New'),
(2, 'Navy Blue/White Stripe Pencil Skirt', NULL, '2.jpg', 2390, '2016-04-23 02:29:17', 'USA', 1, 'New'),
(3, 'Blue Washed Low Rise Skinny Fit Jeans', NULL, '3.jpg', 2999, '2016-04-23 02:31:54', 'USA', 1, 'New'),
(4, 'As Roger Navy Blue V Neck T-Shirt', NULL, '4.jpg', 1397, '2016-04-23 02:37:46', 'USA', 1, 'New'),
(5, 'Multicoloured Printed Flared Skirt', NULL, '5.jpg', 1490, '2016-04-23 02:38:39', 'USA', 2, 'New'),
(6, 'Green Slim Fit Polo T Shirt', NULL, '6.jpg', 1399, '2016-04-23 02:40:10', 'USA', 1, 'New'),
(7, 'Navy Blue Solid Mid Rise Skinny Jeans', NULL, '7.jpg', 2793, '2016-04-23 03:05:51', 'USA', 2, 'New'),
(8, 'Grey Henley T-Shirt', NULL, '8.jpg', 1260, '2016-04-23 03:06:43', 'USA', 1, 'New'),
(9, 'Maroon Slim Fit Chinos', NULL, '9.jpg', 1017, '2016-04-23 03:09:46', 'USA', 1, 'New'),
(10, 'Navy Blue Solid Regular Fit Shorts', NULL, '10.jpg', 599, '2016-04-23 03:11:10', 'USA', 3, 'New'),
(11, 'Navy Blue Printed Slim Fit Round Neck T-Shirt', NULL, '11.jpg', 2990, '2016-04-23 03:12:02', 'USA', 1, 'New'),
(12, 'Grey Printed Slim Fit Formal Shirt', NULL, '12.jpg', 2599, '2016-04-23 03:12:39', 'USA', 1, 'New'),
(13, 'Orange Printed T Shirt', NULL, '13.jpg', 299, '2016-04-23 03:13:22', 'Canada', 2, 'New'),
(14, 'Kalidar Skirt', NULL, '14.jpg', 1125, '2016-04-23 03:14:09', 'Canada', 2, 'New'),
(15, '3/4Th Sleeves Band Collar Embroidered Top', NULL, '15.jpg', 880, '2016-04-23 03:15:13', 'Canada', 2, 'New'),
(16, 'White Printed Blouse', NULL, '16.jpg', 699, '2016-04-23 03:16:01', 'Canada', 2, 'New'),
(17, 'Orange Printed Round Neck T-Shirt', NULL, '17.jpg', 799, '2016-04-23 03:17:20', 'India', 3, 'New'),
(18, 'Multicoloured Colored Striped Polo T-Shirt', NULL, '18.jpg', 1399, '2016-04-23 03:18:21', 'India', 3, 'New'),
(19, 'Open Road Tee Black Printed Round Neck T-Shirt', NULL, '19.jpg', 1395, '2016-04-23 03:19:21', 'India', 3, 'New'),
(20, 'Black Flared Skirt', NULL, '20.jpg', 750, '2016-04-23 03:20:17', 'Canada', 2, 'New');

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE IF NOT EXISTS `seller` (
  `sellerid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sellerid`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`sellerid`, `userid`, `location`) VALUES
(1, 1, 'chocolate factory'),
(2, 2, 'vape kings'),
(3, 3, 'upsd');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `userimage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `fname`, `lname`, `email`, `password`, `userimage`) VALUES
(1, 'saiyaff', 'farouk', 'saiyaff@shop.com', 'saiyaff123', '1.jpg'),
(2, 'pankaja', 'gamage', 'pk@shop.com', 'pankaja123', '2.jpg'),
(3, 'avindu', 'hewa', 'avindu@shop.com', 'avindu123', '3jpg'),
(4, 'dilakshi', 'hasara', 'dilakshi@shop.com', 'dilakshi123', '4jpg');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buyer`
--
ALTER TABLE `buyer`
  ADD CONSTRAINT `buyer_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`);

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`sellerid`) REFERENCES `seller` (`sellerid`);

--
-- Constraints for table `seller`
--
ALTER TABLE `seller`
  ADD CONSTRAINT `seller_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
