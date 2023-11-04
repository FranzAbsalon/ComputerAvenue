-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2023 at 05:49 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pwd` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_pwd`) VALUES
(2, 'Admin', 'admin@gmail.com', '$2b$10$xSK4z1dpIMRfKtZVTLs8Jeac9gcOJpD36DHeW5deYcfAm/6AIzM5W');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `prod_qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`cart_id`, `user_id`, `prod_id`, `prod_qty`) VALUES
(5, 1, 8, 1),
(6, 2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`) VALUES
(8, 'Accessories'),
(9, 'Mobile Phones'),
(10, 'Laptops'),
(16, 'Keyboard'),
(27, 'Head Phones');

-- --------------------------------------------------------

--
-- Table structure for table `deacts`
--

CREATE TABLE `deacts` (
  `d_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `d_remarks` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deacts`
--

INSERT INTO `deacts` (`d_id`, `user_id`, `d_remarks`) VALUES
(1, 1, 'This is a sample reason.'),
(2, 1, 'Ewan'),
(3, 1, 'Ewan'),
(4, 1, 'Ewan');

-- --------------------------------------------------------

--
-- Table structure for table `featured`
--

CREATE TABLE `featured` (
  `f_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `featured`
--

INSERT INTO `featured` (`f_id`, `prod_id`) VALUES
(8, 1),
(9, 2),
(10, 3),
(11, 5),
(13, 8),
(15, 12),
(16, 15),
(17, 20),
(18, 24),
(19, 26);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `ship_addr` varchar(255) NOT NULL,
  `payment` int(11) NOT NULL,
  `order_date` varchar(255) NOT NULL,
  `ord_stat` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `prod_id`, `qty`, `ship_addr`, `payment`, `order_date`, `ord_stat`) VALUES
(1, 1, 11, 5, 'San Manuel, Pangasinan', 119995, '2022-02-10', 2),
(2, 1, 1, 5, 'San Manuel, Pangasinan', 11750, '2022-02-10', 1),
(3, 1, 8, 10, 'San Manuel, Pangasinan', 12340, '2022-02-10', 2),
(4, 1, 2, 5, 'Manaoag, Pangasinan', 119995, '2022-02-11', 2),
(5, 3, 20, 1, 'smaple', 599, '2023-01-22', 1),
(6, 3, 24, 1, 'smaple', 64000, '2023-01-22', 0),
(7, 3, 14, 2, 'smaple', 6784, '2023-01-22', 2),
(8, 3, 11, 10, 'Urdaneta, Pangasinan', 35500, '2023-01-22', 0),
(9, 3, 16, 2, 'Urdaneta, Pangasinan', 4960, '2023-01-22', 2),
(10, 3, 28, 1, 'Urdaneta, Pangasinan', 87990, '2023-01-22', 1),
(11, 3, 19, 5, 'Urdaneta, Pangasinan', 61750, '2023-01-22', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `prod_id` int(11) NOT NULL,
  `prod_img` varchar(255) NOT NULL,
  `prod_name` varchar(255) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `prod_price` int(11) NOT NULL,
  `prod_cat` varchar(255) NOT NULL,
  `prod_stat` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`prod_id`, `prod_img`, `prod_name`, `prod_qty`, `prod_price`, `prod_cat`, `prod_stat`) VALUES
(11, 'prod_img-1674401654946.jpg', 'Apple Watch', 70, 3550, '8', 0),
(12, 'prod_img-1674401690500.jpg', 'Smart Watch S5', 20, 2300, '8', 0),
(13, 'prod_img-1674401811348.jpg', 'Timex Watch', 45, 1280, '8', 0),
(14, 'prod_img-1674401873944.jpg', 'Rolex', 6, 3392, '8', 0),
(15, 'prod_img-1674402012128.jpg', 'Audio-Technica', 50, 1200, '27', 0),
(16, 'prod_img-1674402051448.jpg', 'JBL CLUB PRO', 49, 2480, '27', 0),
(17, 'prod_img-1674402102391.jpg', 'Sennheiser', 30, 1790, '27', 0),
(18, 'prod_img-1674402227017.jpg', 'Wireless Head Phone', 8, 2600, '27', 0),
(19, 'prod_img-1674402706361.jpg', 'Logitech G915', 5, 12350, '16', 0),
(20, 'prod_img-1674402763805.jpg', 'Wireless Keyboard', 34, 599, '16', 0),
(21, 'prod_img-1674402816502.jpg', 'Lenovo Keyboard', 5, 500, '16', 0),
(22, 'prod_img-1674402892817.jpg', 'Macbook Pro', 60, 80990, '10', 0),
(23, 'prod_img-1674402997612.jpg', 'Dell Inspiron', 47, 31995, '10', 0),
(24, 'prod_img-1674403228210.jpeg', 'ASUS VivoBook', 83, 64000, '10', 0),
(25, 'prod_img-1674403343101.jpg', 'Iphone X', 15, 24678, '9', 0),
(26, 'prod_img-1674403399436.jpg', 'Samsung Flip 3', 46, 4085, '9', 0),
(27, 'prod_img-1674403443277.jpg', 'Samsung S21', 7, 6999, '9', 0),
(28, 'prod_img-1674403498059.jpg', 'Galaxy Fold Z', 80, 87990, '9', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `addr` varchar(255) NOT NULL,
  `account_stat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `fullname`, `addr`, `account_stat`) VALUES
(1, 'adoramarkdenver@gmail.com', '$2b$10$FhOA9CHLX89qR891Xi6Hf.4mEZEuQVXSQjyF7GhQsPEQFZgtf8ss.', 'Mark Denver Adora', 'Manaoag, Pangasinan', 1),
(2, 'johnfrancisabsalon17@gmail.com', '$2b$10$xFE0GjNwsL9r.g4xF2U8c.TS2U4IL3hbFNvZTkFYmfvD.wXQ50rwO', 'John Francis Absalon', 'Urdaneta, Pangasinan', 0),
(3, 'dumsktv@gmail.com', '$2b$10$Q4VyGf0oYbdvC79dyKn7huTckTtSHXSrwoBbuBCXaxGAJZZFnT.56', 'Arden Rowan', 'Urdaneta, Pangasinan', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `deacts`
--
ALTER TABLE `deacts`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `featured`
--
ALTER TABLE `featured`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `deacts`
--
ALTER TABLE `deacts`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `featured`
--
ALTER TABLE `featured`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
