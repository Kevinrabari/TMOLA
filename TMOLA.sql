-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2023 at 10:20 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tmola`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_master`
--

CREATE TABLE `admin_master` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(50) NOT NULL,
  `adminPassword` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_master`
--

INSERT INTO `admin_master` (`adminId`, `adminName`, `adminPassword`) VALUES
(6, 'Kevin', 'Kevin@123');

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `orderId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `orderQuantity` varchar(100) NOT NULL,
  `orderTotalpayment` decimal(10,0) NOT NULL,
  `paymentStatus` int(11) NOT NULL,
  `deliveryOption` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`orderId`, `productId`, `userId`, `orderQuantity`, `orderTotalpayment`, `paymentStatus`, `deliveryOption`) VALUES
(1, 2, 1, '2', '900', 0, 0),
(3, 12, 1, '1', '1650', 0, 0),
(4, 11, 1, '2', '3400', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `people_review`
--

CREATE TABLE `people_review` (
  `reviewId` int(5) NOT NULL,
  `reviewRating` int(1) NOT NULL,
  `reviewComment` varchar(500) DEFAULT NULL,
  `userId` int(11) NOT NULL,
  `productId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `people_review`
--

INSERT INTO `people_review` (`reviewId`, `reviewRating`, `reviewComment`, `userId`, `productId`) VALUES
(8, 3, 'Test', 1, 1),
(9, 4, 'test', 1, 2),
(10, 2, 'Test from Mihir', 1, 11),
(11, 2, 'Test from Mihir', 1, 11);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `categoryId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `categoryName` varchar(50) NOT NULL,
  `productQuantity` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`categoryId`, `productId`, `categoryName`, `productQuantity`) VALUES
(100, 0, 'Televisions', ''),
(101, 0, 'Mobiles', ''),
(102, 0, 'Laptops', ''),
(103, 0, 'New TV', ''),
(104, 0, 'New laptop', '');

-- --------------------------------------------------------

--
-- Table structure for table `product_master`
--

CREATE TABLE `product_master` (
  `productId` int(11) NOT NULL,
  `categoryId` int(11) NOT NULL,
  `discountId` int(11) DEFAULT NULL,
  `ratingId` int(11) DEFAULT NULL,
  `ProductImages1` varchar(60) DEFAULT NULL,
  `ProductImages2` varchar(60) DEFAULT NULL,
  `ProductImages3` varchar(60) DEFAULT NULL,
  `productName` varchar(50) NOT NULL,
  `productDescription` varchar(500) NOT NULL,
  `productRating` int(11) DEFAULT NULL,
  `productPrice` decimal(10,2) NOT NULL,
  `discountPrice` decimal(10,2) DEFAULT NULL,
  `productOverview` varchar(500) DEFAULT NULL,
  `productFeatures` varchar(500) DEFAULT NULL,
  `productAdditionalInfo` varchar(500) DEFAULT NULL,
  `productWarranty` varchar(50) DEFAULT NULL,
  `productQuality` varchar(10) DEFAULT NULL,
  `productQuantity` varchar(10) DEFAULT NULL,
  `productModel` varchar(50) NOT NULL,
  `productShortDes` varchar(200) NOT NULL,
  `Adv` varchar(11) DEFAULT NULL,
  `Main` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_master`
--

INSERT INTO `product_master` (`productId`, `categoryId`, `discountId`, `ratingId`, `ProductImages1`, `ProductImages2`, `ProductImages3`, `productName`, `productDescription`, `productRating`, `productPrice`, `discountPrice`, `productOverview`, `productFeatures`, `productAdditionalInfo`, `productWarranty`, `productQuality`, `productQuantity`, `productModel`, `productShortDes`, `Adv`, `Main`) VALUES
(1, 100, 0, 0, 'Assets/Homepage/1.jpg', 'Assets/Homepage/2.jpg', 'Assets/Homepage/3.jpg', 'LG TV', 'LG 50\" 4K UHD HDR LED webOS Smart TV (50UQ7590PUB) - 2022 - Dark Iron Grey', 0, '600.00', '0.00', 'Witness every scene in utmost clarity with the LG 50\" HDR smart TV. Boasting a LED display, this TV presents your movies and other content in Ultra HD 4K resolution with realistic colours and precise image detailing. Additionally, the webOS operating sys...', '4K', '60Hz', '1 Year', 'Best', '1', '', '', 'Yes', 'Yes'),
(2, 100, 0, 0, 'Assets/Homepage/1.jpg', 'Assets/Homepage/1.jpg', 'Assets/Homepage/1.jpg', 'LG TV', 'LG 43\" 4K UHD HDR LED webOS Smart TV (43UP7560AUD) - 2021', 0, '450.00', '300.00', 'The LG 43\" smart TV offers a game-changing entertainment experience in the comfort of your home. With 4K UHD resolution and active HDR support, you can enjoy gaming, movies, and shows in vivid colours and sharp details. It is also equipped with webOS tha...', '4K', '60Hz', '1 Year', 'Best', '1', '', '', 'Yes', ''),
(3, 100, 0, 0, 'Assets/Homepage/6.jpg', 'Assets/Homepage/7.jpg', 'Assets/Homepage/5.jpg', 'Sony TV', 'test', 0, '750.00', '650.00', 'test', 'test', 'test', 'test', 'Best', '1', 'Sony', 'test', '', ''),
(4, 100, 0, 0, '', '', '', 'Sony Bravia TV', 'test 2', 0, '1700.00', '1600.00', 'test 3', 'test 4', 'test 5', '5 year', 'Good', '2', 'TV', 'test', '', ''),
(5, 100, 0, 0, 'Assets/Homepage/2.jpg', 'Assets/Homepage/2.jpg', 'Assets/Homepage/3.jpg', 'LG TV', 'LG 65\" 4K UHD HDR OLED webOS Evo ThinQ AI Smart TV (OLED65C2PUA) - 2022 - Dark Titan Silver', 0, '2200.00', '0.00', 'Create the entertainment space you always dreamt of with the LG 65\" 4K OLED Evo ThinQ AI smart TV. Powered by the a9 Gen 5 AI Processor 4K, this smart TV features a 65\" panel with slim bezel for spectacular images with perfect blacks, wide viewing angles...', '4K', '120Hz', '1 Year', 'Best', '3', '', '', 'Yes', ''),
(6, 100, 0, 0, 'Assets/Homepage/2.jpg', 'Assets/Homepage/1.jpg', 'Assets/Homepage/1.jpg', 'Samsung TV', 'Samsung 65\" 4K UHD OLED Tizen Smart TV (QN65S95BAFXZC)', 0, '2400.00', '0.00', 'With this Samsung 65-inch Smart TV in your living room, the entertainment possibilities are endless. It offers a 4K Ultra HD screen with OLED technology to ensure a dynamic viewing experience and a 120Hz refresh rate for crisp picture quality. Its also o...', '4K', '120Hz', '1 Year', 'Best', '4', '', '', '', ''),
(7, 100, 0, 0, 'Assets/Homepage/2.jpg', 'Assets/Homepage/3.jpg', 'Assets/Homepage/1.jpg', 'LG TV', 'LG 65\" 4K UHD HDR OLED webOS Evo ThinQ AI Smart TV (OLED65C2PUA) - 2022 - Dark Titan Silver', 0, '2000.00', '0.00', 'Create the entertainment space you always dreamt of with the LG 65\" 4K OLED Evo ThinQ AI smart TV. Powered by the a9 Gen 5 AI Processor 4K, this smart TV features a 65\" panel with slim bezel for spectacular images with perfect blacks, wide viewing angles...', '4K', '120Hz', '1 Year', 'Poor', '6', '', '', '', ''),
(8, 100, 0, 0, 'Assets/Homepage/1.jpg', 'Assets/Homepage/2.jpg', 'Assets/Homepage/3.jpg', 'Samsung TV', 'Samsung 75\" 4K UHD HDR QLED Tizen Smart TV (QN75Q60BAFXZC) - Titan Grey', 0, '1800.00', '0.00', 'Enjoy crystal clear picture quality with this Samsung 75-inch Smart TV. The 4K UHD display is enhanced by QLED technology, allowing you to play games, watch movies, and more with lag-free performance and vivid colours. It also offers surround sound audio...', '4K', '120Hz', '1 Year', 'Best', '3', '', '', '', ''),
(9, 100, 0, 0, 'Assets/Homepage/2.jpg', 'Assets/Homepage/3.jpg', 'Assets/Homepage/1.jpg', 'Sony TV', 'Sony BRAVIA 75\" 4K UHD HDR LED Google TV Smart TV (XR75X90K) - 2022', 0, '4000.00', '0.00', 'Bring an incredible cinematic experience home with this powerful 75\" Sony BRAVIA smart TV. Equipped with an impressive 4K Ultra HD resolution and colour-enhancing technologies, it renders your viewing experience a lifelike clarity. The Google TV operatin...', '4K', '120Hz', '1 Year', 'Average', '9', '', '', 'Yes', ''),
(10, 100, 0, 0, 'Assets/Homepage/1.jpg', 'Assets/Homepage/2.jpg', 'Assets/Homepage/2.jpg', 'Sony TV', 'Sony BRAVIA XR Z9J 75\" 8K UHD HDR LED Smart Google TV (XR75Z9J) - 2021', 0, '5000.00', '0.00', 'Enhance your entertainment with the help of this 75\" Sony BRAVIA XR 8K Google Smart TV. XR TRILUMINOUS PRO technology and XR 8K upscaling renders all of your content in true-to-life colour, clarity, and texture. Its thoughtfully designed to preserve the ...', '8K', '120Hz', '1 Year', 'Average', '9', '', '', 'Yes', ''),
(11, 101, 0, 0, 'Assets/Homepage/1.jpg', 'Assets/Homepage/3.jpg', 'Assets/Homepage/2.jpg', 'Koodo Samsung Galaxy S23 Ultra', 'Koodo Samsung Galaxy S23 Ultra 512GB - Phantom Black', 0, '1890.00', '1700.00', 'The next step is epic with the Samsung Galaxy S23 Ultra. With a 200MP camera and an impressive Night Mode powered by Nightography, capture lifes most important moments - no matter the lighting. Switch between gaming, streaming, and creating through its i...', '4K', '60Hz', '1 Year', 'Best', '1', '', '', 'Yes', 'Yes'),
(12, 101, 0, 0, 'Assets/Homepage/2.jpg', 'Assets/Homepage/3.jpg', 'Assets/Homepage/3.jpg', 'Samsung Glaxy S22 Ultra', 'Samsung Galaxy S22 Ultra, 128GB, Burgundy', 0, '1650.00', '0.00', 'Wherever you are, you’ll have the office in your pocket, with both Microsoft2 and Google cloud productivity tools natively integrated into Galaxy S22 Ultra. Break the limits of productivity with the iconic S Pen, now embedded.1 Effortlessly create prof...', '4K', '60Hz', '1 Year', 'Best', '1', '', '', 'Yes', ''),
(13, 101, 0, 0, 'Assets/Homepage/1.jpg', 'Assets/Homepage/2.jpg', 'Assets/Homepage/1.jpg', 'Iphone 11', 'Iphone 11 Pro Max, 128 GB', 0, '1100.00', '0.00', '', '4K', '60Hz', '1 Year', 'Best', '1', '', '', '', ''),
(14, 101, 0, 0, 'Assets/Homepage/1.jpg', 'Assets/Homepage/2.jpg', 'Assets/Homepage/3.jpg', 'Iphone 12', 'Iphone 11 Pro Max, 128 GB', 0, '1400.00', '0.00', '', '4K', '120Hz', '1 Year', 'Good', '2', '', '', '', ''),
(15, 101, 0, 0, 'Assets/Homepage/1.jpg', 'Assets/Homepage/1.jpg', 'Assets/Homepage/3.jpg', 'Google Pixel 5', 'Google Pixel 5 128GB - Sorta Sage - Unlocked', 0, '450.00', '0.00', 'Take your smartphone to the limits with the Google Pixel 5. This ultimate 5G Google phone is powered by a Qualcomm Snapdragon 765G processor, 8GB of RAM, and Android 11 for smooth streaming, gaming, and more. With stunning photo and video capabilities, w...', '4K', '120Hz', '1 Year', 'Best', '3', '', '', 'Yes', ''),
(16, 101, 0, 0, 'Assets/Homepage/2.jpg', 'Assets/Homepage/3.jpg', 'Assets/Homepage/1.jpg', 'Koodo Google Pixel 6', 'Koodo Google Pixel 6 Pro 128GB - Stormy Black - Monthly Tab Payment', 0, '600.00', '0.00', 'Stay in the moment with Google Pixel 6 Pro, a completely redesigned, fully loaded Google 5G phone. With a powerful camera system, next-gen Titan M2 security, and the custom-built Google Tensor processor, its the smartest and fastest Pixel yet. With faste...', '4K', '120Hz', '1 Year', 'Best', '4', '', '', 'Yes', ''),
(17, 101, 0, 0, 'Assets/Homepage/1.jpg', 'Assets/Homepage/3.jpg', 'Assets/Homepage/1.jpg', 'Samsung S21 Ultra', 'Samsung Galaxy S21 Ultra', 0, '1200.00', '0.00', 'The Samsung Galaxy S21 Ultra (SM-G998W 256GB) is a good Android phone with 2.84GHz Octa-core processor that allows run games and heavy applications.With one SIM card slot, the Samsung Galaxy S21 Ultra (SM-G998W 256GB) allows download up to 5000 Mbps for ...', '4K', '120Hz', '1 Year', 'Poor', '6', '', '', '', ''),
(18, 101, 0, 0, 'Assets/Homepage/1.jpg', 'Assets/Homepage/1.jpg', 'Assets/Homepage/2.jpg', 'Google Pixel 7', 'Google Pixel 7', 0, '800.00', '0.00', '', '4K', '120Hz', '1 Year', 'Best', '3', '', '', 'Yes', ''),
(19, 101, 0, 0, 'Assets/Homepage/1.jpg', 'Assets/Homepage/2.jpg', 'Assets/Homepage/1.jpg', 'Iphone 13', 'Iphone 13 Pro Max, 128 GB', 0, '1100.00', '0.00', '', '4K', '120Hz', '1 Year', 'Average', '9', '', '', '', ''),
(20, 101, 0, 0, 'Assets/Homepage/1.jpg', 'Assets/Homepage/3.jpg', 'Assets/Homepage/2.jpg', 'Iphone 14', 'Iphone 14 Pro Max, 128 GB', 0, '1500.00', '0.00', '', '8K', '120Hz', '1 Year', 'Average', '9', '', '', '', ''),
(21, 102, 0, 0, 'Assets/Homepage/2.jpg', 'Assets/Homepage/1.jpg', 'Assets/Homepage/2.jpg', 'Macbook Pro 2023', 'Macbook Pro 2022', 0, '1300.00', '0.00', '', '8K', '120Hz', '1 Year', 'Average', '9', '', '', 'Yes', ''),
(22, 102, 0, 0, 'Assets/Homepage/1.jpg', 'Assets/Homepage/2.jpg', 'Assets/Homepage/1.jpg', 'Macbook Pro 2022', 'Macbook Pro 2023', 0, '1500.00', '0.00', '', '8K', '120Hz', '1 Year', 'Average', '9', '', '', 'Yes', ''),
(23, 102, 0, 0, 'Assets/Homepage/2.jpg', 'Assets/Homepage/3.jpg', 'Assets/Homepage/3.jpg', 'Google Pixel Book Go', 'Google Pixel Book Go', 0, '650.00', '0.00', '', '8K', '120Hz', '1 Year', 'Average', '9', '', '', 'Yes', ''),
(24, 102, 0, 0, 'Assets/Homepage/1.jpg', 'Assets/Homepage/1.jpg', 'Assets/Homepage/2.jpg', 'Acer Spin 714', 'Acer 14\" Touchscreen Chromebook - Blue (Intel Core i5-1235U/256GB SSD/8GB RAM/Chrome OS)', 0, '730.00', '0.00', 'Do more with the versatile Acer touchscreen Chromebook on your desk or in your work bag. This portable laptop offers a 14\" full HD swivel display with touchscreen capabilities and a stylus, allowing you to complete productive work or personal tasks with ...', '8K', '120Hz', '1 Year', 'Average', '9', '', '', '', ''),
(25, 102, 0, 0, 'Assets/Homepage/1.jpg', 'Assets/Homepage/2.jpg', 'Assets/Homepage/1.jpg', 'Dell', 'Inspiron 16 Plus', 0, '2100.00', '0.00', 'Operating System Windows 11 Home, English Video Card NVIDIA® GeForce RTX™ 3060, 6 GB GDDR6, 60 W Display 16\", 3K 3072 x 1920, 60Hz, WVA, Non-Touch, Anti-Glare, 300 nit, ComfortView Plus Memory  32 GB,      16 GB, DDR5, 4800 MHz, dual-channel Hard Driv...', '8K', '120Hz', '1 Year', 'Average', '9', '', '', 'Yes', ''),
(26, 102, 0, 0, 'Assets/Homepage/1.jpg', 'Assets/Homepage/1.jpg', 'Assets/Homepage/3.jpg', 'Dell', 'XPS 13 Laptop', 0, '1300.00', '0.00', 'Processor 12th Gen Intel® Core™ i5-1230U (12 MB cache, 10 cores, 12 threads, up to 4.40 GHz Turbo) Operating System (Dell Technologies recommends Windows 11 Pro for business) Windows 11 Home, English Video Card Intel® Iris® Xe Graphics Display+F43  ...', '8K', '120Hz', '1 Year', 'Average', '9', '', '', '', ''),
(27, 102, 0, 0, 'Assets/Homepage/1.jpg', 'Assets/Homepage/1.jpg', 'Assets/Homepage/3.jpg', 'Macbook Pro 2021', 'Apple MacBook Pro 14\" (2021) - Space Grey (Apple M1 Pro Chip / 512GB SSD / 16GB RAM) - English', 0, '2450.00', '0.00', 'The first notebook of its kind, this Apple MacBook Pro is a beast. With the blazing-fast M1 Pro chip — the first Apple silicon designed for pros — you get groundbreaking performance and amazing battery life. Add to that a stunning Liquid Retina XDR d...', '8K', '120Hz', '1 Year', 'Average', '9', '', '', '', ''),
(28, 102, 0, 0, 'Assets/Homepage/1.jpg', 'Assets/Homepage/1.jpg', 'Assets/Homepage/1.jpg', 'Dell', '- XPS 15', 0, '3700.00', '0.00', 'Processor 12th Gen Intel® Core™ i9-12900HK (24 MB cache, 14 cores, 20 threads, up to 5.00 GHz Turbo) Operating System (Dell Technologies recommends Windows 11 Pro for business) Windows 11 Home, English Video Card NVIDIA® GeForce RTX™ 3050 Ti, 4 GB ...', '8K', '120Hz', '1 Year', 'Average', '9', '', '', 'Yes', ''),
(29, 102, 0, 0, 'Assets/Homepage/1.jpg', 'Assets/Homepage/3.jpg', 'Assets/Homepage/3.jpg', 'Lenovo Yoga 9i', 'Yoga 9i (14” Intel) 2 in 1 Laptop', 0, '1655.00', '0.00', 'Designed on Intel® Evo™ platform that provides enhanced performance & responsiveness 14 inch display, up to UHD optimized with Dolby Vision™ Combined with all-new Iris® Xe graphics that far exceed the usual integrated experience Contemporary 2 in 1...', '8K', '120Hz', '1 Year', 'Average', '9', '', '', 'Yes', ''),
(30, 102, 0, 0, 'Assets/Homepage/1.jpg', 'Assets/Homepage/3.jpg', 'Assets/Homepage/2.jpg', 'Asus CX9', 'ASUS Chromebook CX9', 0, '1150.00', '0.00', 'ASUS Chromebook CX9 is built for today’s fast-paced, constantly evolving business world — a world where many employees work remotely using cloud-first operating systems and collaborative tools such as Chrome OS. With an ultralight 2.31 lbs1 aluminum-...', '8K', '120Hz', '1 Year', 'Average', '9', '', '', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `product_payment`
--

CREATE TABLE `product_payment` (
  `paymentId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `paymentType` varchar(50) NOT NULL,
  `paymentAccountno` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_master`
--

CREATE TABLE `user_master` (
  `userId` int(11) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `userPassword` varchar(20) NOT NULL,
  `userFname` varchar(100) NOT NULL,
  `userLname` varchar(100) NOT NULL,
  `userTelephone` varchar(15) NOT NULL,
  `userAddress` varchar(100) NOT NULL,
  `userCity` varchar(100) NOT NULL,
  `userPostalcode` varchar(7) NOT NULL,
  `userEmail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_master`
--

INSERT INTO `user_master` (`userId`, `userName`, `userPassword`, `userFname`, `userLname`, `userTelephone`, `userAddress`, `userCity`, `userPostalcode`, `userEmail`) VALUES
(1, 'Mihir_17', 'Mihir@17', 'Mihir', 'Lad', '4168365634', 'Kitchener', 'Ontario', 'N2P0H7', 'mihir172@gmail.com'),
(6, 'Kevin_17', '$2y$10$9QARwbXUKmNfq', 'Kevin', 'LAD', '(416) 836-5634', '530, Turnbridge Rd', 'Ontario', 'L5B 3L6', 'Mihir17295@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_payment`
--

CREATE TABLE `user_payment` (
  `paymentId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `paymentAmount` int(11) NOT NULL,
  `paymentStatus` varchar(50) NOT NULL,
  `addedOn` datetime NOT NULL,
  `paymentAccountno` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_master`
--
ALTER TABLE `admin_master`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`orderId`),
  ADD KEY `p_id` (`productId`),
  ADD KEY `us_id` (`userId`);

--
-- Indexes for table `people_review`
--
ALTER TABLE `people_review`
  ADD PRIMARY KEY (`reviewId`),
  ADD KEY `pid` (`productId`),
  ADD KEY `uid` (`userId`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`categoryId`),
  ADD KEY `po_id` (`productId`);

--
-- Indexes for table `product_master`
--
ALTER TABLE `product_master`
  ADD PRIMARY KEY (`productId`),
  ADD KEY `cat_id` (`categoryId`);

--
-- Indexes for table `product_payment`
--
ALTER TABLE `product_payment`
  ADD PRIMARY KEY (`paymentId`),
  ADD KEY `prod_id` (`productId`),
  ADD KEY `user_id` (`userId`);

--
-- Indexes for table `user_master`
--
ALTER TABLE `user_master`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `user_payment`
--
ALTER TABLE `user_payment`
  ADD PRIMARY KEY (`paymentId`),
  ADD KEY `userid` (`userId`),
  ADD KEY `pro_id` (`productId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_master`
--
ALTER TABLE `admin_master`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `people_review`
--
ALTER TABLE `people_review`
  MODIFY `reviewId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `categoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `product_master`
--
ALTER TABLE `product_master`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `product_payment`
--
ALTER TABLE `product_payment`
  MODIFY `paymentId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_master`
--
ALTER TABLE `user_master`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_payment`
--
ALTER TABLE `user_payment`
  MODIFY `paymentId` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `p_id` FOREIGN KEY (`productId`) REFERENCES `product_master` (`productId`) ON DELETE CASCADE,
  ADD CONSTRAINT `us_id` FOREIGN KEY (`userId`) REFERENCES `user_master` (`userId`) ON DELETE CASCADE;

--
-- Constraints for table `people_review`
--
ALTER TABLE `people_review`
  ADD CONSTRAINT `pid` FOREIGN KEY (`productId`) REFERENCES `product_master` (`productId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `uid` FOREIGN KEY (`userId`) REFERENCES `user_master` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_master`
--
ALTER TABLE `product_master`
  ADD CONSTRAINT `cat_id` FOREIGN KEY (`categoryId`) REFERENCES `product_category` (`categoryId`) ON DELETE CASCADE;

--
-- Constraints for table `product_payment`
--
ALTER TABLE `product_payment`
  ADD CONSTRAINT `prod_id` FOREIGN KEY (`productId`) REFERENCES `product_master` (`productId`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_id` FOREIGN KEY (`userId`) REFERENCES `user_master` (`userId`) ON DELETE CASCADE;

--
-- Constraints for table `user_payment`
--
ALTER TABLE `user_payment`
  ADD CONSTRAINT `pay_id` FOREIGN KEY (`paymentId`) REFERENCES `product_payment` (`paymentId`) ON DELETE CASCADE,
  ADD CONSTRAINT `pro_id` FOREIGN KEY (`productId`) REFERENCES `product_master` (`productId`) ON DELETE CASCADE,
  ADD CONSTRAINT `userid` FOREIGN KEY (`userId`) REFERENCES `user_master` (`userId`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
