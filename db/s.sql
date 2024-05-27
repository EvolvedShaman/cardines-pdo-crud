-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2024 at 09:55 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `s`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `street` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) DEFAULT NULL,
  `postal_code` varchar(20) NOT NULL,
  `country` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `street`, `city`, `state`, `postal_code`, `country`, `created_at`) VALUES
(4, 1, 'sankana', 'sdjsand', 'sadkjsakd', 'sdnadnsa', 'asdkjasdk', '2024-05-24 02:25:48'),
(5, 1, 'sdasdasd', 'sadasd', 'sadsad', 'asdsad', 'sadasdas', '2024-05-24 02:30:24'),
(6, 1, 'sdfsdf', 'sdfsd', 'sdfsdf', 'sdfsdf', 'sdfsdf', '2024-05-24 02:32:47'),
(7, 1, 'ewrwer', 'werewrwe', '', 'werewrwer', 'erwer', '2024-05-24 02:34:39'),
(8, 1, 'sdasd', 'sadasd', '', 'asdsad', 'dsad', '2024-05-24 02:35:36'),
(9, 1, 'sdfsdf', 'sfdsfsdf', 'sdfsdfsd', 'sdfsdfsd', 'sdfsdfsd', '2024-05-24 02:54:15'),
(10, 1, 'ewrewr', 'ewrewr', 'ewrewr', 'ewrewr', 'ewrwer', '2024-05-25 18:34:42'),
(11, 1, 'asdsad', 'sadsad', 'asdasd', 'sadsad', 'sadsad', '2024-05-25 18:37:58'),
(12, 1, 'sdsad', 'sadsad', 'asdsad', 'sadsa', 'sadsad', '2024-05-25 23:17:16'),
(13, 1, 'sdsad', 'sadsad', 'asdsad', 'sadsa', 'sadsad', '2024-05-25 23:24:43'),
(14, 1, 'sdsad', 'sadsad', 'asdsad', 'sadsa', 'sadsad', '2024-05-25 23:31:39'),
(15, 1, 'dasdsad', 'asdsad', 'asdsad', 'asdsad', 'sadasd', '2024-05-25 23:32:48'),
(16, 1, 'sdasdsa', 'asdsad', 'sdasd', 'asdsad', 'asdasdsad', '2024-05-25 23:48:52'),
(17, 1, 'sdasdsa', 'asdsad', 'sdasd', 'asdsad', 'asdasdsad', '2024-05-25 23:49:04'),
(18, 1, 'dsadasd', 'asdsadsa', 'asdsadsa', 'asdsdw', 'awdawdawd', '2024-05-26 00:07:22'),
(19, 1, 'sdasd', 'asdasd', 'sadsad', 'asdsadsa', 'PHI', '2024-05-26 00:22:01'),
(20, 1, '23213', '23123', '123213', '213213', 'PHI', '2024-05-26 00:29:35'),
(21, 1, '324324', '324324', '23432', '231232', 'CA', '2024-05-26 00:42:30'),
(22, 1, 'dsadsa', 'asdsadas', 'asdasd', 'asdsadsa', 'PHI', '2024-05-26 00:44:41'),
(23, 1, '1232321', '23123', '2312', 'weqeqw', 'CA', '2024-05-26 01:12:02'),
(24, 1, 'ggnako', 'maay balay', 'sdd', 'sdas', 'PHI', '2024-05-26 15:23:46'),
(25, 1, 'iiiiiiii', 'kkkkk', 'kkk', 'kkk', 'UK', '2024-05-26 15:42:06'),
(26, 1, 'zzzzzzzzzzzz', 'zzzzzzzzzzzzzzzzzz', 'zzzzzzzzzzzz', 'zzzzzzzzzzz', 'PHI', '2024-05-26 23:57:59'),
(27, 1, '21212sadsa', 'asdsa', 'sdsa', 'sadsad', 'CA', '2024-05-27 07:58:29');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(6) UNSIGNED NOT NULL,
  `card_number` varchar(16) NOT NULL,
  `expiry_date` varchar(7) NOT NULL,
  `cvv` varchar(3) NOT NULL,
  `amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `card_number`, `expiry_date`, `cvv`, `amount`) VALUES
(1, 'asdsad', '2323', 'wew', 21341242.00),
(2, 'joasd', 'asdsads', 'sda', 0.00),
(3, 'dasd', 'asdsad', 'sad', 0.00),
(4, 'dasd', 'asdsad', 'sad', 0.00),
(5, 'sdsad', 'asdasd', 'sad', 0.00),
(6, '1234567890987654', '10/09/2', '456', 200.00),
(7, '1111111111111111', '2024-05', '111', 700.00),
(11, '3322445566554455', '2024-05', '455', 333.00),
(12, '0935672634812121', '2024-05', '212', 999.00),
(13, '9999999999999999', '2024-05', '878', 8888.00),
(14, '1234231212121212', '2024-05', '123', 132234.00),
(15, '1234231212121212', '2024-05', '123', 132234.00),
(16, '1234231212121212', '2024-05', '123', 132234.00),
(17, '1231212121212121', '2024-05', '231', 22.00);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `rrp` decimal(10,0) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL,
  `img` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `rrp`, `quantity`, `img`, `date_added`) VALUES
(1, 'Running Shoes', 'A good pair of running shoes is essential for exercise and daily activities. Look for ones with ample cushioning, support, and flexibility to reduce the risk of injury and enhance performance.', 500, 500, 100, 'https://hips.hearstapps.com/hmg-prod/images/run-reebok-running-shoes-64e3beadbe692.jpg?crop=0.888888888888889xw:1xh;center,top&resize=1200:*', '2024-05-12 00:00:00'),
(2, 'Casual Sneakers', 'Versatile and comfortable, casual sneakers are perfect for everyday wear. Choose a stylish pair that matches your personal style and can easily transition from casual outings to more relaxed work environments.', 100, 100, 333, 'https://img.lazcdn.com/g/p/94f1efc55f54ccba157da0e7845f97ae.jpg_960x960q80.jpg_.webp', '2024-05-12 00:00:00'),
(3, 'Hiking Boots', ' For outdoor adventures and trekking, a sturdy pair of hiking boots is indispensable. Look for boots with durable materials, good ankle support, and reliable traction to ensure comfort and safety on rough terrain.', 450, 450, 96, 'data:image/jpeg;base64,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', '2024-05-12 00:00:00'),
(4, 'BMW R 1200 GS', ' Whether it\'s for business meetings, formal events, or special occasions, a pair of dress shoes is a must. Opt for classic styles like oxfords or derbies in neutral colors like black or brown for maximum versatility.', 6000, 6000, 40, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlG-uw5tNMQr1vdYDlwXhSW44bIUtNa2Phw0OlPq1mEYxY8F2aJ298xrotr7B-GJM6mZU&usqp=CAU', '2024-05-12 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sale_id` int(11) NOT NULL,
  `sale_name` varchar(100) NOT NULL,
  `sale_details` varchar(255) NOT NULL,
  `sale_retail_price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`sale_id`, `sale_name`, `sale_details`, `sale_retail_price`) VALUES
(0, 'fdsfds', 'sdfdsf', 31232),
(0, 'dsad', 'sdsadsasd', 1234123),
(0, 'adsadasdsa', 'asdsadsad', 4324),
(0, 'slajdlsa', 'dasndlksanlsa', 12312312);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'admin', '$2y$10$kGp4g1TjBK4XwLIwRbBHSeZ4W5FpPbYoB1ap5NfFUjUPAcE3KR5QG', '2024-04-29 16:39:58'),
(2, 'opop', '$2y$10$Am8Qz/CkG2DwolWsIRz6wuq4jsq/jxNXLtFUG/wUpZZ1D2m1X642C', '2024-05-24 01:00:35'),
(3, 'OPOP12', '$2y$10$WdT7RnVn2hupQ0m1H4Yite02fuX/A71L8W2U2aW2vbJUfhzE/7tDi', '2024-05-25 13:17:17'),
(4, 'joshua', '$2y$10$2.MsXKvggTO49xb3qMCXyeRzLNeITyYKRZKzlL1iVsROkPpQnz0Hm', '2024-05-26 09:33:11');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone_number` int(11) NOT NULL,
  `age` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`id`, `user_id`, `first_name`, `last_name`, `phone_number`, `age`) VALUES
