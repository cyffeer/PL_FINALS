-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2024 at 01:13 PM
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
-- Database: `shoepe`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `shoe_id` int(11) DEFAULT NULL,
  `shoename` varchar(100) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `colorway` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `size` float DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `imagepath` varchar(255) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `shoe_id`, `shoename`, `brand`, `colorway`, `price`, `size`, `quantity`, `imagepath`, `username`) VALUES
(31, 1, 'Air Jordan 1 High', 'Jordan', 'Lost & Found', 20000, 0, 1, 'images/air_jordan1_high.png', 'cyfer');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `shoe_id` int(11) DEFAULT NULL,
  `shoename` varchar(100) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `colorway` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `size` float DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `imagepath` varchar(255) DEFAULT NULL,
  `username_owner` varchar(100) DEFAULT NULL,
  `username_buyer` varchar(100) DEFAULT NULL,
  `review` int(6) DEFAULT NULL,
  `review_descp` text DEFAULT NULL,
  `purchase_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `shoe_id`, `shoename`, `brand`, `colorway`, `price`, `size`, `quantity`, `imagepath`, `username_owner`, `username_buyer`, `review`, `review_descp`, `purchase_date`) VALUES
(1, 9, 'Nike Kobe 6 Protro', 'Nike', 'Grinch', 35000, 9.5, 1, 'images/kobe_6_grinch.png', 'Shoepe', 'cyfer', 4, 'good', '2024-02-13'),
(2, 5, 'Onitsuka Tiger Mexico 66', 'Onitsuka Tiger', '\"Kill Bill\"/Yelow Black', 11000, 9, 1, 'images/onitsuka_killbill.png', 'Shoepe', 'cyfer', 5, 'Nice Style!!', '2024-02-13'),
(3, 2, 'Adidas Sambas OG', 'Adidas', 'Black', 7100, 8, 1, 'images/adidas_sambas_black.png', 'Shoepe', 'tester1', NULL, NULL, '2024-02-13'),
(4, 1, 'Air Jordan 1 High', 'Jordan', 'Lost & Found', 20000, 9.5, 1, 'images/air_jordan1_high.png', 'Shoepe', 'tester2', NULL, NULL, '2024-02-13'),
(5, 1, 'Air Jordan 1 High', 'Jordan', 'Lost & Found', 20000, 9.5, 1, 'images/air_jordan1_high.png', 'Shoepe', 'tester2', 4, 'very nice', '2024-02-23'),
(6, 3, 'New Balance 2002r', 'New Balance', 'Eclipse/Castlerock', 10000, 10, 1, 'images/nb_2002r.png', 'Shoepe', 'cyfer', NULL, NULL, '2024-03-11'),
(7, 8, 'Air Jordan 4 SB', 'Jordan', 'Pine Green', 25000, 9.5, 1, 'images/air_jordan4_sb.png', 'Shoepe', 'cyfer', NULL, NULL, '2024-03-26'),
(8, 4, 'Adidas Sambas OG', 'Adidas', 'Green', 7100, 9.5, 1, 'images/adidas_sambas_green.png', 'Shoepe', 'cyfer', NULL, NULL, '2024-03-26'),
(9, 2, 'Adidas Sambas OG', 'Adidas', 'Black', 7100, 8, 1, 'images/adidas_sambas_black.png', 'Shoepe', 'cyfer', NULL, NULL, '2024-03-26');

-- --------------------------------------------------------

--
-- Table structure for table `opinions`
--

CREATE TABLE `opinions` (
  `opinion_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `opinion_text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `profile_picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `opinions`
--

INSERT INTO `opinions` (`opinion_id`, `username`, `opinion_text`, `created_at`, `profile_picture`) VALUES
(4, 'cyfer', 'What shoes should i buy?', '2024-01-26 16:29:37', NULL),
(5, 'niko', 'What is a good basketball shoe performance?', '2024-01-26 16:34:38', 'profile_pic/default.jpg'),
(6, 'cyfer', 'Wassup 😁', '2024-01-27 14:58:50', 'profile_pic/cyfer.jpg'),
(7, 'tester1', 'Who is your goat?', '2024-02-07 16:23:42', 'profile_pic/lbj.jpg'),
(8, 'tester2', 'Ako\'y pogi', '2024-02-14 15:45:04', 'profile_pic/timmy.png');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `reply_id` int(11) NOT NULL,
  `opinion_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `reply_text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`reply_id`, `opinion_id`, `username`, `reply_text`, `created_at`) VALUES
