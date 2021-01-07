-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 07, 2021 lúc 04:08 PM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `demodb1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id_contact` int(5) NOT NULL,
  `email` varchar(50) NOT NULL,
  `comment` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id_contact`, `email`, `comment`) VALUES
(1, 'hello@gmail.com', 'hihi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image_library`
--

CREATE TABLE `image_library` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `image_library`
--

INSERT INTO `image_library` (`id`, `product_id`, `path`, `created_time`, `last_updated`) VALUES
(2, 2, 'shoes-1.jpg', 0, 0),
(3, 2, 'shoes-2.jpg', 0, 0),
(4, 2, 'shoes-3.jpg', 0, 0),
(5, 3, 'shoes-4.jpg', 0, 0),
(6, 3, 'shoes-5.jpg', 0, 0),
(7, 3, 'shoes-6.jpg', 0, 0),
(8, 4, 'shoes-7.jpg', 0, 0),
(9, 4, 'shoes-8.jpg', 0, 0),
(10, 4, 'shoes-9.jpg', 0, 0),
(11, 5, 'shoes-1.jpg', 0, 0),
(12, 5, 'shoes-2.jpg', 0, 0),
(13, 5, 'shoes-3.jpg', 0, 0),
(14, 6, 'shoes-4.jpg', 0, 0),
(15, 6, 'shoes-5.jpg', 0, 0),
(16, 6, 'shoes-6.jpg', 0, 0),
(17, 7, 'shoes-7.jpg', 0, 0),
(18, 7, 'shoes-8.jpg', 0, 0),
(19, 7, 'shoes-1.jpg', 0, 0),
(20, 8, 'shoes-2.jpg', 0, 0),
(21, 8, 'shoes-3.jpg', 0, 0),
(22, 8, 'shoes-5.jpg', 0, 0),
(26, 10, 'shoes-1.jpg', 0, 0),
(27, 10, 'shoes-2.jpg', 0, 0),
(28, 10, 'shoes-3.jpg', 0, 0),
(29, 11, 'shoes-4.jpg', 0, 0),
(30, 11, 'shoes-5.jpg', 0, 0),
(31, 11, 'shoes-6.jpg', 0, 0),
(32, 12, 'shoes-7.jpg', 0, 0),
(33, 12, 'shoes-8.jpg', 0, 0),
(35, 12, 'shoes-9.jpg', 0, 0),
(36, 13, 'shoes-1.jpg', 0, 0),
(37, 13, 'shoes-2.jpg', 0, 0),
(38, 13, 'shoes-3.jpg', 0, 0),
(39, 14, 'shoes-4.jpg', 0, 0),
(40, 14, 'shoes-5.jpg', 0, 0),
(41, 14, 'shoes-6.jpg', 0, 0),
(42, 15, 'shoes-7.jpg', 0, 0),
(43, 15, 'shoes-8.jpg', 0, 0),
(44, 15, 'shoes-9.jpg', 0, 0),
(45, 16, 'shoes-1.jpg', 0, 0),
(46, 16, 'shoes-2.jpg', 0, 0),
(47, 16, 'shoes-3.jpg', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(100) NOT NULL,
  `link` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`id`, `parent_id`, `name`, `link`, `position`, `created_time`, `last_updated`) VALUES
(4, 0, 'Level 1', 'home2.php', 0, 1555232698, 1555232698),
(5, 4, 'Level 2', 'product.php', 1, 1555232976, 1555232976),
(6, 5, 'Level 3', 'product.php', 0, 1555232976, 1555232976),
(7, 6, 'Level 4', 'home.php', 0, 1555232976, 1555232976),
(8, 4, 'Level 2.2', 'product.php', 2, 1555232976, 1555232976),
(9, 8, 'Level 3.2', 'product.php', 1, 1555427808, 1555427808),
(10, 7, 'Level 5', 'home.php', 0, 1555427808, 1555427808),
(16, 0, 'Level 1.2', 'home2.php', 1, 1555232698, 1555232698),
(17, 10, 'Level 6', '#', 1, 1555542591, 1555542591),
(20, 17, 'Level 7', '#', 1, 1555542591, 1555542591),
(21, 16, 'Level 2.2.2', 'home2.php', 1, 1555232698, 1555232698);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(500) NOT NULL,
  `note` text NOT NULL,
  `total` int(11) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `name`, `phone`, `address`, `note`, `total`, `created_time`, `last_updated`) VALUES
