-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2019 at 10:41 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_24689279_citr`
--

-- --------------------------------------------------------

--
-- Table structure for table `citr_products`
--

CREATE TABLE `citr_products` (
  `product_id` int(11) NOT NULL,
  `product_title` text NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_price` varchar(500) NOT NULL DEFAULT '0',
  `product_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `citr_products`
--

INSERT INTO `citr_products` (`product_id`, `product_title`, `product_desc`, `product_image`, `product_price`, `product_date`) VALUES(1, 'Red Bull Energy Drink, 350 ml Tin', 'Red Bull Energy Drink is a functional beverage that vitalizes body and mind. With billions of cans consumed all across the world, Red Bull is appreciated by top athletes, busy professionals, college students and travelers on long journeys. For those who have to stay on top of their game during intense meetings or creative brainstorming sessions, in action with teammates or competitors, or simply want to get the most out of life, a chilled can of Red Bull Energy Drink gives you wings when you need them.', 'https://www.bigbasket.com/media/uploads/p/l/100393567_8-red-bull-energy-drink.jpg', '120', '2019-10-26 07:56:20');
INSERT INTO `citr_products` (`product_id`, `product_title`, `product_desc`, `product_image`, `product_price`, `product_date`) VALUES(2, 'Red Bull Energy Drink, 350 ml Tin', 'Red Bull Energy Drink is a functional beverage that vitalizes body and mind. With billions of cans consumed all across the world, Red Bull is appreciated by top athletes, busy professionals, college students and travelers on long journeys. For those who have to stay on top of their game during intense meetings or creative brainstorming sessions, in action with teammates or competitors, or simply want to get the most out of life, a chilled can of Red Bull Energy Drink gives you wings when you need them.', 'https://www.bigbasket.com/media/uploads/p/l/100393567_8-red-bull-energy-drink.jpg', '120', '2019-10-26 08:04:39');
INSERT INTO `citr_products` (`product_id`, `product_title`, `product_desc`, `product_image`, `product_price`, `product_date`) VALUES(3, 'Red Bull Energy Drink, 350 ml Tin', 'Red Bull Energy Drink is a functional beverage that vitalizes body and mind. With billions of cans consumed all across the world, Red Bull is appreciated by top athletes, busy professionals, college students and travelers on long journeys. For those who have to stay on top of their game during intense meetings or creative brainstorming sessions, in action with teammates or competitors, or simply want to get the most out of life, a chilled can of Red Bull Energy Drink gives you wings when you need them.', 'https://www.bigbasket.com/media/uploads/p/l/100393567_8-red-bull-energy-drink.jpg', '120', '2019-10-26 08:04:42');
INSERT INTO `citr_products` (`product_id`, `product_title`, `product_desc`, `product_image`, `product_price`, `product_date`) VALUES(4, 'Red Bull Energy Drink, 350 ml Tin', 'Red Bull Energy Drink is a functional beverage that vitalizes body and mind. With billions of cans consumed all across the world, Red Bull is appreciated by top athletes, busy professionals, college students and travelers on long journeys. For those who have to stay on top of their game during intense meetings or creative brainstorming sessions, in action with teammates or competitors, or simply want to get the most out of life, a chilled can of Red Bull Energy Drink gives you wings when you need them.', 'https://www.bigbasket.com/media/uploads/p/l/100393567_8-red-bull-energy-drink.jpg', '120', '2019-10-26 08:04:44');
INSERT INTO `citr_products` (`product_id`, `product_title`, `product_desc`, `product_image`, `product_price`, `product_date`) VALUES(5, 'Red Bull Energy Drink, 350 ml Tin', 'Red Bull Energy Drink is a functional beverage that vitalizes body and mind. With billions of cans consumed all across the world, Red Bull is appreciated by top athletes, busy professionals, college students and travelers on long journeys. For those who have to stay on top of their game during intense meetings or creative brainstorming sessions, in action with teammates or competitors, or simply want to get the most out of life, a chilled can of Red Bull Energy Drink gives you wings when you need them.', 'https://www.bigbasket.com/media/uploads/p/l/100393567_8-red-bull-energy-drink.jpg', '120', '2019-10-26 08:04:47');
INSERT INTO `citr_products` (`product_id`, `product_title`, `product_desc`, `product_image`, `product_price`, `product_date`) VALUES(6, 'Red Bull Energy Drink, 350 ml Tin', 'Red Bull Energy Drink is a functional beverage that vitalizes body and mind. With billions of cans consumed all across the world, Red Bull is appreciated by top athletes, busy professionals, college students and travelers on long journeys. For those who have to stay on top of their game during intense meetings or creative brainstorming sessions, in action with teammates or competitors, or simply want to get the most out of life, a chilled can of Red Bull Energy Drink gives you wings when you need them.', 'https://www.bigbasket.com/media/uploads/p/l/100393567_8-red-bull-energy-drink.jpg', '120', '2019-10-26 08:04:49');
INSERT INTO `citr_products` (`product_id`, `product_title`, `product_desc`, `product_image`, `product_price`, `product_date`) VALUES(7, 'Red Bull Energy Drink, 350 ml Tin', 'Red Bull Energy Drink is a functional beverage that vitalizes body and mind. With billions of cans consumed all across the world, Red Bull is appreciated by top athletes, busy professionals, college students and travelers on long journeys. For those who have to stay on top of their game during intense meetings or creative brainstorming sessions, in action with teammates or competitors, or simply want to get the most out of life, a chilled can of Red Bull Energy Drink gives you wings when you need them.', 'https://www.bigbasket.com/media/uploads/p/l/100393567_8-red-bull-energy-drink.jpg', '120', '2019-10-26 08:04:51');
INSERT INTO `citr_products` (`product_id`, `product_title`, `product_desc`, `product_image`, `product_price`, `product_date`) VALUES(8, 'Red Bull Energy Drink, 350 ml Tin', 'Red Bull Energy Drink is a functional beverage that vitalizes body and mind. With billions of cans consumed all across the world, Red Bull is appreciated by top athletes, busy professionals, college students and travelers on long journeys. For those who have to stay on top of their game during intense meetings or creative brainstorming sessions, in action with teammates or competitors, or simply want to get the most out of life, a chilled can of Red Bull Energy Drink gives you wings when you need them.', 'https://www.bigbasket.com/media/uploads/p/l/100393567_8-red-bull-energy-drink.jpg', '120', '2019-10-26 08:05:17');
INSERT INTO `citr_products` (`product_id`, `product_title`, `product_desc`, `product_image`, `product_price`, `product_date`) VALUES(9, 'Red Bull Energy Drink, 350 ml Tin', 'Red Bull Energy Drink is a functional beverage that vitalizes body and mind. With billions of cans consumed all across the world, Red Bull is appreciated by top athletes, busy professionals, college students and travelers on long journeys. For those who have to stay on top of their game during intense meetings or creative brainstorming sessions, in action with teammates or competitors, or simply want to get the most out of life, a chilled can of Red Bull Energy Drink gives you wings when you need them.', 'https://www.bigbasket.com/media/uploads/p/l/100393567_8-red-bull-energy-drink.jpg', '120', '2019-10-26 08:05:19');
INSERT INTO `citr_products` (`product_id`, `product_title`, `product_desc`, `product_image`, `product_price`, `product_date`) VALUES(10, 'Red Bull Energy Drink, 350 ml Tin', 'Red Bull Energy Drink is a functional beverage that vitalizes body and mind. With billions of cans consumed all across the world, Red Bull is appreciated by top athletes, busy professionals, college students and travelers on long journeys. For those who have to stay on top of their game during intense meetings or creative brainstorming sessions, in action with teammates or competitors, or simply want to get the most out of life, a chilled can of Red Bull Energy Drink gives you wings when you need them.', 'https://www.bigbasket.com/media/uploads/p/l/100393567_8-red-bull-energy-drink.jpg', '120', '2019-10-26 08:05:21');

-- --------------------------------------------------------

--
-- Table structure for table `citr_product_comments`
--

CREATE TABLE `citr_product_comments` (
  `comment_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `comment_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `citr_product_comments`
--

INSERT INTO `citr_product_comments` (`comment_id`, `product_id`, `comment`, `comment_date`) VALUES(1, 1, 'good taste', '2019-10-26 08:21:03');
INSERT INTO `citr_product_comments` (`comment_id`, `product_id`, `comment`, `comment_date`) VALUES(2, 1, 'good quality', '2019-10-26 08:21:03');
INSERT INTO `citr_product_comments` (`comment_id`, `product_id`, `comment`, `comment_date`) VALUES(3, 4, 'good taste', '2019-10-26 08:23:05');
INSERT INTO `citr_product_comments` (`comment_id`, `product_id`, `comment`, `comment_date`) VALUES(4, 4, 'good quality', '2019-10-26 08:23:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `citr_products`
--
ALTER TABLE `citr_products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `citr_product_comments`
--
ALTER TABLE `citr_product_comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `citr_products`
--
ALTER TABLE `citr_products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `citr_product_comments`
--
ALTER TABLE `citr_product_comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
