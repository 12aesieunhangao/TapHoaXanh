-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 20, 2025 at 12:43 PM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tap_hoa_xanh`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deletedAt` datetime(6) DEFAULT NULL,
  `street` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `is_default` tinyint(4) NOT NULL,
  `usersId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deletedAt` datetime(6) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `createdAt`, `updatedAt`, `deletedAt`, `name`, `address`, `phone`) VALUES
(1, '2025-06-14 13:56:13.000000', '2025-06-14 13:56:13.000000', NULL, 'Coca-Cola', '34 Đường số 5, Quận 1, TP.HCM', '0931504733'),
(2, '2025-06-14 13:56:13.000000', '2025-06-14 13:56:13.000000', NULL, 'PepsiCo', '20 Đường số 17, Quận 9, TP.HCM', '0931298158'),
(3, '2025-06-14 13:56:13.000000', '2025-06-14 13:56:13.000000', NULL, 'SABECO', '72 Đường số 34, Quận 8, TP.HCM', '0933811375'),
(4, '2025-06-14 13:56:13.000000', '2025-06-14 13:56:13.000000', NULL, 'Heineken Vietnam', '36 Đường số 24, Quận 10, TP.HCM', '0939823372'),
(5, '2025-06-14 13:56:13.000000', '2025-06-14 13:56:13.000000', NULL, 'TH True Milk', '34 Đường số 20, Quận 4, TP.HCM', '0937524665'),
(6, '2025-06-14 13:56:13.000000', '2025-06-14 13:56:13.000000', NULL, 'DalatGap', '17 Đường số 4, Quận 4, TP.HCM', '0936805886'),
(7, '2025-06-14 13:56:13.000000', '2025-06-14 13:56:13.000000', NULL, 'VinEco', '59 Đường số 12, Quận 7, TP.HCM', '0938793579'),
(8, '2025-06-14 13:56:13.000000', '2025-06-14 13:56:13.000000', NULL, 'OrgaFarm', '48 Đường số 25, Quận 8, TP.HCM', '0938961786'),
(9, '2025-06-14 13:56:13.000000', '2025-06-14 13:56:13.000000', NULL, 'VietGAP', '96 Đường số 3, Quận 6, TP.HCM', '0935354244'),
(10, '2025-06-14 13:56:13.000000', '2025-06-14 13:56:13.000000', NULL, 'Minh Phú Seafood', '43 Đường số 31, Quận 2, TP.HCM', '0938794412'),
(11, '2025-06-14 13:56:13.000000', '2025-06-14 13:56:13.000000', NULL, 'Vĩnh Hoàn Corp', '80 Đường số 23, Quận 8, TP.HCM', '0937685418'),
(12, '2025-06-14 13:56:13.000000', '2025-06-14 13:56:13.000000', NULL, 'Hùng Vương Group', '80 Đường số 29, Quận 8, TP.HCM', '0937928547'),
(13, '2025-06-14 13:56:13.000000', '2025-06-14 13:56:13.000000', NULL, 'Seaspimex', '41 Đường số 4, Quận 1, TP.HCM', '0934724964'),
(14, '2025-06-14 13:56:13.000000', '2025-06-14 13:56:13.000000', NULL, 'VISSAN', '22 Đường số 5, Quận 4, TP.HCM', '0936871153'),
(15, '2025-06-14 13:56:13.000000', '2025-06-14 13:56:13.000000', NULL, 'CP Vietnam', '35 Đường số 19, Quận 9, TP.HCM', '0933684566'),
(16, '2025-06-14 13:56:13.000000', '2025-06-14 13:56:13.000000', NULL, 'MEATDeli', '21 Đường số 3, Quận 9, TP.HCM', '0931211785'),
(17, '2025-06-14 13:56:13.000000', '2025-06-14 13:56:13.000000', NULL, 'Ba Huân', '17 Đường số 18, Quận 8, TP.HCM', '0938794732'),
(18, '2025-06-14 13:56:13.000000', '2025-06-14 13:56:13.000000', NULL, 'Acecook Việt Nam', '68 Đường số 18, Quận 8, TP.HCM', '0937941009'),
(19, '2025-06-14 13:56:13.000000', '2025-06-14 13:56:13.000000', NULL, 'VIFON', '11 Đường số 34, Quận 8, TP.HCM', '0936526458'),
(20, '2025-06-14 13:56:13.000000', '2025-06-14 13:56:13.000000', NULL, 'CJ Cầu Tre', '21 Đường số 22, Quận 9, TP.HCM', '0931830018'),
(21, '2025-06-14 13:56:13.000000', '2025-06-14 13:56:13.000000', NULL, 'Masan Food', '72 Đường số 17, Quận 4, TP.HCM', '0935449394'),
(22, '2025-06-14 13:56:13.000000', '2025-06-14 13:56:13.000000', NULL, 'Chin-su', '63 Đường số 5, Quận 12, TP.HCM', '0936781946'),
(23, '2025-06-14 13:56:13.000000', '2025-06-14 13:56:13.000000', NULL, 'Nam Ngư', '19 Đường số 20, Quận 7, TP.HCM', '0936112241'),
(24, '2025-06-14 13:56:13.000000', '2025-06-14 13:56:13.000000', NULL, 'Miwon', '13 Đường số 4, Quận 7, TP.HCM', '0939124576'),
(25, '2025-06-14 13:56:13.000000', '2025-06-14 13:56:13.000000', NULL, 'Ajinomoto', '27 Đường số 18, Quận 3, TP.HCM', '0934043193'),
(26, '2025-06-14 13:56:13.000000', '2025-06-14 13:56:13.000000', NULL, 'Orion', '29 Đường số 28, Quận 11, TP.HCM', '0934874244'),
(27, '2025-06-14 13:56:13.000000', '2025-06-14 13:56:13.000000', NULL, 'Hữu Nghị Food', '32 Đường số 4, Quận 12, TP.HCM', '0933335192'),
(28, '2025-06-14 13:56:13.000000', '2025-06-14 13:56:13.000000', NULL, 'Bibica', '22 Đường số 6, Quận 2, TP.HCM', '0932539155'),
(29, '2025-06-14 13:56:13.000000', '2025-06-14 13:56:13.000000', NULL, 'Oishi', '10 Đường số 11, Quận 11, TP.HCM', '0934763194'),
(30, '2025-06-14 13:56:13.000000', '2025-06-14 13:56:13.000000', NULL, 'Poca', '45 Đường số 10, Quận 3, TP.HCM', '0939226484'),
(31, '2025-06-14 13:56:13.000000', '2025-06-14 13:56:13.000000', NULL, 'Vinamilk', '98 Đường số 13, Quận 9, TP.HCM', '0933264421'),
(32, '2025-06-14 13:56:13.000000', '2025-06-14 13:56:13.000000', NULL, 'TH True Milk', '79 Đường số 38, Quận 11, TP.HCM', '0934454769'),
(33, '2025-06-14 13:56:13.000000', '2025-06-14 13:56:13.000000', NULL, 'Nutifood', '50 Đường số 35, Quận 2, TP.HCM', '0938444572'),
(34, '2025-06-14 13:56:13.000000', '2025-06-14 13:56:13.000000', NULL, 'Ensure', '40 Đường số 34, Quận 12, TP.HCM', '0938712364'),
(35, '2025-06-14 13:56:13.000000', '2025-06-14 13:56:13.000000', NULL, 'Abbott', '59 Đường số 37, Quận 3, TP.HCM', '0931533035'),
(36, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Sprite', 'USA', '0994172617'),
(37, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Fanta', 'Germany', '0914124836'),
(38, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Aquafina', 'USA', '0955324165'),
(39, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Pocari Sweat', 'Japan', '0989673816'),
(40, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Schweppes', 'UK', '0966348705'),
(41, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Monster Energy', 'USA', '0966924356'),
(42, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Red Bull', 'Austria', '0916804195'),
(43, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, '7Up', 'USA', '0949200482'),
(44, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Gatorade', 'USA', '0990694893'),
(45, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Lipton', 'UK', '0929368734'),
(46, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Dole', 'USA', '0978509892'),
(47, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Chiquita', 'USA', '0986663473'),
(48, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Del Monte', 'USA', '0918215041'),
(49, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Nature’s Path', 'Canada', '0992388922'),
(50, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Trung An', 'Việt Nam', '0951896803'),
(51, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Lộc Trời Group', 'Việt Nam', '0972077657'),
(52, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Vina T&T', 'Việt Nam', '0959619294'),
(53, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Gạo ST25', 'Việt Nam', '0923386637'),
(54, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Vinamit', 'Việt Nam', '0961018559'),
(55, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Green Giant', 'USA', '0969924775'),
(56, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Bumble Bee', 'USA', '0920924192'),
(57, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Chicken of the Sea', 'USA', '0956522791'),
(58, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Royal Greenland', 'Denmark', '0995093856'),
(59, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Seafood Connection', 'Netherlands', '0930285427'),
(60, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Norwegian Seafood Council', 'Norway', '0916670546'),
(61, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Seafood Saigon', 'Việt Nam', '0916926932'),
(62, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Bianfishco', 'Việt Nam', '0993374144'),
(63, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Hải Nam Co.', 'Việt Nam', '0919173199'),
(64, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Tyson Foods', 'USA', '0916551140'),
(65, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'JBS', 'Brazil', '0987831330'),
(66, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Smithfield', 'USA', '0982441971'),
(67, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Cargill', 'USA', '0924462339'),
(68, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Japfa', 'Indonesia', '0970264988'),
(69, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'GreenFeed', 'Việt Nam', '0978589988'),
(70, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'De Heus', 'Netherlands', '0931760562'),
(71, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Nestlé', 'Switzerland', '0910053094'),
(72, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Heinz', 'USA', '0927004739'),
(73, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'CJ Foods', 'Korea', '0951375365'),
(74, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Ottogi', 'Korea', '0956395498'),
(75, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Maruchan', 'USA', '0937830320'),
(76, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Unilever', 'UK/Netherlands', '0945706796'),
(77, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Hormel Foods', 'USA', '0943086117'),
(78, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Knorr', 'Germany', '0917728671'),
(79, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Maggie', 'Switzerland', '0957561557'),
(80, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Ajinomoto Japan', 'Japan', '0985699976'),
(81, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Kikkoman', 'Japan', '0984666212'),
(82, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Lee Kum Kee', 'Hong Kong', '0958229731'),
(83, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'McCormick', 'USA', '0910781296'),
(84, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Tabasco', 'USA', '0921035267'),
(85, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Maggi', 'Switzerland', '0912368026'),
(86, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Lay’s', 'USA', '0983423201'),
(87, '2025-06-14 08:26:59.000000', '2025-06-14 08:26:59.000000', NULL, 'Doritos', 'USA', '0935317454');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deletedAt` datetime(6) DEFAULT NULL,
  `usersId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `createdAt`, `updatedAt`, `deletedAt`, `usersId`) VALUES
(1, '2025-06-10 08:30:00.000000', '2025-06-10 08:30:00.000000', NULL, 101),
(2, '2025-06-11 09:00:00.000000', '2025-06-11 10:00:00.000000', NULL, 102),
(3, '2025-06-12 07:45:00.000000', '2025-06-13 08:00:00.000000', '2025-06-15 09:00:00.000000', 103),
(4, '2025-06-13 10:15:00.000000', '2025-06-13 10:30:00.000000', NULL, 104),
(5, '2025-06-14 11:00:00.000000', '2025-06-14 11:15:00.000000', NULL, 105);

-- --------------------------------------------------------

--
-- Table structure for table `cart_item`
--

CREATE TABLE `cart_item` (
  `id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deletedAt` datetime(6) DEFAULT NULL,
  `total_price` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `cartId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deletedAt` datetime(6) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `createdAt`, `updatedAt`, `deletedAt`, `name`, `slug`, `parent_id`) VALUES
(1, '2025-06-11 22:55:27.000000', '2025-06-11 22:55:27.000000', NULL, 'Đồ uống', 'do-uong', 0),
(2, '2025-06-13 11:01:00.000000', '2025-06-13 11:01:00.000000', NULL, 'Nông sản thực phẩm', 'nong-san-thuc-pham', 0),
(3, '2025-06-13 11:01:00.000000', '2025-06-13 11:01:00.000000', NULL, 'Thủy hải sản', 'thuy-hai-san', 0),
(4, '2025-06-13 11:01:00.000000', '2025-06-13 11:01:00.000000', NULL, 'Thực phẩm từ chăn nuôi', 'chan-nuoi', 0),
(5, '2025-06-13 11:01:00.000000', '2025-06-13 11:01:00.000000', NULL, 'Thực phẩm chế biến', 'thuc-pham-che-bien', 0),
(6, '2025-06-13 11:01:00.000000', '2025-06-13 11:01:00.000000', NULL, 'Gia vị & nguyên liệu nấu ăn', 'gia-vi-nguyen-lieu', 0),
(7, '2025-06-13 11:01:00.000000', '2025-06-13 11:01:00.000000', NULL, 'Đồ ăn vặt & bánh kẹo', 'an-vat-banh-keo', 0),
(8, '2025-06-13 11:01:00.000000', '2025-06-13 11:01:00.000000', NULL, 'Thức uống thực phẩm', 'thuc-uong-thuc-pham', 0),
(9, '2025-06-13 11:01:00.000000', '2025-06-13 11:01:00.000000', NULL, 'Đặc sản & thực phẩm truyền thống', 'dac-san-truyen-thong', 0),
(10, '2025-06-13 11:04:23.000000', '2025-06-13 11:04:23.000000', NULL, 'Rau ăn lá', 'rau-an-la', 1),
(11, '2025-06-13 11:04:23.000000', '2025-06-13 11:04:23.000000', NULL, 'Rau ăn củ', 'rau-an-cu', 1),
(12, '2025-06-13 11:04:23.000000', '2025-06-13 11:04:23.000000', NULL, 'Rau ăn quả', 'rau-an-qua', 1),
(13, '2025-06-13 11:04:23.000000', '2025-06-13 11:04:23.000000', NULL, 'Trái cây', 'trai-cay', 1),
(14, '2025-06-13 11:04:23.000000', '2025-06-13 11:04:23.000000', NULL, 'Ngũ cốc', 'ngu-coc', 1),
(15, '2025-06-13 11:04:23.000000', '2025-06-13 11:04:23.000000', NULL, 'Đậu, hạt', 'dau-hat', 1),
(16, '2025-06-13 11:04:23.000000', '2025-06-13 11:04:23.000000', NULL, 'Cây gia vị', 'cay-gia-vi', 1),
(17, '2025-06-13 11:04:23.000000', '2025-06-13 11:04:23.000000', NULL, 'Cá biển', 'ca-bien', 2),
(18, '2025-06-13 11:04:23.000000', '2025-06-13 11:04:23.000000', NULL, 'Cá nước ngọt', 'ca-nuoc-ngot', 2),
(19, '2025-06-13 11:04:23.000000', '2025-06-13 11:04:23.000000', NULL, 'Tôm, tép', 'tom-tep', 2),
(20, '2025-06-13 11:04:23.000000', '2025-06-13 11:04:23.000000', NULL, 'Mực, bạch tuộc', 'muc-bach-tuoc', 2),
(21, '2025-06-13 11:04:23.000000', '2025-06-13 11:04:23.000000', NULL, 'Cua, ghẹ', 'cua-ghe', 2),
(22, '2025-06-13 11:04:23.000000', '2025-06-13 11:04:23.000000', NULL, 'Nhuyễn thể khác', 'nhuyen-the-khac', 2),
(23, '2025-06-13 11:04:23.000000', '2025-06-13 11:04:23.000000', NULL, 'Thủy sản khô', 'thuy-san-kho', 2),
(24, '2025-06-13 11:04:23.000000', '2025-06-13 11:04:23.000000', NULL, 'Thịt gia súc', 'thit-gia-suc', 3),
(25, '2025-06-13 11:04:23.000000', '2025-06-13 11:04:23.000000', NULL, 'Thịt gia cầm', 'thit-gia-cam', 3),
(26, '2025-06-13 11:04:23.000000', '2025-06-13 11:04:23.000000', NULL, 'Trứng', 'trung', 3),
(27, '2025-06-13 11:04:23.000000', '2025-06-13 11:04:23.000000', NULL, 'Sữa', 'sua', 3),
(28, '2025-06-13 11:04:23.000000', '2025-06-13 11:04:23.000000', NULL, 'Nội tạng', 'noi-tang', 3),
(29, '2025-06-13 11:04:23.000000', '2025-06-13 11:04:23.000000', NULL, 'Đồ hộp', 'do-hop', 4),
(30, '2025-06-13 11:04:23.000000', '2025-06-13 11:04:23.000000', NULL, 'Xúc xích, giò chả', 'xuc-xich-gio-cha', 4),
(31, '2025-06-13 11:04:23.000000', '2025-06-13 11:04:23.000000', NULL, 'Thực phẩm đông lạnh', 'dong-lanh', 4),
(32, '2025-06-13 11:04:23.000000', '2025-06-13 11:04:23.000000', NULL, 'Món ăn sơ chế', 'mon-so-che', 4),
(33, '2025-06-13 11:04:23.000000', '2025-06-13 11:04:23.000000', NULL, 'Đồ chay chế biến', 'do-chay', 4),
(34, '2025-06-13 11:04:23.000000', '2025-06-13 11:04:23.000000', NULL, 'Gia vị khô', 'gia-vi-kho', 5),
(35, '2025-06-13 11:04:23.000000', '2025-06-13 11:04:23.000000', NULL, 'Gia vị lỏng', 'gia-vi-long', 5),
(36, '2025-06-13 11:04:23.000000', '2025-06-13 11:04:23.000000', NULL, 'Tinh dầu, mỡ', 'tinh-dau-mo', 5),
(37, '2025-06-13 11:04:23.000000', '2025-06-13 11:04:23.000000', NULL, 'Nguyên liệu tươi', 'nguyen-lieu-tuoi', 5),
(38, '2025-06-13 11:04:23.000000', '2025-06-13 11:04:23.000000', NULL, 'Bánh snack', 'banh-snack', 6),
(39, '2025-06-13 11:04:23.000000', '2025-06-13 11:04:23.000000', NULL, 'Hạt rang', 'hat-rang', 6),
(40, '2025-06-13 11:04:23.000000', '2025-06-13 11:04:23.000000', NULL, 'Mứt các loại', 'mut-cac-loai', 6),
(41, '2025-06-13 11:04:23.000000', '2025-06-13 11:04:23.000000', NULL, 'Kẹo, chocolate', 'keo-chocolate', 6),
(42, '2025-06-13 11:04:23.000000', '2025-06-13 11:04:23.000000', NULL, 'Thạch & đồ dẻo', 'thach-do-deo', 6),
(43, '2025-06-13 11:04:23.000000', '2025-06-13 11:04:23.000000', NULL, 'Nước ép, sinh tố', 'nuoc-ep-sinh-to', 7),
(44, '2025-06-13 11:04:23.000000', '2025-06-13 11:04:23.000000', NULL, 'Sữa & thức uống từ sữa', 'sua-uong', 7),
(45, '2025-06-13 11:04:23.000000', '2025-06-13 11:04:23.000000', NULL, 'Trà, cà phê', 'tra-ca-phe', 7),
(46, '2025-06-13 11:04:23.000000', '2025-06-13 11:04:23.000000', NULL, 'Nước giải khát', 'nuoc-giai-khat', 7),
(47, '2025-06-13 11:04:23.000000', '2025-06-13 11:04:23.000000', NULL, 'Đồ uống có cồn', 'do-uong-co-con', 7),
(48, '2025-06-13 11:04:23.000000', '2025-06-13 11:04:23.000000', NULL, 'Bánh truyền thống', 'banh-truyen-thong', 8),
(49, '2025-06-13 11:04:23.000000', '2025-06-13 11:04:23.000000', NULL, 'Món khô & mắm', 'mon-kho-mam', 8),
(50, '2025-06-13 11:04:23.000000', '2025-06-13 11:04:23.000000', NULL, 'Dưa muối & lên men', 'dua-muoi-len-men', 8),
(51, '2025-06-13 11:04:23.000000', '2025-06-13 11:04:23.000000', NULL, 'Đặc sản vùng miền', 'dac-san-vung-mien', 8);

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `id` int(11) NOT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deletedAt` datetime(6) DEFAULT NULL,
  `tracking_number` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `notes` varchar(255) NOT NULL,
  `estimated_date` datetime NOT NULL,
  `shipped_at` datetime NOT NULL,
  `delivered_at` datetime NOT NULL,
  `delivery_fee` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deletedAt` datetime(6) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `images` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `usersId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `id` int(11) NOT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deletedAt` datetime(6) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `images` varchar(255) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `orderId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deletedAt` datetime(6) DEFAULT NULL,
  `payment_method` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `paid_at` datetime NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `usersId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deletedAt` datetime(6) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `images` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `barcode` varchar(255) NOT NULL,
  `expiry_date` datetime NOT NULL,
  `origin` varchar(255) NOT NULL,
  `weight_unit` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `brandId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `createdAt`, `updatedAt`, `deletedAt`, `name`, `price`, `discount`, `images`, `slug`, `barcode`, `expiry_date`, `origin`, `weight_unit`, `description`, `quantity`, `categoryId`, `brandId`) VALUES
(1, '2025-06-14 14:10:18.000000', '2025-06-14 14:10:34.144778', NULL, 'Nước ép cam VinEco', 18000, 10, 'https://dummyimage.com/600x400/cccccc/000000&text=SPM1', 'nuoc-ep-cam-vineco', 'SPM00001', '2025-12-31 00:00:00', 'Việt Nam', 'chai', 'Nước ép cam nguyên chất từ trang trại VinEco, giàu vitamin C, tăng cường đề kháng, thanh lọc cơ thể mỗi ngày.', 120, 1, 7),
(2, '2025-06-14 14:10:18.000000', '2025-06-14 14:10:34.158273', NULL, 'Sữa chua TH True Milk', 12000, 5, 'https://dummyimage.com/600x400/cccccc/000000&text=SPM2', 'sua', 'SPM00002', '2025-11-10 00:00:00', 'Việt Nam', 'hộp', 'Sữa chua lên men tự nhiên từ sữa tươi sạch TH, vị dịu nhẹ, tốt cho hệ tiêu hóa và làn da.', 200, 1, 5),
(3, '2025-06-14 14:10:18.000000', '2025-06-14 14:10:34.165257', NULL, 'Mực khô Seaspimex', 58000, 15, 'https://dummyimage.com/600x400/cccccc/000000&text=SPM3', 'muc-kho-seaspimex', 'SPM00003', '2026-02-20 00:00:00', 'Việt Nam', 'gói', 'Mực khô tuyển chọn, phơi nắng tự nhiên, thịt dai ngọt, phù hợp làm món nướng hay rim mắm.', 80, 1, 13),
(4, '2025-06-14 14:10:18.000000', '2025-06-14 14:10:34.171775', NULL, 'Cá basa đông lạnh Vĩnh Hoàn', 47000, 8, 'https://dummyimage.com/600x400/cccccc/000000&text=SPM4', 'ca-basa-dong-lanh', 'SPM00004', '2025-09-15 00:00:00', 'Việt Nam', 'túi', 'Phi lê cá basa tươi ngon, đóng gói tiện lợi, giàu omega-3, thích hợp chiên, kho hay nấu canh.', 65, 1, 11),
(5, '2025-06-14 14:10:18.000000', '2025-06-14 14:10:34.180114', NULL, 'Trứng gà Ba Huân', 25000, 0, 'https://dummyimage.com/600x400/cccccc/000000&text=SPM5', 'trung', 'SPM00005', '2025-07-01 00:00:00', 'Việt Nam', 'vỉ', 'Trứng gà sạch từ trang trại Ba Huân, giàu dinh dưỡng, vỏ dày, lòng đỏ tươi sáng, an toàn tuyệt đối.', 150, 1, 17),
(6, '2025-06-14 14:10:18.000000', '2025-06-14 14:10:34.187415', NULL, 'Giò lụa CJ Cầu Tre', 54000, 12, 'https://dummyimage.com/600x400/cccccc/000000&text=SPM6', 'gio-lua-cj', 'SPM00006', '2025-08-20 00:00:00', 'Việt Nam', 'gói', 'Giò lụa truyền thống dai giòn sần sật, chế biến từ thịt heo sạch, không hàn the, vị thơm đậm đà.', 70, 1, 20),
(7, '2025-06-14 14:10:18.000000', '2025-06-14 14:10:34.194062', NULL, 'Đậu phộng Oishi', 32000, 20, 'https://dummyimage.com/600x400/cccccc/000000&text=SPM7', 'dau-phong-oishi', 'SPM00007', '2026-03-05 00:00:00', 'Việt Nam', 'gói', 'Đậu phộng rang giòn thơm lừng, tẩm vị mặn ngọt hấp dẫn, snack lý tưởng cho mọi lứa tuổi.', 100, 1, 29),
(8, '2025-06-14 14:10:18.000000', '2025-06-14 14:10:34.201016', NULL, 'Cà rốt tươi DalatGap', 15000, 5, 'https://dummyimage.com/600x400/cccccc/000000&text=SPM8', 'ca-rot-dalatgap', 'SPM00008', '2025-06-30 00:00:00', 'Đà Lạt', 'bó', 'Cà rốt canh tác theo chuẩn hữu cơ tại Đà Lạt, củ to, ngọt thanh, phù hợp ép nước, nấu canh.', 90, 1, 6),
(9, '2025-06-14 14:10:18.000000', '2025-06-14 14:10:34.208185', NULL, 'Cá thu tươi Minh Phú', 72000, 10, 'https://dummyimage.com/600x400/cccccc/000000&text=SPM9', 'ca-thu-minhphu', 'SPM00009', '2025-07-20 00:00:00', 'Việt Nam', 'con', 'Cá thu tươi đại dương, thịt chắc, béo nhẹ, giàu DHA và Omega-3, ngon nhất khi chiên áp chảo.', 40, 1, 10),
(10, '2025-06-14 14:10:18.000000', '2025-06-14 14:10:34.215591', NULL, 'Dầu ăn Meizan', 48000, 0, 'https://dummyimage.com/600x400/cccccc/000000&text=SPM10', 'dau-an-meizan', 'SPM00010', '2026-01-01 00:00:00', 'Việt Nam', 'chai', 'Dầu đậu nành tinh luyện, không cholesterol, giữ nguyên hương vị món ăn và tốt cho tim mạch.', 110, 1, 22),
(11, '2025-06-14 14:10:18.000000', '2025-06-14 14:10:34.221976', NULL, 'Thịt heo CP Việt Nam', 68000, 7, 'https://dummyimage.com/600x400/cccccc/000000&text=SPM11', 'thit-heo-cp', 'SPM00011', '2025-06-25 00:00:00', 'Việt Nam', 'kg', 'Thịt heo sạch, truy xuất nguồn gốc, thịt mềm, tươi, thích hợp chế biến nhiều món ngon hàng ngày.', 95, 1, 15),
(12, '2025-06-14 14:10:18.000000', '2025-06-14 14:10:34.229606', NULL, 'Cá nục khô Hùng Vương', 60000, 10, 'https://dummyimage.com/600x400/cccccc/000000&text=SPM12', 'ca-nuc-kho', 'SPM00012', '2025-12-15 00:00:00', 'Việt Nam', 'gói', 'Cá nục chọn lọc, phơi nắng vừa phải, mùi thơm đặc trưng, lý tưởng cho món rim mặn ngọt.', 50, 1, 12),
(13, '2025-06-14 14:10:18.000000', '2025-06-14 14:10:34.236834', NULL, 'Trà xanh TH', 15000, 5, 'https://dummyimage.com/600x400/cccccc/000000&text=SPM13', 'tra-xanh-th', 'SPM00013', '2025-08-30 00:00:00', 'Việt Nam', 'chai', 'Trà xanh nguyên lá chiết xuất từ nông trại sạch, vị thanh mát, giúp tỉnh táo và chống lão hóa.', 100, 1, 5),
(14, '2025-06-14 14:10:18.000000', '2025-06-14 14:10:34.244931', NULL, 'Mứt dâu Bibica', 30000, 10, 'https://dummyimage.com/600x400/cccccc/000000&text=SPM14', 'mut-dau', 'SPM00014', '2026-04-10 00:00:00', 'Việt Nam', 'hộp', 'Mứt dâu nguyên trái, mềm ngọt, thơm tự nhiên, thích hợp ăn kèm bánh mì hoặc làm topping.', 70, 1, 28),
(15, '2025-06-14 14:10:18.000000', '2025-06-14 14:10:34.252143', NULL, 'Thịt gà MEATDeli', 62000, 8, 'https://dummyimage.com/600x400/cccccc/000000&text=SPM15', 'thit-ga-meatdeli', 'SPM00015', '2025-07-18 00:00:00', 'Việt Nam', 'kg', 'Thịt gà MEATDeli kiểm soát chặt chẽ từ nông trại, thịt dai ngon, không chất tăng trưởng.', 60, 1, 16),
(16, '2025-06-14 14:10:18.000000', '2025-06-14 14:10:34.258919', NULL, 'Nước khoáng Coca-Cola', 10000, 0, 'https://dummyimage.com/600x400/cccccc/000000&text=SPM16', 'nuoc-khoang-coca', 'SPM00016', '2026-05-10 00:00:00', 'Việt Nam', 'chai', 'Nước khoáng tinh khiết, bổ sung khoáng chất, đóng chai tiện dụng, thích hợp mọi hoạt động.', 180, 1, 1),
(17, '2025-06-14 14:10:18.000000', '2025-06-14 14:10:34.266329', NULL, 'Sữa Ensure Vani', 95000, 5, 'https://dummyimage.com/600x400/cccccc/000000&text=SPM17', 'sua-ensure', 'SPM00017', '2026-02-28 00:00:00', 'Mỹ', 'lon', 'Sữa bổ sung dinh dưỡng dành cho người lớn tuổi, vị vani dịu nhẹ, hỗ trợ sức khỏe tim mạch.', 85, 1, 34),
(18, '2025-06-14 14:10:18.000000', '2025-06-14 14:10:34.272713', NULL, 'Bánh snack Orion', 28000, 15, 'https://dummyimage.com/600x400/cccccc/000000&text=SPM18', 'banh-snack-orion', 'SPM00018', '2025-09-05 00:00:00', 'Hàn Quốc', 'gói', 'Snack giòn rụm phủ lớp phô mai đậm đà, ngon miệng cho bé và bữa ăn nhẹ văn phòng.', 90, 1, 26),
(19, '2025-06-14 14:10:18.000000', '2025-06-14 14:10:34.278521', NULL, 'Mắm cá linh VISSAN', 35000, 7, 'https://dummyimage.com/600x400/cccccc/000000&text=SPM19', 'mam-ca-linh', 'SPM00019', '2026-06-01 00:00:00', 'Việt Nam', 'chai', 'Mắm cá linh nguyên con lên men tự nhiên, vị đậm đà, đặc sản miền Tây truyền thống.', 75, 1, 14),
(20, '2025-06-14 14:10:18.000000', '2025-06-14 14:10:34.284795', NULL, 'Rau xà lách VinEco', 14000, 5, 'https://dummyimage.com/600x400/cccccc/000000&text=SPM20', 'rau-xa-lach', 'SPM00020', '2025-06-30 00:00:00', 'Việt Nam', 'bó', 'Rau xà lách sạch, giòn mát, trồng theo công nghệ hiện đại, dùng làm salad hoặc cuốn thịt.', 100, 1, 7),
(21, '2025-06-14 14:21:17.000000', '2025-06-14 14:21:17.000000', NULL, 'Nước cam tươi', 18000, 0, '/images/products/nuoc-cam-tuoi.jpg', 'nuoc-cam-tuoi', '8936000010012', '2025-12-14 14:21:17', 'Việt Nam', 'ml', 'Sản phẩm chất lượng cao, đảm bảo an toàn vệ sinh thực phẩm.', 50, 43, 5),
(22, '2025-06-14 14:21:17.000000', '2025-06-14 14:21:17.000000', NULL, 'Cà rốt Đà Lạt', 25000, 0, '/images/products/ca-rot-da-lat.jpg', 'ca-rot-da-lat', '8936000010029', '2025-12-14 14:21:17', 'Việt Nam', 'g', 'Sản phẩm chất lượng cao, đảm bảo an toàn vệ sinh thực phẩm.', 60, 11, 6),
(23, '2025-06-14 14:21:17.000000', '2025-06-14 14:21:17.000000', NULL, 'Cá basa phi lê đông lạnh', 69000, 0, '/images/products/ca-basa-phi-le-dong-lanh.jpg', 'ca-basa-phi-le-dong-lanh', '8936000010036', '2025-12-14 14:21:17', 'Việt Nam', 'g', 'Sản phẩm chất lượng cao, đảm bảo an toàn vệ sinh thực phẩm.', 40, 23, 11),
(24, '2025-06-14 14:21:17.000000', '2025-06-14 14:21:17.000000', NULL, 'Thịt bò Úc đông lạnh', 130000, 0, '/images/products/thit-bo-uc-dong-lanh.jpg', 'thit-bo-uc-dong-lanh', '8936000010043', '2025-12-14 14:21:17', 'Việt Nam', 'g', 'Sản phẩm chất lượng cao, đảm bảo an toàn vệ sinh thực phẩm.', 35, 24, 14),
(25, '2025-06-14 14:21:17.000000', '2025-06-14 14:21:17.000000', NULL, 'Bánh snack vị phô mai', 15000, 0, '/images/products/banh-snack-vi-pho-mai.jpg', 'banh-snack-vi-pho-mai', '8936000010050', '2025-12-14 14:21:17', 'Việt Nam', 'g', 'Sản phẩm chất lượng cao, đảm bảo an toàn vệ sinh thực phẩm.', 80, 38, 29),
(26, '2025-06-14 14:21:17.000000', '2025-06-14 14:21:17.000000', NULL, 'Gạo ST25', 19000, 0, '/images/products/gao-st25.jpg', 'gao-st25', '8936000010067', '2025-12-14 14:21:17', 'Việt Nam', 'g', 'Sản phẩm chất lượng cao, đảm bảo an toàn vệ sinh thực phẩm.', 70, 14, 7),
(27, '2025-06-14 14:21:17.000000', '2025-06-14 14:21:17.000000', NULL, 'Trứng gà ta', 28000, 0, '/images/products/trung-ga-ta.jpg', 'trung-ga-ta', '8936000010074', '2025-12-14 14:21:17', 'Việt Nam', 'pcs', 'Sản phẩm chất lượng cao, đảm bảo an toàn vệ sinh thực phẩm.', 90, 26, 17),
(28, '2025-06-14 14:21:17.000000', '2025-06-14 14:21:17.000000', NULL, 'Mắm cá linh', 34000, 0, '/images/products/mam-ca-linh.jpg', 'mam-ca-linh', '8936000010081', '2025-12-14 14:21:17', 'Việt Nam', 'ml', 'Sản phẩm chất lượng cao, đảm bảo an toàn vệ sinh thực phẩm.', 25, 49, 21),
(29, '2025-06-14 14:21:17.000000', '2025-06-14 14:21:17.000000', NULL, 'Bánh cốm Hà Nội', 22000, 0, '/images/products/banh-com-ha-noi.jpg', 'banh-com-ha-noi', '8936000010098', '2025-12-14 14:21:17', 'Việt Nam', 'g', 'Sản phẩm chất lượng cao, đảm bảo an toàn vệ sinh thực phẩm.', 45, 48, 27),
(30, '2025-06-14 14:21:17.000000', '2025-06-14 14:21:17.000000', NULL, 'Hành lá tươi', 12000, 0, '/images/products/hanh-la-tuoi.jpg', 'hanh-la-tuoi', '8936000010104', '2025-12-14 14:21:17', 'Việt Nam', 'g', 'Sản phẩm chất lượng cao, đảm bảo an toàn vệ sinh thực phẩm.', 30, 16, 6),
(31, '2025-06-14 14:21:17.000000', '2025-06-14 14:21:17.000000', NULL, 'Thịt gà ta làm sạch', 95000, 0, '/images/products/thit-ga-ta-lam-sach.jpg', 'thit-ga-ta-lam-sach', '8936000010111', '2025-12-14 14:21:17', 'Việt Nam', 'g', 'Sản phẩm chất lượng cao, đảm bảo an toàn vệ sinh thực phẩm.', 55, 25, 16),
(32, '2025-06-14 14:21:17.000000', '2025-06-14 14:21:17.000000', NULL, 'Nước tương Chin-su', 18000, 0, '/images/products/nuoc-tuong-chin-su.jpg', 'nuoc-tuong-chin-su', '8936000010128', '2025-12-14 14:21:17', 'Việt Nam', 'ml', 'Sản phẩm chất lượng cao, đảm bảo an toàn vệ sinh thực phẩm.', 60, 35, 22),
(33, '2025-06-14 14:21:17.000000', '2025-06-14 14:21:17.000000', NULL, 'Chocolate đen 70%', 65000, 0, '/images/products/chocolate-den-70.jpg', 'chocolate-den-70', '8936000010135', '2025-12-14 14:21:17', 'Việt Nam', 'g', 'Sản phẩm chất lượng cao, đảm bảo an toàn vệ sinh thực phẩm.', 38, 41, 26),
(34, '2025-06-14 14:21:17.000000', '2025-06-14 14:21:17.000000', NULL, 'Sữa tươi tiệt trùng Vinamilk', 31000, 0, '/images/products/sua-tuoi-tiet-trung-vinamilk.jpg', 'sua-tuoi-tiet-trung-vinamilk', '8936000010142', '2025-12-14 14:21:17', 'Việt Nam', 'ml', 'Sản phẩm chất lượng cao, đảm bảo an toàn vệ sinh thực phẩm.', 48, 27, 31),
(35, '2025-06-14 14:21:17.000000', '2025-06-14 14:21:17.000000', NULL, 'Mứt dâu Đà Lạt', 40000, 0, '/images/products/mut-dau-da-lat.jpg', 'mut-dau-da-lat', '8936000010159', '2025-12-14 14:21:17', 'Việt Nam', 'g', 'Sản phẩm chất lượng cao, đảm bảo an toàn vệ sinh thực phẩm.', 58, 40, 28),
(36, '2025-06-14 14:21:17.000000', '2025-06-14 14:21:17.000000', NULL, 'Cá ngừ đại dương', 82000, 0, '/images/products/ca-ngu-dai-duong.jpg', 'ca-ngu-dai-duong', '8936000010166', '2025-12-14 14:21:17', 'Việt Nam', 'g', 'Sản phẩm chất lượng cao, đảm bảo an toàn vệ sinh thực phẩm.', 33, 17, 12),
(37, '2025-06-14 14:21:17.000000', '2025-06-14 14:21:17.000000', NULL, 'Tôm sú sống', 135000, 0, '/images/products/tom-su-song.jpg', 'tom-su-song', '8936000010173', '2025-12-14 14:21:17', 'Việt Nam', 'g', 'Sản phẩm chất lượng cao, đảm bảo an toàn vệ sinh thực phẩm.', 42, 19, 10),
(38, '2025-06-14 14:21:17.000000', '2025-06-14 14:21:17.000000', NULL, 'Dưa muối truyền thống', 29000, 0, '/images/products/dua-muoi-truyen-thong.jpg', 'dua-muoi-truyen-thong', '8936000010180', '2025-12-14 14:21:17', 'Việt Nam', 'g', 'Sản phẩm chất lượng cao, đảm bảo an toàn vệ sinh thực phẩm.', 29, 50, 14),
(39, '2025-06-14 14:21:17.000000', '2025-06-14 14:21:17.000000', NULL, 'Bánh trung thu nhân thập cẩm', 55000, 0, '/images/products/banh-trung-thu-thap-cam.jpg', 'banh-trung-thu-thap-cam', '8936000010197', '2025-12-14 14:21:17', 'Việt Nam', 'g', 'Sản phẩm chất lượng cao, đảm bảo an toàn vệ sinh thực phẩm.', 65, 48, 30),
(40, '2025-06-14 14:21:17.000000', '2025-06-14 14:21:17.000000', NULL, 'Sữa chua uống hương dâu TH True', 17000, 0, '/images/products/sua-chua-uong-dau-th-true.jpg', 'sua-chua-uong-dau-th-true', '8936000010203', '2025-12-14 14:21:17', 'Việt Nam', 'ml', 'Sản phẩm chất lượng cao, đảm bảo an toàn vệ sinh thực phẩm.', 77, 44, 32),
(41, '2025-06-14 14:24:10.000000', '2025-06-14 14:24:10.000000', NULL, 'Dưa hấu không hạt', 30000, 0, '/images/products/dua-hau-khong-hat.jpg', 'dua-hau-khong-hat', '8936000010210', '2025-12-14 14:24:10', 'Việt Nam', 'g', 'Sản phẩm tươi ngon, ngọt mát tự nhiên.', 80, 13, 6),
(42, '2025-06-14 14:24:10.000000', '2025-06-14 14:24:10.000000', NULL, 'Cá thu cắt lát đông lạnh', 98000, 0, '/images/products/ca-thu-cat-lat-dong-lanh.jpg', 'ca-thu-cat-lat-dong-lanh', '8936000010227', '2025-12-14 14:24:10', 'Việt Nam', 'g', 'Cá thu ngon, phù hợp các món kho, nướng.', 60, 17, 13),
(43, '2025-06-14 14:24:10.000000', '2025-06-14 14:24:10.000000', NULL, 'Thịt ba chỉ heo', 120000, 0, '/images/products/thit-ba-chi-heo.jpg', 'thit-ba-chi-heo', '8936000010234', '2025-12-14 14:24:10', 'Việt Nam', 'g', 'Thịt ba chỉ heo sạch, chất lượng cao.', 70, 24, 15),
(44, '2025-06-14 14:24:10.000000', '2025-06-14 14:24:10.000000', NULL, 'Nước mắm Nam Ngư 3 in 1', 32000, 0, '/images/products/nuoc-mam-nam-ngu-3in1.jpg', 'nuoc-mam-nam-ngu-3in1', '8936000010241', '2025-12-14 14:24:10', 'Việt Nam', 'ml', 'Nước mắm đậm đà, thơm ngon tự nhiên.', 45, 35, 23),
(45, '2025-06-14 14:24:10.000000', '2025-06-14 14:24:10.000000', NULL, 'Khoai lang mật Đà Lạt', 27000, 0, '/images/products/khoai-lang-mat-da-lat.jpg', 'khoai-lang-mat-da-lat', '8936000010258', '2025-12-14 14:24:10', 'Việt Nam', 'g', 'Khoai lang mật ngọt tự nhiên, giàu dinh dưỡng.', 90, 11, 6),
(46, '2025-06-14 14:24:10.000000', '2025-06-14 14:24:10.000000', NULL, 'Bánh gạo Orion vị phô mai', 24000, 0, '/images/products/banh-gao-orion-pho-mai.jpg', 'banh-gao-orion-pho-mai', '8936000010265', '2025-12-14 14:24:10', 'Việt Nam', 'g', 'Bánh giòn ngon, vị phô mai hấp dẫn.', 65, 38, 26),
(47, '2025-06-14 14:24:10.000000', '2025-06-14 14:24:10.000000', NULL, 'Nước ép dứa nguyên chất', 19000, 0, '/images/products/nuoc-ep-dua.jpg', 'nuoc-ep-dua', '8936000010272', '2025-12-14 14:24:10', 'Việt Nam', 'ml', 'Nước ép dứa tươi mát, không chất bảo quản.', 40, 43, 5),
(48, '2025-06-14 14:24:10.000000', '2025-06-14 14:24:10.000000', NULL, 'Giò lụa truyền thống', 67000, 0, '/images/products/gio-lua-truyen-thong.jpg', 'gio-lua-truyen-thong', '8936000010289', '2025-12-14 14:24:10', 'Việt Nam', 'g', 'Giò lụa dai ngon, chuẩn vị truyền thống.', 50, 30, 14),
(49, '2025-06-14 14:24:10.000000', '2025-06-14 14:24:10.000000', NULL, 'Rau cải thìa', 17000, 0, '/images/products/rau-cai-thia.jpg', 'rau-cai-thia', '8936000010296', '2025-12-14 14:24:10', 'Việt Nam', 'g', 'Rau cải tươi xanh, sạch an toàn.', 55, 10, 6),
(50, '2025-06-14 14:24:10.000000', '2025-06-14 14:24:10.000000', NULL, 'Chả cá thác lác', 58000, 0, '/images/products/cha-ca-thac-lac.jpg', 'cha-ca-thac-lac', '8936000010302', '2025-12-14 14:24:10', 'Việt Nam', 'g', 'Chả cá dai, ngọt thịt tự nhiên.', 35, 30, 11),
(51, '2025-06-14 14:24:10.000000', '2025-06-14 14:24:10.000000', NULL, 'Sữa chua uống có đường', 16000, 0, '/images/products/sua-chua-uong-co-duong.jpg', 'sua-chua-uong-co-duong', '8936000010319', '2025-12-14 14:24:10', 'Việt Nam', 'ml', 'Sữa chua thơm ngon, hỗ trợ tiêu hóa.', 85, 44, 31),
(52, '2025-06-14 14:24:10.000000', '2025-06-14 14:24:10.000000', NULL, 'Mực nang làm sạch đông lạnh', 125000, 0, '/images/products/muc-nang-lam-sach.jpg', 'muc-nang-lam-sach', '8936000010326', '2025-12-14 14:24:10', 'Việt Nam', 'g', 'Mực nang tươi, phù hợp nấu lẩu, chiên.', 30, 20, 13),
(53, '2025-06-14 14:24:10.000000', '2025-06-14 14:24:10.000000', NULL, 'Bánh pía đậu xanh trứng muối', 33000, 0, '/images/products/banh-pia-dau-xanh.jpg', 'banh-pia-dau-xanh', '8936000010333', '2025-12-14 14:24:10', 'Việt Nam', 'g', 'Bánh pía thơm bùi, nhân trứng muối hấp dẫn.', 50, 48, 18),
(54, '2025-06-14 14:24:10.000000', '2025-06-14 14:24:10.000000', NULL, 'Dầu ăn hướng dương', 49000, 0, '/images/products/dau-an-huong-duong.jpg', 'dau-an-huong-duong', '8936000010340', '2025-12-14 14:24:10', 'Việt Nam', 'ml', 'Dầu ăn tinh luyện, giàu vitamin E.', 68, 36, 25),
(55, '2025-06-14 14:24:10.000000', '2025-06-14 14:24:10.000000', NULL, 'Gạo lứt đỏ sạch', 41000, 0, '/images/products/gao-lut-do.jpg', 'gao-lut-do', '8936000010357', '2025-12-14 14:24:10', 'Việt Nam', 'g', 'Gạo sạch tốt cho người ăn kiêng.', 52, 14, 7),
(56, '2025-06-14 14:24:10.000000', '2025-06-14 14:24:10.000000', NULL, 'Chanh không hạt', 21000, 0, '/images/products/chanh-khong-hat.jpg', 'chanh-khong-hat', '8936000010364', '2025-12-14 14:24:10', 'Việt Nam', 'g', 'Chanh tươi sạch, vỏ mỏng nước nhiều.', 70, 13, 6),
(57, '2025-06-14 14:24:10.000000', '2025-06-14 14:24:10.000000', NULL, 'Bánh quy bơ Hữu Nghị', 27000, 0, '/images/products/banh-quy-bo.jpg', 'banh-quy-bo', '8936000010371', '2025-12-14 14:24:10', 'Việt Nam', 'g', 'Bánh giòn, thơm vị bơ đặc trưng.', 38, 38, 27),
(58, '2025-06-14 14:24:10.000000', '2025-06-14 14:24:10.000000', NULL, 'Mì gói VIFON tôm chua cay', 11000, 0, '/images/products/mi-gai-vifon-tom-chua-cay.jpg', 'mi-gai-vifon-tom-chua-cay', '8936000010388', '2025-12-14 14:24:10', 'Việt Nam', 'g', 'Mì ăn liền đậm đà hương vị Việt.', 120, 5, 19),
(59, '2025-06-14 14:24:10.000000', '2025-06-14 14:24:10.000000', NULL, 'Xúc xích tiệt trùng CP', 45000, 0, '/images/products/xuc-xich-tiet-trung.jpg', 'xuc-xich-tiet-trung', '8936000010395', '2025-12-14 14:24:10', 'Việt Nam', 'g', 'Xúc xích ngon, an toàn cho bé.', 40, 30, 15),
(60, '2025-06-14 14:24:10.000000', '2025-06-14 14:24:10.000000', NULL, 'Trà xanh đóng chai', 15000, 0, '/images/products/tra-xanh-dong-chai.jpg', 'tra-xanh-dong-chai', '8936000010401', '2025-12-14 14:24:10', 'Việt Nam', 'ml', 'Trà thanh mát, tốt cho sức khỏe.', 75, 45, 2),
(61, '2025-06-14 14:26:05.000000', '2025-06-14 14:26:05.000000', NULL, 'Coca-Cola lon 330ml', 12000, 0, '/images/products/coca-cola-lon-330ml.jpg', 'coca-cola-lon-330ml', '8936000010418', '2025-12-14 14:26:05', 'Việt Nam', 'ml', 'Nước ngọt có ga vị nguyên bản.', 100, 46, 1),
(62, '2025-06-14 14:26:05.000000', '2025-06-14 14:26:05.000000', NULL, 'Pepsi lon 330ml', 11000, 0, '/images/products/pepsi-lon-330ml.jpg', 'pepsi-lon-330ml', '8936000010425', '2025-12-14 14:26:05', 'Việt Nam', 'ml', 'Nước ngọt có ga sảng khoái.', 100, 46, 2),
(63, '2025-06-14 14:26:05.000000', '2025-06-14 14:26:05.000000', NULL, '7Up không calo', 13000, 0, '/images/products/7up-khong-calo.jpg', '7up-khong-calo', '8936000010432', '2025-12-14 14:26:05', 'Việt Nam', 'ml', 'Giải khát mát lạnh không đường.', 90, 46, 2),
(64, '2025-06-14 14:26:05.000000', '2025-06-14 14:26:05.000000', NULL, 'Fanta cam lon 330ml', 11500, 0, '/images/products/fanta-cam-lon.jpg', 'fanta-cam-lon', '8936000010449', '2025-12-14 14:26:05', 'Việt Nam', 'ml', 'Hương cam tươi mát, thơm ngon.', 80, 46, 1),
(65, '2025-06-14 14:26:05.000000', '2025-06-14 14:26:05.000000', NULL, 'Sting dâu chai 330ml', 10500, 0, '/images/products/sting-dau-330ml.jpg', 'sting-dau-330ml', '8936000010456', '2025-12-14 14:26:05', 'Việt Nam', 'ml', 'Nước tăng lực vị dâu hấp dẫn.', 85, 46, 21),
(66, '2025-06-14 14:26:05.000000', '2025-06-14 14:26:05.000000', NULL, 'Mirinda soda kem', 12500, 0, '/images/products/mirinda-soda-kem.jpg', 'mirinda-soda-kem', '8936000010463', '2025-12-14 14:26:05', 'Việt Nam', 'ml', 'Hương kem thơm béo, mát lạnh.', 70, 46, 2),
(67, '2025-06-14 14:26:05.000000', '2025-06-14 14:26:05.000000', NULL, 'Trà xanh không độ', 10000, 0, '/images/products/tra-xanh-khong-do.jpg', 'tra-xanh-khong-do', '8936000010470', '2025-12-14 14:26:05', 'Việt Nam', 'ml', 'Trà thanh mát, không chất bảo quản.', 95, 45, 21),
(68, '2025-06-14 14:26:05.000000', '2025-06-14 14:26:05.000000', NULL, 'Nước ép táo nguyên chất', 18000, 0, '/images/products/nuoc-ep-tao.jpg', 'nuoc-ep-tao', '8936000010487', '2025-12-14 14:26:05', 'Việt Nam', 'ml', 'Ép lạnh từ táo tươi tự nhiên.', 65, 43, 5),
(69, '2025-06-14 14:26:05.000000', '2025-06-14 14:26:05.000000', NULL, 'Nước cam ép Vinamilk', 20000, 0, '/images/products/nuoc-cam-ep-vinamilk.jpg', 'nuoc-cam-ep-vinamilk', '8936000010494', '2025-12-14 14:26:05', 'Việt Nam', 'ml', 'Cam tươi mát, nhiều vitamin C.', 60, 43, 31),
(70, '2025-06-14 14:26:05.000000', '2025-06-14 14:26:05.000000', NULL, 'Sữa tươi tiệt trùng TH có đường', 21000, 0, '/images/products/sua-th-co-duong.jpg', 'sua-th-co-duong', '8936000010500', '2025-12-14 14:26:05', 'Việt Nam', 'ml', 'Sữa sạch từ trang trại TH.', 75, 44, 5),
(71, '2025-06-14 14:26:05.000000', '2025-06-14 14:26:05.000000', NULL, 'Sữa đậu nành Fami', 9000, 0, '/images/products/sua-dau-nanh-fami.jpg', 'sua-dau-nanh-fami', '8936000010517', '2025-12-14 14:26:05', 'Việt Nam', 'ml', 'Sữa thực vật giàu dinh dưỡng.', 85, 44, 33),
(72, '2025-06-14 14:26:05.000000', '2025-06-14 14:26:05.000000', NULL, 'Bia Heineken lon 330ml', 18000, 0, '/images/products/bia-heineken-330ml.jpg', 'bia-heineken-330ml', '8936000010524', '2025-12-14 14:26:05', 'Hà Lan', 'ml', 'Hương vị bia cao cấp.', 50, 47, 4),
(73, '2025-06-14 14:26:05.000000', '2025-06-14 14:26:05.000000', NULL, 'Bia Tiger bạc', 16000, 0, '/images/products/bia-tiger-bac.jpg', 'bia-tiger-bac', '8936000010531', '2025-12-14 14:26:05', 'Singapore', 'ml', 'Bia lager vị đậm.', 55, 47, 4),
(74, '2025-06-14 14:26:05.000000', '2025-06-14 14:26:05.000000', NULL, 'Nước chanh muối Restore', 12000, 0, '/images/products/chanh-muoi-restore.jpg', 'chanh-muoi-restore', '8936000010548', '2025-12-14 14:26:05', 'Việt Nam', 'ml', 'Giải khát điện giải bù khoáng.', 60, 46, 20),
(75, '2025-06-14 14:26:05.000000', '2025-06-14 14:26:05.000000', NULL, 'Sữa dâu tiệt trùng TH True Milk', 22000, 0, '/images/products/sua-dau-th-true.jpg', 'sua-dau-th-true', '8936000010555', '2025-12-14 14:26:05', 'Việt Nam', 'ml', 'Sữa dâu thơm ngon dành cho bé.', 80, 44, 32),
(76, '2025-06-14 14:26:05.000000', '2025-06-14 14:26:05.000000', NULL, 'Revive chanh muối', 10000, 0, '/images/products/revive-chanh-muoi.jpg', 'revive-chanh-muoi', '8936000010562', '2025-12-14 14:26:05', 'Việt Nam', 'ml', 'Nước uống thể thao giúp bù khoáng.', 85, 46, 2),
(77, '2025-06-14 14:26:05.000000', '2025-06-14 14:26:05.000000', NULL, 'Pocari Sweat', 17000, 0, '/images/products/pocari-sweat.jpg', 'pocari-sweat', '8936000010579', '2025-12-14 14:26:05', 'Nhật Bản', 'ml', 'Nước điện giải bổ sung năng lượng.', 50, 46, 35),
(78, '2025-06-14 14:26:05.000000', '2025-06-14 14:26:05.000000', NULL, 'Oolong Tea Plus', 14000, 0, '/images/products/oolong-tea-plus.jpg', 'oolong-tea-plus', '8936000010586', '2025-12-14 14:26:05', 'Việt Nam', 'ml', 'Trà ô long vị thanh dịu, ít calo.', 90, 45, 2),
(79, '2025-06-14 14:26:05.000000', '2025-06-14 14:26:05.000000', NULL, 'Nước khoáng La Vie 500ml', 7000, 0, '/images/products/nuoc-khoang-la-vie.jpg', 'nuoc-khoang-la-vie', '8936000010593', '2025-12-14 14:26:05', 'Việt Nam', 'ml', 'Nước khoáng thiên nhiên tinh khiết.', 120, 46, 20),
(80, '2025-06-14 14:26:05.000000', '2025-06-14 14:26:05.000000', NULL, 'Sữa đậu xanh Vinasoy', 9500, 0, '/images/products/sua-dau-xanh-vinasoy.jpg', 'sua-dau-xanh-vinasoy', '8936000010609', '2025-12-14 14:26:05', 'Việt Nam', 'ml', 'Đậm đà hương vị đậu xanh.', 95, 44, 33),
(81, '2025-06-14 14:28:44.000000', '2025-06-14 14:28:44.000000', NULL, 'Coca-Cola lon 330ml', 12000, 0, '/images/products/coca-cola-330ml.jpg', 'coca-cola-330ml', '8936000020011', '2025-12-14 14:28:44', 'Việt Nam', 'ml', 'Nước ngọt có ga vị nguyên bản mát lạnh.', 100, 46, 1),
(82, '2025-06-14 14:28:44.000000', '2025-06-14 14:28:44.000000', NULL, 'Pepsi lon 330ml', 11000, 0, '/images/products/pepsi-330ml.jpg', 'pepsi-330ml', '8936000020028', '2025-12-14 14:28:44', 'Việt Nam', 'ml', 'Giải khát sảng khoái, đậm đà hương vị.', 100, 46, 2),
(83, '2025-06-14 14:28:44.000000', '2025-06-14 14:28:44.000000', NULL, 'Sting dâu 330ml', 10500, 0, '/images/products/sting-dau.jpg', 'sting-dau', '8936000020035', '2025-12-14 14:28:44', 'Việt Nam', 'ml', 'Nước tăng lực hương dâu mạnh mẽ.', 90, 46, 21),
(84, '2025-06-14 14:28:44.000000', '2025-06-14 14:28:44.000000', NULL, 'Mirinda soda kem', 12000, 0, '/images/products/mirinda-soda-kem.jpg', 'mirinda-soda-kem', '8936000020042', '2025-12-14 14:28:44', 'Việt Nam', 'ml', 'Hương kem sữa ngọt ngào, mát lạnh.', 85, 46, 2),
(85, '2025-06-14 14:28:44.000000', '2025-06-14 14:28:44.000000', NULL, '7Up không calo', 13000, 0, '/images/products/7up-zero.jpg', '7up-zero', '8936000020059', '2025-12-14 14:28:44', 'Việt Nam', 'ml', 'Nước chanh có ga không đường, ít calo.', 75, 46, 2),
(86, '2025-06-14 14:28:44.000000', '2025-06-14 14:28:44.000000', NULL, 'Number 1 chanh 330ml', 9500, 0, '/images/products/number1-chanh.jpg', 'number1-chanh', '8936000020066', '2025-12-14 14:28:44', 'Việt Nam', 'ml', 'Tăng lực vị chanh sảng khoái.', 100, 46, 21),
(87, '2025-06-14 14:28:44.000000', '2025-06-14 14:28:44.000000', NULL, 'Red Bull Thái 250ml', 15000, 0, '/images/products/redbull-thai.jpg', 'redbull-thai', '8936000020073', '2025-12-14 14:28:44', 'Thái Lan', 'ml', 'Tăng lực tức thì, vị ngọt dịu nhẹ.', 80, 46, 20),
(88, '2025-06-14 14:28:44.000000', '2025-06-14 14:28:44.000000', NULL, 'Revive chanh muối', 11000, 0, '/images/products/revive-chanh-muoi.jpg', 'revive-chanh-muoi', '8936000020080', '2025-12-14 14:28:44', 'Việt Nam', 'ml', 'Nước uống thể thao bổ sung khoáng.', 95, 46, 2),
(89, '2025-06-14 14:28:44.000000', '2025-06-14 14:28:44.000000', NULL, 'Revive hương cam', 11000, 0, '/images/products/revive-cam.jpg', 'revive-cam', '8936000020097', '2025-12-14 14:28:44', 'Việt Nam', 'ml', 'Hương cam tươi mát cho người năng động.', 85, 46, 2),
(90, '2025-06-14 14:28:44.000000', '2025-06-14 14:28:44.000000', NULL, 'La Vie 500ml', 8000, 0, '/images/products/la-vie-500ml.jpg', 'la-vie-500ml', '8936000020103', '2025-12-14 14:28:44', 'Việt Nam', 'ml', 'Nước khoáng thiên nhiên tinh khiết.', 120, 46, 20),
(91, '2025-06-14 14:28:44.000000', '2025-06-14 14:28:44.000000', NULL, 'La Vie Sparkling', 14000, 0, '/images/products/la-vie-sparkling.jpg', 'la-vie-sparkling', '8936000020110', '2025-12-14 14:28:44', 'Việt Nam', 'ml', 'Nước khoáng có ga nhẹ, hương tự nhiên.', 60, 46, 20),
(92, '2025-06-14 14:28:44.000000', '2025-06-14 14:28:44.000000', NULL, 'Aquafina chai 500ml', 9000, 0, '/images/products/aquafina.jpg', 'aquafina', '8936000020127', '2025-12-14 14:28:44', 'Việt Nam', 'ml', 'Nước tinh khiết cho cuộc sống năng động.', 100, 46, 2),
(93, '2025-06-14 14:28:44.000000', '2025-06-14 14:28:44.000000', NULL, 'i-on Life 500ml', 9500, 0, '/images/products/ion-life.jpg', 'ion-life', '8936000020134', '2025-12-14 14:28:44', 'Việt Nam', 'ml', 'Nước ion kiềm bổ sung điện giải.', 100, 46, 20),
(94, '2025-06-14 14:28:44.000000', '2025-06-14 14:28:44.000000', NULL, 'Pocari Sweat 330ml', 17000, 0, '/images/products/pocari-sweat.jpg', 'pocari-sweat', '8936000020141', '2025-12-14 14:28:44', 'Nhật Bản', 'ml', 'Nước điện giải giúp hồi phục năng lượng.', 60, 46, 35),
(95, '2025-06-14 14:28:44.000000', '2025-06-14 14:28:44.000000', NULL, 'Sprite lon 330ml', 12000, 0, '/images/products/sprite-330ml.jpg', 'sprite-330ml', '8936000020158', '2025-12-14 14:28:44', 'Việt Nam', 'ml', 'Nước chanh có ga, mát lạnh sảng khoái.', 90, 46, 1),
(96, '2025-06-14 14:28:44.000000', '2025-06-14 14:28:44.000000', NULL, 'Mirinda cam lon 330ml', 11500, 0, '/images/products/mirinda-cam.jpg', 'mirinda-cam', '8936000020165', '2025-12-14 14:28:44', 'Việt Nam', 'ml', 'Vị cam ngọt mát, đậm đà hương vị.', 95, 46, 2),
(97, '2025-06-14 14:28:44.000000', '2025-06-14 14:28:44.000000', NULL, 'Nước tăng lực Warrior', 10000, 0, '/images/products/warrior.jpg', 'warrior', '8936000020172', '2025-12-14 14:28:44', 'Việt Nam', 'ml', 'Tăng lực tức thì cho người trẻ năng động.', 80, 46, 21),
(98, '2025-06-14 14:28:44.000000', '2025-06-14 14:28:44.000000', NULL, 'Samurai tăng lực dâu 250ml', 9500, 0, '/images/products/samurai-dau.jpg', 'samurai-dau', '8936000020189', '2025-12-14 14:28:44', 'Việt Nam', 'ml', 'Hương dâu ngọt ngào, tăng sức bền.', 70, 46, 2),
(99, '2025-06-14 14:28:44.000000', '2025-06-14 14:28:44.000000', NULL, 'Nước yến ngân nhĩ Wonderfarm', 18000, 0, '/images/products/nuoc-yen-wonderfarm.jpg', 'nuoc-yen-wonderfarm', '8936000020196', '2025-12-14 14:28:44', 'Việt Nam', 'ml', 'Bồi bổ cơ thể, thanh mát mỗi ngày.', 45, 46, 20),
(100, '2025-06-14 14:28:44.000000', '2025-06-14 14:28:44.000000', NULL, 'C2 trà chanh 360ml', 10000, 0, '/images/products/c2-tra-chanh.jpg', 'c2-tra-chanh', '8936000020202', '2025-12-14 14:28:44', 'Việt Nam', 'ml', 'Giải nhiệt với trà chanh đậm vị.', 88, 46, 2),
(101, '2025-06-14 14:31:21.000000', '2025-06-14 14:31:21.000000', NULL, 'Rau muống sạch', 12000, 0, '/images/products/rau-muong.jpg', 'rau-muong', '8936000020219', '2025-06-20 14:31:21', 'Việt Nam', 'g', 'Rau muống tươi sạch, không hóa chất.', 60, 10, 6),
(102, '2025-06-14 14:31:21.000000', '2025-06-14 14:31:21.000000', NULL, 'Cải ngọt Đà Lạt', 13000, 0, '/images/products/cai-ngot-da-lat.jpg', 'cai-ngot-da-lat', '8936000020226', '2025-06-20 14:31:21', 'Việt Nam', 'g', 'Cải ngọt xanh mướt, giàu vitamin.', 55, 10, 7),
(103, '2025-06-14 14:31:21.000000', '2025-06-14 14:31:21.000000', NULL, 'Cải bó xôi (rau bina)', 17000, 0, '/images/products/cai-bo-xoi.jpg', 'cai-bo-xoi', '8936000020233', '2025-06-20 14:31:21', 'Việt Nam', 'g', 'Bổ sung sắt, tốt cho sức khỏe.', 40, 10, 8),
(104, '2025-06-14 14:31:21.000000', '2025-06-14 14:31:21.000000', NULL, 'Xà lách Romaine', 14000, 0, '/images/products/xa-lach-romaine.jpg', 'xa-lach-romaine', '8936000020240', '2025-06-20 14:31:21', 'Việt Nam', 'g', 'Xà lách giòn ngọt, phù hợp salad.', 48, 10, 6),
(105, '2025-06-14 14:31:21.000000', '2025-06-14 14:31:21.000000', NULL, 'Cải thìa tươi', 15000, 0, '/images/products/cai-thia.jpg', 'cai-thia', '8936000020257', '2025-06-20 14:31:21', 'Việt Nam', 'g', 'Giàu chất xơ, ít đắng.', 52, 10, 7),
(106, '2025-06-14 14:31:21.000000', '2025-06-14 14:31:21.000000', NULL, 'Cà rốt Đà Lạt', 18000, 0, '/images/products/ca-rot.jpg', 'ca-rot', '8936000020264', '2025-06-20 14:31:21', 'Việt Nam', 'g', 'Cà rốt giòn, ngọt tự nhiên.', 70, 11, 6),
(107, '2025-06-14 14:31:21.000000', '2025-06-14 14:31:21.000000', NULL, 'Củ cải trắng', 15000, 0, '/images/products/cu-cai-trang.jpg', 'cu-cai-trang', '8936000020271', '2025-06-20 14:31:21', 'Việt Nam', 'g', 'Thanh nhiệt, tốt cho tiêu hóa.', 60, 11, 7),
(108, '2025-06-14 14:31:21.000000', '2025-06-14 14:31:21.000000', NULL, 'Khoai lang tím', 22000, 0, '/images/products/khoai-lang-tim.jpg', 'khoai-lang-tim', '8936000020288', '2025-06-20 14:31:21', 'Việt Nam', 'g', 'Bổ dưỡng, thơm ngon đặc trưng.', 58, 11, 6),
(109, '2025-06-14 14:31:21.000000', '2025-06-14 14:31:21.000000', NULL, 'Củ dền đỏ', 17000, 0, '/images/products/cu-den-do.jpg', 'cu-den-do', '8936000020295', '2025-06-20 14:31:21', 'Việt Nam', 'g', 'Chống oxy hóa, đẹp da.', 42, 11, 8),
(110, '2025-06-14 14:31:21.000000', '2025-06-14 14:31:21.000000', NULL, 'Củ năng tươi', 19000, 0, '/images/products/cu-nang.jpg', 'cu-nang', '8936000020301', '2025-06-20 14:31:21', 'Việt Nam', 'g', 'Giòn ngọt, dùng nấu chè, canh.', 50, 11, 6),
(111, '2025-06-14 14:31:21.000000', '2025-06-14 14:31:21.000000', NULL, 'Cà chua bi đỏ', 23000, 0, '/images/products/ca-chua-bi.jpg', 'ca-chua-bi', '8936000020318', '2025-06-20 14:31:21', 'Việt Nam', 'g', 'Ngọt dịu, thích hợp ăn sống.', 40, 12, 7),
(112, '2025-06-14 14:31:21.000000', '2025-06-14 14:31:21.000000', NULL, 'Bầu hồ lô non', 18000, 0, '/images/products/bau-ho-lo.jpg', 'bau-ho-lo', '8936000020325', '2025-06-20 14:31:21', 'Việt Nam', 'g', 'Bầu ngọt mềm, dùng nấu canh.', 55, 12, 6),
(113, '2025-06-14 14:31:21.000000', '2025-06-14 14:31:21.000000', NULL, 'Bí đỏ tròn giống Nhật', 22000, 0, '/images/products/bi-do-tron.jpg', 'bi-do-tron', '8936000020332', '2025-06-20 14:31:21', 'Việt Nam', 'g', 'Bí ngọt, giàu vitamin A.', 48, 12, 6),
(114, '2025-06-14 14:31:21.000000', '2025-06-14 14:31:21.000000', NULL, 'Đậu bắp xanh', 16000, 0, '/images/products/dau-bap.jpg', 'dau-bap', '8936000020349', '2025-06-20 14:31:21', 'Việt Nam', 'g', 'Giúp tiêu hóa tốt, ăn kèm lẩu.', 60, 12, 7),
(115, '2025-06-14 14:31:21.000000', '2025-06-14 14:31:21.000000', NULL, 'Mướp hương sạch', 17000, 0, '/images/products/muop-huong.jpg', 'muop-huong', '8936000020356', '2025-06-20 14:31:21', 'Việt Nam', 'g', 'Mướp ngọt, mềm, dễ nấu.', 50, 12, 6),
(116, '2025-06-14 14:31:21.000000', '2025-06-14 14:31:21.000000', NULL, 'Khổ qua (mướp đắng)', 18000, 0, '/images/products/kho-qua.jpg', 'kho-qua', '8936000020363', '2025-06-20 14:31:21', 'Việt Nam', 'g', 'Thanh nhiệt, lợi mật.', 38, 12, 8),
(117, '2025-06-14 14:31:21.000000', '2025-06-14 14:31:21.000000', NULL, 'Cà tím dài', 20000, 0, '/images/products/ca-tim.jpg', 'ca-tim', '8936000020370', '2025-06-20 14:31:21', 'Việt Nam', 'g', 'Cà tím mềm, ít hạt, vị dịu nhẹ.', 65, 12, 7),
(118, '2025-06-14 14:31:21.000000', '2025-06-14 14:31:21.000000', NULL, 'Ớt chuông xanh', 25000, 0, '/images/products/ot-chuong-xanh.jpg', 'ot-chuong-xanh', '8936000020387', '2025-06-20 14:31:21', 'Việt Nam', 'g', 'Giàu vitamin C, dùng xào nấu, nướng.', 42, 12, 7),
(119, '2025-06-14 14:31:21.000000', '2025-06-14 14:31:21.000000', NULL, 'Dưa leo Baby', 21000, 0, '/images/products/dua-leo-baby.jpg', 'dua-leo-baby', '8936000020394', '2025-06-20 14:31:21', 'Việt Nam', 'g', 'Dưa nhỏ, giòn, thích hợp ăn sống.', 58, 12, 6),
(120, '2025-06-14 14:31:21.000000', '2025-06-14 14:31:21.000000', NULL, 'Su su quả', 19000, 0, '/images/products/su-su.jpg', 'su-su', '8936000020400', '2025-06-20 14:31:21', 'Việt Nam', 'g', 'Thanh mát, dễ chế biến.', 54, 12, 8),
(121, '2025-06-14 14:33:26.000000', '2025-06-14 14:33:26.000000', NULL, 'Cá ngừ đại dương phi lê', 95000, 0, '/images/products/ca-ngu-phile.jpg', 'ca-ngu-phile', '8936000020417', '2025-12-14 14:33:26', 'Việt Nam', 'g', 'Cá ngừ tươi ngon, nhiều dinh dưỡng.', 50, 17, 11),
(122, '2025-06-14 14:33:26.000000', '2025-06-14 14:33:26.000000', NULL, 'Cá saba Na Uy cắt lát', 98000, 0, '/images/products/ca-saba.jpg', 'ca-saba', '8936000020424', '2025-12-14 14:33:26', 'Na Uy', 'g', 'Cá béo, thịt chắc, ít tanh.', 45, 17, 12),
(123, '2025-06-14 14:33:26.000000', '2025-06-14 14:33:26.000000', NULL, 'Cá hố cắt khúc đông lạnh', 82000, 0, '/images/products/ca-ho.jpg', 'ca-ho', '8936000020431', '2025-12-14 14:33:26', 'Việt Nam', 'g', 'Thịt mềm, ít xương, dễ chế biến.', 60, 17, 13),
(124, '2025-06-14 14:33:26.000000', '2025-06-14 14:33:26.000000', NULL, 'Cá bống dừa tươi', 60000, 0, '/images/products/ca-bong-dua.jpg', 'ca-bong-dua', '8936000020448', '2025-12-14 14:33:26', 'Việt Nam', 'g', 'Ngon kho tiêu, phù hợp bữa cơm Việt.', 40, 18, 11),
(125, '2025-06-14 14:33:26.000000', '2025-06-14 14:33:26.000000', NULL, 'Cá rô phi fillet', 75000, 0, '/images/products/ca-ro-phi.jpg', 'ca-ro-phi', '8936000020455', '2025-12-14 14:33:26', 'Việt Nam', 'g', 'Thịt trắng, thơm, ít xương.', 55, 18, 12),
(126, '2025-06-14 14:33:26.000000', '2025-06-14 14:33:26.000000', NULL, 'Cá lóc đồng nguyên con', 85000, 0, '/images/products/ca-loc-dong.jpg', 'ca-loc-dong', '8936000020462', '2025-12-14 14:33:26', 'Việt Nam', 'g', 'Dai ngon, phù hợp nấu canh chua.', 50, 18, 13),
(127, '2025-06-14 14:33:26.000000', '2025-06-14 14:33:26.000000', NULL, 'Tôm thẻ sống', 135000, 0, '/images/products/tom-the-song.jpg', 'tom-the-song', '8936000020479', '2025-12-14 14:33:26', 'Việt Nam', 'g', 'Tôm ngọt thịt, giàu canxi.', 38, 19, 10),
(128, '2025-06-14 14:33:26.000000', '2025-06-14 14:33:26.000000', NULL, 'Tôm sú đông lạnh', 145000, 0, '/images/products/tom-su-dong-lanh.jpg', 'tom-su-dong-lanh', '8936000020486', '2025-12-14 14:33:26', 'Việt Nam', 'g', 'Thích hợp nướng, hấp, lẩu.', 42, 19, 11),
(129, '2025-06-14 14:33:26.000000', '2025-06-14 14:33:26.000000', NULL, 'Tép đồng tươi', 55000, 0, '/images/products/tep-dong.jpg', 'tep-dong', '8936000020493', '2025-12-14 14:33:26', 'Việt Nam', 'g', 'Ngon kho quẹt, chiên giòn.', 60, 19, 13),
(130, '2025-06-14 14:33:26.000000', '2025-06-14 14:33:26.000000', NULL, 'Mực ống nguyên con', 120000, 0, '/images/products/muc-ong.jpg', 'muc-ong', '8936000020509', '2025-12-14 14:33:26', 'Việt Nam', 'g', 'Mực dày thịt, vị ngọt tự nhiên.', 35, 20, 12),
(131, '2025-06-14 14:33:26.000000', '2025-06-14 14:33:26.000000', NULL, 'Mực lá làm sạch', 135000, 0, '/images/products/muc-la.jpg', 'muc-la', '8936000020516', '2025-12-14 14:33:26', 'Việt Nam', 'g', 'Nướng, xào hoặc hấp đều ngon.', 30, 20, 13),
(132, '2025-06-14 14:33:26.000000', '2025-06-14 14:33:26.000000', NULL, 'Bạch tuộc baby', 140000, 0, '/images/products/bach-tuoc-baby.jpg', 'bach-tuoc-baby', '8936000020523', '2025-12-14 14:33:26', 'Việt Nam', 'g', 'Thịt dai ngọt, hấp dẫn.', 45, 20, 12),
(133, '2025-06-14 14:33:26.000000', '2025-06-14 14:33:26.000000', NULL, 'Bạch tuộc to nguyên con', 155000, 0, '/images/products/bach-tuoc-lon.jpg', 'bach-tuoc-lon', '8936000020530', '2025-12-14 14:33:26', 'Việt Nam', 'g', 'Phù hợp lẩu hải sản.', 25, 20, 13),
(134, '2025-06-14 14:33:26.000000', '2025-06-14 14:33:26.000000', NULL, 'Cua biển Cà Mau', 185000, 0, '/images/products/cua-bien.jpg', 'cua-bien', '8936000020547', '2025-12-14 14:33:26', 'Việt Nam', 'g', 'Thịt chắc, gạch béo.', 20, 21, 10),
(135, '2025-06-14 14:33:26.000000', '2025-06-14 14:33:26.000000', NULL, 'Cua lột đông lạnh', 150000, 0, '/images/products/cua-lot.jpg', 'cua-lot', '8936000020554', '2025-12-14 14:33:26', 'Việt Nam', 'g', 'Dễ chế biến, phù hợp chiên giòn.', 30, 21, 11),
(136, '2025-06-14 14:33:26.000000', '2025-06-14 14:33:26.000000', NULL, 'Ghẹ xanh hấp chín', 170000, 0, '/images/products/ghe-xanh.jpg', 'ghe-xanh', '8936000020561', '2025-12-14 14:33:26', 'Việt Nam', 'g', 'Ghẹ thịt chắc, ít nước, ngọt.', 28, 21, 12),
(137, '2025-06-14 14:33:26.000000', '2025-06-14 14:33:26.000000', NULL, 'Ghẹ sống nguyên con', 180000, 0, '/images/products/ghe-song.jpg', 'ghe-song', '8936000020578', '2025-12-14 14:33:26', 'Việt Nam', 'g', 'Ghẹ tươi sống, chế biến đa dạng.', 22, 21, 11),
(138, '2025-06-14 14:33:26.000000', '2025-06-14 14:33:26.000000', NULL, 'Cá thu cắt lát đông lạnh', 98000, 0, '/images/products/ca-thu.jpg', 'ca-thu', '8936000020585', '2025-12-14 14:33:26', 'Việt Nam', 'g', 'Thịt chắc, phù hợp chiên, sốt cà.', 50, 17, 13),
(139, '2025-06-14 14:33:26.000000', '2025-06-14 14:33:26.000000', NULL, 'Cá chép sống', 65000, 0, '/images/products/ca-chep.jpg', 'ca-chep', '8936000020592', '2025-12-14 14:33:26', 'Việt Nam', 'g', 'Thịt dai, ngọt, nấu cháo rất ngon.', 60, 18, 10),
(140, '2025-06-14 14:33:26.000000', '2025-06-14 14:33:26.000000', NULL, 'Cá trê vàng', 69000, 0, '/images/products/ca-tre-vang.jpg', 'ca-tre-vang', '8936000020608', '2025-12-14 14:33:26', 'Việt Nam', 'g', 'Kho nghệ hoặc om chuối đậm đà.', 55, 18, 13),
(141, '2025-06-14 14:36:30.000000', '2025-06-14 14:36:30.000000', NULL, 'Cá chỉ vàng khô', 75000, 0, '/images/products/ca-chi-vang-kho.jpg', 'ca-chi-vang-kho', '8936000020615', '2025-12-14 14:36:30', 'Việt Nam', 'g', 'Phơi nắng tự nhiên, thích hợp nướng.', 45, 23, 13),
(142, '2025-06-14 14:36:30.000000', '2025-06-14 14:36:30.000000', NULL, 'Mực một nắng', 165000, 0, '/images/products/muc-mot-nang.jpg', 'muc-mot-nang', '8936000020622', '2025-12-14 14:36:30', 'Việt Nam', 'g', 'Dày thịt, thơm ngon, nướng tuyệt hảo.', 30, 23, 12),
(143, '2025-06-14 14:36:30.000000', '2025-06-14 14:36:30.000000', NULL, 'Tôm khô loại 1', 210000, 0, '/images/products/tom-kho.jpg', 'tom-kho', '8936000020639', '2025-12-14 14:36:30', 'Việt Nam', 'g', 'Tôm khô màu đẹp, vị ngọt tự nhiên.', 25, 23, 11),
(144, '2025-06-14 14:36:30.000000', '2025-06-14 14:36:30.000000', NULL, 'Cá bống khô', 68000, 0, '/images/products/ca-bong-kho.jpg', 'ca-bong-kho', '8936000020646', '2025-12-14 14:36:30', 'Việt Nam', 'g', 'Kho tiêu hoặc rim mắm đường rất ngon.', 40, 23, 13),
(145, '2025-06-14 14:36:30.000000', '2025-06-14 14:36:30.000000', NULL, 'Cá cơm khô', 72000, 0, '/images/products/ca-com-kho.jpg', 'ca-com-kho', '8936000020653', '2025-12-14 14:36:30', 'Việt Nam', 'g', 'Cá nhỏ, vị ngọt, dùng chiên hoặc rim.', 55, 23, 10),
(146, '2025-06-14 14:36:30.000000', '2025-06-14 14:36:30.000000', NULL, 'Thịt bò Úc tươi', 180000, 0, '/images/products/thit-bo-uc.jpg', 'thit-bo-uc', '8936000020660', '2025-12-14 14:36:30', 'Úc', 'g', 'Thịt bò mềm, thích hợp nướng hoặc xào.', 30, 24, 14),
(147, '2025-06-14 14:36:30.000000', '2025-06-14 14:36:30.000000', NULL, 'Thịt heo ba chỉ', 95000, 0, '/images/products/thit-heo-ba-chi.jpg', 'thit-heo-ba-chi', '8936000020677', '2025-12-14 14:36:30', 'Việt Nam', 'g', 'Lớp mỡ - nạc xen kẽ, phù hợp kho, nướng.', 55, 24, 16),
(148, '2025-06-14 14:36:30.000000', '2025-06-14 14:36:30.000000', NULL, 'Sườn non heo', 125000, 0, '/images/products/suon-non-heo.jpg', 'suon-non-heo', '8936000020684', '2025-12-14 14:36:30', 'Việt Nam', 'g', 'Sườn mềm, phù hợp nấu canh, nướng BBQ.', 35, 24, 16),
(149, '2025-06-14 14:36:30.000000', '2025-06-14 14:36:30.000000', NULL, 'Thịt bò xay MEATDeli', 132000, 0, '/images/products/thit-bo-xay.jpg', 'thit-bo-xay', '8936000020691', '2025-12-14 14:36:30', 'Việt Nam', 'g', 'Xay mịn, thích hợp làm burger, bò viên.', 40, 24, 16),
(150, '2025-06-14 14:36:30.000000', '2025-06-14 14:36:30.000000', NULL, 'Thịt nạc vai heo', 89000, 0, '/images/products/thit-nac-vai.jpg', 'thit-nac-vai', '8936000020707', '2025-12-14 14:36:30', 'Việt Nam', 'g', 'Nhiều thịt, ít mỡ, dễ chế biến.', 60, 24, 14),
(151, '2025-06-14 14:36:30.000000', '2025-06-14 14:36:30.000000', NULL, 'Thịt gà ta nguyên con', 135000, 0, '/images/products/ga-ta-nguyen-con.jpg', 'ga-ta-nguyen-con', '8936000020714', '2025-12-14 14:36:30', 'Việt Nam', 'g', 'Gà thịt chắc, thơm, thích hợp luộc.', 30, 25, 16),
(152, '2025-06-14 14:36:30.000000', '2025-06-14 14:36:30.000000', NULL, 'Ức gà phi lê', 85000, 0, '/images/products/uc-ga-phile.jpg', 'uc-ga-phile', '8936000020721', '2025-12-14 14:36:30', 'Việt Nam', 'g', 'Ít mỡ, nhiều đạm, hợp ăn kiêng.', 70, 25, 15),
(153, '2025-06-14 14:36:30.000000', '2025-06-14 14:36:30.000000', NULL, 'Đùi gà công nghiệp', 67000, 0, '/images/products/dui-ga.jpg', 'dui-ga', '8936000020738', '2025-12-14 14:36:30', 'Việt Nam', 'g', 'Giá rẻ, dễ chế biến.', 90, 25, 15),
(154, '2025-06-14 14:36:30.000000', '2025-06-14 14:36:30.000000', NULL, 'Cánh gà giữa', 72000, 0, '/images/products/canh-ga-giua.jpg', 'canh-ga-giua', '8936000020745', '2025-12-14 14:36:30', 'Việt Nam', 'g', 'Chiên giòn hoặc sốt cay đều ngon.', 45, 25, 15),
(155, '2025-06-14 14:36:30.000000', '2025-06-14 14:36:30.000000', NULL, 'Gà ta làm sẵn nguyên con', 140000, 0, '/images/products/ga-ta-lam-san.jpg', 'ga-ta-lam-san', '8936000020752', '2025-12-14 14:36:30', 'Việt Nam', 'g', 'Tiện lợi, làm sạch, giữ hương vị tự nhiên.', 25, 25, 14),
(156, '2025-06-14 14:36:30.000000', '2025-06-14 14:36:30.000000', NULL, 'Thịt vịt nguyên con', 95000, 0, '/images/products/thit-vit.jpg', 'thit-vit', '8936000020769', '2025-12-14 14:36:30', 'Việt Nam', 'g', 'Thịt mềm, thơm, hợp làm bún măng vịt.', 38, 25, 14),
(157, '2025-06-14 14:36:30.000000', '2025-06-14 14:36:30.000000', NULL, 'Vịt quay nguyên con', 185000, 0, '/images/products/vit-quay.jpg', 'vit-quay', '8936000020776', '2025-12-14 14:36:30', 'Việt Nam', 'g', 'Vỏ giòn, thịt mềm, đậm vị gia vị truyền thống.', 20, 25, 14),
(158, '2025-06-14 14:36:30.000000', '2025-06-14 14:36:30.000000', NULL, 'Thịt đùi gà CP', 71000, 0, '/images/products/thit-dui-ga.jpg', 'thit-dui-ga', '8936000020783', '2025-12-14 14:36:30', 'Việt Nam', 'g', 'Thịt mềm, dễ tẩm ướp và chế biến.', 65, 25, 15),
(159, '2025-06-14 14:36:30.000000', '2025-06-14 14:36:30.000000', NULL, 'Chân gà rút xương', 68000, 0, '/images/products/chan-ga-rut-xuong.jpg', 'chan-ga-rut-xuong', '8936000020790', '2025-12-14 14:36:30', 'Việt Nam', 'g', 'Phù hợp món ngâm sả tắc hoặc sốt cay.', 50, 25, 14),
(160, '2025-06-14 14:36:30.000000', '2025-06-14 14:36:30.000000', NULL, 'Thịt cổ gà lọc xương', 60000, 0, '/images/products/co-ga.jpg', 'co-ga', '8936000020806', '2025-12-14 14:36:30', 'Việt Nam', 'g', 'Ngon khi nướng hoặc chiên giòn.', 40, 25, 14);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deletedAt` datetime(6) DEFAULT NULL,
  `image_url` varchar(255) NOT NULL,
  `image_main` varchar(255) NOT NULL,
  `productId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_variant`
--

CREATE TABLE `product_variant` (
  `id` int(11) NOT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deletedAt` datetime(6) DEFAULT NULL,
  `variant_name` varchar(255) NOT NULL,
  `price_modifier` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deletedAt` datetime(6) DEFAULT NULL,
  `comment` varchar(255) NOT NULL,
  `rating` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `usersId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deletedAt` datetime(6) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `role` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `createdAt`, `updatedAt`, `deletedAt`, `name`, `phone`, `image`, `role`, `email`, `password`) VALUES
(101, '2025-06-01 08:00:00.000000', '2025-06-01 08:00:00.000000', NULL, 'Minh Lê', '0901234567', 'user101.jpg', 'customer', 'minh.le101@example.com', 'hashed_password_101'),
(102, '2025-06-02 09:00:00.000000', '2025-06-02 09:00:00.000000', NULL, 'An Nguyễn', '0902234567', 'user102.jpg', 'customer', 'an.nguyen102@example.com', 'hashed_password_102'),
(103, '2025-06-03 10:30:00.000000', '2025-06-03 10:30:00.000000', NULL, 'Bình Trần', '0903234567', 'user103.jpg', 'customer', 'binh.tran103@example.com', 'hashed_password_103'),
(104, '2025-06-04 11:15:00.000000', '2025-06-04 11:15:00.000000', NULL, 'Hà Phạm', '0904234567', 'user104.jpg', 'customer', 'ha.pham104@example.com', 'hashed_password_104'),
(105, '2025-06-05 14:45:00.000000', '2025-06-05 14:45:00.000000', NULL, 'Linh Đặng', '0905234567', 'user105.jpg', 'customer', 'linh.dang105@example.com', 'hashed_password_105');

-- --------------------------------------------------------

--
-- Table structure for table `voucher`
--

CREATE TABLE `voucher` (
  `id` int(11) NOT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deletedAt` datetime(6) DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `max_discount` int(11) NOT NULL,
  `min_order_value` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `is_used` tinyint(4) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `usersId` int(11) DEFAULT NULL,
  `orderId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `voucher`
--

INSERT INTO `voucher` (`id`, `createdAt`, `updatedAt`, `deletedAt`, `code`, `max_discount`, `min_order_value`, `quantity`, `is_used`, `start_date`, `end_date`, `usersId`, `orderId`) VALUES
(1, '2025-06-18 14:47:06.000000', '2025-06-18 14:47:06.000000', NULL, 'GIAM10K', 10000, 50000, 100, 0, '2025-06-01 00:00:00', '2025-07-01 00:00:00', NULL, NULL),
(2, '2025-06-18 14:47:06.000000', '2025-06-18 14:47:06.000000', NULL, 'GIAM20K', 20000, 80000, 50, 0, '2025-06-01 00:00:00', '2025-07-15 00:00:00', NULL, NULL),
(3, '2025-06-18 14:47:06.000000', '2025-06-18 14:47:06.000000', NULL, 'SUMMER30', 30000, 100000, 30, 0, '2025-06-10 00:00:00', '2025-07-20 00:00:00', NULL, NULL),
(4, '2025-06-18 14:47:06.000000', '2025-06-18 14:47:06.000000', NULL, 'FREESHIP', 15000, 30000, 150, 0, '2025-06-05 00:00:00', '2025-07-05 00:00:00', NULL, NULL),
(5, '2025-06-18 14:47:06.000000', '2025-06-18 14:47:06.000000', NULL, 'VIP50K', 50000, 150000, 10, 0, '2025-06-01 00:00:00', '2025-07-01 00:00:00', NULL, NULL),
(6, '2025-06-18 14:47:06.000000', '2025-06-18 14:47:06.000000', NULL, 'HELLO25', 25000, 75000, 80, 0, '2025-06-01 00:00:00', '2025-07-10 00:00:00', NULL, NULL),
(7, '2025-06-18 14:47:06.000000', '2025-06-18 14:47:06.000000', NULL, 'HAPPYFOOD', 20000, 60000, 60, 0, '2025-06-01 00:00:00', '2025-06-30 00:00:00', NULL, NULL),
(8, '2025-06-18 14:47:06.000000', '2025-06-18 14:47:06.000000', NULL, 'NEWUSER', 30000, 90000, 90, 0, '2025-06-01 00:00:00', '2025-08-01 00:00:00', NULL, NULL),
(9, '2025-06-18 14:47:06.000000', '2025-06-18 14:47:06.000000', NULL, 'HOTDEAL', 45000, 120000, 20, 0, '2025-06-15 00:00:00', '2025-07-31 00:00:00', NULL, NULL),
(10, '2025-06-18 14:47:06.000000', '2025-06-18 14:47:06.000000', NULL, 'SAVE100K', 100000, 300000, 5, 0, '2025-06-01 00:00:00', '2025-06-30 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deletedAt` datetime(6) DEFAULT NULL,
  `usersId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_cc9b2ed4ab9debaf6cb78bd0330` (`usersId`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_588be05d18b7e4427a06e219528` (`usersId`);

--
-- Indexes for table `cart_item`
--
ALTER TABLE `cart_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_75db0de134fe0f9fe9e4591b7bf` (`productId`),
  ADD KEY `FK_29e590514f9941296f3a2440d39` (`cartId`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_b37d51328f9ca210b573b19372c` (`orderId`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_15d817ff19ae88ce95bb0bb2ce5` (`usersId`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_904370c093ceea4369659a3c810` (`productId`),
  ADD KEY `FK_646bf9ece6f45dbe41c203e06e0` (`orderId`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_d09d285fe1645cd2f0db811e293` (`orderId`),
  ADD KEY `FK_d9a09e0b9cbbbc3ef5532a282e1` (`usersId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_7ac18742b02b8af41afdaa3b9a` (`barcode`),
  ADD KEY `FK_ff0c0301a95e517153df97f6812` (`categoryId`),
  ADD KEY `FK_bb7d3d9dc1fae40293795ae39d6` (`brandId`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_b367708bf720c8dd62fc6833161` (`productId`);

--
-- Indexes for table `product_variant`
--
ALTER TABLE `product_variant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_6e420052844edf3a5506d863ce6` (`productId`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_1b56a1a54de7bb0d0904c909870` (`orderId`),
  ADD KEY `FK_588f0e7159a3cd99b8a7333aa2b` (`usersId`),
  ADD KEY `FK_1fdf6f092aa907177771948f6a1` (`productId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_11c6babba3c49d229e56a6f3e70` (`usersId`),
  ADD KEY `FK_ede99a601dc036467bb80321579` (`orderId`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ec4c67d98bba94d01c12108b2f9` (`usersId`),
  ADD KEY `FK_17e00e49d77ccaf7ff0e14de37b` (`productId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cart_item`
--
ALTER TABLE `cart_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_variant`
--
ALTER TABLE `product_variant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `voucher`
--
ALTER TABLE `voucher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `FK_cc9b2ed4ab9debaf6cb78bd0330` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `FK_588be05d18b7e4427a06e219528` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `cart_item`
--
ALTER TABLE `cart_item`
  ADD CONSTRAINT `FK_29e590514f9941296f3a2440d39` FOREIGN KEY (`cartId`) REFERENCES `cart` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_75db0de134fe0f9fe9e4591b7bf` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `delivery`
--
ALTER TABLE `delivery`
  ADD CONSTRAINT `FK_b37d51328f9ca210b573b19372c` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `FK_15d817ff19ae88ce95bb0bb2ce5` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `FK_646bf9ece6f45dbe41c203e06e0` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_904370c093ceea4369659a3c810` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `FK_d09d285fe1645cd2f0db811e293` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_d9a09e0b9cbbbc3ef5532a282e1` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_bb7d3d9dc1fae40293795ae39d6` FOREIGN KEY (`brandId`) REFERENCES `brand` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_ff0c0301a95e517153df97f6812` FOREIGN KEY (`categoryId`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `FK_b367708bf720c8dd62fc6833161` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_variant`
--
ALTER TABLE `product_variant`
  ADD CONSTRAINT `FK_6e420052844edf3a5506d863ce6` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `FK_1b56a1a54de7bb0d0904c909870` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_1fdf6f092aa907177771948f6a1` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_588f0e7159a3cd99b8a7333aa2b` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `voucher`
--
ALTER TABLE `voucher`
  ADD CONSTRAINT `FK_11c6babba3c49d229e56a6f3e70` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_ede99a601dc036467bb80321579` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `FK_17e00e49d77ccaf7ff0e14de37b` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_ec4c67d98bba94d01c12108b2f9` FOREIGN KEY (`usersId`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