(32, 'Andn', '6516156', 'Hai phong', 'Testing', 4188000, 1592695048, 1592695048),
(33, 'Dang Ngoc An', '5651616', 'Ha Noi', 'Note', 540000, 1592695816, 1592695816),
(34, 'Dang Ngoc An', '1919191', 'Ha Noi', 'Mua hang', 11520000, 1592696473, 1592696473),
(35, 'Dang Ngoc An', '3234234', 'Ha Noi', 'TÃ´i cáº§n gáº¥p trong 2 ngÃ y, nhá» shop chuyá»ƒn nhanh dÃ¹m', 9120000, 1592696604, 1592696604),
(36, 'Hoàng Quang Huy', '01234456', 'hà tĩnh', 'thạch hà', 540000, 1608293153, 1608293153),
(37, 'toan123', '123123', 'sadsa', 'sadasd', 540000, 1610029612, 1610029612);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `quantity`, `price`, `created_time`, `last_updated`) VALUES
(28, 32, 4, 2, 780000, 1592695048, 1592695048),
(29, 32, 5, 4, 657000, 1592695048, 1592695048),
(32, 33, 2, 1, 540000, 1592695816, 1592695816),
(33, 34, 2, 3, 540000, 1592696473, 1592696473),
(34, 34, 3, 4, 1500000, 1592696473, 1592696473),
(35, 34, 4, 5, 780000, 1592696473, 1592696473),
(36, 35, 2, 3, 540000, 1592696604, 1592696604),
(37, 35, 3, 5, 1500000, 1592696604, 1592696604),
(38, 36, 2, 1, 540000, 1608293154, 1608293154),
(39, 37, 2, 1, 540000, 1610029612, 1610029612);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `privilege`
--

CREATE TABLE `privilege` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url_match` varchar(255) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `privilege`
--

INSERT INTO `privilege` (`id`, `group_id`, `name`, `url_match`, `created_time`, `last_updated`) VALUES
(1, 1, 'Danh sÃ¡ch sáº£n pháº©m', 'product_listing\\.php$', 1553185530, 1553185530),
(2, 1, 'XÃ³a sáº£n pháº©m', 'product_delete\\.php\\?id=\\d+$', 1553185530, 1553185530),
(3, 1, 'Sá»­a sáº£n pháº©m', 'product_editing\\.php\\?id=\\d+$|product_editing\\.php\\?action=edit&id=\\d+$', 1553185530, 1553185530),
(4, 1, 'ThÃªm sáº£n pháº©m', 'product_editing\\.php$|product_editing\\.php\\?action=add$', 1553185530, 1553185530),
(5, 1, 'Copy sáº£n pháº©m', 'product_editing\\.php\\?id=\\d+&task=copy', 1553185530, 1553185530),
(6, 4, 'Danh sÃ¡ch danh má»¥c', 'menu_listing\\.php$', 1553185530, 1553185530),
(7, 4, 'XÃ³a danh má»¥c', 'menu_delete\\.php\\?id=\\d+$', 1553185530, 1553185530),
(8, 4, 'Sá»­a danh má»¥c', 'menu_editing\\.php\\?id=\\d+$', 1553185530, 1553185530),
(9, 4, 'ThÃªm danh má»¥c', 'menu_editing\\.php$', 1553185530, 1553185530),
(10, 4, 'Copy danh má»¥c', 'menu_editing\\.php\\?id=\\d+&task=copy', 1553185530, 1553185530),
(11, 3, 'Danh sÃ¡ch Ä‘Æ¡n hÃ ng', 'order_listing\\.php$', 1553185530, 1553185530),
(12, 2, 'PhÃ¢n quyá»n quáº£n trá»‹', 'member_privilege\\.php\\?id=\\d+$|member_privilege\\.php\\?action=save$', 1553185530, 1553185530),
(13, 2, 'Danh sÃ¡ch thÃ nh viÃªn', 'member_listing\\.php$', 1553185530, 1553185530),
(14, 2, 'XÃ³a thÃ nh viÃªn', 'member_delete\\.php\\?id=\\d+$', 1553185530, 1553185530),
(15, 2, 'Sá»­a thÃ nh viÃªn', 'member_editing\\.php\\?id=\\d+$|member_editing\\.php\\?action=edit&id=\\d+$', 1553185530, 1553185530),
(16, 2, 'ThÃªm thÃ nh viÃªn', 'member_editing\\.php$|member_editing\\.php\\?action=add$', 1553185530, 1553185530);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `privilege_group`
--

CREATE TABLE `privilege_group` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` int(11) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `privilege_group`
--

