-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2024 at 02:10 AM
-- Server version: 8.0.35
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gmart`
--

-- --------------------------------------------------------

--
-- Table structure for table `anhsp`
--

CREATE TABLE `anhsp` (
  `MaSP` int NOT NULL,
  `Anh1` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Anh2` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Anh3` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Anh4` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `anhsp`
--

INSERT INTO `anhsp` (`MaSP`, `Anh1`, `Anh2`, `Anh3`, `Anh4`) VALUES
(10, '1.png', '1.png', '1.png', '1.png'),
(75, '2.png', '2.png', '2.png', '2.png'),
(11, '3.png', '3.png', '3.png', '3.png'),
(12, '4.png', '4.png', '4.png', '4.png'),
(53, '5.png', '5.png', '5.png', '5.png'),
(56, '6.png', '6.png', '6.png', '6.png'),
(76, '7.png', '7.png', '7.png', '7.png'),
(54, 'banh.png', 'banh.png', 'banh.png', 'banh.png'),
(55, 'banhmy.png', 'banhmy.png', 'banhmy.png', 'banhmy.png'),
(70, 'cachua.png', 'cachua.png', 'cachua.png', 'cachua.png'),
(94, 'cam.jpg', 'cam.jpg', 'cam.jpg', 'cam.jpg'),
(71, 'khoaitay.png', 'khoaitay.png', 'khoaitay.png', 'khoaitay.png'),
(95, 'light.jpg', 'light.jpg', 'light.jpg', 'light.jpg'),
(77, 'milk.png', 'milk.png', 'milk.png', 'milk.png'),
(72, 'nut.png', 'nut.png', 'nut.png', 'nut.png'),
(73, 'otxanh.png', 'otxanh.png', 'otxanh.png', 'otxanh.png'),
(74, 'peanut.png', 'peanut.png', 'peanut.png', 'peanut.png'),
(69, 'phomai.png', 'phomai.png', 'phomai.png', 'phomai.png');

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `MaBL` int NOT NULL,
  `MaSP` int NOT NULL,
  `MaKH` int NOT NULL,
  `NoiDung` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `ThoiGian` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `binhluan`
--

