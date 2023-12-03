-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 02, 2023 at 04:55 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nhahang`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Buger'),
(2, 'pasta'),
(3, 'lasagna'),
(4, 'Drink'),
(5, 'pizza'),
(6, 'Hot Dog'),
(7, 'Juse');
(8, 'Biryani');
(9, 'Chocolate');
(10, 'Ice Cream');
(11, 'Spanchi');
(12, 'Sandwich');


--
-- Table structure for table `categories_employee`


DROP TABLE IF EXISTS `categories_employee`;
CREATE TABLE IF NOT EXISTS `categories_employee` (
  `category_id` int NOT NULL,
  `employee_id` int NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------
-- thêm   thông tin chức vụ nhân viên 
INSERT INTO `categories_employee`(`id`, `Chuc_Vu`) VALUES 
('1','Quản Lý'),
('2','Nhân Viên'),
 ('3','Nhân Viên'),
 ('4','Nhân Viên');


insert into Nhân Viên (Thêm Nhân Viên)
INSERT INTO `employee_table`(`id`, `name`, `introduce`, `evaluate`, `images`) VALUES
('1','Cẩm Nhi','  <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Repellendus quam facere blanditiis in fugiat tempore necessitatibus aliquid. Id adipisci, rem corrupti asperiores distinctio delectus quae quia tenetur totam laboriosam quam. Lorem ipsum,dolor sit amet consectetur adipisicing elit. Dolores soluta ullam ipsa voluptates repudiandae dignissimos deleniti mollitia eum. Laudantium placeat velit nemo illo pariatur. Fuga aperiam impedit illo atque repellendus!</p>',' <div class="review_icon"><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star-half-stroke"></i></div>','review_1.png'),

('2','Siu','  <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Repellendus quam facere blanditiis in fugiat tempore necessitatibus aliquid. Id adipisci, rem corrupti asperiores distinctio delectus quae quia tenetur totam laboriosam quam. Lorem ipsum,dolor sit amet consectetur adipisicing elit. Dolores soluta ullam ipsa voluptates repudiandae dignissimos deleniti mollitia eum. Laudantium placeat velit nemo illo pariatur. Fuga aperiam impedit illo atque repellendus!</p>',' <div class="review_icon"><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star-half-stroke"></i></div>','review_1.png'),

('3','Hoài','  <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Repellendus quam facere blanditiis in fugiat tempore necessitatibus aliquid. Id adipisci, rem corrupti asperiores distinctio delectus quae quia tenetur totam laboriosam quam. Lorem ipsum,dolor sit amet consectetur adipisicing elit. Dolores soluta ullam ipsa voluptates repudiandae dignissimos deleniti mollitia eum. Laudantium placeat velit nemo illo pariatur. Fuga aperiam impedit illo atque repellendus!</p>',' <div class="review_icon"><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star-half-stroke"></i></div>','review_3.png'),

('4','Huy','  <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Repellendus quam facere blanditiis in fugiat tempore necessitatibus aliquid. Id adipisci, rem corrupti asperiores distinctio delectus quae quia tenetur totam laboriosam quam. Lorem ipsum,dolor sit amet consectetur adipisicing elit. Dolores soluta ullam ipsa voluptates repudiandae dignissimos deleniti mollitia eum. Laudantium placeat velit nemo illo pariatur. Fuga aperiam impedit illo atque repellendus!</p>',' <div class="review_icon"><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star-half-stroke"></i></div>','review_4.png');



--
-- Table structure for table `categories_nv`
--

DROP TABLE IF EXISTS `categories_nv`;
CREATE TABLE IF NOT EXISTS `categories_nv` (
  `category_employee` int NOT NULL AUTO_INCREMENT,
  `employee_table_id` int NOT NULL,
  PRIMARY KEY (`category_employee`,`employee_table_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

INSERT INTO `categories_nv`(`category_employee`, `employee_table_id`) VALUES
 ('1','1'),
 ('2','2'),
 ('3','3'),
 ('4','4');
--
-- Table structure for table `category_product`
--

