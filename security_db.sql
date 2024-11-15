-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2024 at 01:57 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `security_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(94, 31, 24, 'carot', 12, 1, 'carrot.jpg'),
(110, 38, 24, 'carrot', 12, 1, 'carrot.jpg'),
(119, 59, 26, 'Celery', 10, 1, 'celery.jpg'),
(120, 59, 24, 'Carrot', 12, 1, 'carrot.jpg'),
(121, 59, 25, 'Tomato', 11, 1, 'Tomato.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(12, 43, 'Lucas', 'p19011308@student.newinti.edu.my', '0175407968', 'Hello, what is the available time for shipping ya?');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `notification`, `payment_status`) VALUES
(49, 59, 'Lucas', '0175201314', 'p19011308@student.newinti.edu.my', 'cash on delivery', ' No18, Jalan Penang 1 George Town 11700', ', Tomato ( 1 ), Celery ( 1 ), Apple ( 1 ), Banana ( 1 )', 45, '15-Nov-2024', 'yes', 'completed'),
(50, 59, 'Lucas', '0175407968', 'p19011308@student.newinti.edu.my', 'cash on delivery', ' No18, Jalan Penang 1 George Town 11700', ', Whole Chicken ( 1 )', 21, '15-Nov-2024', 'null', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(20) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `sold` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `details`, `price`, `image`, `sold`) VALUES
(24, 'Carrot', 'vegetables', 'Carrot is good for eyes!', 12, 'carrot.jpg', 21),
(25, 'Tomato', 'vegetables', 'Fresh tomatos from farm', 11, 'Tomato.jpg', 10),
(26, 'Celery', 'vegetables', 'Celery contains vitamin C!', 10, 'celery.jpg', 7),
(28, 'Apple', 'fruits', 'Apples are imported from Australlia, fresh! Eat more apple healthy life!', 8, 'apple.png', 1),
(29, 'Tilapia', 'seafood', 'Tilapia is good for brain!', 14, 'download.jpeg', 0),
(30, 'Salmon', 'seafood', 'Fresh Salmon from imported!', 26, 'salmon fish.png', 3),
(31, 'Mackerel', 'seafood', 'Fresh and good for BBQ!', 19, 'download (1).jpeg', 0),
(32, 'Pear', 'fruits', 'Fresh Pear! Eat more fruits good for food processing!', 13, 'download (2).jpeg', 0),
(33, 'Banana', 'fruits', 'Banana is imported from Canary islands. Healthy is from everyday 1 banana!', 16, 'istockphoto-1145222158-612x612.jpg', 1),
(34, 'Meat', 'meat', 'Moo moo... Fresh meat!', 20, 'pork.jpeg', 0),
(35, 'Whole Chicken', 'meat', 'Fresh cleaned Chicken!', 21, 'duck.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(100) NOT NULL,
  `total` int(100) NOT NULL,
  `year` int(100) NOT NULL,
  `month` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `total`, `year`, `month`) VALUES
(6, 74, 2024, 11),
(7, 45, 2024, 11),
(8, 21, 2024, 11);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `number` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `pin` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `number`, `address`, `city`, `pin`, `status`, `user_type`) VALUES
(36, 'admin', 'admin@gmail.com', '$2y$10$l15nSWVEA7AlGYuHBLOqQOnwlGp0w5gq9drNrSFlNwTHpkvMknyKC', '', '', '', '', 1, 'admin'),
(38, 'user', 'seller@gmail.com', '$2y$10$Qsssg7NKOck4I0xfDXCuv.n3pd5sQkQj4QPMSoBMZVuzY.mTx.WJu', '', '', '', '', 1, 'seller'),
(59, 'Lucas', 'p19011308@student.newinti.edu.my', '$2y$10$xunRErtjFMd7./HuQQJ2q.Apvcvf61IoCy6dAGZZ2sZpXofuC//1u', '0175201314   ', 'No18, Jalan Penang 1', 'George Town', '11700', 1, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(55, 33, 28, 'apple', 8, 'apple.png'),
(56, 59, 30, 'Salmon', 26, 'salmon fish.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