INSERT INTO `binhluan` (`MaBL`, `MaSP`, `MaKH`, `NoiDung`, `ThoiGian`) VALUES
(21, 5, 16, 'ok nha', '2024-01-15 18:16:35'),
(22, 70, 16, 'ok', '2024-01-17 03:32:36');

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MaHD` int NOT NULL,
  `MaSP` int NOT NULL,
  `SoLuong` int NOT NULL,
  `DonGia` decimal(10,0) NOT NULL,
  `ThanhTien` decimal(10,0) NOT NULL,
  `Size` int NOT NULL,
  `MaMau` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`MaHD`, `MaSP`, `SoLuong`, `DonGia`, `ThanhTien`, `Size`, `MaMau`) VALUES
(91, 11, 1, 1650000, 1650000, 42, 'none'),
(92, 70, 2, 2100000, 4200000, 41, 'Trắng'),
(93, 70, 1, 2100000, 2100000, 40, 'Đen - Trắng'),
(94, 53, 2, 5500, 11000, 42, 'none'),
(95, 11, 1, 170000, 170000, 39, 'none');

-- --------------------------------------------------------

--
-- Table structure for table `chitietsanpham`
--

CREATE TABLE `chitietsanpham` (
  `MaSP` int NOT NULL,
  `MaSize` int NOT NULL,
  `MaMau` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `SoLuong` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `chitietsanpham`
--

INSERT INTO `chitietsanpham` (`MaSP`, `MaSize`, `MaMau`, `SoLuong`) VALUES
(53, 42, 'none', 491),
(54, 36, 'Đen ', 500),
(54, 37, 'Đen ', 500),
(54, 38, 'Đen ', 500),
(54, 39, 'Đen ', 500),
(54, 40, 'Đen ', 500),
(54, 41, 'Đen ', 500),
(54, 42, 'Đen ', 496),
(54, 43, 'Đen ', 500),
(55, 39, 'Đen ', 194),
(55, 40, 'Đen ', 200),
(55, 41, 'Đen ', 200),
(70, 39, 'Đen - Trắng', 100),
(70, 39, 'Trắng', 98),
(70, 40, 'Đen - Trắng', 99),
(70, 40, 'Trắng', 100),
(70, 41, 'Đen - Trắng', 100),
(70, 41, 'Trắng', 98),
(71, 40, 'Đen ', 100),
(71, 41, 'Đen ', 95),
(71, 42, 'Đen ', 100),
(72, 39, 'Đen - Trắng', 100),
(72, 39, 'Trắng', 200),
(72, 40, 'Đen - Trắng', 99),
(72, 40, 'Trắng', 200),
(72, 41, 'Đen - Trắng', 100),
(72, 41, 'Trắng', 200),
(73, 36, 'Đen ', 100),
(73, 37, 'Đen ', 100),
(73, 38, 'Đen ', 100),
(73, 39, 'Đen ', 100),
(73, 40, 'Đen ', 100),
(73, 41, 'Đen ', 100),
(73, 42, 'Đen ', 100),
(73, 43, 'Đen ', 100),
(74, 38, 'Đen - Trắng', 100),
(74, 39, 'Đen - Trắng', 100),
(74, 40, 'Đen - Trắng', 100),
(74, 41, 'Đen - Trắng', 100),
(76, 38, 'Đen ', 95),
(76, 38, 'Trắng', 40),
(76, 39, 'Đen ', 99),
(76, 39, 'Trắng', 40),
(76, 40, 'Đen ', 100),
(76, 40, 'Trắng', 40),
(76, 41, 'Đen ', 100),
(76, 41, 'Trắng', 40),
(76, 42, 'Đen ', 100),
(76, 42, 'Trắng', 40),
(77, 39, 'Đen - Trắng', 500),
(77, 40, 'Đen - Trắng', 500),
(77, 41, 'Đen - Trắng', 500),
(94, 36, 'Hồng', 0),
(94, 40, 'Hồng', 0),
(94, 41, 'Hồng', 0);

--
-- Triggers `chitietsanpham`
--
DELIMITER $$
CREATE TRIGGER `tongsl` AFTER UPDATE ON `chitietsanpham` FOR EACH ROW UPDATE sanpham SET SoLuong= (SELECT SUM(SoLuong) from chitietsanpham WHERE MaSP = NEW.MaSP) WHERE MaSP = NEW.MaSP
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tongsl_del` AFTER DELETE ON `chitietsanpham` FOR EACH ROW UPDATE sanpham SET SoLuong= (SELECT SUM(SoLuong) from chitietsanpham WHERE MaSP = OLD.MaSP) WHERE MaSP = OLD.MaSP
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tongsl_insert` AFTER INSERT ON `chitietsanpham` FOR EACH ROW UPDATE sanpham SET SoLuong= (SELECT SUM(SoLuong) from chitietsanpham WHERE MaSP = NEW.MaSP) WHERE MaSP = NEW.MaSP
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `MaDM` int NOT NULL,
  `TenDM` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`MaDM`, `TenDM`) VALUES
(1, 'Sản Phẩm Nổi Bật'),
(2, 'Sản Phẩm Mới'),
(3, 'Sản Phẩm bán chạy');

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` int NOT NULL,
  `MaKH` int NOT NULL,
  `MaNV` int DEFAULT NULL,
  `NgayDat` datetime DEFAULT CURRENT_TIMESTAMP,
  `NgayGiao` datetime DEFAULT NULL,
  `TinhTrang` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `TongTien` decimal(10,0) NOT NULL,
  `MaNVGH` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`MaHD`, `MaKH`, `MaNV`, `NgayDat`, `NgayGiao`, `TinhTrang`, `TongTien`, `MaNVGH`) VALUES
(91, 16, 3, '2024-01-17 00:21:46', '2024-01-18 00:22:57', 'hoàn thành', 1650000, '3'),
(92, 16, 3, '2024-01-17 00:22:40', '2024-01-18 00:22:56', 'hoàn thành', 6800000, '3'),
(93, 16, 3, '2024-01-17 03:36:57', '2024-01-18 11:02:10', 'hoàn thành', 2100000, '3'),
(94, 16, 3, '2024-01-17 18:42:42', '2024-01-18 18:45:03', 'hoàn thành', 11000, '3'),
(95, 16, 3, '2024-01-17 18:44:10', '2024-01-18 18:45:02', 'hoàn thành', 170000, '3');

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKH` int NOT NULL,
  `TenKH` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `SDT` bigint NOT NULL,
  `DiaChi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `MatKhau` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `TenKH`, `Email`, `SDT`, `DiaChi`, `MatKhau`) VALUES
