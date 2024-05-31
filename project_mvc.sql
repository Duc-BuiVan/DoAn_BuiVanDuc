-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 28, 2023 lúc 03:11 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `project_mvc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `avatar`, `description`, `status`, `created_at`, `updated_at`) VALUES
(20, 'Điện thoại', '1692344167-iphone-14-pro-den-1-1.jpg', '<p>Điện thoại iPhone 14 Pro Max 128GB</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, '2024-02-10 01:52:29', '2024-02-20 14:36:07'),
(21, 'Tai nghe', '1692344280-airpods-pro-2nd-generation-0.jpg', '<p>Tai nghe Bluetooth AirPods Pro (2nd Gen) MagSafe Charge Apple MQD83</p>\r\n', 1, '2024-02-10 01:53:45', '2024-02-20 14:38:00'),
(22, 'Đồng hồ điện tử', '1692344426-dong-ho-citizen-285-mm-nu-pr1040-88a-1.jpg', '<p>Đồng hồ Citizen Sunshine and Luna Mechanical 28.5 mm Nữ PR1040-88A</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, '2024-02-10 01:54:26', '2024-02-10 14:40:26'),
(23, 'Sạc dự phòng', '1692344516-sac-du-phong-10000mah-magnetic-typecpd-20w-innostyle-powermag-2in1-is20pd-tim-1.jpg', '<p>Pin sạc dự ph&ograve;ng 10000mAh Kh&ocirc;ng d&acirc;y Magnetic Type C PD 20W Innostyle PowerMag 2in1 IS20PD</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, '2024-02-10 02:10:24', '2024-02-20 14:41:56'),
(24, 'Laptop', '1692344597-apple-macbook-air-m2-2022-16gb-1.jpg', '<p>Laptop Apple MacBook Air 13 inch M2 2022 8-core CPU/16GB/512GB/10-core GPU (Z15Z0003L)</p>\r\n', 1, '2024-02-10 02:18:31', '2024-02-20 14:43:17'),
(26, 'Tablet', '1692344681-samsung-galaxy-tab-s8-ultra-9.jpg', '<p>M&aacute;y t&iacute;nh bảng Samsung Galaxy Tab S8 Ultra 5G</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, '2024-02-10 07:44:41', '2024-02-20 14:44:41'),
(27, 'Loa', '1692344781-loa-karaoke-dalton-ts-18a8500637923556232132456.jpg', '<p>Loa điện karaoke Dalton TS-18A8500 3000W</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, '2024-02-10 07:46:21', '2024-02-20 14:46:21'),
(28, 'Camera', '1692344861-camera-trong-tre-1080p-ezviz-bm1-2.jpg', '<p>Camera Tr&ocirc;ng Trẻ 1080P EZVIZ BM1</p>\r\n', 1, '2024-02-10 07:47:41', '2024-02-20 14:47:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `introduces`
--

CREATE TABLE `introduces` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `status` tinyint(3) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `introduces`
--

INSERT INTO `introduces` (`id`, `title`, `summary`, `avatar`, `content`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Thao Linh Digital Shop là gì?', 'Công ty TNHH Thao Linh Digital Shop thành lập vào tháng 06/2023 (uy tín tạo nên chất lượng )', '1692352743-introduce-Thảo Linh1.jpg', '<p>Digital shop Linh Thao l&agrave; một cửa h&agrave;ng trực tuyến chuy&ecirc;n cung cấp c&aacute;c sản phẩm v&agrave; dịch vụ trong lĩnh vực kỹ thuật số v&agrave; c&ocirc;ng nghệ th&ocirc;ng tin. Với tầm nh&igrave;n đổi mới v&agrave; cam kết mang đến sự tiện lợi v&agrave; h&agrave;i l&ograve;ng cho kh&aacute;ch h&agrave;ng, Linh Thao đ&atilde; x&acirc;y dựng một nền tảng mua sắm trực tuyến đa dạng v&agrave; phong ph&uacute;.</p>\r\n\r\n<p>Dưới đ&acirc;y l&agrave; một số lĩnh vực ch&iacute;nh m&agrave; Linh Thao c&oacute; thể cung cấp sản phẩm v&agrave; dịch vụ:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><strong>Thiết bị điện tử</strong>: Linh Thao cung cấp một loạt c&aacute;c sản phẩm như điện thoại di động, m&aacute;y t&iacute;nh bảng, m&aacute;y t&iacute;nh x&aacute;ch tay, m&aacute;y ảnh kỹ thuật số v&agrave; c&aacute;c thiết bị gia dụng th&ocirc;ng minh như loa th&ocirc;ng minh, thiết bị điều khiển tương t&aacute;c, v&agrave; nhiều sản phẩm kh&aacute;c.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Thiết bị v&agrave; phụ kiện c&ocirc;ng nghệ</strong>: Linh Thao cung cấp c&aacute;c loại phụ kiện đi k&egrave;m như ốp lưng điện thoại, tai nghe, b&agrave;n ph&iacute;m, chuột, ổ cứng di động v&agrave; nhiều sản phẩm kh&aacute;c để n&acirc;ng cao trải nghiệm sử dụng thiết bị.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Dịch vụ kỹ thuật</strong>: Ngo&agrave;i việc cung cấp sản phẩm, Linh Thao cũng c&oacute; thể cung cấp dịch vụ hỗ trợ kỹ thuật, bảo tr&igrave; v&agrave; sửa chữa c&aacute;c thiết bị kỹ thuật số, đảm bảo rằng kh&aacute;ch h&agrave;ng lu&ocirc;n c&oacute; sự hỗ trợ khi cần.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Tư vấn c&ocirc;ng nghệ</strong>: Linh Thao c&oacute; thể cung cấp th&ocirc;ng tin, tư vấn v&agrave; hướng dẫn về c&aacute;c sản phẩm v&agrave; c&ocirc;ng nghệ mới nhất, gi&uacute;p kh&aacute;ch h&agrave;ng lựa chọn được sản phẩm ph&ugrave; hợp với nhu cầu của họ.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>Linh Thao cam kết chất lượng sản phẩm, dịch vụ uy t&iacute;n c&ugrave;ng với trải nghiệm mua sắm trực tuyến thuận tiện v&agrave; an to&agrave;n cho kh&aacute;ch h&agrave;ng. Đội ngũ nh&acirc;n vi&ecirc;n c&oacute; kiến thức chuy&ecirc;n s&acirc;u về c&ocirc;ng nghệ sẵn s&agrave;ng hỗ trợ v&agrave; giải đ&aacute;p mọi thắc mắc của kh&aacute;ch h&agrave;ng, tạo n&ecirc;n sự tin tưởng v&agrave; gắn kết l&acirc;u d&agrave;i.</p>\r\n\r\n<p><img alt=\"Open photo\" src=\"https://scontent.xx.fbcdn.net/v/t1.15752-9/366777498_264735599697614_2335321068831604644_n.jpg?stp=dst-jpg_p206x206&amp;_nc_cat=100&amp;ccb=1-7&amp;_nc_sid=aee45a&amp;_nc_ohc=5iKACoTm5TgAX8eI6C-&amp;_nc_ad=z-m&amp;_nc_cid=0&amp;_nc_ht=scontent.xx&amp;oh=03_AdTN3azDfzzDk2M3bxnfZN9aAprjI76CEQSIVizEu7pblQ&amp;oe=6506D2A7\" /></p>\r\n', 1, '2024-02-10 02:28:33', '2024-02-20 18:02:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maps`
--

