-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2023 at 04:50 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thoitrang1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_anhtrangbia`
--

CREATE TABLE `tbl_anhtrangbia` (
  `id_anhtrangbia` int(11) NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `thutu` int(11) NOT NULL,
  `tinhtrang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_anhtrangbia`
--

INSERT INTO `tbl_anhtrangbia` (`id_anhtrangbia`, `hinhanh`, `thutu`, `tinhtrang`) VALUES
(6, '1638623614_anh BTL to.jpg', 1, 1),
(7, '1638623621_Anh BTL to1.jpg', 2, 1),
(8, '1638623655_slideshow_3.jpg', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart_details`
--

CREATE TABLE `tbl_cart_details` (
  `id_cart_details` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cart_details`
--

INSERT INTO `tbl_cart_details` (`id_cart_details`, `code_cart`, `id_sanpham`, `soluongmua`) VALUES
(48, '6655', 41, 1),
(49, '176', 42, 1),
(50, '8771', 42, 1),
(51, '4132', 49, 1),
(52, '3136', 49, 6),
(53, '3876', 40, 1),
(54, '3876', 59, 5),
(55, '2756', 50, 5),
(56, '7439', 47, 1),
(57, '8953', 55, 1),
(58, '9665', 40, 1),
(59, '1870', 40, 1),
(60, '1870', 41, 1),
(61, '1870', 55, 1),
(62, '3628', 41, 1),
(63, '3628', 42, 1),
(64, '6740', 40, 1),
(65, '6740', 42, 2),
(66, '4165', 41, 1),
(67, '4165', 42, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(15, 'Quần', 3),
(18, 'Áo', 2),
(27, 'Phụ kiện', 3),
(39, 'Giày', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_giohang`
--

CREATE TABLE `tbl_giohang` (
  `id_giohang` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `cart_status` int(11) NOT NULL,
  `stime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_giohang`
--

INSERT INTO `tbl_giohang` (`id_giohang`, `id_khachhang`, `code_cart`, `cart_status`, `stime`) VALUES
(59, 22, '6740', 0, '2023-03-10 09:01:06'),
(60, 22, '4165', 0, '2023-03-15 09:56:53'),
(61, 25, '2735', 0, '2023-03-15 17:40:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_khackhang`
--

CREATE TABLE `tbl_khackhang` (
  `id_khachhang` int(11) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `dienthoai` varchar(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_khackhang`
--

INSERT INTO `tbl_khackhang` (`id_khachhang`, `tenkhachhang`, `diachi`, `dienthoai`, `email`, `matkhau`, `role_id`) VALUES
(19, 'trung tran', 'trung', '0365746456', 'trung@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1),
(21, 'trung', '123', '0123456789', 'trung@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 4),
(22, 'trungtran', 'DN', '0123456789', 'trung1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 4),
(23, 'tu', 'DN', '0123456789', 'tu@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 2),
(24, 'trung nhan vien', 'DN', '0123456789', 'trungnv@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 3),
(25, 'khai', 'DN', '0123456789', 'khai@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lienhe`
--

CREATE TABLE `tbl_lienhe` (
  `id_lienhe` int(11) NOT NULL,
  `lienhe` varchar(255) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_lienhe`
--

INSERT INTO `tbl_lienhe` (`id_lienhe`, `lienhe`, `thutu`) VALUES
(9, 'Trần Ngọc Trung - 1911065436', 1),
(10, 'LÊ VY TÚ - 1911065070', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_role`
--

CREATE TABLE `tbl_role` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_role`
--

INSERT INTO `tbl_role` (`id`, `name`, `id_role`) VALUES
(1, 'Quản Lý', 2),
(2, 'Nhân viên', 3),
(5, 'Khách hàng', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(250) NOT NULL,
  `masp` varchar(100) NOT NULL,
  `giasp` varchar(50) NOT NULL,
  `km` int(11) NOT NULL,
  `giagockm` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `tomtat` tinytext NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masp`, `giasp`, `km`, `giagockm`, `soluong`, `hinhanh`, `tomtat`, `tinhtrang`, `id_danhmuc`) VALUES
(40, 'CORDUROY JACKET', '01', '680000', 0, 300000, 6, '1638443230_a1.jpg', '<p>NEEDS OF WISDOM&reg;</p>\r\n\r\n<p>Streetwear</p>\r\n\r\n<p>Based in Saigon</p>\r\n\r\n<p>Made in Vietnam</p>\r\n', 1, 18),
(41, 'HADES OVERDYED LAYERED HOODIE', '02', '640000', 0, 300000, 3, '1638443268_a2.jpg', '<p>NEEDS OF WISDOM&reg;</p>\r\n\r\n<p>Streetwear</p>\r\n\r\n<p>Based in Saigon</p>\r\n\r\n<p>Made in Vietnam</p>\r\n', 1, 18),
(42, 'ÁO LẠNH', '06', '400000', 10, 200000, 2, '1638441261_a3.jpg', '<p>Chất cốt ton</p>\r\n\r\n<p>NEEDS OF WISDOM&reg;</p>\r\n\r\n<p>Streetwear</p>\r\n\r\n<p>Based in Saigon</p>\r\n\r\n<p>Made in Vietnam</p>\r\n', 1, 18),
(44, 'HADES OVERDYED LAYERED', '45', '600000', 0, 400000, 3, '1638443532_a11.jpg', '<p>NEEDS OF WISDOM&reg;</p>\r\n\r\n<p>Streetwear</p>\r\n\r\n<p>Based in Saigon</p>\r\n\r\n<p>Made in Vietnam</p>\r\n', 1, 18),
(48, 'RETRO LOFI POLO', '888', '420000', 1, 100000, 3, '1638952512_sadasdasd.jpg', '<p>NEEDS OF WISDOM&reg;</p>\r\n\r\n<p>Streetwear</p>\r\n\r\n<p>Based in Saigon</p>\r\n\r\n<p>Made in Vietnam</p>\r\n', 1, 18),
(49, 'hades ORGANIC WASHED GREY BACKPACK', '3434', '250000', 7, 100000, 1, '1638953004_sdasdfsfs.jpg', '<p>NEEDS OF WISDOM&reg;</p>\r\n\r\n<p>Streetwear</p>\r\n\r\n<p>Based in Saigon</p>\r\n\r\n<p>Made in Vietnam</p>\r\n', 1, 27),
(50, 'HADES TRACK SHORTS', 'S21121SB', '380000', 10, 200000, 3, '1640419721_1512_18_1d40cf86f12e49f9b5403fa98c530b40.jpg', '<p>NEEDS OF WISDOM&reg;</p>\r\n\r\n<p>Streetwear</p>\r\n\r\n<p>Based in Saigon</p>\r\n\r\n<p>Made in Vietnam</p>\r\n', 1, 15),
(51, 'LOGO SOCKS', 'V11221W', '90000', 0, 20000, 100, '1640419811_vo_trang_cedfa98f1a784d25aa5703ea7cabffe9.jpg', '<p>NEEDS OF WISDOM&reg;</p>\r\n\r\n<p>Streetwear</p>\r\n\r\n<p>Based in Saigon</p>\r\n\r\n<p>Made in Vietnam</p>\r\n', 1, 27),
(52, 'HADES PATTERN BASEBALL CAP', 'C10621B', '280000', 5, 200000, 10, '1640419872_2310_10_ea0da18c721a41fba23e055662c164e2.jpg', '<p>NEEDS OF WISDOM&reg;</p>\r\n\r\n<p>Streetwear</p>\r\n\r\n<p>Based in Saigon</p>\r\n\r\n<p>Made in Vietnam</p>\r\n', 1, 27),
(54, 'LOGO CAP', 'LCB0001', '200000', 5, 100000, 10, '1640420067_2610_2_6c5ef29d04754161bcf8abec6144714d.jpg', '<p>NEEDS OF WISDOM&reg;</p>\r\n\r\n<p>Streetwear</p>\r\n\r\n<p>Based in Saigon</p>\r\n\r\n<p>Made in Vietnam</p>\r\n', 1, 18),
(55, 'SAIGON VINTAGE WASH TEE', 'T41221SM', '500000', 10, 200000, 10, '1640420118_sgnau_1_ec53052094c943b5be1d7b6568610603.jpg', '<p>NEEDS OF WISDOM&reg;</p>\r\n\r\n<p>Streetwear</p>\r\n\r\n<p>Based in Saigon</p>\r\n\r\n<p>Made in Vietnam</p>\r\n', 1, 18),
(60, 'B31 RUNNER SNEAKER', 'G1', '20000000', 0, 0, 10, '1678684620_G1.png', '<p>Black Technical Mesh and Anthracite Gray Rubber with Warped Cannage Motif</p>\r\n', 1, 39);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_thongke`
--

CREATE TABLE `tbl_thongke` (
  `id` int(11) NOT NULL,
  `ngaydat` varchar(30) NOT NULL,
  `donhang` int(11) NOT NULL,
  `doanhthu` varchar(100) NOT NULL,
  `gianhap` varchar(110) NOT NULL,
  `soluongban` int(11) NOT NULL,
  `loinhuan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_anhtrangbia`
--
ALTER TABLE `tbl_anhtrangbia`
  ADD PRIMARY KEY (`id_anhtrangbia`);

--
-- Indexes for table `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  ADD PRIMARY KEY (`id_cart_details`);

--
-- Indexes for table `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Indexes for table `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  ADD PRIMARY KEY (`id_giohang`);

--
-- Indexes for table `tbl_khackhang`
--
ALTER TABLE `tbl_khackhang`
  ADD PRIMARY KEY (`id_khachhang`);

--
-- Indexes for table `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  ADD PRIMARY KEY (`id_lienhe`);

--
-- Indexes for table `tbl_role`
--
ALTER TABLE `tbl_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- Indexes for table `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_anhtrangbia`
--
ALTER TABLE `tbl_anhtrangbia`
  MODIFY `id_anhtrangbia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  MODIFY `id_cart_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  MODIFY `id_giohang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `tbl_khackhang`
--
ALTER TABLE `tbl_khackhang`
  MODIFY `id_khachhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  MODIFY `id_lienhe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_role`
--
ALTER TABLE `tbl_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
