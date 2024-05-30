-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2024 at 05:38 AM
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
-- Database: `shop_db2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', '111');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(24, 2, 2, ' realme C21 Y smartphone', 15000, 1, 'smartphone-1.webp'),
(25, 2, 3, 'Analogue watch', 500, 1, 'watch-1.webp'),
(26, 2, 6, 'laptop', 36000, 1, 'laptop-3.webp'),
(28, 4, 13, 'smartphone mi note 13 5g', 17999, 1, 'obail mi note 13 1.jpg'),
(29, 4, 7, 'laptop apple', 80000, 1, 'A LABTOP_1.jpeg'),
(30, 4, 11, 'titan watch', 2000, 1, 'watch titan1.jpg'),
(31, 4, 23, 'HONOR laptop', 46990, 1, 'laptop h1.jpg'),
(36, 1, 7, 'laptop apple', 80000, 1, 'A LABTOP_1.jpeg'),
(37, 1, 6, 'laptop', 36000, 2, 'laptop-3.webp'),
(38, 1, 13, 'smartphone mi note 13 5g', 17999, 1, 'obail mi note 13 1.jpg'),
(40, 7, 20, 'Samsung laptop', 62000, 1, 'laptop samsung.webp');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 1, 'user1', 'user1@gmail.com', '1234567890', 'please the product'),
(3, 1, 'user1', 'user1@gmail.com', '1234567890', 'YES'),
(6, 2, 'user2', 'user2@gmail.com', '1234567809', 'nice to product'),
(8, 1, 'user1', 'user1@gmail.com', '1234567890', 'complete the my order\r\n'),
(9, 1, 'user1', 'user1@gmail.com', '1234567890', ' I like the product'),
(11, 7, 'Ram', 'ram@gmail.com', '7896541230', 'Complete the my order \r\nand send the my order \r\n');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(1, 1, 'user1', '1234567890', 'user1@gmail.com', 'cash on delivery', 'flat no. a, a, a, a, India - 123456', 'laptop (200 x 1) - ', 200, '2024-02-10', 'completed'),
(3, 1, 'user1', '1234567890', 'user1@gmail.com', 'credit card', 'flat no. a, a, a, a, India - 123456', 'watch (500 x 1) -  realme C21 Y smartphone (15000 x 1) - Analogue watch (500 x 1) - laptop (36000 x 2) - ', 88000, '2024-02-14', 'pending'),
(4, 1, 'aniket', '899999999', 'user1@gmail.com', 'cash on delivery', 'flat no. a, a, a, a, India - 123456', 'laptop apple (80000 x 1) - ', 80000, '2024-02-17', 'completed'),
(5, 1, 'user1', '1234567890', 'user1@gmail.com', 'cash on delivery', 'flat no. a, a, a, a, India - 123456', ' realme C21 Y smartphone (15000 x 1) - ', 15000, '2024-02-28', 'pending'),
(6, 2, 'use2', '1234567891', 'user2@gmail.com', 'cash on delivery', 'flat no. c, sas, aewq, acs, India  - 123452', 'laptop (36000 x 8) -  realme C21 Y smartphone (15000 x 7) - laptop apple (80000 x 7) - smartphone Vivo X2 5g (12999 x 57) - ', 1693943, '2024-02-29', 'pending'),
(7, 4, 'user3', '8714741285', 'use31@gmail.com', 'cash on delivery', 'flat no. a, a, a, a, India - 123456', 'smartphone mi note 13 5g (17999 x 1) - ', 17999, '2024-03-02', 'completed'),
(8, 2, 'use2', '1234567890', 'user2@gmail.com', 'cash on delivery', 'flat no. c, sas, aewq, acs, India - 123452', ' realme C21 Y smartphone (15000 x 1) - ', 15000, '2024-03-02', 'pending'),
(9, 4, 'user3', '7845127845', 'use31@gmail.com', 'cash on delivery', 'flat no. a, a, a, a, India - 123456', 'laptop apple (80000 x 1) - ', 80000, '2024-03-02', 'pending'),
(10, 1, 'user1', '1234567890', 'user1@gmail.com', 'cash on delivery', 'flat no. a, a, a, a, India - 123456', 'watch  cosio (985 x 1) -  realme C21 Y smartphone (15000 x 2) - Fire-Boltt watch (1500 x 1) - ', 32485, '2024-03-16', 'pending'),
(11, 1, 'user1', '1234567890', 'user1@gmail.com', 'cash on delivery', 'flat no. a, a, a, a, India - 123456', 'walker laptop (13000 x 1) - ', 13000, '2024-03-16', 'pending'),
(12, 7, 'Ram', '7896541230', 'ram@gmail.com', 'cash on delivery', 'flat no. nagar, nagar, ngar, maharastra, India - 413720', 'Casio Digital Gold Dial Unisex\'s Watch-A1000MG-9EF watch (11995 x 1) - ', 11995, '2024-04-19', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image_01`, `image_02`, `image_03`) VALUES
(2, ' realme C21 Y smartphone', '\r\nGeneral\r\nIn The Box\r\nHandset, Adapter (5V/2A), USB Cable, SIM Card Tool, Screen Protect Film, Important Info Booklet with Warranty Card, Quick Guide\r\nModel Number\r\nRMX3261 / RMX3263\r\nModel Name\r\nC21Y\r\nColor\r\nCross Black\r\nBrowse Type\r\nSmartphones\r\nSIM Type\r\nDual Sim\r\nHybrid Sim Slot\r\nNo\r\nTouchscreen\r\nYes\r\nOTG Compatible\r\nYes\r\nSound Enhancements\r\nDirac Sound Effect\r\nSAR Value\r\nHead: 0.855 W/kg, Body: 0.674 W/kg\r\nDisplay Features\r\nDisplay Size\r\n16.51 cm (6.5 inch)\r\nResolution\r\n1600 x 720 Pixels\r\n', 15000, 'smartphone-1.webp', 'smartphone-2.webp', 'smartphone-1.webp'),
(3, 'Analogue watch', 'Product Details\r\n\r\nDisplay Type\r\nAnalog\r\nStyle Code\r\nANLG-428-BLUE-BLUE-21-WAYFARER\r\nSeries\r\nFreebie Wayfarer Sunglass & Boys Watch with Premium Gift Box Packaging\r\nOccasion\r\nCasual\r\nWatch Type\r\nWrist Watch\r\nPack of\r\n2\r\nSales Package\r\n1 Wrist Watch, 1 Freebie Black Wayfarer Sunglass, Premium Gift Box Packaging\r\nModel Name\r\nFreebie Sunglass & Boys Watch with Premium Gift Box Packaging\r\nStrap Color\r\nBlue', 500, 'watch-1.webp', 'watch-2.webp', 'watch-1.webp'),
(6, 'laptop', 'General Sales Package Laptop, Power Adapter, User Guide, Warranty Documents Model Number 15ITL6 Part Number 82H803HQIN/82H803TVIN Model Name 15ITL6 Series IdeaPad Slim 3 Color Arctic Grey Type Thin and Light Laptop Suitable For Processing & Multitasking Battery Backup Up to 12 hours Power Supply 65W Round Tip (2-pin, Wall-mount) MS Office Provided Yes Processor And Memory Features Processor Brand Intel Processor Name Core i5 Processor Generation 11th Gen SSD Yes S', 36000, 'laptop-3.webp', 'laptop-1.webp', 'laptop-2.webp'),
(7, 'laptop apple', 'Apple MacBook Air Laptop M1 chip, 13.3-inch/33.74 cm Retina Display, 8GB RAM, 256GB SSD Storage, Backlit Keyboard, FaceTime HD Camera, Touch ID. Works with iPhone/iPad; Space Grey', 80000, 'A LABTOP_1.jpeg', 'A LABTOP_2.jpeg', 'A LAPTOP_3.jpeg'),
(8, 'watch  cosio', 'Batteries ‏ : ‎ 1 Lithium Metal batteries required. (included)\r\nIs Discontinued By Manufacturer ‏ : ‎ No\r\nProduct Dimensions ‏ : ‎ 12.7 x 10.16 x 20.32 cm; 58 Grams\r\nDate First Available ‏ : ‎ 27 March 2012\r\nManufacturer ‏ : ‎ Casio\r\nASIN ‏ : ‎ B000GAYQJ0\r\nItem model number ‏ : ‎ A158WA-1DF\r\nCountry of Origin ‏ : ‎ China\r\nDepartment ‏ : ‎ Men\r\nManufacturer ‏ : ‎ Casio, Casio India Co Pvt Ltd, A-41, 1st Floor, MCIE, Mathura Road, New Delhi-110044\r\nPacker ‏ : ‎ Casio\r\nItem Weight ‏ : ‎ 58 g\r\nItem ', 985, 'watch cosio1.jpg', 'watch cosio2.jpg', 'watch cosio3.jpg'),
(9, 'Fire-Boltt watch', 'Fire-Boltt Gladiator 1.96&#34; Biggest Display Smart Watch with Bluetooth Calling, Voice Assistant &123 Sports Modes, 8 Unique UI Interactions, SpO2, 24/7 Heart Rate Tracking (Black)\r\nBrand	Fire-Boltt\r\nModel Name	Gladiator\r\nStyle	Aqua Loop\r\nColour	Aqua Loop Yellow\r\nScreen Size	1.96 Inches\r\n', 1500, 'watch fire1.jpg', 'watch fire2.jpg', 'watch fire3.jpg'),
(10, 'LLK WATCH', 'IK COLLECTION Watches for Men Round Numerical Dial Men Watch with Silicon Strap Long Battery Life Stainless Steel Bracelet Black Chain with Adjustable Flexible Silicon Strap Watches for Boys.\r\n\r\nCase diameter50 Millimetres\r\nBand colour Black\r\nBand material type Stainless Steel\r\nWarranty type Manufacturer\r\nWatch movement type Quartz\r\nItem weight70 Grams\r\nCountry of Origin India', 450, 'watch llk2.jpg', 'watch llk3.jpg', 'watch llk2.jpg'),
(11, 'titan watch', 'Product details\r\nCase diameter30 Millimetres\r\nBand colourGold\r\nBand material typeGold\r\nWarranty typeManufacturer\r\nWatch movement type Quartz\r\nItem weight150 Grams\r\nCountry of Origin India', 2000, 'watch titan1.jpg', 'watch titan2.jpg', 'watch titan3.jpg'),
(12, 'quartz watch', 'Product details\r\nCase diameter41 Millimetres\r\nBand colour Black\r\nBand material typeStainless Steel\r\nWarranty typeManufacturer\r\nWatch movement type Quartz\r\nItem weight150 Grams\r\nCountry of Origin China\r\n', 2100, 'watch quartz1.jpg', 'watch quartz2.jpg', 'watch quartz3.jpg'),
(13, 'smartphone mi note 13 5g', 'Details\r\nBrand	Redmi\r\nModel Name	Redmi Note 13 5G\r\nNetwork Service Provider	Unlocked for All Carriers\r\nOperating System	Android 13, MIUI 14\r\nCellular Technology	5G\r\nAbout this item\r\nDisplay: 6.67&#34; FHD+ pOLED (1080x2400) Ultra-narrow bezels Display with 120Hz Refresh rate; 1000nits peak brightness; Corning Gorilla Glass 5 Display Protection\r\nProcessor:Mediatek Dimensity 6080 6nm Octa-core 5G processor for high performance ; Up to 2.4GHz; Upto 12GB RAM including 6GB Virtual RAM\r\nCamera: 108MP ', 17999, 'obail mi note 13 1.jpg', 'mobail mi note 13 2.jpg', 'mobail mi note 13 3.jpg'),
(14, 'smartphone  Redmi 13 C', 'Brand	Xiaomi\r\nModel Name	Redmi 13C\r\nNetwork Service Provider	Unlocked for All Carriers\r\nOperating System	MIUI 14, Android 13.0\r\nCellular Technology	4G\r\nAbout this item\r\nProcessor: High performance MediaTek G85 ; Enhance gaming with 1GHz GPU | 8GB of RAM including 4GB virtual | 6.74&#34; HD+ 90Hz display with Corning Gorilla Glass 3 Protection | 50MP AI Triple camera |Fast Side fingerprint | 5000mAh Battery\r\n6.74&#34; HD+ 90Hz display with Corning Gorilla Glass 3 Protection, 600nits in High Brigh', 7999, 'mobail mi 13c1.jpg', 'mobail mi 13c 2.jpg', 'mobail mi 13c 3.jpg'),
(15, 'smartphone Redmi 12 5g', 'rand	Redmi\r\nModel Name	Redmi 12\r\nNetwork Service Provider	Unlocked for All Carriers\r\nOperating System	MIUI 14, Android 13.0\r\nCellular Technology	5G\r\nAbout this item\r\nSnapdragon 4 Gen 2 Mobile Platform : Power efficient 4nm architecture | 12GB of RAM including 6GB Virtual\r\nDisplay: Large 17.24cm FHD+ 90Hz AdaptiveSync display with Corning Gorilla Glass 3 Protection\r\nCamera: 50MP f/1.8 AI Dual camera with classic film filters, Film Frame, Portrait, Night Mode, 50MP mode, Time-lapse, Google lens | ', 12999, 'mobail mi 12 1.webp', 'mobail mi 12 2.jpg', 'mobail mi 12 3.jpg'),
(16, 'smartphone Vivo X2 5g', '\r\nBrand	Vivo\r\nModel Name	T2X 5G\r\nNetwork Service Provider	Unlocked for All Carriers\r\nOperating System	Android 13.0\r\nCellular Technology	5G\r\nAbout this item\r\n6 GB RAM | 128 GB ROM\r\n16.71 cm (6.58 inch) Full HD+ Display\r\n50MP + 2MP | 8MP Front Camera\r\n5000 mAh Battery\r\nDimensity 6020 Processor', 12999, 'mobail vivo tx2 1.jpg', 'mobail vivo tx2 2.jpg', 'mobail vivo tx2 3.jpg'),
(17, 'smartphone Vivo Y200 5G', '\r\n8 GB RAM | 128 GB ROM\r\n16.94 cm (6.67 inch) Full HD+ Display\r\n64MP + 2MP | 16MP Front Camera\r\n4800 mAh Battery\r\n4 Gen 1 Processor', 21999, 'mobail vivo y200 1', 'mobail vivo y200 3', 'mobail vivo y200 2.webp'),
(18, 'walker laptop', 'General\r\nSales Package\r\nLaptop, Ac Adaptor, User Manual\r\nModel Number\r\nNU14A1\r\nPart Number\r\nWNU14A1\r\nModel Name\r\nNU14A1\r\nColor\r\nCloud Silver\r\nType\r\nThin and Light Laptop\r\nSuitable For\r\nProcessing & Multitasking\r\nBattery Backup\r\nUpto 6 Hours\r\nMS Office Provided\r\nNo\r\nProcessor And Memory Features\r\nProcessor Brand\r\nIntel\r\nProcessor Name\r\nCeleron Dual Core\r\nSSD\r\nYes\r\nSSD Capacity\r\n128 GB\r\nRAM\r\n4 GB\r\nRAM Type\r\nLPDDR4\r\nProcessor Variant\r\nN4020\r\nClock Speed\r\nMax Frequency Up to 2.8 GHz\r\nGraphic Process', 13000, 'laptop- walker 1.webp', 'laptop- walker 2.webp', 'laptop- walker 3.webp'),
(19, 'Acer laptop', 'General\r\nSales Package\r\nLaptop, Power Adaptor, User Guide, Warranty Documents\r\nModel Number\r\nZ8-415\r\nPart Number\r\nUN.599SI.020\r\nModel Name\r\nZ8-415\r\nSeries\r\nOne14 Backlit\r\nColor\r\nSilver\r\nType\r\nThin and Light Laptop\r\nSuitable For\r\nProcessing & Multitasking\r\nMS Office Provided\r\nNo\r\nProcessor And Memory Features\r\nProcessor Brand\r\nIntel\r\nProcessor Name\r\nCore i5\r\nProcessor Generation\r\n11th Gen\r\nSSD\r\nYes\r\nSSD Capacity\r\n512 GB\r\nRAM\r\n16 GB\r\nRAM Type\r\nDDR4\r\nProcessor Variant\r\n1155G7\r\nClock Speed\r\n2.50GHz ', 34000, 'laptop acer.1.webp', 'laptop acer2.webp', 'laptop acer3.webp'),
(20, 'Samsung laptop', 'SAMSUNG Galaxy Book2 Pro EVO AMOLED Intel Core i5 12th Gen 1240P - (16 GB/512 GB SSD/Windows 11 Home) NP930XED-KB3IN Thin and Light Laptop  (13.3 Inch, Silver, 0.87 Kg, With MS Office)\r\n', 62000, 'laptop samsung.webp', 'laptop samsung2.webp', 'laptop samsung3.webp'),
(21, 'MSI laptop ', 'MSI Modern 14 Intel Core i3 12th Gen 1215U - (8 GB/512 GB SSD/Windows 11 Home) Modern 14 C12M-445IN Thin and Light Laptop \r\nGeneral\r\nSales Package\r\nLaptop, Power adapter\r\nModel Number\r\nModern 14 C12M-445IN\r\nPart Number\r\n9S7-14J111-445\r\nModel Name\r\nModern 14 C12M-445IN\r\nSeries\r\nModern 14\r\nColor\r\nUrban Silver\r\nType\r\nThin and Light Laptop\r\nSuitable For\r\nProcessing & Multitasking, Entertainment\r\nPower Supply\r\n65W adapter\r\nBattery Cell\r\n3 cell\r\nMS Office Provided\r\nNo\r\nProcessor And Memory Fea (14 Inc', 35000, 'laptop msp 1.webp', 'laptop msp2.webp', 'laptop mp 3.webp'),
(22, 'laptop  CHUWI', 'General\r\nSales Package\r\nLaptop, User Manual, Charging Cable\r\nModel Number\r\nFreeBook\r\nPart Number\r\nCWI577\r\nModel Name\r\nFreeBook\r\nColor\r\nGrey\r\nType\r\n2 in 1 Laptop\r\nSuitable For\r\nEveryday Use, Learning, Travel & Business, Processing & Multitasking, Entertainment\r\nBattery Backup\r\nUp To 8 Hours\r\nPower Supply\r\n65 W PD Fast Charger\r\nMS Office Provided\r\nNo\r\nInbuilt 4G LTE\r\nNo\r\nStylus Included\r\nNo\r\nProcessor And Memory Features\r\nDedicated Graphic Memory Type\r\nGDDR3\r\nProcessor Brand\r\nIntel\r\nProcessor Name', 29990, 'laptop freebook-1.webp', 'laptop freebook-2.webp', 'laptop freebook 3.webp'),
(23, 'HONOR laptop', 'Brand	Honor\r\nModel Name	BRN-F58\r\nScreen Size	16 Inches\r\nColour	Space Gray\r\nCPU Model	Core i5-12450H\r\nRAM Memory Installed Size	8 GB\r\nOperating System	Windows 11 Home\r\nSpecial Feature	Anti Glare Coating, Numeric Keypad\r\nGraphics Card Description	Integrated\r\nGraphics Coprocessor	Intel UHD Graphics', 46990, 'laptop h1.jpg', 'laptop h2.jpg', 'laptop h3.jpg'),
(24, 'Fujitsu CH laptop', 'Brand	Fujitsu\r\nModel Name	Fujitsu CH Series\r\nScreen Size	13.3 Inches\r\nColour	Gold\r\nHard Disk Size	512 GB\r\nCPU Model	Core i5\r\nRAM Memory Installed Size	16 GB\r\nOperating System	Windows 11 Home\r\nSpecial Feature	Light Weight, Backlit Keyboard\r\nGraphics Card Description', 59990, 'laptop f.jpg', 'laptop f2.jpg', 'laptop f3.jpg'),
(25, 'ZEBRONICS laptop', 'Brand	ZEBRONICS\r\nModel Name	ZEB-NBC 5S (16/ 1TB) Blue\r\nScreen Size	15.6 Inches\r\nCPU Model	Intel Core i7\r\nRAM Memory Installed Size	16 GB\r\nOperating System	Windows 11 Home\r\nSpecial Feature	Fingerprint Reader\r\nGraphics Card Description	Integrated Graphic\r\nCPU Speed	4.7 GHz\r\nHard Disk Description	SSD', 40990, 'laptop z.jpg', 'laptop z2.jpg', 'laptop z3.jpg'),
(26, 'sonata watch', 'Product details\r\nBand colour Gold\r\nBand material type Stainless Steel\r\nWarranty type Manu facturer\r\nWatch movement type Quartz\r\nBand width18\r\nCase material type Stainless Steel\r\nCountry of Origin India', 1349, 'watch sonata1.jpg', 'watch sonata2.jpg', 'watch sonata 3.jpg'),
(27, 'Casio Digital Gold Dial Unisex&#39;s Watch-A1000MG-9EF watch', 'Product details\r\nCase diameter36 Millimetres\r\nBand colour Gold\r\nBand material type Stainless Steel\r\nWarranty type Extended\r\nWatch movement type Quartz\r\nItem weight74 Grams\r\nCountry of Origin China', 11995, 'watch cosio w1.jpg', 'watch cosio w2.jpg', 'watch cosio w3.jpg'),
(28, 'Giordano watch', 'Product details\r\nCase diameter 35 Millimetres\r\nBand colour Rose Gold\r\nBand material type Stainless Steel\r\nWarranty type Manufacturer\r\nWatch movement type Quartz\r\nCase thickness7.5 Millimetres\r\nCountry of Origin Hong Kong', 3545, 'watch giordano 1.jpg', 'watch giordano 2.jpg', 'watch giordano 3.jpg'),
(29, 'OLEVS Womens Watch Fashion Dress Diamond Female Watches for Ladies Analog Quartz Stainless Steel Wat', 'Product details\r\nCase diameter 27 Millimetres\r\nBand colour Two tone\r\nBand material type Stainless Steel\r\nWarranty type Manufacturer\r\nWatch movement type Quartz\r\nItem weight150 Grams\r\nCountry of Origin China', 2805, 'watch olevs 1.jpg', 'watch olevs 2.jpg', 'watch olevs 3.jpg'),
(30, 'Samsung Galaxy S24 Ultra 5G AI Smartphone ', 'Brand	Samsung\r\nModel Name	Samsung Galaxy S24 Ultra 5G\r\nNetwork Service Provider	Unlocked for All Carriers\r\nOperating System	Android 14.0\r\nCellular Technology	5G', 139999, 's samsung 1.webp', 'mobail samsung 2.jpg', 'moabil samsung 3.jpg'),
(31, 'iphone 15 pro max  smartphone', 'Brand	Apple\r\nModel Name	iPhone 15 Pro\r\nNetwork Service Provider	Unlocked for All Carriers\r\nOperating System	iOS\r\nCellular Technology	5G\r\nstorage 1TB', 177990, 'mobail iphone 15 1.jpg', 'mobail iphone 15 2.jpg', 'mobail iphone 15 3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'user1', 'user1@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(2, 'use2', 'user2@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(4, 'user3', 'user3@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(5, 'shraddha ', 'shraddha2010@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(6, 'Pratik', 'pratik2007@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),
(7, 'Ram', 'ram@gmail.com', '356a192b7913b04c54574d18c28d46e6395428ab');

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
(6, 2, 20, 'Samsung laptop', 62000, 'laptop samsung.webp'),
(7, 2, 18, 'walker laptop', 13000, 'laptop- walker 1.webp'),
(8, 2, 27, 'Casio Digital Gold Dial Unisex&#39;s Watch-A1000MG-9EF watch', 11995, 'watch cosio w1.jpg'),
(9, 4, 31, 'iphone 15 pro max  smartphone', 177990, 'mobail iphone 15 1.jpg'),
(10, 4, 30, 'Samsung Galaxy S24 Ultra 5G AI Smartphone ', 139999, 's samsung 1.webp'),
(11, 4, 28, 'Giordano watch', 3545, 'watch giordano 1.jpg'),
(14, 7, 6, 'laptop', 36000, 'laptop-3.webp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
