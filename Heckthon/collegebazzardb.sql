-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2022 at 04:22 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `collegebazzardb`
--

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE `buyer` (
  `buy_id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `prod_id` int(11) DEFAULT NULL,
  `buy_date` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(11000, 'Books'),
(12000, 'Electronic');

-- --------------------------------------------------------

--
-- Table structure for table `chatbot`
--

CREATE TABLE `chatbot` (
  `id` int(11) NOT NULL,
  `messages` varchar(255) NOT NULL,
  `response` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `prod_id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `prod_name` char(50) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `prod_image` varchar(255) DEFAULT NULL,
  `months_used` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `registered_on` date DEFAULT current_timestamp(),
  `description` varchar(255) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`prod_id`, `username`, `is_approved`, `prod_name`, `thumbnail`, `prod_image`, `months_used`, `quantity`, `price`, `registered_on`, `description`, `type_id`, `category_id`) VALUES
(5, 'johncena', 1, 'A house of Dream', 'https://iili.io/4Yfv2I.th.png', 'https://iili.io/4YfSkX.md.png,https://iili.io/4YfUpn.md.png', 2, 1, 1200, '2022-08-29', 'A house of drean is a new anime series', 11001, 11000),
(7, 'manmohan', 0, 'Boat Stone', 'https://cdn.shopify.com/s/files/1/0057/8938/4802/products/main_green_600x.png', 'https://5.imimg.com/data5/NO/DD/RR/SELLER-4250651/brass-desktop-products-500x500.jpeg,https://cdn1.smartprix.com/rx-i7iUQSvkk-w1200-h1200/7iUQSvkk.jpg,https://m.media-amazon.com/images/I/71csRXtiA+L._SL1500_.jpg', 5, 1, 600, '2022-08-29', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolorum quis possimus laborum alias, magnam blanditiis quae ipsa! Maiores, id rem!', 12001, 12000);

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `seller_id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `contact` varchar(10) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `online_payment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`seller_id`, `username`, `contact`, `address`, `online_payment`) VALUES
(6, 'johncena', '2659846545', '57 Arthur Street NEUREA', 'sandeep@ybl'),
(7, 'manmohan', '8989498465', '770 River Rd', 'manmohan@ybl'),
(8, 'manmohan', '4894654789', '770 River Rd', 'manmohan@ybl');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `category_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `type_name` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`category_id`, `type_id`, `type_name`) VALUES
(11000, 11001, 'Anime'),
(11000, 11002, 'College Books'),
(11000, 11003, 'AutoBiography'),
(12000, 12001, 'Mobile'),
(12000, 12002, 'Laptop'),
(12000, 12003, 'Monitor'),
(12000, 12004, 'Charger and Cables');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `registered_date` date DEFAULT current_timestamp(),
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `is_blocked` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `registered_date`, `is_admin`, `is_blocked`) VALUES
(1, 'johncena', 'ram@gmail.com', '$2y$10$VbvmeilAjU7x3ge4zAzDguFcLtBbLF36cJ51clnRsVzZ6yr6iLzrG', '2022-08-28', 1, 1),
(2, 'manmohan', 'manmohan123@gmail.com', '$2y$10$MkIygGm5NRXCOEtDIP7FVettZz2qBd4mEU4axL7R0WinwCxpb1QA.', '2022-08-29', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buyer`
--
ALTER TABLE `buyer`
  ADD PRIMARY KEY (`buy_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `chatbot`
--
ALTER TABLE `chatbot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`seller_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buyer`
--
ALTER TABLE `buyer`
  MODIFY `buy_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12001;

--
-- AUTO_INCREMENT for table `chatbot`
--
ALTER TABLE `chatbot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `seller_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
