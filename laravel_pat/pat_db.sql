-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 11, 2023 lúc 02:49 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `pat_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_brand`
--

CREATE TABLE `db_brand` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `sort_order` int(10) UNSIGNED NOT NULL,
  `metakey` varchar(255) NOT NULL,
  `metadesc` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `create_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `update_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_brand`
--

INSERT INTO `db_brand` (`id`, `name`, `slug`, `image`, `sort_order`, `metakey`, `metadesc`, `created_at`, `updated_at`, `create_by`, `update_by`, `status`) VALUES
(2, 'BANDAI', 'bandai', 'sdc.png', 0, 'bandai', 'Bandai', '2023-10-04 00:13:03', '2023-10-05 06:26:57', 1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_category`
--

CREATE TABLE `db_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(10) UNSIGNED NOT NULL,
  `metakey` varchar(255) NOT NULL,
  `metadesc` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_category`
--

INSERT INTO `db_category` (`id`, `name`, `slug`, `image`, `parent_id`, `sort_order`, `metakey`, `metadesc`, `created_at`, `updated_at`, `created_by`, `updated_by`, `status`) VALUES
(1, 'Gundam', 'gundam', 'gundam.png', 0, 0, 'Gundam', '‘Gundam plastic model’, Mô hình Gundam bằng nhựa.', '2023-10-04 01:35:31', '2023-10-04 01:35:31', 1, 1, 1),
(4, 'MG', 'mg', 'mg.png', 1, 0, 'mg', 'MG', '2023-10-10 22:01:56', '2023-10-10 22:15:25', 1, 1, 1),
(6, 'HG', 'hg', 'hg.png', 1, 0, 'hg', 'HG', '2023-10-10 22:12:42', '2023-10-10 22:15:30', 1, 1, 1),
(7, '1-100', '1-100', '1100.png', 1, 1, '1/100', '1/100', '2023-10-10 22:44:17', '2023-10-11 00:57:53', 1, 1, 1),
(8, 'SD_EXS', 'sd-exs', 'sd-exs.png', 1, 2, 'sd_exs', 'SD_EXS', '2023-10-10 23:01:08', '2023-10-10 23:01:08', 1, NULL, 1),
(9, 'RG', 'rg', 'rg.png', 0, 3, 'rg', 'RG', '2023-10-11 00:06:28', '2023-10-11 00:06:28', 1, NULL, 1),
(10, 'PG', 'pg', 'pg.png', 0, 4, 'pg', 'PG', '2023-10-11 00:07:18', '2023-10-11 00:07:18', 1, NULL, 1),
(11, 'SDCS', 'sdcs', 'sdcs.png', 0, 5, 'scds', 'SDCS', '2023-10-11 00:07:45', '2023-10-11 00:07:45', 1, NULL, 1),
(12, 'Mô hình mới', 'mo-hinh-moi', 'mo-hinh-moi.jpg', 0, 1, 'Mô hình mới', 'Những sản phẩm mới vừa được nhập hàng về.', '2023-10-11 00:13:16', '2023-10-11 00:37:28', 1, 1, 1),
(13, 'SALE', 'sale', 'sale.png', 0, 1, 'sale', 'Sale', '2023-10-11 00:17:52', '2023-10-11 00:20:37', 1, 1, 1),
(14, 'HOT', 'hot', 'hot.jpg', 0, 1, 'hot', 'Những sản phẩm bán chạy', '2023-10-11 00:50:51', '2023-10-11 00:50:51', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_config`
--

CREATE TABLE `db_config` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `zalo` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `youtobe` varchar(255) NOT NULL,
  `metadesc` varchar(255) NOT NULL,
  `metekey` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `create_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `update_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_contact`
--

CREATE TABLE `db_contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `content` mediumtext NOT NULL,
  `replay_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `update_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_menu`
--

CREATE TABLE `db_menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `table_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `create_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `update_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_order`
--

CREATE TABLE `db_order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `create_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `update_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_orderdetail`
--

CREATE TABLE `db_orderdetail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  `qty` int(10) UNSIGNED NOT NULL,
  `amount` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_post`
--

CREATE TABLE `db_post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `topic_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `detail` mediumtext NOT NULL,
  `image` varchar(1000) NOT NULL,
  `type` varchar(100) NOT NULL,
  `metakey` varchar(255) NOT NULL,
  `metadesc` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_product`
--

CREATE TABLE `db_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `price` double(8,2) NOT NULL,
  `price_sale` double(8,2) NOT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `qty` int(10) UNSIGNED NOT NULL,
  `detail` mediumtext NOT NULL,
  `metakey` varchar(255) NOT NULL,
  `metadesc` varchar(1000) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `update_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_product`
--

INSERT INTO `db_product` (`id`, `category_id`, `brand_id`, `name`, `slug`, `price`, `price_sale`, `image`, `qty`, `detail`, `metakey`, `metadesc`, `created_at`, `updated_at`, `created_by`, `update_by`, `status`) VALUES
(1, 7, 2, '1/100 FULL MECHANICS GAT-X252 FORBIDDEN GUNDAM', '1100-full-mechanics-gat-x252-forbidden-gundam', 5566.00, 5066.00, '1100-full-mechanics-gat-x252-forbidden-gundam.jpg', 11, 'a', 'GUNDAM', 'phẩm tuyệt vời cho người chơi Gunpla, đặc biệt là fan Gundam SEED. Mô hình có thiết kế kiểu dáng cơ khí đẹp mắt, độ chi tiết được đẩy cao tới từng khu vực nhỏ, thậm chí là cả mặt trong của các đầu van xả', '2023-10-11 00:02:55', '2023-10-11 00:02:55', 1, NULL, 1),
(2, 7, 2, 'FULL MECHANICS 1/100 GUNDAM AERIAL', 'full-mechanics-1100-gundam-aerial', 55.66, 50.66, 'full-mechanics-1100-gundam-aerial.jpg', 12, 'Tỷ lệ 1/100, độ chi tiết cao, chuyển động linh hoạt\r\nRáp theo kiểu bấm khớp, không cần dùng keo dán\r\nThuộc Series: Gundam the Witch from Mercury\r\nTrang bị: Escutcheon, Beam Rifle, Beam Saber\r\nDecal dán (Xem hướng dẫn dán decal)\r\nCó thể sử dụng thêm Action Base hỗ trợ tạo dáng (Mua riêng tại đây)\r\nSản phẩm Gunpla chính hãng của Bandai', 'GUNDAM', 'XVX-016 Gundam Aerial - Full Mechanics 1/100 bán ở nShop mang đến cho bạn một Gundam Aerial to lớn và siêu chi tiết, đẹp tới từng điểm nhỏ. Công nghệ ghép đa lớp được tận dụng tối đa để tái hiện chân thực nhất các bộ phận tỏa sáng đặc trưng trên cơ thể Gundam Aerial, điều mà bản HG chưa làm được. Hệ khớp vô cùng linh hoạt cũng giúp mô hình tạo được vô số kiểu dáng sinh động.', '2023-10-11 00:03:17', '2023-10-11 00:03:17', 1, NULL, 1),
(3, 6, 2, 'HG DEMI BARDING', 'hg-demi-barding', 55.66, 50.66, 'hg-demi-barding.jpg', 13, 'A', 'GUNDAM', 'A', '2023-10-11 00:04:01', '2023-10-11 00:04:01', 1, NULL, 1),
(4, 6, 2, 'HG Gundam Lfrith Ur', 'hg-gundam-lfrith-ur', 55.66, 50.66, 'hg-gundam-lfrith-ur.jpg', 6, 'A', 'GUNDAM', 'A', '2023-10-11 00:04:09', '2023-10-11 00:04:09', 1, NULL, 1),
(5, 6, 2, 'HG Gundvolva', 'hg-gundvolva', 55.66, 50.66, 'hg-gundvolva.jpg', 7, 'A', 'GUNDAM', 'A', '2023-10-11 00:04:25', '2023-10-11 00:04:25', 1, NULL, 1),
(6, 6, 2, 'HG Heindree Sturm', 'hg-heindree-sturm', 55.66, 50.66, 'hg-heindree-sturm.jpg', 8, 'A', 'GUNDAM', 'A', '2023-10-11 00:05:02', '2023-10-11 00:05:02', 1, NULL, 1),
(7, 4, 2, 'MG GN-001/hs-A01 Gundam Avalanche Exia Dash', 'mg-gn-001hs-a01-gundam-avalanche-exia-dash', 55.66, 50.66, 'mg-gn-001hs-a01-gundam-avalanche-exia-dash.jpg', 111, 'A', 'GUNDAM', 'A', '2023-10-11 00:04:39', '2023-10-11 00:04:39', 1, NULL, 1),
(8, 4, 2, 'MG GN-001/hs-A01 Gundam Avalanche Exia Dash', 'mg-gn-001hs-a01-gundam-avalanche-exia-dash', 55.66, 50.66, 'mg-gn-001hs-a01-gundam-avalanche-exia-dash.jpg', 111, 'A', 'GUNDAM', 'A', '2023-10-11 00:04:46', '2023-10-11 00:04:46', 1, NULL, 1),
(9, 4, 2, 'MG MSZ-006 Zeta Gundam Ver.Ka', 'mg-msz-006-zeta-gundam-verka', 55.66, 50.66, 'mg-msz-006-zeta-gundam-verka.jpg', 44, 'A', 'GUNDAM', 'A', '2023-10-11 00:05:12', '2023-10-11 00:05:12', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_productstore`
--

CREATE TABLE `db_productstore` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `price` double NOT NULL,
  `qty` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_product_sale`
--

CREATE TABLE `db_product_sale` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `price_sale` double NOT NULL,
  `qty` int(10) UNSIGNED NOT NULL,
  `date_begin` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_slider`
--

CREATE TABLE `db_slider` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `link` varchar(1000) NOT NULL,
  `sort_order` tinyint(3) UNSIGNED NOT NULL,
  `position` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `create_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `update_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_topic`
--

CREATE TABLE `db_topic` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL,
  `metakey` varchar(255) NOT NULL,
  `metadesc` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_user`
--

CREATE TABLE `db_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `roles` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `create_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `update_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_05_31_112034_create_post_table', 1),
(3, '2023_05_31_112044_create_topic_table', 1),
(4, '2023_09_21_125219_create_category_table', 1),
(5, '2023_09_21_125410_create_contact_table', 1),
(6, '2023_09_21_125429_create_menu_table', 1),
(7, '2023_09_21_125520_create_order_table', 1),
(8, '2023_09_21_125705_create_orderdetail_table', 1),
(9, '2023_09_21_125727_create_product_table', 1),
(10, '2023_09_21_125753_create_slider_table', 1),
(11, '2023_09_21_125812_create_user_table', 1),
(12, '2023_09_23_083536_create_brand_table', 1),
(13, '2023_10_11_103438_create_product_sale_table', 2),
(14, '2023_10_11_123310_create_productstore', 3),
(15, '2023_10_11_123521_create_config_table', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `db_brand`
--
ALTER TABLE `db_brand`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_category`
--
ALTER TABLE `db_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_config`
--
ALTER TABLE `db_config`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_contact`
--
ALTER TABLE `db_contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_menu`
--
ALTER TABLE `db_menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_order`
--
ALTER TABLE `db_order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_post`
--
ALTER TABLE `db_post`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_product`
--
ALTER TABLE `db_product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_productstore`
--
ALTER TABLE `db_productstore`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_product_sale`
--
ALTER TABLE `db_product_sale`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_slider`
--
ALTER TABLE `db_slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_topic`
--
ALTER TABLE `db_topic`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `db_brand`
--
ALTER TABLE `db_brand`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `db_category`
--
ALTER TABLE `db_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `db_config`
--
ALTER TABLE `db_config`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `db_contact`
--
ALTER TABLE `db_contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `db_menu`
--
ALTER TABLE `db_menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `db_order`
--
ALTER TABLE `db_order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `db_post`
--
ALTER TABLE `db_post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `db_product`
--
ALTER TABLE `db_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `db_productstore`
--
ALTER TABLE `db_productstore`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `db_product_sale`
--
ALTER TABLE `db_product_sale`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `db_slider`
--
ALTER TABLE `db_slider`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `db_topic`
--
ALTER TABLE `db_topic`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `db_user`
--
ALTER TABLE `db_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
