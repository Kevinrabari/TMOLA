-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2023 at 06:45 PM
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
-- Table structure for table `product_master`
--

CREATE TABLE `product_master` (
  `productId` int(11) NOT NULL,
  `categoryId` int(11) NOT NULL,
  `discountId` int(11) NOT NULL,
  `ratingId` int(11) NOT NULL,
  `ProductImages1` varchar(60) NOT NULL,
  `ProductImages2` varchar(60) NOT NULL,
  `ProductImages3` varchar(60) NOT NULL,
  `productName` varchar(50) NOT NULL,
  `productDescription` varchar(500) NOT NULL,
  `productRating` int(11) NOT NULL,
  `productPrice` decimal(10,0) NOT NULL,
  `discountPrice` float NOT NULL,
  `productOverview` varchar(500) NOT NULL,
  `productFeatures` varchar(500) NOT NULL,
  `productAdditionalInfo` varchar(500) NOT NULL,
  `productWarranty` varchar(50) NOT NULL,
  `productQuality` varchar(10) NOT NULL,
  `productQuantity` varchar(10) NOT NULL,
  `productModel` varchar(50) NOT NULL,
  `productShortDes` varchar(200) NOT NULL,
  `Adv` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_master`
--

INSERT INTO `product_master` (`productId`, `categoryId`, `discountId`, `ratingId`, `ProductImages1`, `ProductImages2`, `ProductImages3`, `productName`, `productDescription`, `productRating`, `productPrice`, `discountPrice`, `productOverview`, `productFeatures`, `productAdditionalInfo`, `productWarranty`, `productQuality`, `productQuantity`, `productModel`, `productShortDes`, `Adv`) VALUES
(1, 104, 1, 0, 'Assets/Homepage/1.jpg', 'Assets/Homepage/2.jpg', 'Assets/Homepage/3.jpg', 'LG TV', 'LG 50\" 4K UHD HDR LED webOS Smart TV (50UQ7590PUB) - 2022 - Dark Iron Grey', 0, '600', 0, 'Witness every scene in utmost clarity with the LG 50\" HDR smart TV. Boasting a LED display, this TV presents your movies and other content in Ultra HD 4K resolution with realistic colours and precise image detailing. Additionally, the webOS operating system provides access to an array of entertainment apps to stream movies, shows, and more.', '4K', '60Hz', '1 Year', 'Best', '1', '', '', ''),
(2, 100, 1, 0, 'Assets/Homepage/1.jpg', 'Assets/Homepage/1.jpg', 'Assets/Homepage/1.jpg', 'LG TV', 'LG 43\" 4K UHD HDR LED webOS Smart TV (43UP7560AUD) - 2021', 0, '450', 0, 'The LG 43\" smart TV offers a game-changing entertainment experience in the comfort of your home. With 4K UHD resolution and active HDR support, you can enjoy gaming, movies, and shows in vivid colours and sharp details. It is also equipped with webOS that provides access to your favourite streaming apps, and features a simple interface for easy browsing and smart control options.', '4K', '60Hz', '1 Year', 'Best', '1', '', '', ''),
(3, 100, 1, 0, 'Assets/Homepage/2.jpg', 'Assets/Homepage/1.jpg', 'Assets/Homepage/1.jpg', 'Sony TV', 'Sony X80K 43\" 4K UHD HDR LED Smart Google TV (KD43X80K) - 2022', 0, '750', 0, 'Bring big screen entertainment to your home with this Sony 43\" 4K UHD HDR LED smart Google TV. With impressive sound and picture processing capabilities, this TV delivers 4K HDR content and lets you access movies, videos, shows and apps with Google TV in exceptional clarity and detail. Preloaded with YouTube, Netflix and Amazon Prime video, this TV offers instant and endless entertainment.', '4K', '60Hz', '1 Year', 'Best', '1', '', '', ''),
(4, 100, 1, 0, 'Assets/Homepage/1.jpg', 'Assets/Homepage/2.jpg', 'Assets/Homepage/3.jpg', 'Sony Bravia TV', 'Sony BRAVIA XR A90K 42\" 4K UHD HDR OLED Smart Google TV (XR42A90K) - 2022', 0, '1700', 0, 'Upgrade your entertainment area with the Sony BRAVIA XR A90K smart Google TV. This 42\" television offers incredible audio and video features, including Dolby Atmos support, a backlit OLED screen, and an intelligent processor that mimics real-life contrast and colours. Enjoy immersive movies, TV shows, games, and more with Sony.', '4K', '120Hz', '1 Year', 'Good', '2', '', '', 'Yes'),
(5, 100, 1, 0, 'Assets/Homepage/2.jpg', 'Assets/Homepage/2.jpg', 'Assets/Homepage/3.jpg', 'LG TV', 'LG 65\" 4K UHD HDR OLED webOS Evo ThinQ AI Smart TV (OLED65C2PUA) - 2022 - Dark Titan Silver', 0, '2200', 0, 'Create the entertainment space you always dreamt of with the LG 65\" 4K OLED Evo ThinQ AI smart TV. Powered by the a9 Gen 5 AI Processor 4K, this smart TV features a 65\" panel with slim bezel for spectacular images with perfect blacks, wide viewing angles, and impressive motion performance. Designed for cinematic viewing as well as gaming, it gives you a complete entertainment experience.', '4K', '120Hz', '1 Year', 'Best', '3', '', '', ''),
(6, 100, 1, 0, 'Assets/Homepage/2.jpg', 'Assets/Homepage/1.jpg', 'Assets/Homepage/1.jpg', 'Samsung TV', 'Samsung 65\" 4K UHD OLED Tizen Smart TV (QN65S95BAFXZC)', 0, '2400', 0, 'With this Samsung 65-inch Smart TV in your living room, the entertainment possibilities are endless. It offers a 4K Ultra HD screen with OLED technology to ensure a dynamic viewing experience and a 120Hz refresh rate for crisp picture quality. Its also optimized for PC or console gaming, with built-in voice assistant technology for ease of use.', '4K', '120Hz', '1 Year', 'Best', '4', '', '', 'Yes'),
(7, 100, 1, 0, 'Assets/Homepage/2.jpg', 'Assets/Homepage/3.jpg', 'Assets/Homepage/1.jpg', 'LG TV', 'LG 65\" 4K UHD HDR OLED webOS Evo ThinQ AI Smart TV (OLED65C2PUA) - 2022 - Dark Titan Silver', 0, '2000', 0, 'Create the entertainment space you always dreamt of with the LG 65\" 4K OLED Evo ThinQ AI smart TV. Powered by the a9 Gen 5 AI Processor 4K, this smart TV features a 65\" panel with slim bezel for spectacular images with perfect blacks, wide viewing angles, and impressive motion performance. Designed for cinematic viewing as well as gaming, it gives you a complete entertainment experience.', '4K', '120Hz', '1 Year', 'Poor', '6', '', '', ''),
(8, 100, 1, 0, 'Assets/Homepage/1.jpg', 'Assets/Homepage/2.jpg', 'Assets/Homepage/3.jpg', 'Samsung TV', 'Samsung 75\" 4K UHD HDR QLED Tizen Smart TV (QN75Q60BAFXZC) - Titan Grey', 0, '1800', 0, 'Enjoy crystal clear picture quality with this Samsung 75-inch Smart TV. The 4K UHD display is enhanced by QLED technology, allowing you to play games, watch movies, and more with lag-free performance and vivid colours. It also offers surround sound audio enhancements for a more immersive listening experience and wireless connection capabilities.', '4K', '120Hz', '1 Year', 'Best', '3', '', '', ''),
(9, 100, 1, 0, 'Assets/Homepage/2.jpg', 'Assets/Homepage/3.jpg', 'Assets/Homepage/1.jpg', 'Sony TV', 'Sony BRAVIA 75\" 4K UHD HDR LED Google TV Smart TV (XR75X90K) - 2022', 0, '4000', 0, 'Bring an incredible cinematic experience home with this powerful 75\" Sony BRAVIA smart TV. Equipped with an impressive 4K Ultra HD resolution and colour-enhancing technologies, it renders your viewing experience a lifelike clarity. The Google TV operating system enables quick access to your voice assistant and virtually endless streaming content.', '4K', '120Hz', '1 Year', 'Average', '9', '', '', 'Yes'),
(10, 100, 1, 0, 'Assets/Homepage/1.jpg', 'Assets/Homepage/2.jpg', 'Assets/Homepage/2.jpg', 'Sony TV', 'Sony BRAVIA XR Z9J 75\" 8K UHD HDR LED Smart Google TV (XR75Z9J) - 2021', 0, '5000', 0, 'Enhance your entertainment with the help of this 75\" Sony BRAVIA XR 8K Google Smart TV. XR TRILUMINOUS PRO technology and XR 8K upscaling renders all of your content in true-to-life colour, clarity, and texture. Its thoughtfully designed to preserve the accuracy of every picture from any angle, no matter where you are in the room.', '8K', '120Hz', '1 Year', 'Average', '9', '', '', ''),
(11, 101, 1, 0, 'Assets/Homepage/1.jpg', 'Assets/Homepage/3.jpg', 'Assets/Homepage/2.jpg', 'Koodo Samsung Galaxy S23 Ultra', 'Koodo Samsung Galaxy S23 Ultra 512GB - Phantom Black', 0, '1890', 0, 'The next step is epic with the Samsung Galaxy S23 Ultra. With a 200MP camera and an impressive Night Mode powered by Nightography, capture lifes most important moments - no matter the lighting. Switch between gaming, streaming, and creating through its incredibly large adaptive display, together with fast processing and powerful battery life.', '4K', '60Hz', '1 Year', 'Best', '1', '', '', ''),
(12, 101, 1, 0, 'Assets/Homepage/2.jpg', 'Assets/Homepage/3.jpg', 'Assets/Homepage/3.jpg', 'Samsung Glaxy S22 Ultra', 'Samsung Galaxy S22 Ultra, 128GB, Burgundy', 0, '1650', 0, 'Wherever you are, you’ll have the office in your pocket, with both Microsoft2 and Google cloud productivity tools natively integrated into Galaxy S22 Ultra. Break the limits of productivity with the iconic S Pen, now embedded.1 Effortlessly create professional, thumb-stopping content on your own with our best camera to date. Accomplish more than you ever have on a single charge, and power back up faster than ever.3,4 Keep your info safe and secure with built-in, multilayered Knox security.', '4K', '60Hz', '1 Year', 'Best', '1', '', '', 'Yes'),
(13, 101, 1, 0, 'Assets/Homepage/1.jpg', 'Assets/Homepage/2.jpg', 'Assets/Homepage/1.jpg', 'Iphone 11', 'Iphone 11 Pro Max, 128 GB', 0, '1100', 0, '', '4K', '60Hz', '1 Year', 'Best', '1', '', '', ''),
(14, 101, 1, 0, 'Assets/Homepage/1.jpg', 'Assets/Homepage/2.jpg', 'Assets/Homepage/3.jpg', 'Iphone 12', 'Iphone 11 Pro Max, 128 GB', 0, '1400', 0, '', '4K', '120Hz', '1 Year', 'Good', '2', '', '', ''),
(15, 101, 1, 0, 'Assets/Homepage/1.jpg', 'Assets/Homepage/1.jpg', 'Assets/Homepage/3.jpg', 'Google Pixel 5', 'Google Pixel 5 128GB - Sorta Sage - Unlocked', 0, '450', 0, 'Take your smartphone to the limits with the Google Pixel 5. This ultimate 5G Google phone is powered by a Qualcomm Snapdragon 765G processor, 8GB of RAM, and Android 11 for smooth streaming, gaming, and more. With stunning photo and video capabilities, wireless charging and water-resistance, its an amazing tool.', '4K', '120Hz', '1 Year', 'Best', '3', '', '', ''),
(16, 101, 1, 0, 'Assets/Homepage/2.jpg', 'Assets/Homepage/3.jpg', 'Assets/Homepage/1.jpg', 'Koodo Google Pixel 6', 'Koodo Google Pixel 6 Pro 128GB - Stormy Black - Monthly Tab Payment', 0, '600', 0, 'Stay in the moment with Google Pixel 6 Pro, a completely redesigned, fully loaded Google 5G phone. With a powerful camera system, next-gen Titan M2 security, and the custom-built Google Tensor processor, its the smartest and fastest Pixel yet. With faster apps and pages, an all-day battery and proactive help, it delivers what you need when you need it.', '4K', '120Hz', '1 Year', 'Best', '4', '', '', ''),
(17, 101, 1, 0, 'Assets/Homepage/1.jpg', 'Assets/Homepage/3.jpg', 'Assets/Homepage/1.jpg', 'Samsung S21 Ultra', 'Samsung Galaxy S21 Ultra', 0, '1200', 0, 'The Samsung Galaxy S21 Ultra (SM-G998W 256GB) is a good Android phone with 2.84GHz Octa-core processor that allows run games and heavy applications.With one SIM card slot, the Samsung Galaxy S21 Ultra (SM-G998W 256GB) allows download up to 5000 Mbps for internet browsing, but it also depends on the carrier.Great connectivity of this device includes Bluetooth 5.2 + A2DP/LE, WiFi 802.11 a/b/g/n/ac/ax [wifi6] (2.4GHz, 5GHz) + MIMO and NFC to make mobile payments or connection to other devices.', '4K', '120Hz', '1 Year', 'Poor', '6', '', '', ''),
(18, 101, 1, 0, 'Assets/Homepage/1.jpg', 'Assets/Homepage/1.jpg', 'Assets/Homepage/2.jpg', 'Google Pixel 7', 'Google Pixel 7', 0, '800', 0, '', '4K', '120Hz', '1 Year', 'Best', '3', '', '', ''),
(19, 101, 1, 0, 'Assets/Homepage/1.jpg', 'Assets/Homepage/2.jpg', 'Assets/Homepage/1.jpg', 'Iphone 13', 'Iphone 13 Pro Max, 128 GB', 0, '1100', 0, '', '4K', '120Hz', '1 Year', 'Average', '9', '', '', ''),
(20, 101, 1, 0, 'Assets/Homepage/1.jpg', 'Assets/Homepage/3.jpg', 'Assets/Homepage/2.jpg', 'Iphone 14', 'Iphone 14 Pro Max, 128 GB', 0, '1500', 0, '', '8K', '120Hz', '1 Year', 'Average', '9', '', '', ''),
(21, 102, 1, 0, 'Assets/Homepage/2.jpg', 'Assets/Homepage/1.jpg', 'Assets/Homepage/2.jpg', 'Macbook Pro 2023', 'Macbook Pro 2022', 0, '1300', 0, '', '8K', '120Hz', '1 Year', 'Average', '9', '', '', ''),
(22, 102, 1, 0, 'Assets/Homepage/1.jpg', 'Assets/Homepage/2.jpg', 'Assets/Homepage/1.jpg', 'Macbook Pro 2022', 'Macbook Pro 2023', 0, '1500', 0, '', '8K', '120Hz', '1 Year', 'Average', '9', '', '', ''),
(23, 102, 1, 0, 'Assets/Homepage/2.jpg', 'Assets/Homepage/3.jpg', 'Assets/Homepage/3.jpg', 'Google Pixel Book Go', 'Google Pixel Book Go', 0, '650', 0, '', '8K', '120Hz', '1 Year', 'Average', '9', '', '', ''),
(24, 102, 1, 0, 'Assets/Homepage/1.jpg', 'Assets/Homepage/1.jpg', 'Assets/Homepage/2.jpg', 'Acer Spin 714', 'Acer 14\" Touchscreen Chromebook - Blue (Intel Core i5-1235U/256GB SSD/8GB RAM/Chrome OS)', 0, '730', 0, 'Do more with the versatile Acer touchscreen Chromebook on your desk or in your work bag. This portable laptop offers a 14\" full HD swivel display with touchscreen capabilities and a stylus, allowing you to complete productive work or personal tasks with ease. An Intel Ci5-1235U processor powers the device, with 8GB of RAM and 256GB of storage.', '8K', '120Hz', '1 Year', 'Average', '9', '', '', ''),
(25, 102, 1, 0, 'Assets/Homepage/1.jpg', 'Assets/Homepage/2.jpg', 'Assets/Homepage/1.jpg', 'Dell', 'Inspiron 16 Plus', 0, '2100', 0, 'Operating System Windows 11 Home, English Video Card NVIDIA® GeForce RTX™ 3060, 6 GB GDDR6, 60 W Display 16\", 3K 3072 x 1920, 60Hz, WVA, Non-Touch, Anti-Glare, 300 nit, ComfortView Plus Memory  32 GB,      16 GB, DDR5, 4800 MHz, dual-channel Hard Drive 1 TB, M.2, PCIe NVMe, SSD Choose your colour Dark Green Microsoft Office No Microsoft Office Included Security Software McAfee® LiveSafe™ 30-day trial', '8K', '120Hz', '1 Year', 'Average', '9', '', '', ''),
(26, 102, 1, 0, 'Assets/Homepage/1.jpg', 'Assets/Homepage/1.jpg', 'Assets/Homepage/3.jpg', 'Dell', 'XPS 13 Laptop', 0, '1300', 0, 'Processor 12th Gen Intel® Core™ i5-1230U (12 MB cache, 10 cores, 12 threads, up to 4.40 GHz Turbo) Operating System (Dell Technologies recommends Windows 11 Pro for business) Windows 11 Home, English Video Card Intel® Iris® Xe Graphics Display+F43  13.4\", FHD+ 1920 x 1200, 60Hz, Non-Touch, Anti-Glare, 500 nit, InfinityEdge Memory  16 GB, LPDDR5, 5200 MHz, integrated, dual-channel Hard Drive 512GB PCIe NVMe x2 Solid State Drive Onboard', '8K', '120Hz', '1 Year', 'Average', '9', '', '', ''),
(27, 102, 1, 0, 'Assets/Homepage/1.jpg', 'Assets/Homepage/1.jpg', 'Assets/Homepage/3.jpg', 'Macbook Pro 2021', 'Apple MacBook Pro 14\" (2021) - Space Grey (Apple M1 Pro Chip / 512GB SSD / 16GB RAM) - English', 0, '2450', 0, 'The first notebook of its kind, this Apple MacBook Pro is a beast. With the blazing-fast M1 Pro chip — the first Apple silicon designed for pros — you get groundbreaking performance and amazing battery life. Add to that a stunning Liquid Retina XDR display, the best camera and audio ever in a Mac notebook, and all the ports you need.', '8K', '120Hz', '1 Year', 'Average', '9', '', '', ''),
(28, 102, 1, 0, 'Assets/Homepage/1.jpg', 'Assets/Homepage/1.jpg', 'Assets/Homepage/1.jpg', 'Dell', ' - XPS 15', 0, '3700', 0, 'Processor 12th Gen Intel® Core™ i9-12900HK (24 MB cache, 14 cores, 20 threads, up to 5.00 GHz Turbo) Operating System (Dell Technologies recommends Windows 11 Pro for business) Windows 11 Home, English Video Card NVIDIA® GeForce RTX™ 3050 Ti, 4 GB GDDR6, 40 W Display 15.6\", 3.5K 3456 x 2160, 60Hz, OLED, Touch, Anti-Reflect, 400 nit, InfinityEdge Memory  32 GB, 2 x 16 GB, DDR5, 4800 MHz, dual-channel Hard Drive 1 TB, M.2, PCIe NVMe, SSD Choose your colour Platinum Silver exterior, Black interior ', '8K', '120Hz', '1 Year', 'Average', '9', '', '', 'Yes'),
(29, 102, 1, 0, 'Assets/Homepage/1.jpg', 'Assets/Homepage/3.jpg', 'Assets/Homepage/3.jpg', 'Lenovo Yoga 9i', 'Yoga 9i (14” Intel) 2 in 1 Laptop', 0, '1655', 0, 'Designed on Intel® Evo™ platform that provides enhanced performance & responsiveness 14 inch display, up to UHD optimized with Dolby Vision™ Combined with all-new Iris® Xe graphics that far exceed the usual integrated experience Contemporary 2 in 1 design includes garaged pen & rotating soundbar Play over 100 high-quality PC games with your new Yoga laptop and 3 free months of Xbox Game Pass', '8K', '120Hz', '1 Year', 'Average', '9', '', '', 'Yes'),
(30, 102, 1, 0, 'Assets/Homepage/1.jpg', 'Assets/Homepage/3.jpg', 'Assets/Homepage/2.jpg', 'Asus CX9', 'ASUS Chromebook CX9', 0, '1150', 0, 'ASUS Chromebook CX9 is built for today’s fast-paced, constantly evolving business world — a world where many employees work remotely using cloud-first operating systems and collaborative tools such as Chrome OS. With an ultralight 2.31 lbs1 aluminum-alloy chassis and US MIL-STD 810H military-grade toughness, ASUS Chromebook CX9 delivers reliable take-anywhere mobility with the nimble performance of up to an 11th Gen lntel® Core™ i7 processor. It also features ultrafast WiFi 6, a Harman Kardon-ce', '8K', '120Hz', '1 Year', 'Average', '9', '', '', 'Yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product_master`
--
ALTER TABLE `product_master`
  ADD PRIMARY KEY (`productId`),
  ADD KEY `cat_id` (`categoryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product_master`
--
ALTER TABLE `product_master`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product_master`
--
ALTER TABLE `product_master`
  ADD CONSTRAINT `cat_id` FOREIGN KEY (`categoryId`) REFERENCES `product_category` (`categoryId`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
