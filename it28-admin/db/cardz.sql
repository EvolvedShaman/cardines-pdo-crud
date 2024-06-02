-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2024 at 10:19 AM
-- Server version: 10.11.7-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u593341949_db_cardines`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(6) UNSIGNED NOT NULL,
  `street_address` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `postal_code` varchar(20) NOT NULL,
  `country` varchar(100) NOT NULL,
  `payment_id` int(6) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `street_address`, `city`, `state`, `postal_code`, `country`, `payment_id`, `created_at`) VALUES
(10, 'zone3 mantibugao', 'bukidnon', 'philippines', '8703', 'philippines', 15, '2024-05-30 23:51:17');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(6) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `product_name`, `price`, `payment_method`, `created_at`) VALUES
(15, 'Splendor of Waters', 450.00, 'PayMaya', '2024-05-30 23:51:08');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `rrp` decimal(10,0) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL,
  `img` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `rrp`, `quantity`, `img`, `date_added`) VALUES
(1, 'Air Jordan 1 Mid\r\nWomen\'s Shoes', 'US 9.5, \r\nUS 9\r\n', 7000, 7000, 5, 'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/b720303b-a097-4a59-98c8-fdedaf369ad6/air-jordan-1-mid-shoes-86f1ZW.png', '2024-05-27 17:30:38'),
(2, 'Nike Dunk Low\r\nMen\'s Shoes', ' 1 colour', 6122, 6122, 8, 'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/c960a73e-8565-4cc6-9329-d2449c1944df/dunk-low-shoes-kKHp1z.png', '2024-05-29 08:50:13'),
(3, 'Nike Air Max Plus\r\nOlder Kids\' Shoes', 'Who says kids don\'t deserve big cushioning? Not us. Get a taste of our legendary Tuned Air technology with the Nike Air Max Plus. From the school playground to your back garden, these comfy kicks are ready to play with breathable mesh fabric up top and a ', 900, 900, 23, 'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/8def06bd-c9ea-4634-a47b-0bde92ebcbc3/air-max-plus-older-shoes-rQhBJR.png', '2024-05-29 08:51:36'),
(4, 'Jordan Velocity\r\n', 'Duffle Bag (36L)', 700, 700, 3, 'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/7672276b-7249-46cc-88a9-c911afac309c/jordan-velocity-duffle-bag-36l-9PPC9W.png', '2024-05-29 08:52:47'),
(10, 'Jordan Everyday Essentials\r\n', 'Crew Socks', 200, 200, 4, 'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/c02be3c0-da06-438f-87fc-b0c70bea8314/jordan-everyday-essentials-crew-socks-dX03mH.png', '2024-05-29 08:54:22'),
(11, 'Sapwood Blade', 'Base ATK: 44\r\n2nd Stat: Energy Recharge +6.7%', 1500, 1500, 4, 'https://gamesfuze.b-cdn.net/wp-content/uploads/2022/08/Arakalari-Sword.jpg', '2024-05-29 08:57:29'),
(12, 'Kagotsurube Isshin', 'Base ATK: 42\r\n2nd Stat: ATK +9.0%', 2210, 2210, 3, 'https://i.etsystatic.com/22660927/r/il/98a749/4165719013/il_1140xN.4165719013_rsbl.jpg', '2024-05-29 08:58:41'),
(13, 'Cinnabar Spindle', 'Base ATK: 41\r\n2nd Stat: DEF +15.0%', 2599, 2599, 2, 'https://www.ginx.tv/uploads2/Genshin_Impact/cinnabar_spindle/genshin-impact-cinnabar-spindle-weapon-mihoyo.JPG', '2024-05-29 09:01:28');

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
(0, 'xera', '$2y$10$JmhAAtRK3sU4w0R3Eg6utOepzQdscc.UnNBOEBHbL5DEthUv7v3Ae', '2024-05-30 23:57:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_id` (`payment_id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_ibfk_1` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