DROP TABLE IF EXISTS `category_product`;
CREATE TABLE IF NOT EXISTS `category_product` (
  `category_id` int NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`category_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`category_id`, `product_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_table`
--

DROP TABLE IF EXISTS `employee_table`;
CREATE TABLE IF NOT EXISTS `employee_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` int NOT NULL,
  `introduce` int NOT NULL,
  `evaluate` int NOT NULL,
  `images` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `evaluate` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--bảng thêm sản phầm insert into products

INSERT INTO `products` (`id`, `name`, `price`, `description`, `image`, `evaluate`) VALUES
(1, 'Buger', '20.000',' <p>Lorem, ipsum dolor sit ametconsectetur adipisicing elit. Laborum assumenda voluptates</p>', 'buger.jpg', '<div class="menu_icon"><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star-half-stroke"></i></div>'),

(2, 'pasta', '20.000',' <p>Lorem, ipsum dolor sit ametconsectetur adipisicing elit. Laborum assumenda voluptates</p>', 'pasta.jpg', '<div class="menu_icon"><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star-half-stroke"></i></div>'),

(3, 'lasagna', '20.000',' <p>Lorem, ipsum dolor sit ametconsectetur adipisicing elit. Laborum assumenda voluptates</p>', 'lasagna.jpg', '<div class="menu_icon"><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star-half-stroke"></i></div>'),

(4, 'Drink', '20.000',' <p>Lorem, ipsum dolor sit ametconsectetur adipisicing elit. Laborum assumenda voluptates</p>', 'chocolate_Drink.jpg', '<div class="menu_icon"><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star-half-stroke"></i></div>'),

(5, 'pizza', '20.000',' <p>Lorem, ipsum dolor sit ametconsectetur adipisicing elit. Laborum assumenda voluptates</p>', 'pizza.jpg', '<div class="menu_icon"><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star-half-stroke"></i></div>'),

(6, 'Hot Dog', '20.000',' <p>Lorem, ipsum dolor sit ametconsectetur adipisicing elit. Laborum assumenda voluptates</p>', 'Hot_dog.jpg', '<div class="menu_icon"><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star-half-stroke"></i></div>'),

(7, 'Juse', '20.000',' <p>Lorem, ipsum dolor sit ametconsectetur adipisicing elit. Laborum assumenda voluptates</p>', 'juse.jpg', '<div class="menu_icon"><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star-half-stroke"></i></div>'),

(8, 'Biryani', '20.000',' <p>Lorem, ipsum dolor sit ametconsectetur adipisicing elit. Laborum assumenda voluptates</p>', 'biryani.jpg', '<div class="menu_icon"><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star-half-stroke"></i></div>'),

(9, 'Chocolate', '20.000',' <p>Lorem, ipsum dolor sit ametconsectetur adipisicing elit. Laborum assumenda voluptates</p>', 'chocolate.jpg', '<div class="menu_icon"><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star-half-stroke"></i></div>'),

(10, 'Ice Cream', '20.000',' <p>Lorem, ipsum dolor sit ametconsectetur adipisicing elit. Laborum assumenda voluptates</p>', 'ice_cream.jpg', '<div class="menu_icon"><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star-half-stroke"></i></div>'),

(11, 'Spanchi', '20.000',' <p>Lorem, ipsum dolor sit ametconsectetur adipisicing elit. Laborum assumenda voluptates</p>', 'Spanchi.jpg', '<div class="menu_icon"><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star-half-stroke"></i></div>'),

(12, 'Sandwich', '20.000',' <p>Lorem, ipsum dolor sit ametconsectetur adipisicing elit. Laborum assumenda voluptates</p>', 'sandwich.jpg', '<div class="menu_icon"><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star-half-stroke"></i></div>');



-- --------------------------------------------------------

--
-- Table structure for table `role_id`
--

DROP TABLE IF EXISTS `role_id`;
CREATE TABLE IF NOT EXISTS `role_id` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usres`
--

DROP TABLE IF EXISTS `usres`;
CREATE TABLE IF NOT EXISTS `usres` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