INSERT INTO `privilege_group` (`id`, `name`, `position`, `created_time`, `last_updated`) VALUES
(1, 'Sáº£n pháº©m', 2, 1553185530, 1553185530),
(2, 'ThÃ nh viÃªn', 4, 1553185530, 1553185530),
(3, 'ÄÆ¡n hÃ ng', 3, 1553185530, 1553185530),
(4, 'Danh má»¥c', 1, 1553185530, 1553185530);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` float NOT NULL,
  `content` text NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `image`, `price`, `content`, `created_time`, `last_updated`) VALUES
(2, 'giày bóng đá 1', 'shoes-1.jpg', 540000, 'giày đá sân cỏ nhân tạo', 1552615987, 201224),
(3, 'Giày bóng đá 2', 'shoes-2.jpg', 1500000, 'giày đá sân cỏ nhân tạo', 1552615987, 201228),
(4, 'Giày bóng đá 3', 'shoes-3.jpg', 780000, 'giày đá sân cỏ nhân tạo', 1552615987, 201228),
(5, 'Giày bóng đá 4', 'shoes-4.jpg', 657000, 'giày đá sân cỏ tự nhiên', 1552615987, 201228),
(6, 'giày đá bóng 5', 'shoes-5.jpg', 684000, 'giày đá sân cỏ nhân tạo', 1552615987, 201228),
(7, 'Giày đá bóng 6', 'shoes-6.jpg', 580000, 'giày đá sân cỏ nhân tạo', 1552615987, 201228),
(8, 'Giày đá bóng 7', 'shoes-7.jpg', 1320000, 'giày đá sân cỏ tự nhiên', 1552615987, 201228),
(10, 'giày thể thao', 'shoes-9.jpg', 1000000, 'giày thể thao đẹp', 1552615987, 201228),
(11, 'giày bóng đá 11', 'shoes-1.jpg', 540000, 'giày đá sân cỏ nhân tạo', 1552615987, 201228),
(12, 'Giày bóng đá 12', 'shoes-2.jpg', 1500000, 'giày đá sân cỏ nhân tạo', 1552615987, 201228),
(13, 'giày bóng đá 13', 'shoes-3.jpg', 780000, 'giày đá sân cỏ nhân tạo', 1552615987, 201228),
(14, 'giày bóng đá 14', 'shoes-4.jpg', 657000, 'giày đá sân cỏ nhân tạo', 1552615987, 201228),
(15, 'giày bóng đá 15', 'shoes-5.jpg', 684000, 'giày đá sân cỏ nhân tạo', 1552615987, 201228),
(16, 'giày bóng đá 16', 'shoes-6.jpg', 580000, 'giày đá sân cỏ tự nhiên', 1552615987, 201228);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `birthday` int(11) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `fullname`, `password`, `birthday`, `created_time`, `last_updated`) VALUES
(1, 'admin', 'Andn', '5f0a5899d7f5abdeda7a7b9b25b04384', 1553185530, 1553185530, 1553185530),
(3, 'writer', 'Äáº·ng Ngá»c An', '25d55ad283aa400af464c76d713c07ad', 1553185530, 1553185530, 1553185530),
(5, 'admin1', '', '12345', 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_customer`
--