(1, 1, 'joshau', 'quidit', 2147483647, 77),
(2, 1, 'dasdsad', 'asdsads', 3432, 213),
(3, 1, 'joahu', 'Sas', 2324, 12),
(4, 1, 'joshuad', 'qhiowydioa', 2147483647, 12),
(5, 1, 'sdsadsa', 'asdsadsa', 0, 0),
(6, 1, 'sdhlsahdlsald', 'sadasdsa', 0, 0),
(7, 1, '83y43yr', '432rd32', 936756836, 12),
(8, 1, '83y43yr', '432rd32', 936756836, 12),
(9, 1, '83y43yr', '432rd32', 936756836, 12),
(10, 1, 'joshua', 'oqwyeowqiehw', 0, 23),
(11, 1, 'joajsAS', 'SasA', 2147483647, 2),
(12, 1, 'dfsdf', 'sdfsdfds', 2147483647, 23),
(13, 1, 'sndsndsa', 'sdsadsa', 2147483647, 34),
(14, 1, 'sadsd', 'sdsaddsa', 2147483647, 12),
(15, 1, 'opop', 'quidit', 2147483647, 12),
(16, 1, 'dsadsad', 'asdsadsadsa', 2147483647, 56),
(17, 1, 'joshau', 'quidit', 2147483647, 34),
(18, 1, 'opop', 'opop', 2147483647, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