CREATE TABLE `maps` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `hotline` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `map_url` varchar(255) NOT NULL,
  `status` tinyint(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `maps`
--

INSERT INTO `maps` (`id`, `title`, `hotline`, `fax`, `email`, `summary`, `map_url`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Đường Nguyên Xá, Bắc Từ Liêm, Hà Nội', '0968696968', '659021', 'digitalworld@gmai.com', 'Đến với chúng tôi để trải nghiệm sản phẩm tốt nhất', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.473685885786!2d105.73331873699033!3d21.053735080594365!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31345457e292d5bf%3A0x20ac91c94d74439a!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBDw7RuZyBuZ2hp4buHc', 1, '2024-02-10 23:35:49', '2024-02-20 16:44:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `status` tinyint(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `category_id`, `title`, `summary`, `avatar`, `content`, `status`, `created_at`, `updated_at`) VALUES
(6, 20, 'Đánh giá iPhone 14', 'iPhone 14 Pro Max một siêu phẩm trong giới smartphone được nhà Táo tung ra thị trường vào tháng 09/2022. Máy trang bị con chip Apple A16 Bionic vô cùng mạnh mẽ, đi kèm theo đó là thiết kế hình màn hình mới, hứa hẹn mang lại những trải nghiệm đầy mới mẻ', '1654854525-product-banner-phu-1.jpg', '<h3>iPhone năm nay sẽ được thừa hưởng n&eacute;t đặc trưng từ người anh&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-13-pro-max-1tb\" target=\"_blank\">iPhone 13 Pro Max</a>, vẫn sẽ l&agrave; khung th&eacute;p kh&ocirc;ng gỉ v&agrave; mặt lưng k&iacute;nh cường lực kết hợp với tạo h&igrave;nh vu&ocirc;ng vức hiện đại th&ocirc;ng qua c&aacute;ch tạo h&igrave;nh phẳng ở c&aacute;c cạnh v&agrave; phần mặt lưng.</h3>\r\n\r\n<p>Điểm ấn tượng nhất tr&ecirc;n&nbsp;<a href=\"https://www.thegioididong.com/dtdd-apple-iphone\" target=\"_blank\">điện thoại iPhone</a>&nbsp;năm nay nằm ở thiết kế m&agrave;n h&igrave;nh, c&oacute; thể dễ d&agrave;ng nhận thấy được l&agrave; h&atilde;ng cũng đ&atilde; loại bỏ cụm tai thỏ truyền thống qua bao đời iPhone bằng một h&igrave;nh d&aacute;ng mới v&ocirc; c&ugrave;ng lạ mắt.</p>\r\n', 1, '2024-02-10 02:48:45', '2024-02-20 18:44:18'),
(7, 20, 'Điện thoại Samsung Galaxy S23 Ultra có gì mới', 'Samsung Galaxy S23 Ultra 5G 256GB là chiếc smartphone cao cấp nhất của nhà Samsung, sở hữu cấu hình không tưởng với con chip khủng được Qualcomm tối ưu riêng cho dòng Galaxy và camera lên đến 200 MP, xứng danh là chiếc flagship Android được mong đợi nhất ', '1692358180-new-samsung-galaxy-s-ultra-tim-1.jpg', '<p>Đầu ti&ecirc;n, c&ugrave;ng m&igrave;nh điểm qua th&ocirc;ng số cấu h&igrave;nh của Galaxy S23&nbsp;Ultra nh&eacute;.</p>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh: Tấm nền Dynamic AMOLED 2X, k&iacute;ch thước 6.8 inch, độ ph&acirc;n giải QHD+ (3.088 x 1.440 pixel), mật độ điểm ảnh 500 ppi, k&iacute;nh cường lực Gorilla Glass Victus+.</li>\r\n	<li>Camera sau: 12 MP + 108 MP + 10 MP + 10 MP.</li>\r\n	<li>Camera trước: 40 MP.</li>\r\n	<li>CPU: Snapdragon 8 Gen 1.</li>\r\n	<li>RAM: 8 GB hoặc 12 GB.</li>\r\n	<li>Bộ nhớ trong: 128 GB, 256 GB v&agrave;, 512 GB.</li>\r\n	<li>Pin: 5.000 mAh, sạc nhanh 45 W, sạc ngược kh&ocirc;ng d&acirc;y.</li>\r\n	<li>Hệ điều h&agrave;nh: Android 12 (giao diện One UI 4.1)</li>\r\n</ul>\r\n', 1, '2024-02-10 02:52:09', '2024-02-20 18:29:40'),
(8, 22, 'Apple Watch Series 8 có gì mới?', 'Tiếp nối thành công của Apple Watch Series 7, nhà Táo đã trình làng thế hệ smartwatch tiếp theo của mình mang tên Apple Watch S8 GPS 45mm tại sự kiện ra mắt sản phẩm thường niên, hứa hẹn vẫn sẽ là món phụ kiện đáng mong đợi với iFans và người dùng đam mê ', '1692358284-new-apple-watch-s8-gps-45mm-day-silicone-den-xanh-1.jpg', '<p>Nh&igrave;n tổng thể, Apple Watch S8&nbsp;vẫn mang diện mạo kh&ocirc;ng c&oacute; nhiều thay đổi so với c&aacute;c thế hệ tiền nhiệm. Tuy vậy,&nbsp;n&oacute; vẫn mang độ nhận diện cao với thiết kế m&agrave;n h&igrave;nh lớn c&ugrave;ng 4 cạnh bo tr&ograve;n thanh lịch.</p>\r\n\r\n<p>Được trang bị tấm nền&nbsp;<strong>OLED</strong>&nbsp;c&oacute; độ ph&acirc;n giải&nbsp;<strong>484 x 396 pixels</strong>, thiết bị cũng c&oacute; độ s&aacute;ng m&agrave;n h&igrave;nh đạt&nbsp;<strong>1.000 nits</strong>&nbsp;v&agrave; được bảo vệ bởi&nbsp;<strong>k&iacute;nh cường lực Ion-X</strong>&nbsp;nhằm gia tăng độ bền, mang đến khả năng hiển thị sắc n&eacute;t với độ s&aacute;ng cao gi&uacute;p người d&ugrave;ng dễ d&agrave;ng thao t&aacute;c v&agrave; xem nội dung ngay cả dưới &aacute;nh nắng gay gắt.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/dong-ho-thong-minh-apple\" target=\"_blank\">Đồng hồ th&ocirc;ng minh Apple</a>&nbsp;c&oacute; khung viền được ho&agrave;n thiện từ&nbsp;<strong>hợp kim nh&ocirc;m</strong>&nbsp;kết hợp c&ugrave;ng d&acirc;y đeo&nbsp;<strong>silicone</strong>&nbsp;mềm mại, th&acirc;n thiện với da tay, mang lại cảm gi&aacute;c thoải m&aacute;i cho cổ tay trong cả ng&agrave;y d&agrave;i hoạt động.</p>\r\n', 1, '2024-02-10 02:53:57', '2024-02-18 18:31:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `price_total` int(11) NOT NULL,
  `payment_status` tinyint(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fullname`, `address`, `mobile`, `email`, `note`, `price_total`, `payment_status`, `created_at`, `updated_at`) VALUES
(18, 0, 'Long Nhật', '62-Bãi Thụy-Đồng Tháp-Đan Phượng-Hà Nội', 966108364, 'hongnhat20112001@gmail.com', '', 48000000, 0, '2024-02-10 06:39:38', '2024-02-20 20:39:38'),
(19, 0, 'L:ong Nhật', '62-Bãi Thụy-Đồng Tháp-Đan Phượng-Hà Nội', 966108364, 'hongnhat20112001@gmail.com', '', 48000000, 0, '2024-02-10 06:56:37', '2024-02-20 20:56:37'),
(20, 0, 'Nhat NL', 'Từ Liêm-Hà Nội', 966108364, 'abc123@gmail.com', '', 135000000, 0, '2024-02-10 06:57:38', '2024-02-20 20:57:38'),
(21, 0, 'Hoài', 'Đan Phượng-Hà Nội', 93399663, 'ngu@gmail.com', '', 31300000, 0, '2024-02-10 07:09:19', '2024-02-20 21:09:19'),
(22, 0, 'Nguyễn Long Nhật', '62-Bãi Thụy-Đồng Tháp-Đan Phượng-Hà Nội', 966108364, 'hongnhat20112001@gmail.com', '', 91800000, 0, '2024-02-10 07:21:46', '2024-02-20 21:21:46'),
(23, 0, 'Nhat NL', '62-Bãi Thụy-Đồng Tháp-Đan Phượng-Hà Nội', 966108364, 'hongnhat20112001@gmail.com', 'xin cái túi nhé', 88000000, 0, '2024-02-10 07:33:49', '2024-02-20 21:33:49'),
(24, 0, 'Nhat NL', '62-Bãi Thụy-Đồng Tháp-Đan Phượng-Hà Nội', 966108364, 'hongnhat20112001@gmail.com', 'Xin cái túi nè', 88000000, 0, '2024-02-10 07:36:56', '2024-02-20 21:36:56'),
(25, 0, 'Tùng chùa', 'Hà Nội', 966108368, 'admin@gmail.com', 'hihi', 16400000, 0, '2024-02-10 07:37:49', '2024-02-20 21:37:49'),
(32, 0, 'Thao', 'hana', 91345673, 'T@gmail.com', '', 8690000, 0, '2024-02-10 04:33:52', '2024-02-20 11:33:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quality` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quality`, `created_at`, `updated_at`) VALUES
(1, 19, 17, '1', '2024-02-10 06:56:37', '2024-04-20 20:56:37'),
(2, 19, 23, '1', '2024-02-10 06:56:37', '2024-04-20 20:56:37'),
(3, 20, 19, '4', '2024-02-10 06:57:38', '2024-04-20 20:57:38'),
(4, 20, 16, '1', '2024-02-10 06:57:38', '2024-04-20 20:57:38'),
(5, 22, 18, '2', '2024-02-10 07:21:46', '2024-04-20 21:21:46'),
(6, 22, 16, '3', '2024-02-10 07:21:46', '2024-04-20 21:21:46'),
(7, 23, 22, '4', '2024-02-10 07:33:49', '2024-04-20 21:33:49'),
(8, 24, 22, '4', '2024-02-10 07:36:56', '2024-04-20 21:36:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `weight` varchar(255) NOT NULL,
  `supplier` varchar(255) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `hot` varchar(255) DEFAULT NULL,
  `status` tinyint(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `category_id`, `title`, `avatar`, `price`, `weight`, `supplier`, `summary`, `content`, `hot`, `status`, `created_at`, `updated_at`) VALUES
(16, 20, 'IPhone 13 Pro ', '1654851627-product-iphone-13-pro.png', 29000000, '220 gr', 'APPLE', 'IPhone 13 Pro sang trọng, hoàn thiện.', '<p>IPhone 13 Pro năm nay c&oacute; thể sẽ kh&ocirc;ng c&oacute; nhiều sự thay đổi về thiết kế, khi m&aacute;y vẫn sở hữu kiểu d&aacute;ng tương tự như iPhone 12 Pro với c&aacute;c cạnh viền vu&ocirc;ng vắn v&agrave; hai mặt k&iacute;nh cường lực cao cấp n', NULL, 1, '2024-02-10 02:00:27', '2024-02-18 15:36:14'),
(17, 22, 'Apple Watch S7 LTE 41 mm', '1654851884-product-banner-phu-4.jpg', 12000000, '120 gr', 'APPLE', 'Apple Watch S7 LTE 41 mm viền nhôm dây silicone có thiết kế được nâng cấp hơn so với phiên bản tiền nhiệm. Sở hữu vẻ ngoài sang trọng và hiện đại, Apple Watch S7 được thiết kế các góc bo tròn mềm mại với mặt đồng hồ được vác cong tạo cảm giác liền mạch ', '<p>Apple Watch S7 LTE 41 mm viền nh&ocirc;m d&acirc;y silicone c&oacute; thiết kế được n&acirc;ng cấp hơn so với phi&ecirc;n bản tiền nhiệm. Sở hữu vẻ ngo&agrave;i sang trọng v&agrave; hiện đại, Apple Watch S7 được thiết kế c&aacute;c g&oacute;c bo tr&amp', NULL, 1, '2024-02-10 02:04:44', '2024-02-18 15:36:36'),
(18, 21, 'Tai nghe bluetooth Samsung ITFIT A08C', '1654851941-product-banner-phu-3.jpg', 2400000, '80 gr', 'SAMSUNG', 'Tai nghe bluetooth Samsung ITFIT A08C có thiết kế nhỏ gọn, âm thanh mạnh mẽ cùng thời lượng pin dài cho trải nghiệm tốt vượt bậc. Tai nghe thích hợp với nhiều đối tượng người dùng, đặc biệt là người dùng trẻ.', '<p>Tai nghe bluetooth Samsung ITFIT A08C c&oacute; thiết kế nhỏ gọn, &acirc;m thanh mạnh mẽ c&ugrave;ng thời lượng pin d&agrave;i cho trải nghiệm tốt vượt bậc. Tai nghe th&iacute;ch hợp với nhiều đối tượng người d&ugrave;ng, đặc biệt l&agrave; người d&amp', NULL, 1, '2024-02-10 02:05:41', '2024-02-18 15:36:26'),
(19, 20, 'Samsung Galaxy S22 Ultra 5G', '1654852051-product-ss-s22-ultra.png', 26500000, '250 gr', 'SAMSUNG', 'Samsung Galaxy S22 Ultra 5G 512 GB là một \"siêu phẩm\" với bút S Pen nhanh hơn được tích hợp sẵn, nhiều cải tiến về camera, màn hình sáng hơn và sạc 45 W nhanh hơn.', '<p>Samsung Galaxy S22 Ultra 5G 512 GB l&agrave; một &quot;si&ecirc;u phẩm&quot; với b&uacute;t S Pen nhanh hơn được t&iacute;ch hợp sẵn, nhiều cải tiến về camera, m&agrave;n h&igrave;nh s&aacute;ng hơn v&agrave; sạc 45 W nhanh hơn.</p>\r\n', NULL, 1, '2024-02-1002:07:31', '2024-02-18 15:37:38'),
(20, 20, 'Xiaomi 12 Pro', '1654852439-product-xiaomi-12-pro.jpg', 16400000, '210 gr', 'Xiaomi', 'Điện thoại Xiaomi 12 Pro có thiết kế hiện đại, cao cấp được tạo nên từ bộ khung kim loại cực gọn nhẹ, các đường nét 3D tinh xảo tạo ra nét mượt mà và bóng bẩy. Chính điểm nhấn này đã tạo ra sự khác biệt hoàn toàn với những chiếc Flagship khác trên thị trư', '<p>Điện thoại Xiaomi 12 Pro c&oacute; thiết kế hiện đại, cao cấp được tạo n&ecirc;n từ bộ khung kim loại cực gọn nhẹ, c&aacute;c đường n&eacute;t 3D tinh xảo tạo ra n&eacute;t mượt m&agrave; v&agrave; b&oacute;ng bẩy. Ch&iacute;nh điểm nhấn n&agrave;y đ&a', NULL, 1, '2024-02-10 02:08:45', '2024-08-19 15:36:48'),
(21, 23, 'Sạc Dự PhòngROBOT RT180', '1654852305-product-sac-du-phong-1.jpg', 420000, '190 gr', 'ROBOT', 'Pin Sạc Dự Phòng 10.000mAh ROBOT RT180 - 2 Cổng Sạc Vào Type-C/Micro, Kích Thước Mỏng và Nhẹ - HÀNG CHÍNH HÃNG', '<h1>Pin Sạc Dự Ph&ograve;ng 10.000mAh ROBOT RT180 - 2 Cổng Sạc V&agrave;o Type-C/Micro, K&iacute;ch Thước Mỏng v&agrave; Nhẹ - H&Agrave;NG CH&Iacute;NH H&Atilde;NG</h1>\r\n', '1', 1, '2024-02-10 02:11:45', '2024-02-14 16:32:31'),
(22, 20, 'OPPO Reno6', '1654852558-product-oppo-reno-6.jpg', 22000000, '200 gr', 'OPPO', 'Nối tiếp sự thành công của dòng Reno5, OPPO mới đây đã trình làng bộ đôi siêu phẩm thuộc dòng OPPO Reno6 series có cấu hình mạnh mẽ, thiết kế ấn tượng. Trong đó, chiếc OPPO Reno6 5G với những cải tiến mới mẻ hơn thế hệ tiền nhiệm chắc chắn sẽ là một siêu ', '<h3>Nối tiếp sự th&agrave;nh c&ocirc;ng của d&ograve;ng Reno5, OPPO mới đ&acirc;y đ&atilde; tr&igrave;nh l&agrave;ng bộ đ&ocirc;i si&ecirc;u phẩm thuộc d&ograve;ng OPPO Reno6 series c&oacute; cấu h&igrave;nh mạnh mẽ, thiết kế ấn tượng.&nbsp;Trong đ&oacute', NULL, 1, '2024-02-10 02:15:58', '2024-02-18 15:37:53'),
(23, 24, 'Macbook Pro 14', '1654852784-product-macbook-pro-2021.png', 36000000, '1300 gr', 'APPLE', 'Laptop Macbook Pro 14\" 2021 - M1 Pro 14 Core GPU/512GB - Chính hãng Apple VN', '<p>Laptop Macbook Pro 14&quot; 2021 - M1 Pro 14 Core GPU/512GB - Ch&iacute;nh h&atilde;ng Apple VN</p>\r\n', NULL, 1, '2024-02-10 02:19:33', '2024-02-18 15:37:31'),
(24, 20, 'Samsung Galaxy A73 (5G)', '1655213870-product-samsung-galaxy-a73-1-600x600.jpg', 11690000, '181 gr', 'SAMSUNG', 'Điện thoại cao cấp nhất dòng Galaxy A series sở hữu nhiều nâng cấp đáng giá so với thế hệ trước, từ ngoại hình cho đến hiệu năng, đặc biệt là hệ thống camera. Sau đây là những đánh giá chi tiết về chiếc Samsung A73 giúp bạn có cái nhìn tổng quan nhất về c', '<h2><strong>Đ&aacute;nh gi&aacute; Samsung A73 - Hiệu năng mượt m&agrave;, chụp ảnh chuy&ecirc;n nghiệp</strong></h2>\r\n\r\n<p>Điện thoại cao cấp nhất d&ograve;ng Galaxy A series sở hữu nhiều n&acirc;ng cấp đ&aacute;ng gi&aacute; so với thế hệ trước, từ ngoạ', '1', 1, '2024-02-10 06:37:50', '2024-02-14 20:37:50'),
(25, 20, 'Samsung Galaxy Note 20 Ultra 5G', '1655214142-product-sansung-note-20.jpg', 18990000, '200 gr', 'SAMSUNG', 'Bên cạnh biên bản Galaxy Note 20 thường, Samsung còn cho ra mắt Note 20 Ultra 5G cho khả năng kết nối dữ liệu cao cùng thiết kế nguyên khối sang trọng, bắt mắt. Đây sẽ là sự lựa chọn hoàn hảo dành cho bạn để sử dụng mà không bị lỗi thời sau thời gian dài ', '<h2><strong>Điện thoại Samsung Note 20 Ultra 5G - Sang trọng, hiệu năng vượt trội</strong></h2>\r\n\r\n<p>B&ecirc;n cạnh bi&ecirc;n bản Galaxy Note 20 thường, Samsung c&ograve;n cho ra mắt&nbsp;<strong>Note 20 Ultra 5G</strong>&nbsp;cho khả năng kết nối dữ li', '1', 1, '2024-02-10 06:42:22', '2024-02-14 20:42:22'),
(26, 24, 'Asus Vivobook 13 Slate Oled T3300KA', '1655214258-product-laptop-asus-vi-13.jpg', 15790000, '1900 gr', 'Asus ', 'Laptop Asus Vivobook 13 Slate OLED T3300 là dòng laptop 2 trong 1 hiếm hoi của thương hiệu Asus. Thiết kế độc đáo này giúp cho người dùng có một trải nghiệm thú vị.', '<h2><strong>Laptop Asus Vivobook 13 Slate OLED (T3300) &ndash; laptop 2 trong 1 tiện lợi</strong></h2>\r\n\r\n<p><strong>Laptop Asus Vivobook 13 Slate OLED T3300</strong>&nbsp;l&agrave; d&ograve;ng laptop 2 trong 1 hiếm hoi của thương hiệu Asus. Thiết kế độc ', '1', 1, '2024-02-10 06:44:18', '2024-04-14 20:44:18'),
(27, 24, 'Asus TUF Gaming FA506IHR HN019W', '1655214375-product-laptop-TUF.jpg', 15990000, '2100 gr', 'Asus ', 'Laptop Asus TUF Gaming FA506IHR-HN019W một siêu phẩm mang nhiều tính năng vượt trội, thiết kế tinh tế, chiếm trọn vị trí trong lòng tín đồ công nghệ. Tìm hiểu ngay laptop Asus Gaming qua những thông tin sau đây!', '<h2><strong>Laptop Asus TUF Gaming FA506IHR-HN019W &ndash; Mạnh mẽ, bền bỉ</strong></h2>\r\n\r\n<p>Laptop Asus TUF Gaming FA506IHR-HN019W một si&ecirc;u phẩm mang nhiều t&iacute;nh năng vượt trội, thiết kế tinh tế, chiếm trọn vị tr&iacute; trong l&ograve;ng t', '1', 1, '2024-02-10 06:46:15', '2024-02-14 20:46:15'),
(28, 21, 'Tai nghe Có Dây Mozard DS510-WB', '1692346060-product-tai-nghe-ep-mozard-ds510-wb-xanh-up-3-org.jpg', 120000, '60 gr', 'Mozard', 'Tai nghe Mozard với thiết kế hợp thời trang, mới mẻ, tiện lợi cho người dùng.\r\nBộ bán hàng có thêm 2 cặp đệm tai nghe giúp người dùng tiện thay đổi khi cần.', '<ul>\r\n	<li>Thiết kế gọn đẹp, m&agrave;u sắc thời trang, d&acirc;y d&agrave;i 1.2 m.</li>\r\n	<li>Tương th&iacute;ch với nhiều d&ograve;ng điện thoại qua cổng 3.5 mm.</li>\r\n	<li>C&oacute; n&uacute;t điều khiển nhận cuộc gọi, tăng/giảm &acirc;m lượng linh hoạ', '1', 1, '2024-02-10 07:11:22', '2024-02-18 15:07:40'),
(29, 21, 'Tai nghe Bluetooth Chụp Tai JBL Tune 520BT', '1692345882-product-tai-nghe-bluetooth-chup-tai-jbl-tune-520bt-xanh-1.jpg', 1390000, '150 gr', 'JBL', 'Tai nghe Bluetooth Chụp Tai JBL Tune 520BT với thiết kế đệm tai mềm mại, đa dạng màu sắc phù hợp với mọi phong cách, âm thanh phong phú và sống động, dung lượng pin lớn cùng với nhiều tính năng tuyệt vời, mang đến cho bạn những trải nghiệm tối ưu.', '<p>&bull;&nbsp;<a href=\"https://www.dienmayxanh.com/tai-nghe-jbl\" target=\"_blank\">Tai nghe JBL</a>&nbsp;c&oacute; khung tai vừa vặn với cỡ đầu của phần đ&ocirc;ng người d&ugrave;ng, phần đệm tai với chất liệu da mềm mại tạo cảm gi&aacute;c dễ chịu khi đeo', '1', 1, '2024-02-10 07:14:44', '2024-02-18 15:04:42'),
(30, 22, 'Đồng hồ SKMEI 42 mm Trẻ em SK-1095', '1692345714-product-skmei-sk-1095-do-5-2.jpeg', 90000, '100 gr', 'Skmei', 'Đồng hồ Skmei tạo được dấu ấn riêng rất mạnh mẽ với nhiều sản phẩm thiết kế tinh xảo đi kèm với bộ máy quartz được nhập khẩu từ Nhật Bản với độ chính xác và độ bền cao cùng giá thành rẻ. Đây là một trong những lựa chọn hàng đầu của các bạn trẻ năng động, ', '<h3><strong>Tinh xảo, bền bỉ, t&iacute;nh ch&iacute;nh x&aacute;c cao</strong></h3>\r\n\r\n<p>Được thiết kế từ những vật liệu tinh xảo c&ugrave;ng c&ocirc;ng nghệ chế t&aacute;c h&agrave;ng đầu n&ecirc;n kh&ocirc;ng ngạc nhi&ecirc;n Skmei ph&aacute;t triển rấ', '1', 1, '2024-02-10 07:17:01', '2024-02-18 15:01:54'),
(31, 22, 'Đồng hồ Citizen Sunshine and Luna Mechanical 40 mm Nam NH9136-88A', '1692345515-product-dong-ho-citizen-40-mm-nam-nh9136-88a-1-1.jpg', 9886000, '250 gr', 'Citizen', 'Đồng hồ Citizen Sunshine and Luna Mechanical 40 mm Nam NH9136-88A thuộc thương hiệu Citizen của Nhật Bản.', '<h3><strong>Đơn giản v&agrave; thanh lịch&nbsp;</strong></h3>\r\n\r\n<p>Xu hướng thiết kế ch&iacute;nh của đồng hồ Citizen l&agrave; đơn giản v&agrave; thanh lịch. Citizen lu&ocirc;n ch&uacute; trọng đến việc đổi mới v&agrave; tạo sự phong ph&uacute; cho c&aa', '1', 1, '2024-02-10 07:18:54', '2024-02-18 14:58:35'),
(32, 20, 'Điện thoại OPPO Find N2 Flip 5G', '1692345224-product-oppo-n2-flip-tim-1-1.jpg', 19990000, '300 gr', 'OPPO', 'OPPO Find N2 Flip là mẫu điện thoại gập đầu tiên được nhà OPPO chính thức giới thiệu tại Việt Nam, sản phẩm mang đến một thiết kế độc đáo cho người dùng cũng như hiệu năng mạnh mẽ từ con chip Dimensity 9000+ và màn hình phụ siêu lớn được tích hợp kèm.', '<h3><strong>Thiết kế gấp gọn đầy mới lạ</strong></h3>\r\n\r\n<h3>Thiết kế của Find N2 Flip mang lại sự ấn tượng bởi cơ chế gập độc đ&aacute;o v&agrave; tỷ lệ khung h&igrave;nh rộng kết hợp viền mỏng, những điều n&agrave;y tạo n&ecirc;n một c&aacute;i nh&igrav', '1', 1, '2024-02-10 07:25:08', '2024-02-18 14:53:44'),
(33, 20, 'Điện thoại Samsung Galaxy S23 Ultra 5G 256GB', '1692346282-product-samsung-galaxy-s23-ultra-kem-1-1.jpg', 23990000, '250 gr', 'SamSung ', 'Samsung Galaxy S23 Ultra được xác nhận sẽ ra mắt trong sự kiện Galaxy Unpacked diễn ra vào đầu tháng 2 năm nay, theo thông tin từ hãng thì đây sẽ là mẫu điện thoại được nâng cấp mạnh về khả năng chụp ảnh nhờ camera 200 MP cũng như hiệu năng vô đối với con', '<h3><strong>Thiết kế đậm chất Samsung</strong></h3>\r\n\r\n<p>Tổng quan thiết kế của S23 Ultra năm nay sẽ kh&ocirc;ng c&oacute; qu&aacute; nhiều thay đổi, m&aacute;y vẫn sở hữu khung nh&ocirc;m cứng c&aacute;p k&egrave;m mặt lưng được ho&agrave;n thiện từ k&a', '1', 1, '2024-02-10 08:11:22', '2024-02-18 15:16:10'),
(34, 26, 'Máy tính bảng iPad Pro M1 12.9 inch WiFi Cellular 2TB', '1692346550-product-ipad-pro-m1-129-inch-wifi-cellular-128gb-2021-5.jpg', 58990000, '350 gr', 'Apple', 'Tích hợp màn hình Liquid Retina XDR mini-LED LCD với 10.000 bóng đèn siêu nhỏ, tỉ lệ tương phản 1.000.000:1, độ phân giải 2048 x 2732 Pixels tái hiện nội dung cực nét, chi tiết rõ ràng, sống động. iPad Pro cài đặt tính năng ProMotion, tần số quét lên đến ', '<h3><strong>Kiểu d&aacute;ng chắc chắn, m&agrave;n h&igrave;nh hiển thị chi tiết</strong></h3>\r\n\r\n<p><a href=\"https://www.dienmayxanh.com/may-tinh-bang/ipad-pro-m1-129-inch-wifi-cellular-2tb-2021\" target=\"_blank\">iPad Pro M1 12.9 inch WiFi Cellular 2TB (2', '1', 1, '2024-02-10 08:15:50', '2024-02-18 15:16:04'),
(35, 26, 'Máy tính bảng Samsung Galaxy Tab A7 Lite', '1692346708-product-samsung-galaxy-tab-a7-lite-1-2-org.jpg', 3990000, '250 gr', 'SamSung ', 'Với mức giá hợp lý, Galaxy Tab A7 Lite là mẫu máy tính bảng được Samsung tạo ra nhằm hướng đến đối tượng người dùng đang tìm cho mình một thiết bị giải trí cơ bản với màn hình lớn, hỗ trợ đầy đủ kết nối để có thể truy cập mạng nhanh mọi lúc mọi nơi.', '<h3><strong>Giải tr&iacute; ho&agrave;n hảo với m&agrave;n h&igrave;nh lớn v&agrave; &acirc;m thanh stereo</strong></h3>\r\n\r\n<p>Về phần hiển thị, Galaxy Tab A7 Lite được trang bị m&agrave;n h&igrave;nh c&oacute; k&iacute;ch thước 8.7 inch, phần viền xung q', '1', 1, '2024-02-10 08:18:28', '2024-02-20 15:18:28'),
(36, 26, 'Máy tính bảng Samsung Galaxy Tab A8', '1692346920-product-samsung-galaxy-tab-a8-1.jpg', 6490000, '200 gr', 'SamSung ', 'Samsung Galaxy Tab A8 (2022) có mặt lưng được hoàn thiện với vật liệu kim loại nguyên khối dạng nhám cho thiết kế sang trọng, cầm nắm vững chắc, thoải mái trong mọi thao tác trải nghiệm.\r\n ', '<h3><strong>Thiết kế cao cấp, m&agrave;n h&igrave;nh hiển thị sắc n&eacute;t</strong></h3>\r\n\r\n<p><a href=\"https://www.dienmayxanh.com/may-tinh-bang/samsung-galaxy-tab-a8\" target=\"_blank\">Samsung Galaxy Tab A8 (2022)</a>&nbsp;c&oacute; mặt lưng được ho&agr', '1', 1, '2024-02-10 08:22:00', '2024-03-20 15:22:00'),
(37, 27, 'Loa Bluetooth Rezo Home Series One', '1692347065-product-loa-bluetooth-rezo-home-series-one-4-2.jpg', 710000, '450 gr', 'Rezo Home ', 'Loa Bluetooth Rezo Home Series One với kiểu dáng đẹp mắt kết hợp cùng đèn LED đa sắc, âm thanh chân thực và sống động, sản phẩm hứa hẹn mang đến cho bạn những buổi tiệc âm thanh bất tận.', '<p>&bull;&nbsp;<a href=\"https://www.dienmayxanh.com/dan-loa-dvd\" target=\"_blank\">Loa</a>&nbsp;được sản xuất từ chất liệu nhựa kết hợp vải bọc cao cấp ở b&ecirc;n ngo&agrave;i mang đến vẻ đẹp thời thượng v&agrave; độ bền bỉ cao. Dễ d&agrave;ng di chuyển lo', '1', 1, '2024-02-10 08:24:25', '2024-02-20 15:24:25'),
(38, 27, 'Loa vi tính Enkor E300 Plus', '1692347223-product-loa-enkor-e300plus-tgdd-1-org-1.jpg', 360000, '500 gr', 'Enkor', 'Mặt trước thùng loa được trang trí màng loa những đường vòng màu bạc bằng kim loại rất chắc chắn và đẹp mắt, cùng với hai loa vệ tinh cũng với thiết kế tương đồng rất hài hoà, mang phong cách hiện đại.', '<h3><strong>T&iacute;ch hợp c&ocirc;ng nghệ điều chỉnh điện &aacute;p hiện đại</strong></h3>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/382/72800/loa-enkor-e300plus2.jpg\" onclick=\"return false;\"><img alt=\"Với công nghệ điều chỉnh điện áp hiện đại\"', '1', 1, '2024-02-10 08:27:03', '2024-02-20 15:27:03'),
(39, 27, 'Bộ loa thanh Sony HT- G700 400W', '1692347361-product-sony-ht-g700-0.jpg', 11690000, '3 kg', 'Sony', 'Loa thanh Sony HT- G700 sở hữu đường nét thiết kế thanh mảnh tạo cảm giác mềm mại gọn gàng, loa được bao phủ bởi gam màu đen trung tính hòa hợp với mọi không gian bày trí. ', '<h3>Thiết kế gọn g&agrave;ng, đẹp mắt</h3>\r\n\r\n<p><a href=\"https://www.dienmayxanh.com/dan-loa-dvd/sony-ht-g700\" target=\"_blank\">Loa thanh Sony HT- G700&nbsp;</a>sở hữu đường n&eacute;t thiết kế thanh mảnh tạo cảm gi&aacute;c mềm mại gọn g&agrave;ng, loa đ', '1', 1, '2024-02-10 08:29:21', '2024-02-18 15:29:21'),
(40, 28, 'Camera IP 360 Độ 2K Pro Xiaomi Mi Home C400', '1692347458-product-camera-ip-mi-home-360-do-2k-pro-xiaomi-c400-trang-1-1.jpg', 1090000, '750 gr', 'Xiaomi', 'Camera IP 360 Độ 2K Pro Xiaomi Mi Home C400 với thiết kế sang trọng, màu sắc tinh tế, chất lượng thu âm và ghi cảnh ấn tượng, dễ dàng tháo lắp, mang đến những trải nghiệm tối ưu cho người dùng.', '<p>&bull;&nbsp;Kiểu d&aacute;ng nhỏ gọn, thiết kế hiện đại, ph&ugrave; hợp sử dụng trong ph&ograve;ng ngủ, ph&ograve;ng kh&aacute;ch,...</p>\r\n\r\n<p>&bull;&nbsp;Độ ph&acirc;n giải 2560 &times; 1440p mang đến chất lượng h&igrave;nh ảnh sắc n&eacute;t, ph&oac', '1', 1, '2024-02-10 08:30:58', '2024-02-18 15:30:58'),
(41, 28, 'WebCam 1080P Sony Bravia CMU-BC1', '1692347584-product-sony-bravia-webcam-1080p-cmu-bc1.jpg', 3990000, '300 gr', 'Sony', 'Thông tin sản phẩm\r\nWebCam 1080P Sony Bravia CMU-BC1 có kiểu dáng nhỏ gọn, cho chất lượng video rõ nét với độ phân giải Full HD 1080p, kết nối Google Duo cho bạn trải nghiệm gọi video trên màn hình lớn cực thú vị, ấn tượng.', '<h3>Tổng quan thiết kế&nbsp;</h3>\r\n\r\n<p>-&nbsp;Sony Bravia CMU-BC1 thiết kế đơn giản, gọn g&agrave;ng, t&ocirc;ng m&agrave;u đen thời trang, tạo điểm nhấn sang trọng v&agrave; kết hợp h&agrave;i h&ograve;a với kh&ocirc;ng gian nội thất gia đ&igrave;nh. Kh', '1', 1, '2024-02-10 08:33:04', '2024-02-18 15:33:04'),
(42, 28, 'Camera IP Ngoài Trời 3MP TP-link Tapo C310', '1692347761-product-camera-giam-sat-ngoai-troi-3mp-tp-link-tapo-c310-2-org.jpg', 900000, '450 gr', 'Tapo', 'TP-link Tapo C310 được làm với các chi tiết tinh xảo, chân đế tròn đứng vững vàng khi bạn đặt trên bàn, kiểu dáng nhỏ gọn, dễ dàng lắp kiểu treo tường, trần nhà, thiết kế phù hợp để giám sát an ninh ngoài trời. ', '<h3><strong>Thiết kế đẹp mắt, m&agrave;u trắng tươi s&aacute;ng</strong></h3>\r\n\r\n<p>TP-link Tapo C310 được l&agrave;m với c&aacute;c chi tiết tinh xảo, ch&acirc;n đế tr&ograve;n đứng vững v&agrave;ng khi bạn đặt tr&ecirc;n b&agrave;n, kiểu d&aacute;ng nhỏ', '1', 1, '2024-02-10 08:36:01', '2024-02-18 15:36:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` int(11) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  `component_img` varchar(255) NOT NULL,
  `title_component` varchar(255) NOT NULL,
  `title_detail` varchar(255) NOT NULL,
  `store_img` varchar(255) NOT NULL,
  `status` int(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `avatar`, `position`, `component_img`, `title_component`, `title_detail`, `store_img`, `status`, `created_at`, `updated_at`) VALUES
(21, '1692373998-366372740_306720808602245_1109263837628488760_n.jpg', 1, '1692348193-iphone-14-pro-max-vang-1.jpg', 'Điện thoại iPhone 14 Pro Max 128GB', 'Điểm nhấn của sự kiện ra mắt sản phẩm tháng 9/2022 của Apple chính là siêu phẩm iPhone 14 Pro Max 128GB với thiết kế mặt trước đổi mới, camera nâng cấp mạnh mẽ và hiệu năng bùng nổ từ chip A16 Bionic, đáp ứng mọi nhu cầu của người dùng.', '1692348193-iphone-14-pro-max-bac-1.jpg', 1, '2024-02-10 01:34:58', '2024-02-18 22:53:18'),
(23, '1692354376-bannerdongho.jpg', 1, '1654850323-banner-phu-4.jpg', 'Apple Watch', 'Apple Watch S7 LTE 41 mm viền nhôm dây silicone có thiết kế được nâng cấp hơn so với phiên bản tiền nhiệm. Sở hữu vẻ ngoài sang trọng và hiện đại, Apple Watch S7 được thiết kế các góc bo tròn mềm mại với mặt đồng hồ được vác cong tạo cảm giác liền mạch hơ', '1654850323-banner-phu-4.jpg', 1, '2024-02-10 01:38:43', '2024-02-18 17:26:16'),
(25, '1692349329-huong-dan-thiet-ke-banner-dien-thoai-bang-photoshop.jpg', 1, '1692350554-huawei-y8p-600x600.jpg', ' Huawei Y8p ', 'Huawei vừa trình làng Huawei Y8p - mẫu smartphone mới để “chiêu đãi” người dùng phân khúc tầm trung với thiết kế hợp gu giới trẻ, màn hình OLED giọt nước, bộ 3 camera 48 MP “chụp siêu đêm” và đặc biệt là hiệu năng đáng gờm đến từ Kirin 710F 8 nhân. ', '1692350554-huawei-enjoy-z-600x600.jpg', 1, '2024-02-10 01:42:48', '2024-02-18 16:24:23'),
(26, '1692374048-1654850675-banner-6.jpg', 1, '1654850675-banner-phu-3.jpg', 'Tai nghe bluetooth Samsung ITFIT A08C', 'Tai nghe bluetooth Samsung ITFIT A08C có thiết kế nhỏ gọn, âm thanh mạnh mẽ cùng thời lượng pin dài cho trải nghiệm tốt vượt bậc. Tai nghe thích hợp với nhiều đối tượng người dùng, đặc biệt là người dùng trẻ.', '1654850675-banner-phu-3.jpg', 1, '2024-02-10 01:44:35', '2024-02-18 22:54:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(214, 'admin', 'a66abb5684c45962d887564f08346e8d', '2024-02-10 15:07:05', '2024-02-31 22:07:05'),
(2007, 'admin', 'a66abb5684c45962d887564f08346e8d', '2024-02-10 15:06:41', '2024-02-31 22:06:41'),
(2008, 'Thao', '37561715b6926c4f0c9e9493953838d3', '2024-02-10 03:47:44', '2024-02-31 10:47:44');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `introduces`
--
ALTER TABLE `introduces`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `maps`
--
ALTER TABLE `maps`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `introduces`
--
ALTER TABLE `introduces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `maps`
--
ALTER TABLE `maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2009;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