CREATE TABLE `user_customer` (
  `id` int(10) NOT NULL,
  `fullname` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user_customer`
--

INSERT INTO `user_customer` (`id`, `fullname`, `username`, `password`) VALUES
(1, 'Nguyễn văn toàn', 'toan123', '12345'),
(2, 'Lê văn A', 'lea', '12345'),
(3, 'teaj12', '123456', 'le tea'),
(4, 'shinosuke', 'shin', '12345');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_privilege`
--

CREATE TABLE `user_privilege` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `privilege_id` int(11) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user_privilege`
--

INSERT INTO `user_privilege` (`id`, `user_id`, `privilege_id`, `created_time`, `last_updated`) VALUES
(28, 1, 6, 1595430953, 1595430953),
(29, 1, 7, 1595430953, 1595430953),
(30, 1, 8, 1595430953, 1595430953),
(31, 1, 9, 1595430953, 1595430953),
(32, 1, 10, 1595430953, 1595430953),
(33, 1, 1, 1595430953, 1595430953),
(34, 1, 2, 1595430953, 1595430953),
(35, 1, 3, 1595430953, 1595430953),
(36, 1, 4, 1595430953, 1595430953),
(37, 1, 5, 1595430953, 1595430953),
(38, 1, 11, 1595430953, 1595430953),
(39, 1, 12, 1595430953, 1595430953),
(40, 1, 13, 1595430953, 1595430953),
(41, 1, 14, 1595430953, 1595430953),
(42, 1, 15, 1595430953, 1595430953),
(43, 1, 16, 1595430953, 1595430953),
(253, 3, 6, 1595430953, 1595430953),
(254, 3, 7, 1595430953, 1595430953),
(255, 3, 8, 1595430953, 1595430953),
(256, 3, 9, 1595430953, 1595430953),
(257, 3, 10, 1595430953, 1595430953),
(258, 3, 1, 1595430953, 1595430953),
(259, 3, 2, 1595430953, 1595430953),
(260, 3, 3, 1595430953, 1595430953),
(261, 3, 4, 1595430953, 1595430953),
(262, 3, 5, 1595430953, 1595430953);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id_contact`);

--
-- Chỉ mục cho bảng `image_library`
--
ALTER TABLE `image_library`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `privilege`
--
ALTER TABLE `privilege`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`);

--
-- Chỉ mục cho bảng `privilege_group`
--
ALTER TABLE `privilege_group`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_customer`
--
ALTER TABLE `user_customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_privilege`
--
ALTER TABLE `user_privilege`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_privilege_ibfk_1` (`user_id`),
  ADD KEY `privilege_id` (`privilege_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id_contact` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `image_library`
--
ALTER TABLE `image_library`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `privilege`
--
ALTER TABLE `privilege`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `privilege_group`
--
ALTER TABLE `privilege_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `user_customer`
--
ALTER TABLE `user_customer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `user_privilege`
--
ALTER TABLE `user_privilege`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `image_library`
--
ALTER TABLE `image_library`
  ADD CONSTRAINT `image_library_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `privilege`
--
ALTER TABLE `privilege`
  ADD CONSTRAINT `privilege_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `privilege_group` (`id`);

--
-- Các ràng buộc cho bảng `user_privilege`
--
ALTER TABLE `user_privilege`
  ADD CONSTRAINT `user_privilege_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_privilege_ibfk_2` FOREIGN KEY (`privilege_id`) REFERENCES `privilege` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
