-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th7 08, 2025 lúc 02:55 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlvetaudb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `BaoCao`
--

CREATE TABLE `BaoCao` (
  `MaBaoCao` int(11) NOT NULL,
  `MaChuyen` int(11) DEFAULT NULL,
  `ThoiGian` datetime DEFAULT NULL,
  `SoVeDaBan` int(11) NOT NULL,
  `SoGheConLai` int(11) NOT NULL,
  `TongDoanhThu` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `BaoCao`
--

INSERT INTO `BaoCao` (`MaBaoCao`, `MaChuyen`, `ThoiGian`, `SoVeDaBan`, `SoGheConLai`, `TongDoanhThu`) VALUES
(1, 1, '2025-06-28 14:42:55', 0, 0, 0),
(2, 5, '2025-07-07 20:20:48', 3, 137, 3600000),
(3, 1, '2025-07-07 20:21:44', 1, 199, 450000),
(4, 5, '2025-07-08 07:21:27', 1, 139, 1200000),
(5, 5, '2025-07-08 07:26:13', 2, 138, 2400000),
(6, 5, '2025-07-08 07:26:51', 1, 139, 1200000),
(7, 1, '2025-07-08 07:47:01', 1, 199, 450000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ChuyenTau`
--

CREATE TABLE `ChuyenTau` (
  `MaChuyen` int(11) NOT NULL,
  `MaTuyen` int(11) DEFAULT NULL,
  `MaTau` int(11) DEFAULT NULL,
  `NgayKhoiHanh` date DEFAULT NULL,
  `GioKhoiHanh` time DEFAULT NULL,
  `LoaiVe` enum('Thường','VIP') DEFAULT NULL,
  `GiaVe` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `ChuyenTau`
--

INSERT INTO `ChuyenTau` (`MaChuyen`, `MaTuyen`, `MaTau`, `NgayKhoiHanh`, `GioKhoiHanh`, `LoaiVe`, `GiaVe`) VALUES
(1, 1, 1, '2025-07-01', '06:00:00', 'Thường', '450000.00'),
(2, 2, 2, '2025-07-02', '08:30:00', 'VIP', '550000.00'),
(3, 3, 1, '2025-07-03', '14:00:00', 'Thường', '400000.00'),
(4, 2, 6, '2025-07-05', '12:19:07', 'VIP', '1500000.00'),
(5, 3, 6, '2025-07-17', '12:19:07', 'VIP', '1200000.00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Ga`
--

CREATE TABLE `Ga` (
  `MaGa` int(11) NOT NULL,
  `TenGa` varchar(100) NOT NULL,
  `DiaChi` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `Ga`
--

INSERT INTO `Ga` (`MaGa`, `TenGa`, `DiaChi`) VALUES
(1, 'Ga Hà Nội', '120 Lê Duẩn, Hà Nội'),
(2, 'Ga Sài Gòn', '1 Nguyễn Thông, Quận 3, TP.HCM'),
(3, 'Ga Huế', 'Huế'),
(4, 'Ga Vinh', 'Vinh'),
(5, 'Ga Hải Phòng', 'Hải Phòng'),
(6, 'Ga Đồng Đăng', 'Lạng Sơn'),
(7, 'Ga Nam Định', 'Nam Định'),
(8, 'Ga Đà Nẵng', 'Đà Nẵng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `GiaoDich`
--

CREATE TABLE `GiaoDich` (
  `MaGD` int(11) NOT NULL,
  `MaVe` int(11) DEFAULT NULL,
  `MaHK` int(11) DEFAULT NULL,
  `ThoiGian` datetime DEFAULT NULL,
  `LoaiGD` varchar(50) DEFAULT NULL,
  `GiaTriGD` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `GiaoDich`
--

INSERT INTO `GiaoDich` (`MaGD`, `MaVe`, `MaHK`, `ThoiGian`, `LoaiGD`, `GiaTriGD`) VALUES
(1, 1, 1, '2025-06-28 13:42:00', 'Thanh toán', '450000.00'),
(2, 43, 41, '2025-07-05 10:01:31', 'Thanh Toán', '1500000.00'),
(3, 47, 43, '2025-07-07 19:54:03', 'Thanh toán', '1200000.00'),
(4, 48, 44, '2025-07-07 19:55:01', 'Thanh toán', '1200000.00'),
(5, 49, 45, '2025-07-07 19:55:21', 'Thanh toán', '1200000.00'),
(6, 48, 44, '2025-07-08 07:20:57', 'HOAN', '-1200000.00'),
(7, 50, 46, '2025-07-08 07:25:12', 'Thanh toán', '1200000.00'),
(8, 50, 46, '2025-07-08 07:26:44', 'Hoàn', '-1200000.00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `HanhKhach`
--

CREATE TABLE `HanhKhach` (
  `MaHK` int(11) NOT NULL,
  `MaTK` int(11) DEFAULT NULL,
  `HoTen` varchar(100) DEFAULT NULL,
  `CCCD` varchar(20) DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `GioiTinh` varchar(10) DEFAULT NULL,
  `DiaChi` varchar(200) DEFAULT NULL,
  `SDT` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `HanhKhach`
--

INSERT INTO `HanhKhach` (`MaHK`, `MaTK`, `HoTen`, `CCCD`, `NgaySinh`, `GioiTinh`, `DiaChi`, `SDT`) VALUES
(1, 2, 'Nguyễn Đức Tuấn', '012345678901', '2004-04-03', 'Nam', 'Bắc Ninh', '0909123456777'),
(2, 3, 'Đào Đình Trung', '012345671089', '2004-06-05', 'Nam', 'Hà Nam', '0909654312'),
(3, 4, 'Nguyễn Thành Đạt', '012345687190', '2004-08-05', 'Nam', 'Quảng Ninh', '0908123465'),
(4, 5, 'Nguyễn Thị Ly', '098765432109', '2004-05-15', 'Nữ', 'Hà Nội', '0934567890'),
(40, NULL, 'Phạm Mai Anh', '27289292', '2000-07-02', 'Nữ', 'Nam Định', '2797101'),
(41, NULL, 'Nguyễn Thị Hải', '8242977292', '2004-07-23', 'Nữ', 'Bắc Ninh', '09287287278'),
(42, NULL, 'jaljall', '3792292', '2025-07-19', 'Nam', 'HN', '82089292'),
(43, NULL, 'hakhkaa', '3892921', '2025-07-18', 'Nam', 'skjkf', '72901011'),
(44, NULL, 'Hằng', '28002211', '2025-07-24', 'Nữ', 'HN', '79219202'),
(45, NULL, 'Hải', '2901011', '2025-07-17', 'Nam', 'BN', '100181943'),
(46, NULL, 'jefhwkhkw', '1298729792', '2025-07-09', 'Nam', 'HN', '299272792');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `TaiKhoan`
--

CREATE TABLE `TaiKhoan` (
  `MaTK` int(11) NOT NULL,
  `TenDangNhap` varchar(50) NOT NULL,
  `MatKhau` varchar(100) NOT NULL,
  `VaiTro` enum('admin','user') DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `TaiKhoan`
--

INSERT INTO `TaiKhoan` (`MaTK`, `TenDangNhap`, `MatKhau`, `VaiTro`) VALUES
(1, 'admin', '123', 'admin'),
(2, 'tuan', '1234', 'user'),
(3, 'trung', '123', 'user'),
(4, 'dat', '123', 'user'),
(5, 'ly', '123', 'user');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Tau`
--

CREATE TABLE `Tau` (
  `MaTau` int(11) NOT NULL,
  `TenTau` varchar(100) DEFAULT NULL,
  `TongSoGhe` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `Tau`
--

INSERT INTO `Tau` (`MaTau`, `TenTau`, `TongSoGhe`) VALUES
(1, 'SE1', 200),
(2, 'SE2', 180),
(3, 'SE3', 160),
(4, 'SE4', 210),
(5, 'SE5', 180),
(6, 'SE6', 140);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Tuyen`
--

CREATE TABLE `Tuyen` (
  `MaTuyen` int(11) NOT NULL,
  `MaGaDi` int(11) DEFAULT NULL,
  `MaGaDen` int(11) DEFAULT NULL,
  `ThoiGianDuKien` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `Tuyen`
--

INSERT INTO `Tuyen` (`MaTuyen`, `MaGaDi`, `MaGaDen`, `ThoiGianDuKien`) VALUES
(1, 1, 2, 1500),
(2, 1, 3, 800),
(3, 3, 2, 700),
(4, 1, 3, 960);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Ve`
--

CREATE TABLE `Ve` (
  `MaVe` int(11) NOT NULL,
  `MaChuyen` int(11) DEFAULT NULL,
  `MaHK` int(11) DEFAULT NULL,
  `SoGhe` varchar(10) DEFAULT NULL,
  `LoaiVe` enum('Thường','VIP') DEFAULT NULL,
  `PNR` varchar(20) DEFAULT NULL,
  `NgayDat` date DEFAULT NULL,
  `TrangThai` enum('DaDat','DaHuy') DEFAULT 'DaDat'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `Ve`
--

INSERT INTO `Ve` (`MaVe`, `MaChuyen`, `MaHK`, `SoGhe`, `LoaiVe`, `PNR`, `NgayDat`, `TrangThai`) VALUES
(1, 1, 1, 'A01', 'Thường', 'PNR001', '2025-06-28', 'DaDat'),
(2, 2, 2, 'B10', 'VIP', 'PNR002', '2025-06-28', 'DaHuy'),
(42, 4, 40, 'A01', 'VIP', 'PNR003', '2025-07-04', 'DaHuy'),
(43, 4, 41, 'A01', 'VIP', 'PNR004', '2025-07-05', 'DaDat'),
(47, 5, 43, 'A03', 'VIP', 'PNR007', '2025-07-07', 'DaDat'),
(48, 5, 44, 'A04', 'VIP', 'PNR008', '2025-07-07', 'DaHuy'),
(49, 5, 45, 'A05', 'VIP', 'PNR009', '2025-07-07', 'DaHuy'),
(50, 5, 46, 'B01', 'VIP', 'PNR010', '2025-07-08', 'DaHuy');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `BaoCao`
--
ALTER TABLE `BaoCao`
  ADD PRIMARY KEY (`MaBaoCao`),
  ADD KEY `MaChuyen` (`MaChuyen`);

--
-- Chỉ mục cho bảng `ChuyenTau`
--
ALTER TABLE `ChuyenTau`
  ADD PRIMARY KEY (`MaChuyen`),
  ADD KEY `MaTuyen` (`MaTuyen`),
  ADD KEY `MaTau` (`MaTau`);

--
-- Chỉ mục cho bảng `Ga`
--
ALTER TABLE `Ga`
  ADD PRIMARY KEY (`MaGa`),
  ADD UNIQUE KEY `TenGa` (`TenGa`);

--
-- Chỉ mục cho bảng `GiaoDich`
--
ALTER TABLE `GiaoDich`
  ADD PRIMARY KEY (`MaGD`),
  ADD KEY `MaHK` (`MaHK`),
  ADD KEY `MaVe` (`MaVe`);

--
-- Chỉ mục cho bảng `HanhKhach`
--
ALTER TABLE `HanhKhach`
  ADD PRIMARY KEY (`MaHK`),
  ADD UNIQUE KEY `CCCD` (`CCCD`),
  ADD KEY `MaTK` (`MaTK`);

--
-- Chỉ mục cho bảng `TaiKhoan`
--
ALTER TABLE `TaiKhoan`
  ADD PRIMARY KEY (`MaTK`),
  ADD UNIQUE KEY `TenDangNhap` (`TenDangNhap`);

--
-- Chỉ mục cho bảng `Tau`
--
ALTER TABLE `Tau`
  ADD PRIMARY KEY (`MaTau`);

--
-- Chỉ mục cho bảng `Tuyen`
--
ALTER TABLE `Tuyen`
  ADD PRIMARY KEY (`MaTuyen`),
  ADD KEY `MaGaDi` (`MaGaDi`),
  ADD KEY `MaGaDen` (`MaGaDen`);

--
-- Chỉ mục cho bảng `Ve`
--
ALTER TABLE `Ve`
  ADD PRIMARY KEY (`MaVe`),
  ADD UNIQUE KEY `PNR` (`PNR`),
  ADD KEY `MaChuyen` (`MaChuyen`),
  ADD KEY `MaHK` (`MaHK`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `BaoCao`
--
ALTER TABLE `BaoCao`
  MODIFY `MaBaoCao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `ChuyenTau`
--
ALTER TABLE `ChuyenTau`
  MODIFY `MaChuyen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `Ga`
--
ALTER TABLE `Ga`
  MODIFY `MaGa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `GiaoDich`
--
ALTER TABLE `GiaoDich`
  MODIFY `MaGD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `HanhKhach`
--
ALTER TABLE `HanhKhach`
  MODIFY `MaHK` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `TaiKhoan`
--
ALTER TABLE `TaiKhoan`
  MODIFY `MaTK` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `Tau`
--
ALTER TABLE `Tau`
  MODIFY `MaTau` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `Tuyen`
--
ALTER TABLE `Tuyen`
  MODIFY `MaTuyen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `Ve`
--
ALTER TABLE `Ve`
  MODIFY `MaVe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `BaoCao`
--
ALTER TABLE `BaoCao`
  ADD CONSTRAINT `baocao_ibfk_1` FOREIGN KEY (`MaChuyen`) REFERENCES `CHUYENTAU` (`MaChuyen`);

--
-- Các ràng buộc cho bảng `ChuyenTau`
--
ALTER TABLE `ChuyenTau`
  ADD CONSTRAINT `chuyentau_ibfk_1` FOREIGN KEY (`MaTuyen`) REFERENCES `Tuyen` (`MaTuyen`),
  ADD CONSTRAINT `chuyentau_ibfk_2` FOREIGN KEY (`MaTau`) REFERENCES `Tau` (`MaTau`);

--
-- Các ràng buộc cho bảng `GiaoDich`
--
ALTER TABLE `GiaoDich`
  ADD CONSTRAINT `giaodich_ibfk_1` FOREIGN KEY (`MaHK`) REFERENCES `HANHKHACH` (`MaHK`),
  ADD CONSTRAINT `giaodich_ibfk_2` FOREIGN KEY (`MaVe`) REFERENCES `VE` (`MaVe`);

--
-- Các ràng buộc cho bảng `HanhKhach`
--
ALTER TABLE `HanhKhach`
  ADD CONSTRAINT `hanhkhach_ibfk_1` FOREIGN KEY (`MaTK`) REFERENCES `TaiKhoan` (`MaTK`);

--
-- Các ràng buộc cho bảng `Tuyen`
--
ALTER TABLE `Tuyen`
  ADD CONSTRAINT `tuyen_ibfk_1` FOREIGN KEY (`MaGaDi`) REFERENCES `Ga` (`MaGa`),
  ADD CONSTRAINT `tuyen_ibfk_2` FOREIGN KEY (`MaGaDen`) REFERENCES `Ga` (`MaGa`);

--
-- Các ràng buộc cho bảng `Ve`
--
ALTER TABLE `Ve`
  ADD CONSTRAINT `ve_ibfk_1` FOREIGN KEY (`MaChuyen`) REFERENCES `ChuyenTau` (`MaChuyen`),
  ADD CONSTRAINT `ve_ibfk_2` FOREIGN KEY (`MaHK`) REFERENCES `HanhKhach` (`MaHK`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