(1, 1, 'another_user', 'I agree with the sample opinion.', '2024-01-26 16:05:19'),
(9, 1, 'cyfer', 'i also agree!', '2024-01-26 16:18:55'),
(10, 4, 'niko', 'Adidas Spezial is cheap and also good as the Adidas Sambas! 🔥', '2024-01-26 16:42:30'),
(11, 5, 'pogi', 'Kobe\'s 4 lyf!!💯', '2024-01-26 16:46:38'),
(12, 6, 'testes', 'Yow! 😊', '2024-01-27 15:01:13'),
(13, 6, 'tester1', 'Hello', '2024-02-07 16:23:28'),
(14, 7, 'cyfer', 'LeBron', '2024-02-12 05:37:40'),
(15, 7, 'cyfer', 'LeBron', '2024-02-12 05:38:17'),
(16, 7, 'tester2', 'Kobe', '2024-02-14 15:44:52');

-- --------------------------------------------------------

--
-- Table structure for table `shoes`
--

CREATE TABLE `shoes` (
  `id` int(11) NOT NULL,
  `shoename` varchar(100) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `colorway` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `size` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `imagepath` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shoes`
--

INSERT INTO `shoes` (`id`, `shoename`, `brand`, `colorway`, `price`, `size`, `quantity`, `imagepath`, `username`) VALUES
(1, 'Air Jordan 1 High', 'Jordan', 'Lost & Found', 20000, 9.5, 3, 'images/air_jordan1_high.png', 'Shoepe'),
(2, 'Adidas Sambas OG', 'Adidas', 'Black', 7100, 8, 2, 'images/adidas_sambas_black.png', 'Shoepe'),
(3, 'New Balance 2002r', 'New Balance', 'Eclipse/Castlerock', 10000, 10, 3, 'images/nb_2002r.png', 'Shoepe'),
(4, 'Adidas Sambas OG', 'Adidas', 'Green', 7100, 9.5, 3, 'images/adidas_sambas_green.png', 'Shoepe'),
(5, 'Onitsuka Tiger Mexico 66', 'Onitsuka Tiger', '\"Kill Bill\"/Yelow Black', 11000, 9, 2, 'images/onitsuka_killbill.png', 'Shoepe'),
(6, 'Asics Gel 1130', 'Asics', 'Cream/Ironclad', 9800, 10.5, 2, 'images/asic_gel.png', 'Shoepe'),
(7, 'Air Jordan 4', 'Jordan', 'Thunder', 13000, 8.5, 2, 'images/air_jordan4.png', 'Shoepe'),
(8, 'Air Jordan 4 SB', 'Jordan', 'Pine Green', 25000, 9.5, 3, 'images/air_jordan4_sb.png', 'Shoepe'),
(9, 'Nike Kobe 6 Protro', 'Nike', 'Grinch', 35000, 9.5, 4, 'images/kobe_6_grinch.png', 'Shoepe'),
(10, 'Puma Palermo', 'Puma', 'Green/Orange', 6000, 9.5, 1, 'images/puma_palermo.png', 'cyfer'),
(11, 'Nike Kobe 6 Protro', 'Nike', 'Reverse Grinch', 30000, 10, 1, 'images/kobe_6_reverse.png', 'cyfer'),
(12, 'Vans Old Skool', 'Vans', 'Black', 3500, 9, 1, 'images/vans_oldskool.png', 'cyfer'),
(13, 'LeBron XXI', 'Nike', 'Conchiolin', 7900, 10, -1, 'images/lbj21.png', 'tester1'),
(14, 'Nike Kobe 5 Protro', 'Nike', 'Champ Lakers', 20000, 10, 1, 'images/kobe5.jpg', 'tester2');

-- --------------------------------------------------------

--
-- Table structure for table `shoe_plots`
--

CREATE TABLE `shoe_plots` (
  `id` int(11) NOT NULL,
  `shoe_id` int(11) NOT NULL,
  `plot_filename` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shoe_plots`
--

INSERT INTO `shoe_plots` (`id`, `shoe_id`, `plot_filename`, `created_at`) VALUES
(9, 1, 'plots\\shoe_sales_plot_1.png', '2024-03-26 11:50:28'),
(10, 2, 'plots\\shoe_sales_plot_2.png', '2024-03-26 11:54:20'),
(11, 3, 'plots\\shoe_sales_plot_3.png', '2024-03-26 11:54:44'),
(12, 4, 'plots\\shoe_sales_plot_4.png', '2024-03-26 11:55:14'),
(13, 2, 'plots\\shoe_sales_plot_2.png', '2024-03-26 12:01:48'),
(14, 2, 'plots\\shoe_sales_plot_2.png', '2024-03-26 12:03:28'),
(15, 2, 'plots\\shoe_sales_plot_2.png', '2024-03-26 12:03:30'),
(16, 2, 'plots\\shoe_sales_plot_2.png', '2024-03-26 12:03:47'),
(17, 2, 'plots\\shoe_sales_plot_2.png', '2024-03-26 12:06:37');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `profile_picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `fullname`, `phone`, `address`, `profile_picture`) VALUES
(2, 'cyfer', '0f7dc74bf57dc54f436e8ef8053be8ddfcce0f2d', 'cyfernikolaisupleo@gmail.com', 'Cyfer Nikolai Supleo', '09086950606', 'C7 Maligaya St. Joyville Subd.', 'profile_pic/cyfer.jpg'),
(3, 'tester', '5cec175b165e3d5e62c9e13ce848ef6feac81bff', 'testickle@gmail.com.ph', 'Test Tickle', '09255364234', 'C7 Maligaya St. Joyville Subd.', ''),
(4, 'niko', '4a73a0b82e2294053c7e9998b3f6dfafa28bd6e3', 'niko2gmail.com', 'Niko Carlota', '09176950606', '2D Maria Elena Bahay Toro Quezon City', 'profile_pic/default.jpg'),
(5, 'pogi', '4a73a0b82e2294053c7e9998b3f6dfafa28bd6e3', 'pogionly@gmail.com', 'Pogi Only', '09099090909', 'Quezon City', 'profile_pic/bball.jpg'),
(6, 'testes', '4a73a0b82e2294053c7e9998b3f6dfafa28bd6e3', 'testes@gmail.com', 'Tes Tes', '09123456781', 'Quezon City', 'profile_pic/kobe.jpg'),
(7, 'sample_user', 'password123', 'sample@email.com', 'Sample User', '123456789', 'Sample Address', 'profile_pic/default.jpg'),
(8, 'lulu', '4a73a0b82e2294053c7e9998b3f6dfafa28bd6e3', 'lulu@gmail.com', 'Lu Lu', '12345678912', 'Quezon City', 'profile_pic/default.jpg'),
(9, 'LBJ', '8619ebe5b9bfe8462f46cc23c3db849c6f33ed70', 'LBJ@gmail.com', 'Lebron James', '09230661231', 'Ohio, USA', 'profile_pic/default.jpg'),
(10, 'tester1', '3be0554be5a11ea9ccbc5dbe610a263808d8550d', 'tester@gmail.com', 'Tester', '09086950606', 'Quezon City', 'profile_pic/lbj.jpg'),
(11, 'tester2', '3be0554be5a11ea9ccbc5dbe610a263808d8550d', 'qweryy@gmail.com', 'Tester 2', '1234567890', 'Quezon City', 'profile_pic/timmy.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shoe_id` (`shoe_id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `opinions`
--
ALTER TABLE `opinions`
  ADD PRIMARY KEY (`opinion_id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`reply_id`);

--
-- Indexes for table `shoes`
--
ALTER TABLE `shoes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoe_plots`
--
ALTER TABLE `shoe_plots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `opinions`
--
ALTER TABLE `opinions`
  MODIFY `opinion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `reply_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `shoes`
--
ALTER TABLE `shoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `shoe_plots`
--
ALTER TABLE `shoe_plots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`shoe_id`) REFERENCES `shoes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