(16, 'Phuc', 'phu@gmail.com', 1234567890, 'HD2', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `MaKM` int NOT NULL,
  `TenKM` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `MoTa` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `KM_PT` int DEFAULT NULL,
  `TienKM` decimal(10,0) DEFAULT NULL,
  `NgayBD` date DEFAULT NULL,
  `NgayKT` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `khuyenmai`
--

INSERT INTO `khuyenmai` (`MaKM`, `TenKM`, `MoTa`, `KM_PT`, `TienKM`, `NgayBD`, `NgayKT`) VALUES
(6, ' Minh Phúc dtr', 'sl', 50, 20000, '2024-01-18', '2024-01-26'),
(7, 'Sale off', 'off', 50, 2000, '2024-01-15', '2024-02-01');

-- --------------------------------------------------------

--
-- Table structure for table `mau`
--

CREATE TABLE `mau` (
  `MaMau` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL DEFAULT 'none'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `mau`
--

INSERT INTO `mau` (`MaMau`) VALUES
('Đen '),
('Đen - Trắng'),
('Đỏ'),
('Hồng'),
('none'),
('Trắng'),
('Vàng'),
('Xanh');

-- --------------------------------------------------------

--
-- Table structure for table `nguoinhan`
--

CREATE TABLE `nguoinhan` (
  `MaHD` int NOT NULL,
  `TenNN` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `DiaChiNN` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `SDTNN` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `nguoinhan`
--

INSERT INTO `nguoinhan` (`MaHD`, `TenNN`, `DiaChiNN`, `SDTNN`) VALUES
(91, 'Phuc', 'HD2', 1234567890),
(92, 'Phuc', 'HD2', 1234567890),
(93, 'Phuc', 'HD2', 1234567890),
(94, 'Phuc', 'HD2', 1234567890),
(95, 'Phuc', 'HD2', 1234567890);

-- --------------------------------------------------------

--
-- Table structure for table `nhacc`
--

CREATE TABLE `nhacc` (
  `MaNCC` int NOT NULL,
  `TenNCC` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `nhacc`
--

INSERT INTO `nhacc` (`MaNCC`, `TenNCC`) VALUES
(1, 'Bánh'),
(2, 'Thức uống'),
(3, 'Gia vị'),
(4, 'Rau củ');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNV` int NOT NULL,
  `TenNV` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `SDT` int NOT NULL,
  `DiaChi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `MatKhau` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Quyen` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`MaNV`, `TenNV`, `Email`, `SDT`, `DiaChi`, `MatKhau`, `Quyen`) VALUES
(3, 'Admin', 'admin@gmail.com', 905027527, 'Số 451 Hoàng Diệu ', 'admin', 1),
(2, 'Nhân Viên Bán Hàng ', 'NVBH@gmail.com', 123456789, 'Thủ Đức', '123456', 4),
(1, 'Quản Lý', 'thongkul@gmail.com', 778923743, 'Gò Vấp', '123456', 2);

-- --------------------------------------------------------

--
-- Table structure for table `phieugiamgia`
--

CREATE TABLE `phieugiamgia` (
  `id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TenPhieu` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `SoTien` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phieugiamgia`
--

INSERT INTO `phieugiamgia` (`id`, `TenPhieu`, `SoTien`) VALUES
('gmart', 'phiếu của gmart', 100000);

-- --------------------------------------------------------

--
-- Table structure for table `phieunhap`
--

CREATE TABLE `phieunhap` (
  `MaPN` int NOT NULL,
  `MaNV` int NOT NULL,
  `MaSP` int NOT NULL,
  `SoLuong` int NOT NULL,
  `DonGia` decimal(10,0) DEFAULT NULL,
  `TongTien` decimal(10,0) NOT NULL,
  `NgayNhap` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Note` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Size` int NOT NULL,
  `Mau` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `phieunhap`
--

INSERT INTO `phieunhap` (`MaPN`, `MaNV`, `MaSP`, `SoLuong`, `DonGia`, `TongTien`, `NgayNhap`, `Note`, `Size`, `Mau`) VALUES
(56, 3, 10, 100, 5000000, 500000000, '2020-01-10 13:39:59', '', 39, 'Trắng'),
(57, 3, 10, 100, 5000000, 500000000, '2020-01-10 13:39:59', '', 40, 'Trắng'),
(58, 3, 10, 100, 5000000, 500000000, '2020-01-10 13:39:59', '', 41, 'Trắng'),
(59, 3, 10, 100, 5000000, 500000000, '2020-01-10 13:39:59', '', 42, 'Trắng'),
(60, 3, 11, 100, 3500000, 350000000, '2020-01-10 13:40:23', '', 39, 'none'),
(61, 3, 11, 100, 3500000, 350000000, '2020-01-10 13:40:23', '', 40, 'none'),
(62, 3, 11, 100, 3500000, 350000000, '2020-01-10 13:40:23', '', 41, 'none'),
(63, 3, 11, 100, 3500000, 350000000, '2020-01-10 13:40:23', '', 42, 'none'),
(64, 3, 12, 100, 1800000, 180000000, '2020-01-10 13:40:58', '', 39, 'Vàng'),
(65, 3, 12, 100, 1800000, 180000000, '2020-01-10 13:40:58', '', 40, 'Vàng'),
(66, 3, 12, 100, 1800000, 180000000, '2020-01-10 13:40:58', '', 41, 'Vàng'),
(67, 3, 53, 500, 1500000, 750000000, '2020-01-10 13:42:37', '', 42, 'none'),
(68, 3, 54, 500, 500000, 250000000, '2020-01-10 13:43:07', 'Hàng F1', 36, 'Đen'),
(69, 3, 54, 500, 500000, 250000000, '2020-01-10 13:43:07', 'Hàng F1', 37, 'Đen'),
(70, 3, 54, 500, 500000, 250000000, '2020-01-10 13:43:07', 'Hàng F1', 38, 'Đen'),
(71, 3, 54, 500, 500000, 250000000, '2020-01-10 13:43:07', 'Hàng F1', 39, 'Đen'),
(72, 3, 54, 500, 500000, 250000000, '2020-01-10 13:43:07', 'Hàng F1', 40, 'Đen'),
(73, 3, 54, 500, 500000, 250000000, '2020-01-10 13:43:07', 'Hàng F1', 41, 'Đen'),
(74, 3, 54, 500, 500000, 250000000, '2020-01-10 13:43:07', 'Hàng F1', 42, 'Đen'),
(75, 3, 54, 500, 500000, 250000000, '2020-01-10 13:43:07', 'Hàng F1', 43, 'Đen'),
(76, 3, 55, 200, 1000000, 200000000, '2020-01-10 13:43:25', '', 39, 'Đen'),
(77, 3, 55, 200, 1000000, 200000000, '2020-01-10 13:43:25', '', 40, 'Đen'),
(78, 3, 55, 200, 1000000, 200000000, '2020-01-10 13:43:25', '', 41, 'Đen'),
(80, 3, 56, 100, 1500000, 150000000, '2020-01-10 13:44:49', '', 38, 'Đen - Trắng'),
(81, 3, 56, 100, 1500000, 150000000, '2020-01-10 13:44:49', '', 39, 'Đen - Trắng'),
(82, 3, 56, 100, 1500000, 150000000, '2020-01-10 13:44:49', '', 40, 'Đen - Trắng'),
(83, 3, 56, 100, 1500000, 150000000, '2020-01-10 13:44:49', '', 41, 'Đen - Trắng'),
(84, 3, 69, 100, 1500000, 150000000, '2020-01-10 13:46:02', '', 39, 'none'),
(85, 3, 69, 100, 1500000, 150000000, '2020-01-10 13:46:02', '', 40, 'none'),
(86, 3, 69, 100, 1500000, 150000000, '2020-01-10 13:46:02', '', 41, 'none'),
(93, 3, 70, 100, 1500000, 150000000, '2020-01-10 13:47:31', '', 39, 'Đen - Trắng'),
(94, 3, 70, 100, 1500000, 150000000, '2020-01-10 13:47:31', '', 40, 'Đen - Trắng'),
(95, 3, 70, 100, 1500000, 150000000, '2020-01-10 13:47:31', '', 41, 'Đen - Trắng'),
(96, 3, 70, 100, 1500000, 150000000, '2020-01-10 13:47:43', '', 39, 'Trắng'),
(97, 3, 70, 100, 1500000, 150000000, '2020-01-10 13:47:43', '', 40, 'Trắng'),
(98, 3, 70, 100, 1500000, 150000000, '2020-01-10 13:47:43', '', 41, 'Trắng'),
(99, 3, 71, 100, 1000000, 100000000, '2020-01-10 13:47:59', '', 40, 'Đen'),
(100, 3, 71, 100, 1000000, 100000000, '2020-01-10 13:47:59', '', 41, 'Đen'),
(101, 3, 71, 100, 1000000, 100000000, '2020-01-10 13:47:59', '', 42, 'Đen'),
(102, 3, 72, 100, 1500000, 150000000, '2020-01-10 13:48:13', '', 39, 'Trắng'),
(103, 3, 72, 100, 1500000, 150000000, '2020-01-10 13:48:13', '', 40, 'Trắng'),
(104, 3, 72, 100, 1500000, 150000000, '2020-01-10 13:48:13', '', 41, 'Trắng'),
(105, 3, 72, 100, 1000000, 100000000, '2020-01-10 13:48:22', '', 39, 'Trắng'),
(106, 3, 72, 100, 1000000, 100000000, '2020-01-10 13:48:22', '', 40, 'Trắng'),
(107, 3, 72, 100, 1000000, 100000000, '2020-01-10 13:48:22', '', 41, 'Trắng'),
(108, 3, 73, 100, 1500000, 150000000, '2020-01-10 13:48:40', '', 36, 'Đen'),
(109, 3, 73, 100, 1500000, 150000000, '2020-01-10 13:48:40', '', 37, 'Đen'),
(110, 3, 73, 100, 1500000, 150000000, '2020-01-10 13:48:40', '', 38, 'Đen'),
(111, 3, 73, 100, 1500000, 150000000, '2020-01-10 13:48:40', '', 39, 'Đen'),
(112, 3, 73, 100, 1500000, 150000000, '2020-01-10 13:48:40', '', 40, 'Đen'),
(113, 3, 73, 100, 1500000, 150000000, '2020-01-10 13:48:40', '', 41, 'Đen'),
(114, 3, 73, 100, 1500000, 150000000, '2020-01-10 13:48:40', '', 42, 'Đen'),
(115, 3, 73, 100, 1500000, 150000000, '2020-01-10 13:48:40', '', 43, 'Đen'),
(116, 3, 74, 100, 2000000, 200000000, '2020-01-10 13:49:03', '', 38, 'Đen - Trắng'),
(117, 3, 74, 100, 2000000, 200000000, '2020-01-10 13:49:03', '', 39, 'Đen - Trắng'),
(118, 3, 74, 100, 2000000, 200000000, '2020-01-10 13:49:03', '', 40, 'Đen - Trắng'),
(119, 3, 74, 100, 2000000, 200000000, '2020-01-10 13:49:03', '', 41, 'Đen - Trắng'),
(120, 3, 75, 100, 1000000, 100000000, '2020-01-10 13:49:20', '', 38, 'Đen'),
(121, 3, 75, 100, 1000000, 100000000, '2020-01-10 13:49:20', '', 39, 'Đen'),
(122, 3, 75, 100, 1000000, 100000000, '2020-01-10 13:49:20', '', 40, 'Đen'),
(123, 3, 75, 100, 1000000, 100000000, '2020-01-10 13:49:20', '', 41, 'Đen'),
(124, 3, 75, 100, 1000000, 100000000, '2020-01-10 13:49:20', '', 42, 'Đen'),
(125, 3, 75, 40, 1000000, 40000000, '2020-01-10 13:49:39', '', 38, 'Đen - Trắng'),
(126, 3, 75, 40, 1000000, 40000000, '2020-01-10 13:49:39', '', 39, 'Đen - Trắng'),
(127, 3, 75, 40, 1000000, 40000000, '2020-01-10 13:49:39', '', 40, 'Đen - Trắng'),
(128, 3, 75, 40, 1000000, 40000000, '2020-01-10 13:49:39', '', 41, 'Đen - Trắng'),
(129, 3, 75, 40, 1000000, 40000000, '2020-01-10 13:49:39', '', 42, 'Đen - Trắng'),
(130, 3, 75, 50, 1000000, 50000000, '2020-01-10 13:49:49', '', 38, 'Trắng'),
(131, 3, 75, 50, 1000000, 50000000, '2020-01-10 13:49:49', '', 39, 'Trắng'),
(132, 3, 75, 50, 1000000, 50000000, '2020-01-10 13:49:49', '', 40, 'Trắng'),
(133, 3, 75, 50, 1000000, 50000000, '2020-01-10 13:49:49', '', 41, 'Trắng'),
(134, 3, 75, 50, 1000000, 50000000, '2020-01-10 13:49:49', '', 42, 'Trắng'),
(135, 3, 76, 100, 1000000, 100000000, '2020-01-10 13:50:03', '', 38, 'Đen'),
(136, 3, 76, 100, 1000000, 100000000, '2020-01-10 13:50:03', '', 39, 'Đen'),
(137, 3, 76, 100, 1000000, 100000000, '2020-01-10 13:50:03', '', 40, 'Đen'),
(138, 3, 76, 100, 1000000, 100000000, '2020-01-10 13:50:03', '', 41, 'Đen'),
(139, 3, 76, 100, 1000000, 100000000, '2020-01-10 13:50:03', '', 42, 'Đen'),
(140, 3, 76, 40, 1000000, 40000000, '2020-01-10 13:50:10', '', 38, 'Trắng'),
(141, 3, 76, 40, 1000000, 40000000, '2020-01-10 13:50:11', '', 39, 'Trắng'),
(142, 3, 76, 40, 1000000, 40000000, '2020-01-10 13:50:11', '', 40, 'Trắng'),
(143, 3, 76, 40, 1000000, 40000000, '2020-01-10 13:50:11', '', 41, 'Trắng'),
(144, 3, 76, 40, 1000000, 40000000, '2020-01-10 13:50:11', '', 42, 'Trắng'),
(145, 3, 77, 500, 1000000, 500000000, '2020-01-10 13:50:22', '', 39, 'Đen - Trắng'),
(146, 3, 77, 500, 1000000, 500000000, '2020-01-10 13:50:22', '', 40, 'Đen - Trắng'),
(147, 3, 77, 500, 1000000, 500000000, '2020-01-10 13:50:22', '', 41, 'Đen - Trắng'),
(148, 3, 72, 100, 1000000, 100000000, '2020-01-10 13:55:46', '', 39, 'Đen - Trắng'),
(149, 3, 72, 100, 1000000, 100000000, '2020-01-10 13:55:46', '', 40, 'Đen - Trắng'),
(150, 3, 72, 100, 1000000, 100000000, '2020-01-10 13:55:46', '', 41, 'Đen - Trắng');

-- --------------------------------------------------------

--
-- Table structure for table `phieuxuat`
--

CREATE TABLE `phieuxuat` (
  `MaPX` int NOT NULL,
  `MaNV` int NOT NULL,
  `MaSP` int NOT NULL,
  `Mau` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Size` int NOT NULL,
  `SoLuong` int NOT NULL,
  `DonGia` decimal(10,0) NOT NULL,
  `TongTien` decimal(10,0) NOT NULL,
  `Note` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `NgayXuat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quyen`
--

CREATE TABLE `quyen` (
  `id` int NOT NULL,
  `Ten` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `MoTa` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `quyen`
--

INSERT INTO `quyen` (`id`, `Ten`, `MoTa`) VALUES
(1, 'Manager', 'chủ cửa hàng'),
(2, 'Project Manager', 'quản trị viên'),
(3, 'Quản lý Kho', ''),
(4, 'Nhân viên Bán Hàng', ''),
(5, 'Nhân viên giao hàng', '');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int NOT NULL,
  `TenSP` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `MaDM` int DEFAULT NULL,
  `MaNCC` int NOT NULL,
  `SoLuong` int DEFAULT '0',
  `MoTa` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci,
  `DonGia` decimal(10,0) NOT NULL,
  `AnhNen` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `TenSP`, `MaDM`, `MaNCC`, `SoLuong`, `MoTa`, `DonGia`, `AnhNen`) VALUES
(10, 'Bánh quy', 1, 1, NULL, 'Bánh quy vị sữa tươi gói 500g là sản phẩm bánh quy được làm từ thành phần trứng gà tươi và sữa bột tạo nên hương vị thơm ngon hảo hạng. Bánh quy gắn liền với tuổi thơ của thế hệ 8x, 9x, đa dạng hương vị bánh bổ dưỡng, hấp dẫn.', 100000, '1.png'),
(11, 'Bánh quy bơ', 2, 1, NULL, 'Bánh quy bơ giòn tan, thơm ngon, cung cấp nhiều năng lượng, protein và một số vitamin, bánh quy là sự lựa chọn hoàn hảo cho ngày mới đầy năng lượng. Bánh quy bơ hộp 500g được sản xuất từ công thức chính gốc của Đan Mạch, sử dụng loại bơ thượng hạng giàu hương vị', 170000, '3.png'),
(12, 'Bánh khoai tây', 1, 1, NULL, 'Thơm ngon, giòn rụm với những miếng khoai tây giòn, thơm đầy chất lượng. Snack phô mai 2 lớp gói 95g với phô mai 2 lớp thêm ngon, thêm béo, là sản phẩm snack không thể bỏ qua đối với những ai yêu thích phô mai, snack ăn vặt cùng gia đình và bạn bè rất thú vị', 30000, '4.png'),
(53, 'Snack khoai tây\r\n', 1, 1, 491, 'Thơm ngon, giòn rụm với những miếng khoai tây giòn, thơm đầy chất lượng. Snack phô mai 2 lớp gói 95g với phô mai 2 lớp thêm ngon, thêm béo, là sản phẩm snack không thể bỏ qua đối với những ai yêu thích phô mai, snack ăn vặt cùng gia đình và bạn bè rất thú vị', 15000, '5.png'),
(54, 'Bánh mỳ ngọt', 3, 1, 1000, 'Bánh mì tươi mang đến những chiếc bánh mì tươi ngon được sản xuất trên công nghệ hiện đại, an toàn cho người dùng. Bánh mì hoa cúc 300g & creamer đặc Ông Thọ vị dâu 165g với  bánh bông mềm mịn, xớ bánh dai và thơm lừng mùi hoa cúc cùng vị sữa thơm béo, cung cấp năng lượng cho ngày dài hoạt động.', 20000, 'banh.png'),
(55, 'Bánh mỳ sandwich', 1, 1, 500, 'Bánh mì tươi mang đến những chiếc bánh mì tươi ngon được sản xuất trên công nghệ hiện đại, an toàn cho người dùng. Bánh mì hoa cúc 300g & creamer đặc Ông Thọ vị dâu 165g với  bánh bông mềm mịn, xớ bánh dai và thơm lừng mùi hoa cúc cùng vị sữa thơm béo, cung cấp năng lượng cho ngày dài hoạt động.', 15000, 'banhmy.png'),
(56, 'Đậu xanh cà vỏ', 2, 3, NULL, 'Đậu xanh cà đôi đều, chắc hạt, sạch không có rác. Đậu xanh cà 250g rất là bùi, không bị lép, dùng để nấu xôi hoặc có thể dùng để nấu nướng uống, nấu chè mát,... và nhiều món khác tùy sở thích của mỗi người.. an toàn, chất lượng vệ sinh được nhiều người chọn mua.', 15000, '6.png'),
(69, 'Phô mai', 1, 3, 200, 'Là sản phẩm phô mai có xuất xứ từ Hà Lan, được làm từ thành phần tự nhiên đến từ thương hiệu phô mai Bottega Zelachi. Phô mai Bottega Zelachi Edam gói 100g có vị nhẹ, hơi chát, chủ yếu dùng trực tiếp với trái cây, bánh mì, sandwich, có thể dùng để làm sốt hoặc súp,...', 60000, 'phomai.png'),
(70, 'Cà chua', 3, 4, 200, 'Cà chua là loại rau củ rất tốt cho sức khoẻ nhờ chứa nhiều dinh dưỡng đặc biệt là vitamin A, C, K ngoài ra loại quả này còn giúp làm đẹp da cho phái nữ rất tốt. Cà chua được trồng tại Lâm Đồng có thể ăn sống hoặc chế biến các món ăn cũng rất phù hợp.', 13000, 'cachua.png'),
(71, 'Khoai tây', 3, 4, 150, 'Khoai tây là loại củ này được xuất hiện thường xuyên trên mâm cơm này có rất nhiều công dụng hữu ích. Nó không chỉ tốt cho sức khỏe, làm đẹp hiệu quả mà còn có rất nhiều tác dụng bổ ích khác. Khoai tây có thể chế biến thành canh, súp, hoặc chiên đều rất ngon.', 24000, 'khoaitay.png'),
(72, 'Đậu xanh nguyên vỏ', 3, 4, 540, 'Đậu xanh 100% mập mạp, chất lượng, không lẫn rác, sạn,...Đậu xanh hạt 500g dùng để nấu xôi, chè và các món ăn khác rất phù hợp. Đậu xanh chất lượng, tiện lợi tốt cho sức khỏe, cung cấp nhiều dưỡng chất cho cơ thể, được nhiều người chọn mua', 22000, 'nut.png'),
(73, 'Ớt xanh', 2, 4, 340, 'Ớt xiêm xanh là một trong những gia vị không thể thiếu trong căn bếp, giúp chế biến thành nhiều món ăn ngon có hương vị cay nồng, chất lượng. Ớt xiêm xanh có màu xanh tươi, trái nhỏ, nhưng rất thơm, cay cay rất bắt vị giác', 8000, 'otxanh.png'),
(74, 'Đậu phộng', 1, 4, 230, 'Đậu phộng 100% to tròn, mập mạp, chất lượng, không lẫn rác, sạn,...Đậu phộng 300g dùng để nấu xôi, chè và các món ăn khác rất phù hợp. Đậu phộng chất lượng, tiện lợi tốt cho sức khỏe, cung cấp nhiều dưỡng chất cho cơ thể, được nhiều người chọn mua', 27500, 'peanut.png'),
(75, 'Cold Brew Coffee', 2, 2, 150, 'Cà phê sữa lon uống liền tiện lợi của thương đình đám The Coffee được nhiều người yêu thích. Cà phê sữa The Coffee 180ml thơm ngon chẳng thua kém gì các loại cà phê phin khác với vị béo đặc trưng của sữa hòa quyện với vị đắng của cà phê cho bạn một thức uống đậm đà, hấp dẫn.', 15000, '2.png'),
(76, 'Milk', 3, 2, 1200, 'Sữa tươi The Milk đảm bảo không sử dụng thêm hương liệu, mang vị ngon sữa tươi nguyên chất 100%, chứa nhiều vitamin và khoáng chất như Vitamin A, D, B1, B2, canxi, kẽm. Sữa tươi tiệt trùng nguyên chất không đường The MILK hộp 1 lít đóng hộp lớn tiện lợi, tiết kiệm.', 40000, '7.png'),
(77, 'Sữa tươi không đường', 2, 2, 1500, 'Sữa tươi The Milk đảm bảo không sử dụng thêm hương liệu, mang vị ngon sữa tươi nguyên chất 100%, chứa nhiều vitamin và khoáng chất như Vitamin A, D, B1, B2, canxi, kẽm. Sữa tươi tiệt trùng nguyên chất không đường The MILK hộp 1 lít đóng hộp lớn tiện lợi, tiết kiệm.', 140000, 'milk.png'),
(94, 'Nước cam', 2, 2, 200, 'Sản phẩm nước ép trái cây chất lượng thơ ngon từ thương hiệu Vfresh với 100% thành phần từ cam tươi có chứa nhiều vitamin C rất phù hợp cho cơ thể đang bệnh hoặc mới chớm bệnh giúp chống lại bệnh cảm cúm và cảm lạnh, tăng cường sức đề kháng. Cam kết chính hãng và an toàn', 43000, 'cam.jpg'),
(95, 'Coca Cola Light lon 320ml', 2, 2, NULL, 'Từ thương hiệu nước ngọt nổi tiếng thế giới được ưa chuộng tại nhiều nhiều quốc gia. Nước ngọt không đường Coca Cola Light lon 320ml chính hãng nước ngọt Coca Cola là dòng sản phẩm nước uống có ga không đường, dành cho người ăn kiêng, không lo tăng cân', 12000, 'light.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sanphamkhuyenmai`
--

CREATE TABLE `sanphamkhuyenmai` (
  `MaSP` int NOT NULL,
  `MaKM` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `sanphamkhuyenmai`
--

INSERT INTO `sanphamkhuyenmai` (`MaSP`, `MaKM`) VALUES
(10, 6),
(54, 6),
(55, 6),
(74, 6),
(10, 7),
(12, 7),
(53, 7),
(70, 7);

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `MaSize` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`MaSize`) VALUES
(36),
(37),
(38),
(39),
(40),
(41),
(42),
(43);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anhsp`
--
ALTER TABLE `anhsp`
  ADD PRIMARY KEY (`Anh1`,`MaSP`);

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`MaBL`,`MaSP`,`MaKH`),
  ADD KEY `MaKH` (`MaKH`);

--
-- Indexes for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`MaHD`,`MaSP`,`Size`,`MaMau`),
  ADD KEY `MaSP` (`MaSP`),
  ADD KEY `Size` (`Size`),
  ADD KEY `MaMau` (`MaMau`);

--
-- Indexes for table `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD PRIMARY KEY (`MaSP`,`MaSize`,`MaMau`),
  ADD KEY `MaSize` (`MaSize`),
  ADD KEY `MaMau` (`MaMau`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`MaDM`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `MaKH` (`MaKH`),
  ADD KEY `MaNV` (`MaNV`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`Email`),
  ADD UNIQUE KEY `MaKH` (`MaKH`);

--
-- Indexes for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`MaKM`);

--
-- Indexes for table `mau`
--
ALTER TABLE `mau`
  ADD PRIMARY KEY (`MaMau`);

--
-- Indexes for table `nguoinhan`
--
ALTER TABLE `nguoinhan`
  ADD PRIMARY KEY (`MaHD`);

--
-- Indexes for table `nhacc`
--
ALTER TABLE `nhacc`
  ADD PRIMARY KEY (`MaNCC`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`Email`),
  ADD UNIQUE KEY `MaNV` (`MaNV`),
  ADD KEY `Quyen` (`Quyen`);

--
-- Indexes for table `phieugiamgia`
--
ALTER TABLE `phieugiamgia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`MaPN`),
  ADD KEY `MaNV` (`MaNV`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Indexes for table `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD PRIMARY KEY (`MaPX`),
  ADD KEY `MaNV` (`MaNV`),
  ADD KEY `MauSP` (`MaSP`),
  ADD KEY `Mau` (`Mau`),
  ADD KEY `Size` (`Size`);

--
-- Indexes for table `quyen`
--
ALTER TABLE `quyen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`),
  ADD KEY `MaNCC` (`MaNCC`),
  ADD KEY `MaDM` (`MaDM`);

--
-- Indexes for table `sanphamkhuyenmai`
--
ALTER TABLE `sanphamkhuyenmai`
  ADD PRIMARY KEY (`MaSP`,`MaKM`),
  ADD KEY `MaKH` (`MaKM`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`MaSize`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `MaBL` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `MaDM` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHD` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MaKH` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `MaKM` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `nhacc`
--
ALTER TABLE `nhacc`
  MODIFY `MaNCC` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `MaNV` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `MaPN` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `phieuxuat`
--
ALTER TABLE `phieuxuat`
  MODIFY `MaPX` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Constraints for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitiethoadon_ibfk_3` FOREIGN KEY (`Size`) REFERENCES `size` (`MaSize`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitiethoadon_ibfk_4` FOREIGN KEY (`MaMau`) REFERENCES `mau` (`MaMau`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD CONSTRAINT `chitietsanpham_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`);

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`),
  ADD CONSTRAINT `hoadon_ibfk_2` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`);

--
-- Constraints for table `nguoinhan`
--
ALTER TABLE `nguoinhan`
  ADD CONSTRAINT `nguoinhan_ibfk_1` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `nhanvien_ibfk_1` FOREIGN KEY (`Quyen`) REFERENCES `quyen` (`id`);

--
-- Constraints for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `phieunhap_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`),
  ADD CONSTRAINT `phieunhap_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`) ON DELETE CASCADE;

--
-- Constraints for table `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD CONSTRAINT `phieuxuat_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`),
  ADD CONSTRAINT `phieuxuat_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`) ON DELETE CASCADE,
  ADD CONSTRAINT `phieuxuat_ibfk_3` FOREIGN KEY (`Mau`) REFERENCES `mau` (`MaMau`),
  ADD CONSTRAINT `phieuxuat_ibfk_4` FOREIGN KEY (`Size`) REFERENCES `size` (`MaSize`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`MaNCC`) REFERENCES `nhacc` (`MaNCC`),
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`MaDM`) REFERENCES `danhmuc` (`MaDM`);

--
-- Constraints for table `sanphamkhuyenmai`
--
ALTER TABLE `sanphamkhuyenmai`
  ADD CONSTRAINT `sanphamkhuyenmai_ibfk_1` FOREIGN KEY (`MaKM`) REFERENCES `khuyenmai` (`MaKM`) ON DELETE CASCADE,
  ADD CONSTRAINT `sanphamkhuyenmai_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
