-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 12, 2022 lúc 01:22 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `title`, `slug`, `image`, `summary`, `description`, `type`, `position`, `status`, `url`, `is_active`, `user_id`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'HẬU 20/10: MUA 1 - TẶNG 1. GIẢM GIÁ LÊN TỚI 20%', '', 'uploads/article/1635144638_z2863608345461_35521348e77af666a2348f3db0ad9d63(2).jpg', '<p>Ưu đ&atilde;i &quot;cực khủng&quot; MUA 1 TẶNG 1 Tặng ngay k&iacute;nh mắt Diamond D hoặc Philippe Auguste khi mua đồng hồ phi&ecirc;n bản Limited Đừng bỏ lỡ cơ hội sở hữu si&ecirc;u combo đặc biệt n&agrave;y shop ch&uacute;ng t&ocirc;i</p>', '<p>Ưu đ&atilde;i &quot;cực khủng&quot; MUA 1 TẶNG 1 Tặng ngay k&iacute;nh mắt Diamond D hoặc Philippe Auguste khi mua đồng hồ phi&ecirc;n bản Limited Đừng bỏ lỡ cơ hội sở hữu si&ecirc;u combo đặc biệt n&agrave;y shop ch&uacute;ng t&ocirc;i</p>', 1, 1, NULL, NULL, 1, NULL, NULL, NULL, '2020-05-23 20:33:02', '2021-10-24 23:50:38'),
(2, '20/10 chọn đồng hồ tặng nàng đến Phúc Bồ store giảm giá tới 20% - hoàn tiền 100% giá trị hóa đơn', '', 'uploads/article/1635144692_z2809732162093_daa993021d7fd08b3e3da2e69a519f6c(1).jpg', '<p>20/10, c&aacute;nh m&agrave;y r&acirc;u lại c&oacute; cơ hội để thể hiện sự t&ocirc;n vinh v&agrave; t&igrave;nh cảm của m&igrave;nh với những người phụ nữ m&igrave;nh y&ecirc;u thương. Vậy phải lựa chọn m&oacute;n qu&agrave; n&agrave;o thật &yacute; nghĩa?</p>', '<p>20/10, c&aacute;nh m&agrave;y r&acirc;u lại c&oacute; cơ hội để thể hiện sự t&ocirc;n vinh v&agrave; t&igrave;nh cảm của m&igrave;nh với những người phụ nữ m&igrave;nh y&ecirc;u thương. Vậy phải lựa chọn m&oacute;n qu&agrave; n&agrave;o thật &yacute; nghĩa?</p>', 1, 2, NULL, NULL, 1, NULL, '20/10 chọn đồng hồ tặng nàng đến Đăng Quang Watch giảm giá tới 20% - hoàn tiền 100% giá trị hóa đơn', '20/10 chọn đồng hồ tặng nàng đến Đăng Quang Watch giảm giá tới 20% - hoàn tiền 100% giá trị hóa đơn', '2020-05-23 20:33:29', '2021-10-24 23:54:35'),
(4, 'Ưu đãi giảm giá cực lớn cùng hàng ngàn quà tặng giá trị nhân tuần lễ khai trương showroom  tại Buôn Mê Thuột', '', 'uploads/article/1635144709_z2807505023665_6a12e5e38b9d00e9bf82cf25795bc6f0.jpg', '<p>Kể từ ng&agrave;y 01/10/2021 Thương hiệu Đồng hồ - K&iacute;nh mắt uy t&iacute;n Ph&uacute;c Bồ store tưng bừng khai trương showroom mới tại số 134 L&ecirc; Hồng Phong - Phường Thống Nhất - TP Bu&ocirc;n Ma Thuột.</p>', '<h2>Nh&acirc;n dịp n&agrave;y, qu&yacute; kh&aacute;ch h&agrave;ng khi tham quan mua sắm tại showroom sẽ nhận ngay ưu đ&atilde;i giảm gi&aacute; l&ecirc;n đến 30% c&ugrave;ng nhiều phần qu&agrave; gi&aacute; trị từ thương hiệu.</h2>', 1, 3, NULL, NULL, 1, NULL, NULL, NULL, '2020-05-23 22:00:30', '2021-10-24 23:55:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` int(10) UNSIGNED DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_active` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `banners`
--

INSERT INTO `banners` (`id`, `title`, `slug`, `image`, `url`, `target`, `description`, `type`, `position`, `is_active`, `created_at`, `updated_at`) VALUES
(3, 'HẬU 20/10: MUA 1 - TẶNG 1. GIẢM GIÁ LÊN TỚI 20%', 'hau-2010-mua-1-tang-1-giam-gia-len-toi-20', 'uploads/banner/1635145031_z2807505023665_6a12e5e38b9d00e9bf82cf25795bc6f0.jpg', NULL, 1, NULL, 1, 3, 1, '2020-03-22 20:05:40', '2021-10-24 23:57:11'),
(4, '20/10 chọn đồng hồ tặng nàng đến Phúc Bồ store giảm giá tới 20% - hoàn tiền 100% giá trị hóa đơn', '2010-chon-dong-ho-tang-nang-den-phuc-bo-store-giam-gia-toi-20-hoan-tien-100-gia-tri-hoa-don', 'uploads/banner/1635145052_z2809732162093_daa993021d7fd08b3e3da2e69a519f6c(1).jpg', NULL, 1, NULL, 1, 4, 1, '2020-03-05 06:35:23', '2021-10-24 23:57:32'),
(5, 'Ưu đãi giảm giá cực lớn cùng hàng ngàn quà tặng giá trị nhân tuần lễ khai trương showroom tại Buôn Mê Thuột', 'uu-dai-giam-gia-cuc-lon-cung-hang-ngan-qua-tang-gia-tri-nhan-tuan-le-khai-truong-showroom-tai-buon-me-thuot', 'uploads/banner/1635145075_z2863608345461_35521348e77af666a2348f3db0ad9d63(2).jpg', NULL, 1, NULL, 1, 5, 1, '2020-03-22 20:06:48', '2021-10-24 23:57:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_active` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `image`, `website`, `position`, `is_active`, `created_at`, `updated_at`) VALUES
(5, 'Rolex', 'rolex', 'uploads/brand/1635011559_1632297388_ROLEX-08.jpg', 'https://www.rolex.com/vi', 1, 1, '2020-03-04 06:47:49', '2021-10-23 10:52:39'),
(6, 'Citizen', 'citizen', 'uploads/brand/1635011611_1632297788_luxshopping68-1.png', 'https://citizenwatch.vn/', 2, 1, '2020-03-05 05:00:48', '2021-10-23 10:53:31'),
(7, 'Chanel', 'chanel', 'uploads/brand/1635011638_1632297649_chanel-luxshoppping1-1.png', 'https://www.chanel.com/vn/', 3, 1, '2020-03-22 20:57:00', '2021-10-23 10:53:58'),
(8, 'Omega', 'omega', 'uploads/brand/1635011665_1632297193_bst-dong-ho-omega-de-ville.jpg', 'omega.com.vn', 4, 1, '2020-03-22 20:58:06', '2021-10-23 10:54:25'),
(9, 'Hublot', 'hublot', 'uploads/brand/1635011693_1632297370_hublot-luxshopping2-1.png', 'Hublot.com.vn', 5, 1, '2020-03-22 20:58:58', '2021-10-23 10:54:53'),
(10, 'Lacoste', 'lacoste', 'uploads/brand/1635011727_1632297472_luxshopping117-1.png', 'Lacoste.com.vn', 6, 1, '2020-03-22 21:00:29', '2021-10-23 10:55:27'),
(11, 'Longines', 'longines', 'uploads/brand/1635011764_1632297562_luxshopping54-1.png', 'Longines.com.vn', 7, 1, '2020-03-22 21:01:12', '2021-10-23 10:56:04'),
(12, 'Gucci', 'gucci', 'uploads/brand/1635011786_1632297736_luxshopping46-1.png', 'Gucci.com.vn', 8, 1, '2020-03-22 21:02:06', '2021-10-23 10:56:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_active` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `parent_id`, `position`, `is_active`, `created_at`, `updated_at`) VALUES
(0, 'Đồng hồ nữ', 'dong-ho-nu', 'uploads/category/1635011341_dong-ho-nu-dep.jpg', 1, 3, 1, '2021-10-23 10:49:01', '2022-04-08 00:44:18'),
(1, 'Đồng hồ', 'dong-ho', 'uploads/category/1635010931_dong-ho-nam-henrylondon.jpg', 0, 1, 1, '2020-03-22 20:17:22', '2021-10-23 10:42:11'),
(2, 'Đồng hồ nam', 'dong-ho-nam', 'uploads/category/1635011311_anh1.jpg', 1, 2, 1, '2021-10-23 10:48:31', '2021-10-23 10:48:31'),
(4, 'Phụ kiện đồng hồ', 'phu-kien-dong-ho', 'uploads/category/1635011405_cach-lua-chon-mau-day-dong-ho-1 - Copy.jpg', 0, 4, 1, '2021-10-23 10:50:05', '2021-10-23 10:50:05'),
(5, 'Dây da và Khóa bấm', 'day-da-va-khoa-bam', 'uploads/category/1635011439_1632903510_1632303077_57.jpg', 4, 5, 1, '2021-10-23 10:50:39', '2021-10-24 23:34:14'),
(52, 'Đồng hồ đôi', 'dong-ho-doi', 'uploads/category/1635142451_1632296096_top-5-dong-ho-doi-dep-nhat-2019-min.jpg', 1, 6, 1, '2021-10-24 23:14:11', '2021-10-24 23:14:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `phone`, `email`, `content`, `created_at`, `updated_at`) VALUES
(9, 'huy', '0123456789', 'higirl0303@gmail.com', 'test', '2021-10-25 00:00:07', '2021-10-25 00:00:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `percent` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `percent`, `created_at`, `updated_at`) VALUES
(1, 'SHOP-KM1', 1, 50000, NULL, '2020-05-19 16:50:32', '2020-05-19 16:50:32'),
(2, 'SHOP-K2', 2, NULL, 50, '2020-05-19 16:52:27', '2020-05-19 16:52:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2020_01_07_122649_create_categories_table', 1),
(10, '2020_01_09_113851_create_products_table', 1),
(11, '2020_02_06_031728_create_banners_table', 2),
(12, '2020_02_06_032831_create_banners_table', 3),
(13, '2020_02_06_125433_create_vendors_table', 4),
(14, '2020_02_06_125734_create_brands_table', 5),
(15, '2020_03_04_083632_create_products_table', 6),
(17, '2020_03_05_122445_create_contacts_table', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` int(11) DEFAULT 0,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `total` int(11) DEFAULT 0,
  `user_id` int(11) DEFAULT 0,
  `order_status_id` int(11) DEFAULT 0,
  `payment_id` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `code`, `fullname`, `email`, `address`, `address2`, `phone`, `discount`, `note`, `coupon`, `total`, `user_id`, `order_status_id`, `payment_id`, `created_at`, `updated_at`) VALUES
(9, NULL, 'Hoàng Công Dũng', 'dungthuy2109@gmail.com', 'HN', NULL, '0986346007', 0, NULL, '0', 25970000, 0, 4, 0, '2020-05-19 12:18:21', '2020-05-19 12:18:21'),
(10, NULL, 'Hoàng Công Dũng', 'hcdung2109@gmail.com', 'HN', NULL, '0986346006', 11395000, 'AB', 'SHOP-K2', 22790000, 0, 1, 0, '2020-05-20 09:55:45', '2020-05-20 09:55:45'),
(11, 'DH-11-20052020', 'Trần Thuỷ', 'thuthuy@gmail.com', 'Long Biên , Hà nội', NULL, '0986346008', 3995000, 'ko', 'SHOP-K2', 7990000, 0, 1, 0, '2020-05-20 11:01:38', '2020-05-20 11:01:38'),
(12, 'DH-12-21052020', 'Trần Thuỷ', 'dungthuy2109@gmail.com', 'HN', NULL, '0986346008', 0, NULL, NULL, 15980000, 0, 1, 0, '2020-05-21 07:41:24', '2020-05-21 07:41:24'),
(13, 'DH-13-21052020', 'Trần Thuỷ', 'dungthuy2109@gmail.com', 'HN', NULL, '0986346008', 0, NULL, NULL, 15980000, 0, 2, 0, '2020-05-21 07:42:09', '2020-05-21 07:42:09'),
(14, 'DH-14-23052020', 'Trần Thuỷ', 'hcdung2109@gmail.com', 'Bắc Ninh', 'fdfd', '0986346008', 0, 'kfdsfsdf', NULL, 23390000, 0, 3, 0, '2020-05-23 00:30:46', '2020-05-25 23:46:41'),
(15, 'DH-15-26052020', 'HCDUNG', 'hcdung2109@gmail.com', 'Tầng 6, Tòa CT Building , Đống Đa , HN', NULL, '0986346008', 0, 'Giao hàng ngoài 17h', NULL, 7990000, 0, 2, 0, '2020-05-25 23:59:42', '2020-05-26 00:05:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`id`, `name`, `image`, `sku`, `user_id`, `order_id`, `product_id`, `price`, `qty`) VALUES
(2, NULL, NULL, '', NULL, 9, 43, 17980000, 2),
(3, NULL, NULL, '', NULL, 9, 30, 7990000, 1),
(4, NULL, NULL, '', NULL, 10, 30, 7990000, 1),
(5, NULL, NULL, '', NULL, 10, 44, 14800000, 2),
(6, NULL, NULL, '', NULL, 11, 30, 7990000, 1),
(7, 'Iphone 7 Plus 32GB - NEW', 'uploads/product/1584949065_iphone-7-plus-gold-400x460-400x460.png', NULL, 0, 13, 30, 15980000, 2),
(8, 'Apple Watch S5 LTE 40mm viền nhôm dây cao su', 'uploads/product/1586667604_apple-watch-s5-lte-40mm-vien-nhom-day-cao-su-ava-400x400.jpg', NULL, 0, 14, 50, 2900000, 1),
(9, 'ASUS ROG Phone 2 512GB', 'uploads/product/1584948535__600x600__crop_600_asus_rog_phone2_min_1.jpg', NULL, 0, 14, 28, 20490000, 1),
(10, 'Iphone 7 Plus 32GB - NEW', 'uploads/product/1584949065_iphone-7-plus-gold-400x460-400x460.png', NULL, 0, 15, 30, 7990000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_status`
--

INSERT INTO `order_status` (`id`, `name`) VALUES
(1, 'Mới'),
(2, 'Đang Xử Lý'),
(3, 'Hoàn Thành'),
(4, 'Hủy');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `price` int(11) NOT NULL DEFAULT 0,
  `sale` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 0,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `is_hot` int(11) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL DEFAULT 0,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `memory` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` int(11) NOT NULL DEFAULT 0,
  `vendor_id` int(11) NOT NULL DEFAULT 0,
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `image`, `stock`, `price`, `sale`, `position`, `is_active`, `is_hot`, `views`, `category_id`, `url`, `sku`, `color`, `memory`, `brand_id`, `vendor_id`, `summary`, `description`, `meta_title`, `meta_description`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 'Rolex Day-Date President Everose Gold Chocolate Dial 118235', 'rolex-day-date-president-everose-gold-chocolate-dial-118235', 'uploads/product/1635140889_1632298501_Rolex Day-Date President Everose Gold Chocolate Dial 118235.jpg', 11, 1200000, 1000000, 3, 1, 0, 0, 2, NULL, NULL, NULL, NULL, 5, 0, '<p><strong>Th&ocirc;ng tin sản phẩm:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>H&atilde;ng sản xuất:&nbsp;</strong>Rolex</li>\r\n	<li><strong>Bộ sưu tập:</strong>&nbsp;Day-Date</li>\r\n	<li><strong>Serial No.&nbsp;</strong>: 118235</li>\r\n	<li><strong>Sản phẩm d&agrave;nh cho:&nbsp;</strong>Nam</li>\r\n	<li><strong>K&iacute;ch thước:&nbsp;</strong>36mm</li>\r\n	<li><strong>Chất liệu th&acirc;n đồng hồ:</strong>&nbsp;L&agrave;m bằng v&agrave;ng hồng nguy&ecirc;n khối 18K</li>\r\n	<li><strong>Bezel:&nbsp;</strong>L&agrave;m bằng v&agrave;ng hồng, thiết kế theo kiểu r&atilde;nh v&agrave; gắn cố định</li>\r\n	<li><strong>Đ&aacute;y đồng hồ:</strong>&nbsp;L&agrave;m bằng v&agrave;ng hồng</li>\r\n	<li><strong>Chức năng hiển thị:&nbsp;</strong>Giờ, Ph&uacute;t, Gi&acirc;y, Lịch Thứ, Ng&agrave;y</li>\r\n	<li><strong>Thanh chỉ giở:&nbsp;</strong>8 thanh chỉ giờ (1,2,4,5,7,8,10,11) được gắn kim cương, 2 thanh chỉ giờ (6,9) được gắn đ&aacute; Ruby m&agrave;u đỏ</li>\r\n	<li><strong>Loại m&aacute;y:</strong>&nbsp;Calibre 3155, Automatic</li>\r\n	<li><strong>Độ căng d&acirc;y c&oacute;t:&nbsp;</strong>48 giờ</li>\r\n	<li><strong>N&uacute;m chỉnh giờ:</strong>&nbsp;L&agrave;m bằng v&agrave;ng hồng v&agrave; khắc nổi logo Rolex</li>\r\n	<li><strong>Kho&aacute; đồng hồ:</strong>&nbsp;L&agrave;m bằng v&agrave;ng hồng</li>\r\n	<li><strong>Loại d&acirc;y đeo:&nbsp;</strong>Dạng President l&agrave;m bằng v&agrave;ng hồng</li>\r\n	<li><strong>Mặt đồng hồ:&nbsp;</strong>Sapphire chống xước</li>\r\n	<li><strong>Mặt quay số:&nbsp;</strong>M&agrave;u S&ocirc;-c&ocirc;-la</li>\r\n	<li><strong>Khả năng chống nước:&nbsp;</strong>100m</li>\r\n</ul>\r\n\r\n<p><strong>Phụ kiện:&nbsp;</strong>Nguy&ecirc;n hộp, Th&acirc;n đồng hồ, thẻ bảo h&agrave;nh, s&aacute;ch hướng dẫn.<br />\r\n<strong>Bảo h&agrave;nh:&nbsp;</strong>5 năm</p>', '<p><strong>Th&ocirc;ng tin sản phẩm:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>H&atilde;ng sản xuất:&nbsp;</strong>Rolex</li>\r\n	<li><strong>Bộ sưu tập:</strong>&nbsp;Day-Date</li>\r\n	<li><strong>Serial No.&nbsp;</strong>: 118235</li>\r\n	<li><strong>Sản phẩm d&agrave;nh cho:&nbsp;</strong>Nam</li>\r\n	<li><strong>K&iacute;ch thước:&nbsp;</strong>36mm</li>\r\n	<li><strong>Chất liệu th&acirc;n đồng hồ:</strong>&nbsp;L&agrave;m bằng v&agrave;ng hồng nguy&ecirc;n khối 18K</li>\r\n	<li><strong>Bezel:&nbsp;</strong>L&agrave;m bằng v&agrave;ng hồng, thiết kế theo kiểu r&atilde;nh v&agrave; gắn cố định</li>\r\n	<li><strong>Đ&aacute;y đồng hồ:</strong>&nbsp;L&agrave;m bằng v&agrave;ng hồng</li>\r\n	<li><strong>Chức năng hiển thị:&nbsp;</strong>Giờ, Ph&uacute;t, Gi&acirc;y, Lịch Thứ, Ng&agrave;y</li>\r\n	<li><strong>Thanh chỉ giở:&nbsp;</strong>8 thanh chỉ giờ (1,2,4,5,7,8,10,11) được gắn kim cương, 2 thanh chỉ giờ (6,9) được gắn đ&aacute; Ruby m&agrave;u đỏ</li>\r\n	<li><strong>Loại m&aacute;y:</strong>&nbsp;Calibre 3155, Automatic</li>\r\n	<li><strong>Độ căng d&acirc;y c&oacute;t:&nbsp;</strong>48 giờ</li>\r\n	<li><strong>N&uacute;m chỉnh giờ:</strong>&nbsp;L&agrave;m bằng v&agrave;ng hồng v&agrave; khắc nổi logo Rolex</li>\r\n	<li><strong>Kho&aacute; đồng hồ:</strong>&nbsp;L&agrave;m bằng v&agrave;ng hồng</li>\r\n	<li><strong>Loại d&acirc;y đeo:&nbsp;</strong>Dạng President l&agrave;m bằng v&agrave;ng hồng</li>\r\n	<li><strong>Mặt đồng hồ:&nbsp;</strong>Sapphire chống xước</li>\r\n	<li><strong>Mặt quay số:&nbsp;</strong>M&agrave;u S&ocirc;-c&ocirc;-la</li>\r\n	<li><strong>Khả năng chống nước:&nbsp;</strong>100m</li>\r\n</ul>\r\n\r\n<p><strong>Phụ kiện:&nbsp;</strong>Nguy&ecirc;n hộp, Th&acirc;n đồng hồ, thẻ bảo h&agrave;nh, s&aacute;ch hướng dẫn.<br />\r\n<strong>Bảo h&agrave;nh:&nbsp;</strong>5 năm</p>', NULL, NULL, 0, '2021-10-24 22:48:09', '2021-10-24 22:48:09'),
(4, 'Rolex Cosmograph Daytona 40mm Everose gold 116505', 'rolex-cosmograph-daytona-40mm-everose-gold-116505', 'uploads/product/1635141019_1632298621_Rolex Cosmograph Daytona 40mm Everose gold 116505.jpg', 11, 1200000, 1000000, 4, 1, 0, 0, 2, NULL, NULL, NULL, NULL, 5, 0, '<p><strong>Th&ocirc;ng tin sản phẩm:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>H&atilde;ng sản xuất: Rolex</strong></li>\r\n	<li><strong>Bộ sưu tập:</strong>&nbsp;Cosmograph Daytona</li>\r\n	<li><strong>Serial No.&nbsp;</strong>: 116505</li>\r\n	<li><strong>Sản phẩm d&agrave;nh cho:&nbsp;</strong>Nam</li>\r\n	<li><strong>K&iacute;ch thước:&nbsp;</strong>40mm</li>\r\n	<li><strong>Chất liệu th&acirc;n đồng hồ:</strong>&nbsp;L&agrave;m bằng v&agrave;ng hồng nguy&ecirc;n khối 18K</li>\r\n	<li><strong>Bezel:&nbsp;</strong>L&agrave;m&nbsp;bằng gốm cứng v&agrave; phủ một lớp v&agrave;ng hồng c&oacute; thể xoay được, c&oacute; chức năng đo khoảng c&aacute;ch v&agrave; thời gian</li>\r\n	<li><strong>Đ&aacute;y đồng hồ:</strong>&nbsp;L&agrave;m bằng v&agrave;ng hồng</li>\r\n	<li><strong>Chức năng hiển thị:&nbsp;</strong>Giờ, Ph&uacute;t, Gi&acirc;y, 03 mặt hiển thị phụ ở vị tr&iacute; 3 giờ, 6 giờ, 9 giờ để bấm giờ, ph&uacute;t, gi&acirc;y</li>\r\n	<li><strong>Loại m&aacute;y:</strong>&nbsp;Calibre 4130, Automatic</li>\r\n	<li><strong>Độ căng d&acirc;y c&oacute;t:&nbsp;</strong>Tự động</li>\r\n	<li><strong>N&uacute;m chỉnh giờ:</strong>&nbsp;L&agrave;m bằng v&agrave;ng hồng v&agrave; khắc nổi logo&nbsp;<strong>Rolex</strong>, c&oacute; 02 n&uacute;t phụ bấm giờ thể thao</li>\r\n	<li><strong>Kho&aacute; đồng hồ:</strong>&nbsp;L&agrave;m bằng v&agrave;ng hồng</li>\r\n	<li><strong>Loại d&acirc;y đeo:&nbsp;</strong>L&agrave;m bằng v&agrave;ng hồng</li>\r\n	<li><strong>Mặt đồng hồ:&nbsp;</strong>Sapphire chống xước</li>\r\n	<li><strong>Mặt quay số:&nbsp;</strong>M&agrave;u hồng</li>\r\n	<li><strong>Khả năng chống nước:&nbsp;</strong>100m</li>\r\n</ul>\r\n\r\n<p><strong>Phụ kiện:&nbsp;</strong>Nguy&ecirc;n hộp, Th&acirc;n đồng hồ, thẻ bảo h&agrave;nh, s&aacute;ch hướng dẫn.<br />\r\n<strong>Bảo h&agrave;nh:&nbsp;</strong>5 năm</p>', '<p><strong>Th&ocirc;ng tin sản phẩm:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>H&atilde;ng sản xuất: Rolex</strong></li>\r\n	<li><strong>Bộ sưu tập:</strong>&nbsp;Cosmograph Daytona</li>\r\n	<li><strong>Serial No.&nbsp;</strong>: 116505</li>\r\n	<li><strong>Sản phẩm d&agrave;nh cho:&nbsp;</strong>Nam</li>\r\n	<li><strong>K&iacute;ch thước:&nbsp;</strong>40mm</li>\r\n	<li><strong>Chất liệu th&acirc;n đồng hồ:</strong>&nbsp;L&agrave;m bằng v&agrave;ng hồng nguy&ecirc;n khối 18K</li>\r\n	<li><strong>Bezel:&nbsp;</strong>L&agrave;m&nbsp;bằng gốm cứng v&agrave; phủ một lớp v&agrave;ng hồng c&oacute; thể xoay được, c&oacute; chức năng đo khoảng c&aacute;ch v&agrave; thời gian</li>\r\n	<li><strong>Đ&aacute;y đồng hồ:</strong>&nbsp;L&agrave;m bằng v&agrave;ng hồng</li>\r\n	<li><strong>Chức năng hiển thị:&nbsp;</strong>Giờ, Ph&uacute;t, Gi&acirc;y, 03 mặt hiển thị phụ ở vị tr&iacute; 3 giờ, 6 giờ, 9 giờ để bấm giờ, ph&uacute;t, gi&acirc;y</li>\r\n	<li><strong>Loại m&aacute;y:</strong>&nbsp;Calibre 4130, Automatic</li>\r\n	<li><strong>Độ căng d&acirc;y c&oacute;t:&nbsp;</strong>Tự động</li>\r\n	<li><strong>N&uacute;m chỉnh giờ:</strong>&nbsp;L&agrave;m bằng v&agrave;ng hồng v&agrave; khắc nổi logo&nbsp;<strong>Rolex</strong>, c&oacute; 02 n&uacute;t phụ bấm giờ thể thao</li>\r\n	<li><strong>Kho&aacute; đồng hồ:</strong>&nbsp;L&agrave;m bằng v&agrave;ng hồng</li>\r\n	<li><strong>Loại d&acirc;y đeo:&nbsp;</strong>L&agrave;m bằng v&agrave;ng hồng</li>\r\n	<li><strong>Mặt đồng hồ:&nbsp;</strong>Sapphire chống xước</li>\r\n	<li><strong>Mặt quay số:&nbsp;</strong>M&agrave;u hồng</li>\r\n	<li><strong>Khả năng chống nước:&nbsp;</strong>100m</li>\r\n</ul>\r\n\r\n<p><strong>Phụ kiện:&nbsp;</strong>Nguy&ecirc;n hộp, Th&acirc;n đồng hồ, thẻ bảo h&agrave;nh, s&aacute;ch hướng dẫn.<br />\r\n<strong>Bảo h&agrave;nh:&nbsp;</strong>5 năm</p>', NULL, NULL, 0, '2021-10-24 22:50:19', '2021-10-24 22:50:45'),
(5, 'Rolex Cosmograph Daytona 40mm Everose gold 116505 a1', 'rolex-cosmograph-daytona-40mm-everose-gold-116505-a1', 'uploads/product/1635141203_1632298706_Rolex Cosmograph Daytona 40mm Everose gold 116505 a1.jpg', 11, 1200000, 1000000, 5, 1, 0, 0, 2, NULL, NULL, NULL, NULL, 5, 0, '<p><strong>Th&ocirc;ng tin sản phẩm:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>H&atilde;ng sản xuất: Rolex</strong></li>\r\n	<li><strong>Bộ sưu tập:</strong>&nbsp;Cosmograph Daytona</li>\r\n	<li><strong>Serial No.&nbsp;</strong>: 116505</li>\r\n	<li><strong>Sản phẩm d&agrave;nh cho:&nbsp;</strong>Nam</li>\r\n	<li><strong>K&iacute;ch thước:&nbsp;</strong>40mm</li>\r\n	<li><strong>Chất liệu th&acirc;n đồng hồ:</strong>&nbsp;L&agrave;m bằng v&agrave;ng hồng nguy&ecirc;n khối 18K</li>\r\n	<li><strong>Bezel:&nbsp;</strong>L&agrave;m&nbsp;bằng gốm cứng v&agrave; phủ một lớp v&agrave;ng hồng c&oacute; thể xoay được, c&oacute; chức năng đo khoảng c&aacute;ch v&agrave; thời gian</li>\r\n	<li><strong>Đ&aacute;y đồng hồ:</strong>&nbsp;L&agrave;m bằng v&agrave;ng hồng</li>\r\n	<li><strong>Chức năng hiển thị:&nbsp;</strong>Giờ, Ph&uacute;t, Gi&acirc;y, 03 mặt hiển thị phụ ở vị tr&iacute; 3 giờ, 6 giờ, 9 giờ để bấm giờ, ph&uacute;t, gi&acirc;y</li>\r\n	<li><strong>Loại m&aacute;y:</strong>&nbsp;Calibre 4130, Automatic</li>\r\n	<li><strong>Độ căng d&acirc;y c&oacute;t:&nbsp;</strong>Tự động</li>\r\n	<li><strong>N&uacute;m chỉnh giờ:</strong>&nbsp;L&agrave;m bằng v&agrave;ng hồng v&agrave; khắc nổi logo&nbsp;<strong>Rolex</strong>, c&oacute; 02 n&uacute;t phụ bấm giờ thể thao</li>\r\n	<li><strong>Kho&aacute; đồng hồ:</strong>&nbsp;L&agrave;m bằng v&agrave;ng hồng</li>\r\n	<li><strong>Loại d&acirc;y đeo:&nbsp;</strong>L&agrave;m bằng v&agrave;ng hồng</li>\r\n	<li><strong>Mặt đồng hồ:&nbsp;</strong>Sapphire chống xước</li>\r\n	<li><strong>Mặt quay số:&nbsp;</strong>M&agrave;u hồng</li>\r\n	<li><strong>Khả năng chống nước:&nbsp;</strong>100m</li>\r\n</ul>\r\n\r\n<p><strong>Phụ kiện:&nbsp;</strong>Nguy&ecirc;n hộp, Th&acirc;n đồng hồ, thẻ bảo h&agrave;nh, s&aacute;ch hướng dẫn.<br />\r\n<strong>Bảo h&agrave;nh:&nbsp;</strong>5 năm</p>', '<p><strong>Th&ocirc;ng tin sản phẩm:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>H&atilde;ng sản xuất: Rolex</strong></li>\r\n	<li><strong>Bộ sưu tập:</strong>&nbsp;Cosmograph Daytona</li>\r\n	<li><strong>Serial No.&nbsp;</strong>: 116505</li>\r\n	<li><strong>Sản phẩm d&agrave;nh cho:&nbsp;</strong>Nam</li>\r\n	<li><strong>K&iacute;ch thước:&nbsp;</strong>40mm</li>\r\n	<li><strong>Chất liệu th&acirc;n đồng hồ:</strong>&nbsp;L&agrave;m bằng v&agrave;ng hồng nguy&ecirc;n khối 18K</li>\r\n	<li><strong>Bezel:&nbsp;</strong>L&agrave;m&nbsp;bằng gốm cứng v&agrave; phủ một lớp v&agrave;ng hồng c&oacute; thể xoay được, c&oacute; chức năng đo khoảng c&aacute;ch v&agrave; thời gian</li>\r\n	<li><strong>Đ&aacute;y đồng hồ:</strong>&nbsp;L&agrave;m bằng v&agrave;ng hồng</li>\r\n	<li><strong>Chức năng hiển thị:&nbsp;</strong>Giờ, Ph&uacute;t, Gi&acirc;y, 03 mặt hiển thị phụ ở vị tr&iacute; 3 giờ, 6 giờ, 9 giờ để bấm giờ, ph&uacute;t, gi&acirc;y</li>\r\n	<li><strong>Loại m&aacute;y:</strong>&nbsp;Calibre 4130, Automatic</li>\r\n	<li><strong>Độ căng d&acirc;y c&oacute;t:&nbsp;</strong>Tự động</li>\r\n	<li><strong>N&uacute;m chỉnh giờ:</strong>&nbsp;L&agrave;m bằng v&agrave;ng hồng v&agrave; khắc nổi logo&nbsp;<strong>Rolex</strong>, c&oacute; 02 n&uacute;t phụ bấm giờ thể thao</li>\r\n	<li><strong>Kho&aacute; đồng hồ:</strong>&nbsp;L&agrave;m bằng v&agrave;ng hồng</li>\r\n	<li><strong>Loại d&acirc;y đeo:&nbsp;</strong>L&agrave;m bằng v&agrave;ng hồng</li>\r\n	<li><strong>Mặt đồng hồ:&nbsp;</strong>Sapphire chống xước</li>\r\n	<li><strong>Mặt quay số:&nbsp;</strong>M&agrave;u hồng</li>\r\n	<li><strong>Khả năng chống nước:&nbsp;</strong>100m</li>\r\n</ul>\r\n\r\n<p><strong>Phụ kiện:&nbsp;</strong>Nguy&ecirc;n hộp, Th&acirc;n đồng hồ, thẻ bảo h&agrave;nh, s&aacute;ch hướng dẫn.<br />\r\n<strong>Bảo h&agrave;nh:&nbsp;</strong>5 năm</p>', NULL, NULL, 0, '2021-10-24 22:53:23', '2021-10-24 22:53:23'),
(6, 'Rolex Sky Dweller 326135', 'rolex-sky-dweller-326135', 'uploads/product/1635141313_1632298959_Rolex Sky Dweller 326135.jpg', 11, 1200000, 1000000, 6, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 5, 0, '<p>-Model Name/Number: Sky-Dweller 326135</p>\r\n\r\n<p>-Gender: Men&#39;s</p>\r\n\r\n<p>-Features:Automatic calibre 9001 movement, scratch-resistant sapphire crystal, waterproof screw-down crown, water resistant 100 meters, 330 ft, Superlative Chronometer (COSC)</p>\r\n\r\n<p>-Case: 18k Everose gold Monoblanc w/ screw-down caseback and fluted rotatable Rolex Ring Command bezel (42mm)</p>\r\n\r\n<p>-Dial: Chocolate w/ rose gold Arabic hour markers, date, month, GMT, second time zone, hour minute and second hand, 24 hour display in off center disc, Month -display via 12 apertures around the circumference of the dial</p>\r\n\r\n<p>-Bracelet: Genuine Rolex Tobacco leather w/ rose gold folding Oysterlock clasp</p>', '<p>-Model Name/Number: Sky-Dweller 326135</p>\r\n\r\n<p>-Gender: Men&#39;s</p>\r\n\r\n<p>-Features:Automatic calibre 9001 movement, scratch-resistant sapphire crystal, waterproof screw-down crown, water resistant 100 meters, 330 ft, Superlative Chronometer (COSC)</p>\r\n\r\n<p>-Case: 18k Everose gold Monoblanc w/ screw-down caseback and fluted rotatable Rolex Ring Command bezel (42mm)</p>\r\n\r\n<p>-Dial: Chocolate w/ rose gold Arabic hour markers, date, month, GMT, second time zone, hour minute and second hand, 24 hour display in off center disc, Month -display via 12 apertures around the circumference of the dial</p>\r\n\r\n<p>-Bracelet: Genuine Rolex Tobacco leather w/ rose gold folding Oysterlock clasp</p>', NULL, NULL, 0, '2021-10-24 22:55:13', '2021-10-24 22:55:13'),
(7, 'Rolex 116243', 'rolex-116243', 'uploads/product/1635141408_1632299092_rolex 116243.jpg', 11, 1200000, 1000000, 7, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 5, 0, '<p>THE CLASSIC WATCH OF REFERENCE</p>\r\n\r\n<p>The Rolex Datejust is the modern archetype of the classic watch, thanks to aesthetics and functions that transcend changes in fashion. Aesthetically, the Datejust has spanned eras, while retaining the enduring codes that make it, notably in its traditional versions, one of the most recognised and recognisable of watches.</p>\r\n\r\n<p>VIEW ALL DATEJUST MODELS</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>DATEJUST 36</p>\r\n\r\n<p>Steel</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>DATEJUST 36</p>\r\n\r\n<p>Bronze floral motif</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>DATEJUST 36</p>\r\n\r\n<p>Green floral motif</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>DATEJUST 36</p>\r\n\r\n<p>Champagne</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>DATEJUST 36</p>\r\n\r\n<p>Silver floral motif</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>DATEJUST 36</p>\r\n\r\n<p>Silver</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>DATEJUST 36</p>\r\n\r\n<p>White mother-of-pearl</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>DATEJUST 36</p>\r\n\r\n<p>White</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>DATEJUST 36</p>\r\n\r\n<p>Black Jubilee design set with diamonds</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>DATEJUST 36</p>\r\n\r\n<p>Black set with diamonds</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>DATEJUST 36</p>\r\n\r\n<p>Black mother-of-pearl set with diamonds</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>DATEJUST 36</p>\r\n\r\n<p>Steel set with diamonds</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>DATEJUST 36</p>\r\n\r\n<p>Champagne Jubilee design set with diamonds</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>DATEJUST 36</p>\r\n\r\n<p>Champagne set with diamonds</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>DATEJUST 36</p>\r\n\r\n<p>Silver set with diamonds</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>DATEJUST 36</p>\r\n\r\n<p>Silver Jubilee design set with diamonds</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>DATEJUST 36</p>\r\n\r\n<p>White mother-of-pearl set with diamonds</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>DATEJUST 36</p>\r\n\r\n<p>White set with diamonds</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>ROLESOR</p>\r\n\r\n<p>Gold is coveted for its lustre and nobility. Steel reinforces strength and reliability. Together, they harmoniously combine the best of their properties. A true Rolex signature, Rolesor has featured on Rolex models since the early 1930s, and was trademarked as a name in 1933. It is one of the prominent pillars of the Oyster collection.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>BRONZE DIAL</p>\r\n\r\n<p>The subtle floral motif is light, natural - and deceptively simple. In fact, what appear to be petals are none other than the cogs of a mechanical watch movement, a poetic reminder of the very essence of a Rolex watch: reliable and precise timekeeping.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>THE OYSTER BRACELET</p>\r\n\r\n<p>The Oyster bracelet is a perfect alchemy of form and function, aesthetics and technology, designed to be both robust and comfortable. It is equipped with an Oysterclasp and the Easylink comfort extension link, also exclusive to Rolex. This ingenious system allows the wearer to increase the bracelet length by approximately 5 mm, providing additional comfort in any circumstance.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>3135 MOVEMENT</p>\r\n\r\n<p>The 36 mm Datejust is equipped with calibre 3135, a self-winding mechanical movement entirely developed and manufactured by Rolex. Like all Rolex Perpetual movements, the 3135 is a certified Swiss chronometer, a designation reserved for high-precision watches that have successfully passed the Swiss Official Chronometer Testing Institute (COSC) tests. Its architecture, in common with all Oyster watch movements, makes it singularly reliable.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>THE CYCLOPS LENS</p>\r\n\r\n<p>The Cyclops lens enhances the date aperture, magnifying the date display for easy reading. It is one of the most distinctive Rolex features, and one of the most recognisable.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Reference</p>\r\n\r\n<p>116243</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>MODEL CASE</p>\r\n\r\n<p>Oyster, 36 mm, steel, yellow gold and diamonds</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>OYSTER ARCHITECTURE</p>\r\n\r\n<p>Monobloc middle case, screw-down case back and winding crown</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>DIAMETER</p>\r\n\r\n<p>36 mm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>MATERIAL</p>\r\n\r\n<p>Yellow Rolesor - combination of 904L steel and 18 ct yellow gold</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>BEZEL</p>\r\n\r\n<p>Set with diamonds</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>WINDING CROWN</p>\r\n\r\n<p>Screw-down, Twinlock double waterproofness system</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>CRYSTAL</p>\r\n\r\n<p>Scratch-resistant sapphire, Cyclops lens over the date</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>WATER-RESISTANCE</p>\r\n\r\n<p>Waterproof to 100 metres / 330 feet</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>MOVEMENT</p>\r\n\r\n<p>Perpetual, mechanical, self-winding</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>CALIBRE</p>\r\n\r\n<p>3135, Manufacture Rolex</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>PRECISION</p>\r\n\r\n<p>-2/+2 sec/day, after casing</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>FUNCTIONS</p>\r\n\r\n<p>Centre hour, minute and seconds hands. Instantaneous date with rapid setting. Stop-seconds for precise time setting</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>OSCILLATOR</p>\r\n\r\n<p>Paramagnetic blue Parachrom hairspring</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>WINDING</p>\r\n\r\n<p>Bidirectional self-winding via Perpetual rotor</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>POWER RESERVE</p>\r\n\r\n<p>Approximately 48 hours</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>BRACELET</p>\r\n\r\n<p>Oyster, flat three-piece links</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>CLASP</p>\r\n\r\n<p>Yellow Rolesor - combination of 904L steel and 18 ct yellow gold</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>CLASP</p>\r\n\r\n<p>Folding Oysterclasp with Easylink 5 mm comfort extension link</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>DIAL</p>\r\n\r\n<p>Bronze floral motif</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>CERTIFICATION</p>\r\n\r\n<p>Superlative Chronometer (COSC + Rolex certification after casing)</p>', '<p>&rsaquo; Sản phẩm nhập khẩu ch&iacute;nh h&atilde;ng.<br />\r\n&rsaquo; Vận chuyển miễn ph&iacute; to&agrave;n quốc.<br />\r\n&rsaquo; Thanh to&aacute;n sau khi nhận h&agrave;ng.<br />\r\n&rsaquo; Bảo h&agrave;nh 7 Năm tại C&ocirc;ng ty.<br />\r\n&rsaquo; Bảo h&agrave;nh ch&iacute;nh h&atilde;ng to&agrave;n cầu.</p>', NULL, NULL, 0, '2021-10-24 22:56:48', '2021-10-24 22:56:48'),
(8, 'Citizen royal 40mm', 'citizen-royal-40mm', 'uploads/product/1635141578_1633866067_6090a14cbd783eaaef6b9703d3c24237.jpg', 11, 1200000, 1000000, 8, 1, 0, 0, 2, NULL, NULL, NULL, NULL, 6, 0, '<p>&rsaquo; Sản phẩm nhập khẩu ch&iacute;nh h&atilde;ng.<br />\r\n&rsaquo; Vận chuyển miễn ph&iacute; to&agrave;n quốc.<br />\r\n&rsaquo; Thanh to&aacute;n sau khi nhận h&agrave;ng.<br />\r\n&rsaquo; Bảo h&agrave;nh 7 Năm tại C&ocirc;ng ty.<br />\r\n&rsaquo; Bảo h&agrave;nh ch&iacute;nh h&atilde;ng to&agrave;n cầu.</p>', '<p>&rsaquo; Sản phẩm nhập khẩu ch&iacute;nh h&atilde;ng.<br />\r\n&rsaquo; Vận chuyển miễn ph&iacute; to&agrave;n quốc.<br />\r\n&rsaquo; Thanh to&aacute;n sau khi nhận h&agrave;ng.<br />\r\n&rsaquo; Bảo h&agrave;nh 7 Năm tại C&ocirc;ng ty.<br />\r\n&rsaquo; Bảo h&agrave;nh ch&iacute;nh h&atilde;ng to&agrave;n cầu.</p>', NULL, NULL, 0, '2021-10-24 22:59:38', '2021-10-24 22:59:38'),
(9, 'LTP-V005G-7AUDF', 'ltp-v005g-7audf', 'uploads/product/1635141768_1633947526_LTP-V005G-7AUDF.png', 11, 1200000, 1000000, 9, 1, 0, 0, 2, NULL, NULL, NULL, NULL, 7, 0, '<ul>\r\n	<li><strong>Bộ sưu tập:</strong>&nbsp;Datejust</li>\r\n	<li><strong>Serial No.&nbsp;</strong>: 116243 chjdj</li>\r\n	<li><strong>Sản phẩm d&agrave;nh cho:&nbsp;</strong>Nam</li>\r\n	<li><strong>K&iacute;ch thước:&nbsp;</strong>36mm</li>\r\n	<li><strong>Chất liệu th&acirc;n đồng hồ:</strong>&nbsp;L&agrave;m bằng th&eacute;p kh&ocirc;ng gỉ</li>\r\n	<li><strong>Bezel:&nbsp;</strong>L&agrave;m bằng v&agrave;ng, tr&ecirc;n bề mặt bezel được đ&iacute;nh 52 vi&ecirc;n kim cương v&agrave; gắn cố định</li>\r\n	<li><strong>Thanh chỉ giờ:&nbsp;</strong>10 thanh chỉ gờ (1,2,4,5,6,7,8,9,10,11,12) đươc gắn kim cương</li>\r\n	<li><strong>Đ&aacute;y đồng hồ:</strong>&nbsp;L&agrave;m bằng th&eacute;p kh&ocirc;ng gỉ</li>\r\n	<li><strong>Chức năng hiển thị:&nbsp;</strong>Giờ, Ph&uacute;t, Gi&acirc;y, Lịch Ng&agrave;y</li>\r\n	<li><strong>Loại m&aacute;y:</strong>&nbsp;Calibre 3135, Automatic</li>\r\n	<li><strong>Độ căng d&acirc;y c&oacute;t:&nbsp;</strong>Tự động</li>\r\n	<li><strong>N&uacute;m chỉnh giờ:</strong>&nbsp;L&agrave;m bằng v&agrave;ng v&agrave; khắc nổi logo&nbsp;<strong>Rolex</strong></li>\r\n	<li><strong>Kho&aacute; đồng hồ:</strong>&nbsp;L&agrave;m bằng v&agrave;ng</li>\r\n	<li><strong>Loại d&acirc;y đeo:&nbsp;</strong>L&agrave;m bằng th&eacute;p kh&ocirc;ng gỉ kết hợp với v&agrave;ng 18k</li>\r\n	<li><strong>Mặt đồng hồ:&nbsp;</strong>Sapphire chống xước</li>\r\n	<li><strong>Mặt quay số:&nbsp;</strong>Mặt vi t&iacute;nh</li>\r\n	<li><strong>Khả năng chống nước:&nbsp;</strong>100m</li>\r\n</ul>\r\n\r\n<p><strong>Phụ kiện:&nbsp;</strong>Nguy&ecirc;n hộp, Th&acirc;n đồng hồ, thẻ bảo h&agrave;nh, s&aacute;ch hướng dẫn.<br />\r\n<strong>Bảo h&agrave;nh:&nbsp;</strong>5 năm</p>', '<ul>\r\n	<li><strong>Bộ sưu tập:</strong>&nbsp;Datejust</li>\r\n	<li><strong>Serial No.&nbsp;</strong>: 116243 chjdj</li>\r\n	<li><strong>Sản phẩm d&agrave;nh cho:&nbsp;</strong>Nam</li>\r\n	<li><strong>K&iacute;ch thước:&nbsp;</strong>36mm</li>\r\n	<li><strong>Chất liệu th&acirc;n đồng hồ:</strong>&nbsp;L&agrave;m bằng th&eacute;p kh&ocirc;ng gỉ</li>\r\n	<li><strong>Bezel:&nbsp;</strong>L&agrave;m bằng v&agrave;ng, tr&ecirc;n bề mặt bezel được đ&iacute;nh 52 vi&ecirc;n kim cương v&agrave; gắn cố định</li>\r\n	<li><strong>Thanh chỉ giờ:&nbsp;</strong>10 thanh chỉ gờ (1,2,4,5,6,7,8,9,10,11,12) đươc gắn kim cương</li>\r\n	<li><strong>Đ&aacute;y đồng hồ:</strong>&nbsp;L&agrave;m bằng th&eacute;p kh&ocirc;ng gỉ</li>\r\n	<li><strong>Chức năng hiển thị:&nbsp;</strong>Giờ, Ph&uacute;t, Gi&acirc;y, Lịch Ng&agrave;y</li>\r\n	<li><strong>Loại m&aacute;y:</strong>&nbsp;Calibre 3135, Automatic</li>\r\n	<li><strong>Độ căng d&acirc;y c&oacute;t:&nbsp;</strong>Tự động</li>\r\n	<li><strong>N&uacute;m chỉnh giờ:</strong>&nbsp;L&agrave;m bằng v&agrave;ng v&agrave; khắc nổi logo&nbsp;<strong>Rolex</strong></li>\r\n	<li><strong>Kho&aacute; đồng hồ:</strong>&nbsp;L&agrave;m bằng v&agrave;ng</li>\r\n	<li><strong>Loại d&acirc;y đeo:&nbsp;</strong>L&agrave;m bằng th&eacute;p kh&ocirc;ng gỉ kết hợp với v&agrave;ng 18k</li>\r\n	<li><strong>Mặt đồng hồ:&nbsp;</strong>Sapphire chống xước</li>\r\n	<li><strong>Mặt quay số:&nbsp;</strong>Mặt vi t&iacute;nh</li>\r\n	<li><strong>Khả năng chống nước:&nbsp;</strong>100m</li>\r\n</ul>\r\n\r\n<p><strong>Phụ kiện:&nbsp;</strong>Nguy&ecirc;n hộp, Th&acirc;n đồng hồ, thẻ bảo h&agrave;nh, s&aacute;ch hướng dẫn.<br />\r\n<strong>Bảo h&agrave;nh:&nbsp;</strong>5 năm</p>', NULL, NULL, 0, '2021-10-24 23:02:33', '2021-10-24 23:02:48'),
(10, 'Datejust-pearlmaster-yellow-gold-86348sablv-39mm', 'datejust-pearlmaster-yellow-gold-86348sablv-39mm', 'uploads/product/1635141962_1633947395_taL3eG.jpg', 11, 1200000, 1000000, 10, 1, 0, 0, 2, NULL, NULL, NULL, NULL, 8, 0, '<p>39mm 18K yellow gold case, screw-down back, screw-down crown with twinlock double waterproofness system, bezel set with 48 blue to green gradient baguette-cut sapphires, scratch-resistant sapphire crystal with cyclops lens over the date, olive green dial, 8 diamond hour markers, Arabic 6 and 9 set with 32 diamonds, Rolex calibre 3235 automatic movement, Datejust Pearlmaster bracelet with rounded five-piece links. Waterproof to 100 meters.</p>', '<p>39mm 18K yellow gold case, screw-down back, screw-down crown with twinlock double waterproofness system, bezel set with 48 blue to green gradient baguette-cut sapphires, scratch-resistant sapphire crystal with cyclops lens over the date, olive green dial, 8 diamond hour markers, Arabic 6 and 9 set with 32 diamonds, Rolex calibre 3235 automatic movement, Datejust Pearlmaster bracelet with rounded five-piece links. Waterproof to 100 meters.</p>', NULL, NULL, 0, '2021-10-24 23:05:26', '2021-10-24 23:06:02'),
(11, 'Đồng hồ Rolex Oyster Perpetual  blue Diamond Mens Watch', 'dong-ho-rolex-oyster-perpetual-blue-diamond-mens-watch', 'uploads/product/1635142112_1632299391_9.jpg', 11, 1200000, 1000000, 11, 1, 0, 0, 2, NULL, NULL, NULL, NULL, 9, 0, '<p>M&atilde; sản phẩm : 16233</p>\r\n\r\n<p>Thương hiệu : Rolex</p>\r\n\r\n<p>D&ograve;ng sản phẩm : Oyster Perpetual</p>\r\n\r\n<p>Xuất xứ : Trung quốc</p>\r\n\r\n<p>Năng lượng sử dụng : Quazt ( pin )</p>\r\n\r\n<p>Kiểu d&aacute;ng : Tr&ograve;n Xu hướng - phong c&aacute;ch : cổ điển - lịch l&atilde;m</p>\r\n\r\n<p>chất liệu vỏ : th&eacute;p kh&ocirc;ng gỉ mạ v&agrave;ng c&ocirc;ng nghệ pvd</p>\r\n\r\n<p>chất liệu d&acirc;y : th&eacute;p kh&ocirc;ng gỉ mạ v&agrave;ng c&ocirc;ng nghệ pvd</p>\r\n\r\n<p>m&agrave;u sắc : mặt xanh d&acirc;y vỏ trắng pha v&agrave;ng mặt k&iacute;nh : K&iacute;nh Sapphire Khả năng chống nước ; 3ATM ( 30 m&eacute;t ) K&iacute;ch thước : 36 x 36 x 9mm trọng lượng : 105g Chức năng : lịch ng&agrave;y</p>', '<p>M&atilde; sản phẩm : 16233</p>\r\n\r\n<p>Thương hiệu : Rolex</p>\r\n\r\n<p>D&ograve;ng sản phẩm : Oyster Perpetual</p>\r\n\r\n<p>Xuất xứ : Trung quốc</p>\r\n\r\n<p>Năng lượng sử dụng : Quazt ( pin )</p>\r\n\r\n<p>Kiểu d&aacute;ng : Tr&ograve;n Xu hướng - phong c&aacute;ch : cổ điển - lịch l&atilde;m</p>\r\n\r\n<p>chất liệu vỏ : th&eacute;p kh&ocirc;ng gỉ mạ v&agrave;ng c&ocirc;ng nghệ pvd</p>\r\n\r\n<p>chất liệu d&acirc;y : th&eacute;p kh&ocirc;ng gỉ mạ v&agrave;ng c&ocirc;ng nghệ pvd</p>\r\n\r\n<p>m&agrave;u sắc : mặt xanh d&acirc;y vỏ trắng pha v&agrave;ng mặt k&iacute;nh : K&iacute;nh Sapphire Khả năng chống nước ; 3ATM ( 30 m&eacute;t ) K&iacute;ch thước : 36 x 36 x 9mm trọng lượng : 105g Chức năng : lịch ng&agrave;y</p>', NULL, NULL, 0, '2021-10-24 23:08:32', '2021-10-24 23:08:32'),
(12, 'Đồng hồ burberry nam dây kim loại', 'dong-ho-burberry-nam-day-kim-loai', 'uploads/product/1635142381_1633947235_dong-ho-nu-burberry-chinh-hang-br03.jpg', 11, 1200000, 1000000, 13, 1, 0, 0, 2, NULL, NULL, NULL, NULL, 10, 0, '<p><strong>Chế Độ Bảo H&agrave;nh 12 Th&aacute;ng Lỗi 1 Đổi 1 Trong 7 Ng&agrave;y</strong><br />\r\n<strong>Hỗ Trợ Bảo H&agrave;nh Sản Phẩm Trọn Đời</strong><br />\r\n<strong>Miễn Ph&iacute; Giao H&agrave;ng To&agrave;n Quốc</strong><br />\r\n<strong>Nhận H&agrave;ng Kiểm Tra Trước Khi Thanh To&aacute;n</strong></p>\r\n\r\n<p><strong>Th&ocirc;ng số kỹ thuật &ndash; Đồng hồ Burberry nữ mặt tr&ograve;n</strong><br />\r\n<strong>Phi&ecirc;n bản Like Auth &ndash; M&atilde; BU10117</strong><br />\r\n<strong>Size mặt: 32mm &ndash; D&agrave;y 8mm</strong><br />\r\n<strong>Bộ m&aacute;y : Swiss Made (Thụy Sĩ)</strong><br />\r\n<strong>Chất liệu d&acirc;y v&agrave; vỏ: Th&eacute;p kh&ocirc;ng gỉ mạ Vacuum</strong><br />\r\n<strong>Mặt k&iacute;nh : Sapphire Crystal chống xước</strong><br />\r\n<strong>Chống Nước: 5ATM&nbsp;</strong></p>', '<p><strong>Chế Độ Bảo H&agrave;nh 12 Th&aacute;ng Lỗi 1 Đổi 1 Trong 7 Ng&agrave;y</strong><br />\r\n<strong>Hỗ Trợ Bảo H&agrave;nh Sản Phẩm Trọn Đời</strong><br />\r\n<strong>Miễn Ph&iacute; Giao H&agrave;ng To&agrave;n Quốc</strong><br />\r\n<strong>Nhận H&agrave;ng Kiểm Tra Trước Khi Thanh To&aacute;n</strong></p>\r\n\r\n<p><strong>Th&ocirc;ng số kỹ thuật &ndash; Đồng hồ Burberry nữ mặt tr&ograve;n</strong><br />\r\n<strong>Phi&ecirc;n bản Like Auth &ndash; M&atilde; BU10117</strong><br />\r\n<strong>Size mặt: 32mm &ndash; D&agrave;y 8mm</strong><br />\r\n<strong>Bộ m&aacute;y : Swiss Made (Thụy Sĩ)</strong><br />\r\n<strong>Chất liệu d&acirc;y v&agrave; vỏ: Th&eacute;p kh&ocirc;ng gỉ mạ Vacuum</strong><br />\r\n<strong>Mặt k&iacute;nh : Sapphire Crystal chống xước</strong><br />\r\n<strong>Chống Nước: 5ATM&nbsp;</strong></p>', NULL, NULL, 0, '2021-10-24 23:12:31', '2021-10-24 23:16:44'),
(13, 'Đồng hồ burberry nữ dây kim loại', 'dong-ho-burberry-nu-day-kim-loai', 'uploads/product/1635142558_1632300302_17.jpg', 11, 1200000, 1000000, 12, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 12, 0, '<p><strong>Chế Độ Bảo H&agrave;nh 12 Th&aacute;ng Lỗi 1 Đổi 1 Trong 7 Ng&agrave;y</strong><br />\r\n<strong>Hỗ Trợ Bảo H&agrave;nh Sản Phẩm Trọn Đời</strong><br />\r\n<strong>Miễn Ph&iacute; Giao H&agrave;ng To&agrave;n Quốc</strong><br />\r\n<strong>Nhận H&agrave;ng Kiểm Tra Trước Khi Thanh To&aacute;n</strong></p>\r\n\r\n<p><strong>Th&ocirc;ng số kỹ thuật &ndash; Đồng hồ Burberry nữ mặt tr&ograve;n</strong><br />\r\n<strong>Phi&ecirc;n bản Like Auth &ndash; M&atilde; BU10117</strong><br />\r\n<strong>Size mặt: 32mm &ndash; D&agrave;y 8mm</strong><br />\r\n<strong>Bộ m&aacute;y : Swiss Made (Thụy Sĩ)</strong><br />\r\n<strong>Chất liệu d&acirc;y v&agrave; vỏ: Th&eacute;p kh&ocirc;ng gỉ mạ Vacuum</strong><br />\r\n<strong>Mặt k&iacute;nh : Sapphire Crystal chống xước</strong><br />\r\n<strong>Chống Nước: 5ATM&nbsp;</strong></p>', '<p><strong>Chế Độ Bảo H&agrave;nh 12 Th&aacute;ng Lỗi 1 Đổi 1 Trong 7 Ng&agrave;y</strong><br />\r\n<strong>Hỗ Trợ Bảo H&agrave;nh Sản Phẩm Trọn Đời</strong><br />\r\n<strong>Miễn Ph&iacute; Giao H&agrave;ng To&agrave;n Quốc</strong><br />\r\n<strong>Nhận H&agrave;ng Kiểm Tra Trước Khi Thanh To&aacute;n</strong></p>\r\n\r\n<p><strong>Th&ocirc;ng số kỹ thuật &ndash; Đồng hồ Burberry nữ mặt tr&ograve;n</strong><br />\r\n<strong>Phi&ecirc;n bản Like Auth &ndash; M&atilde; BU10117</strong><br />\r\n<strong>Size mặt: 32mm &ndash; D&agrave;y 8mm</strong><br />\r\n<strong>Bộ m&aacute;y : Swiss Made (Thụy Sĩ)</strong><br />\r\n<strong>Chất liệu d&acirc;y v&agrave; vỏ: Th&eacute;p kh&ocirc;ng gỉ mạ Vacuum</strong><br />\r\n<strong>Mặt k&iacute;nh : Sapphire Crystal chống xước</strong><br />\r\n<strong>Chống Nước: 5ATM&nbsp;</strong></p>', NULL, NULL, 0, '2021-10-24 23:15:58', '2021-10-24 23:15:58'),
(14, 'Đồng hồ Rolex Oyster Perpetual  Yellow Gold Diamond Mens Watch', 'dong-ho-rolex-oyster-perpetual-yellow-gold-diamond-mens-watch', 'uploads/product/1635142672_1633946430_154213490592.jpg', 11, 1200000, 1000000, 14, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 11, 0, '<p><strong>Chế Độ Bảo H&agrave;nh 12 Th&aacute;ng Lỗi 1 Đổi 1 Trong 7 Ng&agrave;y</strong><br />\r\n<strong>Hỗ Trợ Bảo H&agrave;nh Sản Phẩm Trọn Đời</strong><br />\r\n<strong>Miễn Ph&iacute; Giao H&agrave;ng To&agrave;n Quốc</strong><br />\r\n<strong>Nhận H&agrave;ng Kiểm Tra Trước Khi Thanh To&aacute;n</strong></p>\r\n\r\n<p><strong>Th&ocirc;ng số kỹ thuật &ndash; Đồng hồ Burberry nữ mặt tr&ograve;n</strong><br />\r\n<strong>Phi&ecirc;n bản Like Auth &ndash; M&atilde; BU10117</strong><br />\r\n<strong>Size mặt: 32mm &ndash; D&agrave;y 8mm</strong><br />\r\n<strong>Bộ m&aacute;y : Swiss Made (Thụy Sĩ)</strong><br />\r\n<strong>Chất liệu d&acirc;y v&agrave; vỏ: Th&eacute;p kh&ocirc;ng gỉ mạ Vacuum</strong><br />\r\n<strong>Mặt k&iacute;nh : Sapphire Crystal chống xước</strong><br />\r\n<strong>Chống Nước: 5ATM&nbsp;</strong></p>', '<p><strong>Chế Độ Bảo H&agrave;nh 12 Th&aacute;ng Lỗi 1 Đổi 1 Trong 7 Ng&agrave;y</strong><br />\r\n<strong>Hỗ Trợ Bảo H&agrave;nh Sản Phẩm Trọn Đời</strong><br />\r\n<strong>Miễn Ph&iacute; Giao H&agrave;ng To&agrave;n Quốc</strong><br />\r\n<strong>Nhận H&agrave;ng Kiểm Tra Trước Khi Thanh To&aacute;n</strong></p>\r\n\r\n<p><strong>Th&ocirc;ng số kỹ thuật &ndash; Đồng hồ Burberry nữ mặt tr&ograve;n</strong><br />\r\n<strong>Phi&ecirc;n bản Like Auth &ndash; M&atilde; BU10117</strong><br />\r\n<strong>Size mặt: 32mm &ndash; D&agrave;y 8mm</strong><br />\r\n<strong>Bộ m&aacute;y : Swiss Made (Thụy Sĩ)</strong><br />\r\n<strong>Chất liệu d&acirc;y v&agrave; vỏ: Th&eacute;p kh&ocirc;ng gỉ mạ Vacuum</strong><br />\r\n<strong>Mặt k&iacute;nh : Sapphire Crystal chống xước</strong><br />\r\n<strong>Chống Nước: 5ATM&nbsp;</strong></p>', NULL, NULL, 0, '2021-10-24 23:17:52', '2021-10-24 23:17:52'),
(15, 'Citizen royal gold pink 40mm', 'citizen-royal-gold-pink-40mm', 'uploads/product/1635142761_1632300302_17.jpg', 11, 1200000, 1000000, 15, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 10, 0, '<p><strong>Chế Độ Bảo H&agrave;nh 12 Th&aacute;ng Lỗi 1 Đổi 1 Trong 7 Ng&agrave;y</strong><br />\r\n<strong>Hỗ Trợ Bảo H&agrave;nh Sản Phẩm Trọn Đời</strong><br />\r\n<strong>Miễn Ph&iacute; Giao H&agrave;ng To&agrave;n Quốc</strong><br />\r\n<strong>Nhận H&agrave;ng Kiểm Tra Trước Khi Thanh To&aacute;n</strong></p>\r\n\r\n<p><strong>Th&ocirc;ng số kỹ thuật &ndash; Đồng hồ Burberry nữ mặt tr&ograve;n</strong><br />\r\n<strong>Phi&ecirc;n bản Like Auth &ndash; M&atilde; BU10117</strong><br />\r\n<strong>Size mặt: 32mm &ndash; D&agrave;y 8mm</strong><br />\r\n<strong>Bộ m&aacute;y : Swiss Made (Thụy Sĩ)</strong><br />\r\n<strong>Chất liệu d&acirc;y v&agrave; vỏ: Th&eacute;p kh&ocirc;ng gỉ mạ Vacuum</strong><br />\r\n<strong>Mặt k&iacute;nh : Sapphire Crystal chống xước</strong><br />\r\n<strong>Chống Nước: 5ATM&nbsp;</strong></p>', '<p><strong>Chế Độ Bảo H&agrave;nh 12 Th&aacute;ng Lỗi 1 Đổi 1 Trong 7 Ng&agrave;y</strong><br />\r\n<strong>Hỗ Trợ Bảo H&agrave;nh Sản Phẩm Trọn Đời</strong><br />\r\n<strong>Miễn Ph&iacute; Giao H&agrave;ng To&agrave;n Quốc</strong><br />\r\n<strong>Nhận H&agrave;ng Kiểm Tra Trước Khi Thanh To&aacute;n</strong></p>\r\n\r\n<p><strong>Th&ocirc;ng số kỹ thuật &ndash; Đồng hồ Burberry nữ mặt tr&ograve;n</strong><br />\r\n<strong>Phi&ecirc;n bản Like Auth &ndash; M&atilde; BU10117</strong><br />\r\n<strong>Size mặt: 32mm &ndash; D&agrave;y 8mm</strong><br />\r\n<strong>Bộ m&aacute;y : Swiss Made (Thụy Sĩ)</strong><br />\r\n<strong>Chất liệu d&acirc;y v&agrave; vỏ: Th&eacute;p kh&ocirc;ng gỉ mạ Vacuum</strong><br />\r\n<strong>Mặt k&iacute;nh : Sapphire Crystal chống xước</strong><br />\r\n<strong>Chống Nước: 5ATM&nbsp;</strong></p>', NULL, NULL, 0, '2021-10-24 23:19:21', '2021-10-24 23:19:21'),
(16, 'Đồng hồ Rolex nữ Day Date  Olive Green Dial Everose Gold', 'dong-ho-rolex-nu-day-date-olive-green-dial-everose-gold', 'uploads/product/1635142821_1632300361_18.jpg', 11, 1200000, 1000000, 16, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 7, 0, '<p><strong>Chế Độ Bảo H&agrave;nh 12 Th&aacute;ng Lỗi 1 Đổi 1 Trong 7 Ng&agrave;y</strong><br />\r\n<strong>Hỗ Trợ Bảo H&agrave;nh Sản Phẩm Trọn Đời</strong><br />\r\n<strong>Miễn Ph&iacute; Giao H&agrave;ng To&agrave;n Quốc</strong><br />\r\n<strong>Nhận H&agrave;ng Kiểm Tra Trước Khi Thanh To&aacute;n</strong></p>\r\n\r\n<p><strong>Th&ocirc;ng số kỹ thuật &ndash; Đồng hồ Burberry nữ mặt tr&ograve;n</strong><br />\r\n<strong>Phi&ecirc;n bản Like Auth &ndash; M&atilde; BU10117</strong><br />\r\n<strong>Size mặt: 32mm &ndash; D&agrave;y 8mm</strong><br />\r\n<strong>Bộ m&aacute;y : Swiss Made (Thụy Sĩ)</strong><br />\r\n<strong>Chất liệu d&acirc;y v&agrave; vỏ: Th&eacute;p kh&ocirc;ng gỉ mạ Vacuum</strong><br />\r\n<strong>Mặt k&iacute;nh : Sapphire Crystal chống xước</strong><br />\r\n<strong>Chống Nước: 5ATM&nbsp;</strong></p>', '<p><strong>Chế Độ Bảo H&agrave;nh 12 Th&aacute;ng Lỗi 1 Đổi 1 Trong 7 Ng&agrave;y</strong><br />\r\n<strong>Hỗ Trợ Bảo H&agrave;nh Sản Phẩm Trọn Đời</strong><br />\r\n<strong>Miễn Ph&iacute; Giao H&agrave;ng To&agrave;n Quốc</strong><br />\r\n<strong>Nhận H&agrave;ng Kiểm Tra Trước Khi Thanh To&aacute;n</strong></p>\r\n\r\n<p><strong>Th&ocirc;ng số kỹ thuật &ndash; Đồng hồ Burberry nữ mặt tr&ograve;n</strong><br />\r\n<strong>Phi&ecirc;n bản Like Auth &ndash; M&atilde; BU10117</strong><br />\r\n<strong>Size mặt: 32mm &ndash; D&agrave;y 8mm</strong><br />\r\n<strong>Bộ m&aacute;y : Swiss Made (Thụy Sĩ)</strong><br />\r\n<strong>Chất liệu d&acirc;y v&agrave; vỏ: Th&eacute;p kh&ocirc;ng gỉ mạ Vacuum</strong><br />\r\n<strong>Mặt k&iacute;nh : Sapphire Crystal chống xước</strong><br />\r\n<strong>Chống Nước: 5ATM&nbsp;</strong></p>', NULL, NULL, 0, '2021-10-24 23:20:21', '2021-10-24 23:20:21'),
(17, 'Đồng hồ Rolex nữ Day Date  Olive Green Dial Everose blue', 'dong-ho-rolex-nu-day-date-olive-green-dial-everose-blue', 'uploads/product/1635142862_1632300415_19.jpg', 11, 1200000, 1000000, 17, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 6, 0, '<p><strong>Chế Độ Bảo H&agrave;nh 12 Th&aacute;ng Lỗi 1 Đổi 1 Trong 7 Ng&agrave;y</strong><br />\r\n<strong>Hỗ Trợ Bảo H&agrave;nh Sản Phẩm Trọn Đời</strong><br />\r\n<strong>Miễn Ph&iacute; Giao H&agrave;ng To&agrave;n Quốc</strong><br />\r\n<strong>Nhận H&agrave;ng Kiểm Tra Trước Khi Thanh To&aacute;n</strong></p>\r\n\r\n<p><strong>Th&ocirc;ng số kỹ thuật &ndash; Đồng hồ Burberry nữ mặt tr&ograve;n</strong><br />\r\n<strong>Phi&ecirc;n bản Like Auth &ndash; M&atilde; BU10117</strong><br />\r\n<strong>Size mặt: 32mm &ndash; D&agrave;y 8mm</strong><br />\r\n<strong>Bộ m&aacute;y : Swiss Made (Thụy Sĩ)</strong><br />\r\n<strong>Chất liệu d&acirc;y v&agrave; vỏ: Th&eacute;p kh&ocirc;ng gỉ mạ Vacuum</strong><br />\r\n<strong>Mặt k&iacute;nh : Sapphire Crystal chống xước</strong><br />\r\n<strong>Chống Nước: 5ATM&nbsp;</strong></p>', '<p><strong>Chế Độ Bảo H&agrave;nh 12 Th&aacute;ng Lỗi 1 Đổi 1 Trong 7 Ng&agrave;y</strong><br />\r\n<strong>Hỗ Trợ Bảo H&agrave;nh Sản Phẩm Trọn Đời</strong><br />\r\n<strong>Miễn Ph&iacute; Giao H&agrave;ng To&agrave;n Quốc</strong><br />\r\n<strong>Nhận H&agrave;ng Kiểm Tra Trước Khi Thanh To&aacute;n</strong></p>\r\n\r\n<p><strong>Th&ocirc;ng số kỹ thuật &ndash; Đồng hồ Burberry nữ mặt tr&ograve;n</strong><br />\r\n<strong>Phi&ecirc;n bản Like Auth &ndash; M&atilde; BU10117</strong><br />\r\n<strong>Size mặt: 32mm &ndash; D&agrave;y 8mm</strong><br />\r\n<strong>Bộ m&aacute;y : Swiss Made (Thụy Sĩ)</strong><br />\r\n<strong>Chất liệu d&acirc;y v&agrave; vỏ: Th&eacute;p kh&ocirc;ng gỉ mạ Vacuum</strong><br />\r\n<strong>Mặt k&iacute;nh : Sapphire Crystal chống xước</strong><br />\r\n<strong>Chống Nước: 5ATM&nbsp;</strong></p>', NULL, NULL, 0, '2021-10-24 23:21:02', '2021-10-24 23:21:02'),
(18, 'Đồng hồ Rolex Oyster Perpetual  blue Diamond women Watch', 'dong-ho-rolex-oyster-perpetual-blue-diamond-women-watch', 'uploads/product/1635142943_1632296086_344be11c9434036acd61998180a64ddd.jpg', 11, 1200000, 1000000, 18, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 9, 0, '<p><strong>Chế Độ Bảo H&agrave;nh 12 Th&aacute;ng Lỗi 1 Đổi 1 Trong 7 Ng&agrave;y</strong><br />\r\n<strong>Hỗ Trợ Bảo H&agrave;nh Sản Phẩm Trọn Đời</strong><br />\r\n<strong>Miễn Ph&iacute; Giao H&agrave;ng To&agrave;n Quốc</strong><br />\r\n<strong>Nhận H&agrave;ng Kiểm Tra Trước Khi Thanh To&aacute;n</strong></p>\r\n\r\n<p><strong>Th&ocirc;ng số kỹ thuật &ndash; Đồng hồ Burberry nữ mặt tr&ograve;n</strong><br />\r\n<strong>Phi&ecirc;n bản Like Auth &ndash; M&atilde; BU10117</strong><br />\r\n<strong>Size mặt: 32mm &ndash; D&agrave;y 8mm</strong><br />\r\n<strong>Bộ m&aacute;y : Swiss Made (Thụy Sĩ)</strong><br />\r\n<strong>Chất liệu d&acirc;y v&agrave; vỏ: Th&eacute;p kh&ocirc;ng gỉ mạ Vacuum</strong><br />\r\n<strong>Mặt k&iacute;nh : Sapphire Crystal chống xước</strong><br />\r\n<strong>Chống Nước: 5ATM&nbsp;</strong></p>', '<p><strong>Chế Độ Bảo H&agrave;nh 12 Th&aacute;ng Lỗi 1 Đổi 1 Trong 7 Ng&agrave;y</strong><br />\r\n<strong>Hỗ Trợ Bảo H&agrave;nh Sản Phẩm Trọn Đời</strong><br />\r\n<strong>Miễn Ph&iacute; Giao H&agrave;ng To&agrave;n Quốc</strong><br />\r\n<strong>Nhận H&agrave;ng Kiểm Tra Trước Khi Thanh To&aacute;n</strong></p>\r\n\r\n<p><strong>Th&ocirc;ng số kỹ thuật &ndash; Đồng hồ Burberry nữ mặt tr&ograve;n</strong><br />\r\n<strong>Phi&ecirc;n bản Like Auth &ndash; M&atilde; BU10117</strong><br />\r\n<strong>Size mặt: 32mm &ndash; D&agrave;y 8mm</strong><br />\r\n<strong>Bộ m&aacute;y : Swiss Made (Thụy Sĩ)</strong><br />\r\n<strong>Chất liệu d&acirc;y v&agrave; vỏ: Th&eacute;p kh&ocirc;ng gỉ mạ Vacuum</strong><br />\r\n<strong>Mặt k&iacute;nh : Sapphire Crystal chống xước</strong><br />\r\n<strong>Chống Nước: 5ATM&nbsp;</strong></p>', NULL, NULL, 0, '2021-10-24 23:22:07', '2021-10-24 23:22:23'),
(19, 'Đồng hồ Gucci nữ mạ vàng Gucci Lady Mini Gold Steel sang trọng 28mm', 'dong-ho-gucci-nu-ma-vang-gucci-lady-mini-gold-steel-sang-trong-28mm', 'uploads/product/1635143068_1633947137_hinh-anh-chi-tiet-cac-kieu-dong-ho-deo-tay-nu-mau-moi-2015a-2.jpg', 11, 1200000, 1000000, 19, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 12, 0, '<p><strong>Chế Độ Bảo H&agrave;nh 12 Th&aacute;ng Lỗi 1 Đổi 1 Trong 7 Ng&agrave;y</strong><br />\r\n<strong>Hỗ Trợ Bảo H&agrave;nh Sản Phẩm Trọn Đời</strong><br />\r\n<strong>Miễn Ph&iacute; Giao H&agrave;ng To&agrave;n Quốc</strong><br />\r\n<strong>Nhận H&agrave;ng Kiểm Tra Trước Khi Thanh To&aacute;n</strong></p>\r\n\r\n<p><strong>Th&ocirc;ng số &ndash; Đồng hồ Gucci nữ mạ v&agrave;ng</strong><br />\r\n<strong>Đường k&iacute;nh: 28mm</strong><br />\r\n<strong>Bề d&agrave;y mặt: 9mm</strong><br />\r\n<strong>Bộ m&aacute;y: Japan Movt ( Pin Nhật )</strong><br />\r\n<strong>Chất liệu: Th&eacute;p kh&ocirc;ng gỉ mạ PVD</strong><br />\r\n<strong>Mặt k&iacute;nh: Mineral Crystal</strong><br />\r\n<strong>Chống nước : 3ATM</strong></p>', '<p><strong>Chế Độ Bảo H&agrave;nh 12 Th&aacute;ng Lỗi 1 Đổi 1 Trong 7 Ng&agrave;y</strong><br />\r\n<strong>Hỗ Trợ Bảo H&agrave;nh Sản Phẩm Trọn Đời</strong><br />\r\n<strong>Miễn Ph&iacute; Giao H&agrave;ng To&agrave;n Quốc</strong><br />\r\n<strong>Nhận H&agrave;ng Kiểm Tra Trước Khi Thanh To&aacute;n</strong></p>\r\n\r\n<p><strong>Th&ocirc;ng số &ndash; Đồng hồ Gucci nữ mạ v&agrave;ng</strong><br />\r\n<strong>Đường k&iacute;nh: 28mm</strong><br />\r\n<strong>Bề d&agrave;y mặt: 9mm</strong><br />\r\n<strong>Bộ m&aacute;y: Japan Movt ( Pin Nhật )</strong><br />\r\n<strong>Chất liệu: Th&eacute;p kh&ocirc;ng gỉ mạ PVD</strong><br />\r\n<strong>Mặt k&iacute;nh: Mineral Crystal</strong><br />\r\n<strong>Chống nước : 3ATM</strong></p>', NULL, NULL, 0, '2021-10-24 23:24:28', '2021-10-24 23:24:28'),
(20, 'Đồng hồ Gucci nữ dây da màu đen Gucci Women’s Diamantissima Gold 27mm 32mm', 'dong-ho-gucci-nu-day-da-mau-den-gucci-womens-diamantissima-gold-27mm-32mm', 'uploads/product/1635143163_1633947066_hinh-anh-dong-ho-deo-tay-nu_042014707.jpg', 11, 1200000, 1000000, 20, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 9, 0, '<p><strong>Chế Độ Bảo H&agrave;nh 12 Th&aacute;ng Lỗi 1 Đổi 1 Trong 7 Ng&agrave;y</strong><br />\r\n<strong>Hỗ Trợ Bảo H&agrave;nh Sản Phẩm Trọn Đời</strong><br />\r\n<strong>Miễn Ph&iacute; Giao H&agrave;ng To&agrave;n Quốc</strong><br />\r\n<strong>Nhận H&agrave;ng Kiểm Tra Trước Khi Thanh To&aacute;n</strong></p>\r\n\r\n<p><strong>Th&ocirc;ng số kĩ thuật &ndash; Đồng hồ Gucci nữ d&acirc;y da</strong><br />\r\n<strong>Đường k&iacute;nh: 27mm &ndash; 32mm</strong><br />\r\n<strong>Bộ m&aacute;y : Swiss Made Quartz</strong><br />\r\n<strong>Mặt k&iacute;nh : Mineral Crystal</strong><br />\r\n<strong>D&acirc;y da cao cấp cực bền</strong><br />\r\n<strong>Vỏ v&agrave; kh&oacute;a : Th&eacute;p kh&ocirc;ng gỉ mạ PVD</strong><br />\r\n<strong>Chống nước : 3ATM</strong></p>', '<p><strong>Chế Độ Bảo H&agrave;nh 12 Th&aacute;ng Lỗi 1 Đổi 1 Trong 7 Ng&agrave;y</strong><br />\r\n<strong>Hỗ Trợ Bảo H&agrave;nh Sản Phẩm Trọn Đời</strong><br />\r\n<strong>Miễn Ph&iacute; Giao H&agrave;ng To&agrave;n Quốc</strong><br />\r\n<strong>Nhận H&agrave;ng Kiểm Tra Trước Khi Thanh To&aacute;n</strong></p>\r\n\r\n<p><strong>Th&ocirc;ng số kĩ thuật &ndash; Đồng hồ Gucci nữ d&acirc;y da</strong><br />\r\n<strong>Đường k&iacute;nh: 27mm &ndash; 32mm</strong><br />\r\n<strong>Bộ m&aacute;y : Swiss Made Quartz</strong><br />\r\n<strong>Mặt k&iacute;nh : Mineral Crystal</strong><br />\r\n<strong>D&acirc;y da cao cấp cực bền</strong><br />\r\n<strong>Vỏ v&agrave; kh&oacute;a : Th&eacute;p kh&ocirc;ng gỉ mạ PVD</strong><br />\r\n<strong>Chống nước : 3ATM</strong></p>', NULL, NULL, 0, '2021-10-24 23:26:03', '2021-10-24 23:26:03'),
(21, 'Đồng hồ Hublot cặp nam nữ máy cơ Hublot màu xanh lá cây Super Fake 34/42mm', 'dong-ho-hublot-cap-nam-nu-may-co-hublot-mau-xanh-la-cay-super-fake-3442mm', 'uploads/product/1635143254_1632302572_49.jpg', 11, 1200000, 1000000, 21, 1, 0, 0, 52, NULL, NULL, NULL, NULL, 12, 0, '<p><strong>Chế Độ Bảo H&agrave;nh 12 Th&aacute;ng Lỗi 1 Đổi 1 Trong 7 Ng&agrave;y</strong><br />\r\n<strong>Hỗ Trợ Bảo H&agrave;nh Sản Phẩm Trọn Đời</strong><br />\r\n<strong>Miễn Ph&iacute; Giao H&agrave;ng To&agrave;n Quốc</strong><br />\r\n<strong>Nhận H&agrave;ng Kiểm Tra Trước Khi Thanh To&aacute;n</strong></p>\r\n\r\n<p><strong>Th&ocirc;ng số &ndash; Đồng hồ Hublot cặp nam nữ</strong><br />\r\n<strong>Đường k&iacute;nh nam: 42mm</strong><br />\r\n<strong>Đường k&iacute;nh nữ: 34mm</strong><br />\r\n<strong>Bề d&agrave;y mặt: 10mm</strong><br />\r\n<strong>Vỏ v&agrave; kh&oacute;a: Th&eacute;p kh&ocirc;ng gỉ mạ PVD</strong><br />\r\n<strong>Bộ m&aacute;y: Japan Automatic (CƠ)</strong><br />\r\n<strong>Mặt k&iacute;nh: Mineral Crystal</strong><br />\r\n<strong>D&acirc;y đeo: D&acirc;y cao su bọc da</strong><br />\r\n<strong>Chống nước 3ATM</strong></p>', '<p><strong>Chế Độ Bảo H&agrave;nh 12 Th&aacute;ng Lỗi 1 Đổi 1 Trong 7 Ng&agrave;y</strong><br />\r\n<strong>Hỗ Trợ Bảo H&agrave;nh Sản Phẩm Trọn Đời</strong><br />\r\n<strong>Miễn Ph&iacute; Giao H&agrave;ng To&agrave;n Quốc</strong><br />\r\n<strong>Nhận H&agrave;ng Kiểm Tra Trước Khi Thanh To&aacute;n</strong></p>\r\n\r\n<p><strong>Th&ocirc;ng số &ndash; Đồng hồ Hublot cặp nam nữ</strong><br />\r\n<strong>Đường k&iacute;nh nam: 42mm</strong><br />\r\n<strong>Đường k&iacute;nh nữ: 34mm</strong><br />\r\n<strong>Bề d&agrave;y mặt: 10mm</strong><br />\r\n<strong>Vỏ v&agrave; kh&oacute;a: Th&eacute;p kh&ocirc;ng gỉ mạ PVD</strong><br />\r\n<strong>Bộ m&aacute;y: Japan Automatic (CƠ)</strong><br />\r\n<strong>Mặt k&iacute;nh: Mineral Crystal</strong><br />\r\n<strong>D&acirc;y đeo: D&acirc;y cao su bọc da</strong><br />\r\n<strong>Chống nước 3ATM</strong></p>', NULL, NULL, 0, '2021-10-24 23:27:34', '2021-10-24 23:27:34');
INSERT INTO `products` (`id`, `name`, `slug`, `image`, `stock`, `price`, `sale`, `position`, `is_active`, `is_hot`, `views`, `category_id`, `url`, `sku`, `color`, `memory`, `brand_id`, `vendor_id`, `summary`, `description`, `meta_title`, `meta_description`, `user_id`, `created_at`, `updated_at`) VALUES
(22, 'Đồng hồ Hublot cặp máy cơ Nhật Hublot đính đá màu đen Super Fake 34/42mm', 'dong-ho-hublot-cap-may-co-nhat-hublot-dinh-da-mau-den-super-fake-3442mm', 'uploads/product/1635143298_1632302627_50.jpg', 11, 1200000, 1000000, 22, 1, 0, 0, 52, NULL, NULL, NULL, NULL, 6, 0, '<p><strong>Chế Độ Bảo H&agrave;nh 12 Th&aacute;ng Lỗi 1 Đổi 1 Trong 7 Ng&agrave;y</strong><br />\r\n<strong>Hỗ Trợ Bảo H&agrave;nh Sản Phẩm Trọn Đời</strong><br />\r\n<strong>Miễn Ph&iacute; Giao H&agrave;ng To&agrave;n Quốc</strong><br />\r\n<strong>Nhận H&agrave;ng Kiểm Tra Trước Khi Thanh To&aacute;n</strong></p>\r\n\r\n<p><strong>Th&ocirc;ng số &ndash; Đồng hồ Hublot cặp m&aacute;y cơ</strong><br />\r\n<strong>Đường k&iacute;nh nam: 42mm</strong><br />\r\n<strong>Đường k&iacute;nh nữ: 34mm</strong><br />\r\n<strong>Bề d&agrave;y mặt: 10mm</strong><br />\r\n<strong>Vỏ v&agrave; kh&oacute;a: Th&eacute;p kh&ocirc;ng gỉ mạ PVD</strong><br />\r\n<strong>Bộ m&aacute;y: Japan Automatic (CƠ)</strong><br />\r\n<strong>Mặt k&iacute;nh: Mineral Crystal</strong><br />\r\n<strong>D&acirc;y đeo: D&acirc;y cao su bọc da</strong><br />\r\n<strong>Chống nước 3ATM</strong></p>', '<p><strong>Chế Độ Bảo H&agrave;nh 12 Th&aacute;ng Lỗi 1 Đổi 1 Trong 7 Ng&agrave;y</strong><br />\r\n<strong>Hỗ Trợ Bảo H&agrave;nh Sản Phẩm Trọn Đời</strong><br />\r\n<strong>Miễn Ph&iacute; Giao H&agrave;ng To&agrave;n Quốc</strong><br />\r\n<strong>Nhận H&agrave;ng Kiểm Tra Trước Khi Thanh To&aacute;n</strong></p>\r\n\r\n<p><strong>Th&ocirc;ng số &ndash; Đồng hồ Hublot cặp m&aacute;y cơ</strong><br />\r\n<strong>Đường k&iacute;nh nam: 42mm</strong><br />\r\n<strong>Đường k&iacute;nh nữ: 34mm</strong><br />\r\n<strong>Bề d&agrave;y mặt: 10mm</strong><br />\r\n<strong>Vỏ v&agrave; kh&oacute;a: Th&eacute;p kh&ocirc;ng gỉ mạ PVD</strong><br />\r\n<strong>Bộ m&aacute;y: Japan Automatic (CƠ)</strong><br />\r\n<strong>Mặt k&iacute;nh: Mineral Crystal</strong><br />\r\n<strong>D&acirc;y đeo: D&acirc;y cao su bọc da</strong><br />\r\n<strong>Chống nước 3ATM</strong></p>', NULL, NULL, 0, '2021-10-24 23:28:18', '2021-10-24 23:28:18'),
(23, 'Đồng hồ Hublot cặp máy cơ Nhật Hublot Automatic màu đen Super Fake 34/42mm', 'dong-ho-hublot-cap-may-co-nhat-hublot-automatic-mau-den-super-fake-3442mm', 'uploads/product/1635143348_1632302673_52.jpg', 11, 1200000, 1000000, 23, 1, 0, 0, 52, NULL, NULL, NULL, NULL, 7, 0, '<p><strong>Chế Độ Bảo H&agrave;nh 12 Th&aacute;ng Lỗi 1 Đổi 1 Trong 7 Ng&agrave;y</strong><br />\r\n<strong>Hỗ Trợ Bảo H&agrave;nh Sản Phẩm Trọn Đời</strong><br />\r\n<strong>Miễn Ph&iacute; Giao H&agrave;ng To&agrave;n Quốc</strong><br />\r\n<strong>Nhận H&agrave;ng Kiểm Tra Trước Khi Thanh To&aacute;n</strong></p>\r\n\r\n<p><strong>Th&ocirc;ng số &ndash; Đồng hồ Hublot cặp m&aacute;y cơ</strong><br />\r\n<strong>Đường k&iacute;nh nam: 42mm</strong><br />\r\n<strong>Đường k&iacute;nh nữ: 34mm</strong><br />\r\n<strong>Bề d&agrave;y mặt: 10mm</strong><br />\r\n<strong>Vỏ v&agrave; kh&oacute;a: Th&eacute;p kh&ocirc;ng gỉ mạ PVD</strong><br />\r\n<strong>Bộ m&aacute;y: Japan Automatic (CƠ)</strong><br />\r\n<strong>Mặt k&iacute;nh: Mineral Crystal</strong><br />\r\n<strong>D&acirc;y đeo: D&acirc;y cao su bọc da</strong><br />\r\n<strong>Chống nước 3ATM</strong></p>', '<p><strong>Chế Độ Bảo H&agrave;nh 12 Th&aacute;ng Lỗi 1 Đổi 1 Trong 7 Ng&agrave;y</strong><br />\r\n<strong>Hỗ Trợ Bảo H&agrave;nh Sản Phẩm Trọn Đời</strong><br />\r\n<strong>Miễn Ph&iacute; Giao H&agrave;ng To&agrave;n Quốc</strong><br />\r\n<strong>Nhận H&agrave;ng Kiểm Tra Trước Khi Thanh To&aacute;n</strong></p>\r\n\r\n<p><strong>Th&ocirc;ng số &ndash; Đồng hồ Hublot cặp m&aacute;y cơ</strong><br />\r\n<strong>Đường k&iacute;nh nam: 42mm</strong><br />\r\n<strong>Đường k&iacute;nh nữ: 34mm</strong><br />\r\n<strong>Bề d&agrave;y mặt: 10mm</strong><br />\r\n<strong>Vỏ v&agrave; kh&oacute;a: Th&eacute;p kh&ocirc;ng gỉ mạ PVD</strong><br />\r\n<strong>Bộ m&aacute;y: Japan Automatic (CƠ)</strong><br />\r\n<strong>Mặt k&iacute;nh: Mineral Crystal</strong><br />\r\n<strong>D&acirc;y đeo: D&acirc;y cao su bọc da</strong><br />\r\n<strong>Chống nước 3ATM</strong></p>', NULL, NULL, 0, '2021-10-24 23:29:08', '2021-10-24 23:29:08'),
(24, 'Đồng hồ Burberry cặp dây da The Classic Round BU10104 và BU10001 LikeAuth', 'dong-ho-burberry-cap-day-da-the-classic-round-bu10104-va-bu10001-likeauth', 'uploads/product/1635143389_1632302712_53.jpg', 11, 1200000, 1000000, 24, 1, 0, 0, 52, NULL, NULL, NULL, NULL, 11, 0, '<p><strong>Chế Độ Bảo H&agrave;nh 12 Th&aacute;ng Lỗi 1 Đổi 1 Trong 7 Ng&agrave;y</strong><br />\r\n<strong>Hỗ Trợ Bảo H&agrave;nh Sản Phẩm Trọn Đời</strong><br />\r\n<strong>Miễn Ph&iacute; Giao H&agrave;ng To&agrave;n Quốc</strong><br />\r\n<strong>Nhận H&agrave;ng Kiểm Tra Trước Khi Thanh To&aacute;n</strong></p>\r\n\r\n<p><strong>Th&ocirc;ng số &ndash; Đồng hồ Burberry cặp Like Auth</strong><br />\r\n<strong>Đường k&iacute;nh nam: Nam 40mm</strong><br />\r\n<strong>Đường k&iacute;nh nữ: 32mm</strong><br />\r\n<strong>Bề d&agrave;y mặt: 9mm</strong><br />\r\n<strong>Bộ m&aacute;y: Swiss Made (Pin Thụy Sĩ)</strong><br />\r\n<strong>Vỏ v&agrave; kh&oacute;a: Th&eacute;p kh&ocirc;ng gỉ 316L</strong><br />\r\n<strong>Mặt k&iacute;nh: Sapphire chống xước</strong><br />\r\n<strong>D&acirc;y đeo: D&acirc;y da cao cấp</strong><br />\r\n<strong>Chống nước: 5ATM</strong></p>', '<p><strong>Chế Độ Bảo H&agrave;nh 12 Th&aacute;ng Lỗi 1 Đổi 1 Trong 7 Ng&agrave;y</strong><br />\r\n<strong>Hỗ Trợ Bảo H&agrave;nh Sản Phẩm Trọn Đời</strong><br />\r\n<strong>Miễn Ph&iacute; Giao H&agrave;ng To&agrave;n Quốc</strong><br />\r\n<strong>Nhận H&agrave;ng Kiểm Tra Trước Khi Thanh To&aacute;n</strong></p>\r\n\r\n<p><strong>Th&ocirc;ng số &ndash; Đồng hồ Burberry cặp Like Auth</strong><br />\r\n<strong>Đường k&iacute;nh nam: Nam 40mm</strong><br />\r\n<strong>Đường k&iacute;nh nữ: 32mm</strong><br />\r\n<strong>Bề d&agrave;y mặt: 9mm</strong><br />\r\n<strong>Bộ m&aacute;y: Swiss Made (Pin Thụy Sĩ)</strong><br />\r\n<strong>Vỏ v&agrave; kh&oacute;a: Th&eacute;p kh&ocirc;ng gỉ 316L</strong><br />\r\n<strong>Mặt k&iacute;nh: Sapphire chống xước</strong><br />\r\n<strong>D&acirc;y đeo: D&acirc;y da cao cấp</strong><br />\r\n<strong>Chống nước: 5ATM</strong></p>', NULL, NULL, 0, '2021-10-24 23:29:49', '2021-10-24 23:29:49'),
(25, 'DÂY DA CÁ SẤU PK-DD-CSLB-V1-S16D', 'day-da-ca-sau-pk-dd-cslb-v1-s16d', 'uploads/product/1635143516_1632302866_54.jpg', 11, 300000, 200000, 25, 1, 0, 0, 5, NULL, NULL, NULL, NULL, 0, 0, '<p>D&acirc;y Da C&aacute; Sấu&nbsp;L&oacute;t B&ograve; V&acirc;n Đốt Tre c&aacute;c Size&nbsp;16mm, 18mm, 20mm, 22mm, 24mm m&agrave;u&nbsp;Đen chất lượng</p>', '<p>D&acirc;y Da C&aacute; Sấu&nbsp;L&oacute;t B&ograve; V&acirc;n Đốt Tre c&aacute;c Size&nbsp;16mm, 18mm, 20mm, 22mm, 24mm m&agrave;u&nbsp;Đen chất lượng</p>', NULL, NULL, 0, '2021-10-24 23:31:56', '2021-10-24 23:31:56'),
(26, 'DÂY DA ĐÀ ĐIỂU PK-DD-DADIEU-S16D', 'day-da-da-dieu-pk-dd-dadieu-s16d', 'uploads/product/1635143563_1632303077_57.jpg', 11, 1200000, 1000000, 26, 1, 0, 0, 5, NULL, NULL, NULL, NULL, 0, 0, '<p>D&acirc;y đồng hồ chất liệu da Đ&agrave; Điểu, k&iacute;ch thước&nbsp;12mm, 14mm, 16mm, m&agrave;u&nbsp;đen chất lượng</p>', '<p>D&acirc;y đồng hồ chất liệu da Đ&agrave; Điểu, k&iacute;ch thước&nbsp;12mm, 14mm, 16mm, m&agrave;u&nbsp;đen chất lượng</p>', NULL, NULL, 0, '2021-10-24 23:32:43', '2021-10-24 23:32:43'),
(27, 'DÂY DA OGIVAL PK-DD-OGIVAL-V12-S20N', 'day-da-ogival-pk-dd-ogival-v12-s20n', 'uploads/product/1635143625_1632303117_58.jpg', 11, 1200000, 1000000, 27, 1, 1, 0, 5, NULL, NULL, NULL, NULL, 0, 0, '<p>D&acirc;y da đồng hồ Ogival&nbsp;chất liệu da B&ograve;, size 20mm, 22mm m&agrave;u n&acirc;u chất lượng tại Xwatch</p>', '<p>D&acirc;y da đồng hồ Ogival&nbsp;chất liệu da B&ograve;, size 20mm, 22mm m&agrave;u n&acirc;u chất lượng tại Xwatch</p>', NULL, NULL, 0, '2021-10-24 23:33:45', '2022-04-08 18:22:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hotline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `introduce` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `company`, `address`, `address2`, `image`, `phone`, `hotline`, `tax`, `facebook`, `email`, `introduce`, `created_at`, `updated_at`) VALUES
(1, 'Công Ty TNHH Hoàng Vinh .co,ltd', 'Q.Đống Đa , Hà Nội', 'Q.Long Biên, Hà Nội', 'uploads/setting/1590462650_logo.png', '0986346008', '18001166', '000010', 'https://www.facebook.com/didongthongminh.vn/', 'admin@gmail.com', NULL, NULL, '2020-05-25 21:19:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`, `avatar`, `is_active`) VALUES
(4, 'vũ ngọc phúc', 'phucbo9898@gmail.com', '$2y$10$5cbsEpIWGLEepXxFYH9E6OZK3GxG06owYeuv8ixlNxYkuwFTofl5m', 'JSqJCFNOJel3WThs4nhg6VeyGhE4FNDkYH2eKdoFkBFvkHrmBOg5sF77YdKI', '2021-10-24 22:35:53', '2022-03-19 02:03:47', 2, 'uploads/user/1635145178_MOM_1679.JPG', 0),
(5, 'Vũ Quốc Hải', 'vuquochai1971@gmail.com', '$2y$10$MLmrRDFJ338IcCwlhJlcI.czU.8qBm41XAGvg6p.2vI7uw/.RG.4a', NULL, '2021-10-24 23:59:18', '2021-10-24 23:59:18', 3, NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vendors`
--

CREATE TABLE `vendors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_active` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `vendors`
--

INSERT INTO `vendors` (`id`, `name`, `slug`, `email`, `phone`, `image`, `website`, `address`, `position`, `is_active`, `created_at`, `updated_at`) VALUES
(4, 'Cellphones', 'cellphones', 'cskh@cellphones.com.vn', '1800.2097', 'uploads/vendor/1584935240_logo.jpg', 'https://didongviet.vn/', 'Việt Nam', 1, 1, '2020-03-22 20:47:20', '2020-03-22 20:49:25'),
(5, 'Di động Việt', 'di-dong-viet', 'lienhe@didongviet.vn', '1800 6018', 'uploads/vendor/1584935377_logo-ddv-full-03.png', 'https://didongviet.vn/', 'Việt Nam', 2, 1, '2020-03-22 20:49:37', '2020-03-22 20:49:37'),
(6, 'Thế Giới Di Động', 'the-gioi-di-dong', 'cskh@thegioididong.com', '1800 1060', 'uploads/vendor/1584935523_Logo-Thegioididong-945x709.jpg', 'https://www.thegioididong.com/', 'Việt Nam', 3, 1, '2020-03-22 20:52:03', '2020-03-22 20:52:03'),
(7, 'Di Động Thông Minh', 'di-dong-thong-minh', NULL, '0945.722.268', NULL, 'https://didongthongminh.vn/', '119 Thái Thịnh, Thịnh Quang, Đống Đa, Hà Nội', 4, 1, '2020-03-22 20:54:05', '2020-03-22 20:54:05'),
(8, 'FPT Shop', 'fpt-shop', 'fptshop@fpt.com.vn', '1800 6601', 'uploads/vendor/1584935728_637133160350737542_201407171129187887_1378267132_fptshop-ver1-0-logo-color-bg-black.jpg', 'https://fptshop.com.vn/', 'Việt Nam', 5, 1, '2020-03-22 20:55:28', '2020-03-22 20:55:28'),
(9, 'Mac One', 'mac-one', 'lienhe@macone.vn', '0936096900', 'uploads/vendor/1584947052_xLogo-MacOne.png.pagespeed.ic.vtZRQ1sWEu.jpg', 'https://macone.vn/', '113 Hoàng Cầu, Q. Đống Đa, Hà Nội ( 68 Hoàng Cầu)', 6, 1, '2020-03-23 00:04:12', '2020-03-23 00:04:12'),
(10, 'Tiki', 'tiki', 'marketing@tiki.vn', '19006035', NULL, 'https://tiki.vn/', 'Ho Chi Minh City', 7, 1, '2020-03-23 00:31:28', '2020-03-23 00:31:28'),
(11, 'Khác', 'khac', NULL, NULL, NULL, NULL, NULL, 5, 1, '2020-04-11 21:53:06', '2020-04-11 21:53:06');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `banners_slug_unique` (`slug`) USING BTREE;

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `brands_slug_unique` (`slug`) USING BTREE;

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `categories_slug_unique` (`slug`) USING BTREE;

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`) USING BTREE;

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `products_slug_index` (`slug`) USING BTREE;

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE;

--
-- Chỉ mục cho bảng `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `vendors_slug_unique` (`slug`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
