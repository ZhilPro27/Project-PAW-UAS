-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 26, 2025 at 01:12 AM
-- Server version: 8.0.43
-- PHP Version: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `p-kwu-paw`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `idAdmin` int NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idAdmin`, `username`, `password`, `role`) VALUES
(6, 'Admin', '$2b$10$RC7mspuESKBE7Xl/O4QhFeLZqqhEWYOKJfnkb1yjxYOnqABbYpAjG', 'Admin'),
(7, 'Admin2', '$2b$10$yDgGFaX3oc0gJO0HWHIMB.euPCYLjQwhQQOfEwQzqFN9c65F.muhK', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `auth_logs`
--

CREATE TABLE `auth_logs` (
  `id` int NOT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `event_type` enum('login','logout') NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_logs`
--

INSERT INTO `auth_logs` (`id`, `timestamp`, `event_type`, `user_id`, `role`, `ip_address`, `success`) VALUES
(1, '2025-09-15 21:38:11', 'login', 'zhilal@mail.com', 'user', '::1', 1),
(2, '2025-09-15 21:38:51', 'logout', 'zhilal@mail.com', 'user', '::1', 1),
(3, '2025-09-15 21:39:08', 'login', 'Admin', 'admin', '::1', 1),
(4, '2025-09-15 23:33:04', 'login', 'zhilal@mail.com', 'user', '::1', 1),
(5, '2025-09-15 23:33:07', 'logout', 'zhilal@mail.com', 'user', '::1', 1),
(6, '2025-09-15 23:33:11', 'login', 'Admin', 'admin', '::1', 1),
(7, '2025-09-15 23:37:58', 'logout', 'Admin', 'admin', '::1', 1),
(8, '2025-09-15 23:38:03', 'login', 'Admin', 'admin', '::1', 1),
(9, '2025-09-16 01:13:15', 'login', 'tes@mail.com', 'user', '::1', 1),
(10, '2025-09-16 01:13:37', 'logout', 'tes@mail.com', 'user', '::1', 1),
(11, '2025-09-16 01:13:47', 'login', 'Admin', 'admin', '::1', 1),
(12, '2025-09-16 02:52:24', 'login', 'adi@mail.com', 'user', '::1', 1),
(13, '2025-09-16 02:52:59', 'logout', 'adi@mail.com', 'user', '::1', 1),
(14, '2025-09-16 02:53:26', 'login', 'Admin', 'admin', '::1', 1),
(15, '2025-09-16 03:05:28', 'logout', 'Admin', 'admin', '::1', 1),
(16, '2025-09-16 03:06:19', 'login', 'adi@mail.com', 'user', '::1', 1),
(17, '2025-09-24 08:23:58', 'login', 'Admin', 'admin', '::1', 1),
(18, '2025-09-24 09:04:33', 'logout', 'Admin', 'admin', '::1', 1),
(19, '2025-09-24 09:04:45', 'login', 'adi@mail.com', 'user', '::1', 1),
(20, '2025-09-24 09:06:04', 'logout', 'adi@mail.com', 'user', '::1', 1),
(21, '2025-09-24 09:06:08', 'login', 'Admin', 'admin', '::1', 1),
(22, '2025-09-24 09:20:26', 'logout', 'Admin', 'admin', '::1', 1),
(23, '2025-09-24 09:22:05', 'login', 'adi@mail.com', 'user', '::1', 1),
(24, '2025-09-24 09:22:25', 'logout', 'adi@mail.com', 'user', '::1', 1),
(25, '2025-09-24 09:22:29', 'login', 'Admin', 'admin', '::1', 1),
(26, '2025-09-24 09:48:06', 'logout', 'Admin', 'admin', '::1', 1),
(27, '2025-09-24 09:48:12', 'login', 'zhilal@mail.com', 'user', '::1', 1),
(28, '2025-09-24 09:48:32', 'logout', 'zhilal@mail.com', 'user', '::1', 1),
(29, '2025-09-24 09:48:35', 'login', 'Admin', 'admin', '::1', 1),
(30, '2025-09-25 13:28:11', 'login', 'Admin', 'admin', '::1', 1),
(31, '2025-09-25 13:28:38', 'logout', 'Admin', 'admin', '::1', 1),
(32, '2025-09-25 13:29:10', 'login', 'zhilal@mail.com', 'user', '::1', 1),
(33, '2025-09-25 13:29:15', 'logout', 'zhilal@mail.com', 'user', '::1', 1),
(34, '2025-09-25 16:47:03', 'login', 'zhilal@mail.com', 'user', '::1', 1),
(35, '2025-09-25 16:47:30', 'logout', 'zhilal@mail.com', 'user', '::1', 1),
(36, '2025-09-25 16:52:28', 'login', 'adi@mail.com', 'user', '::1', 1),
(37, '2025-09-25 16:54:24', 'logout', 'adi@mail.com', 'user', '::1', 1),
(38, '2025-09-25 16:54:28', 'login', 'Admin', 'admin', '::1', 1),
(39, '2025-09-25 17:05:05', 'logout', 'Admin', 'admin', '::1', 1),
(40, '2025-09-26 00:07:12', 'login', 'Admin', 'admin', '::1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `idBarang` char(5) NOT NULL,
  `namaBarang` varchar(255) NOT NULL,
  `hargaBarang` int NOT NULL,
  `stokBarang` int NOT NULL,
  `tersedia` tinyint(1) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL
) ;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`idBarang`, `namaBarang`, `hargaBarang`, `stokBarang`, `tersedia`, `gambar`) VALUES
('B-001', 'Beng Beng', 2500, 42, 1, 'barang-1757605882257.jpg'),
('B-002', 'Le Minerale', 3000, 4, 1, 'barang-1757614428310.jpg'),
('B-003', 'Ultramilk Coklat 250ml', 7000, 17, 1, 'barang-1757623513477.jpg'),
('B-004', 'Chocopie', 2500, 30, 1, 'barang-1757623691532.jpg'),
('B-005', 'Basreng', 500, 99, 1, 'barang-1757624015205.jpg'),
('B-006', 'Basreng Gak Pedes', 500, 98, 0, 'barang-1757991345132.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `detail_pembelian`
--

CREATE TABLE `detail_pembelian` (
  `idDetailPembelian` int NOT NULL,
  `idBarang` char(5) NOT NULL,
  `idPembelian` char(5) NOT NULL,
  `jumlahBarang` tinyint DEFAULT NULL,
  `totalHargaBarang` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `detail_pembelian`
--

INSERT INTO `detail_pembelian` (`idDetailPembelian`, `idBarang`, `idPembelian`, `jumlahBarang`, `totalHargaBarang`) VALUES
(10, 'B-002', 'P-001', 2, 6000),
(11, 'B-001', 'P-001', 1, 2500),
(12, 'B-002', 'P-002', 2, 6000),
(13, 'B-001', 'P-002', 2, 5000),
(14, 'B-001', 'P-003', 3, 7500),
(15, 'B-002', 'P-003', 12, 36000),
(23, 'B-003', 'P-004', 1, 7000),
(24, 'B-001', 'P-005', 2, 5000),
(25, 'B-002', 'P-005', 1, 3000),
(26, 'B-005', 'P-005', 1, 500),
(27, 'B-002', 'P-006', 2, 6000),
(28, 'B-005', 'P-006', 3, 1500),
(29, 'B-004', 'P-007', 1, 2500),
(30, 'B-003', 'P-007', 1, 7000),
(34, 'B-003', 'P-008', 2, 14000),
(35, 'B-001', 'P-009', 2, 5000),
(36, 'B-004', 'P-009', 2, 5000),
(37, 'B-005', 'P-009', 2, 1000),
(38, 'B-006', 'P-009', 1, 500),
(39, 'B-006', 'P-010', 2, 1000),
(40, 'B-002', 'P-010', 1, 3000),
(41, 'B-005', 'P-011', 11, 5500),
(42, 'B-001', 'P-011', 6, 15000),
(43, 'B-003', 'P-011', 2, 14000),
(44, 'B-004', 'P-011', 3, 7500);

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `idPembelian` char(5) NOT NULL,
  `waktuTransaksi` timestamp NOT NULL,
  `totalHarga` int DEFAULT NULL,
  `status` enum('pending','completed','rejected') NOT NULL DEFAULT 'pending',
  `userId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`idPembelian`, `waktuTransaksi`, `totalHarga`, `status`, `userId`) VALUES
('P-001', '2025-09-11 19:32:56', 8500, 'completed', NULL),
('P-002', '2025-09-11 19:48:31', 11000, 'completed', NULL),
('P-003', '2025-09-11 20:03:06', 43500, 'completed', NULL),
('P-004', '2025-09-15 20:45:20', 7000, 'completed', 1),
('P-005', '2025-09-15 20:59:28', 8500, 'completed', 1),
('P-006', '2025-09-16 01:13:20', 7500, 'rejected', 2),
('P-007', '2025-09-16 02:52:36', 9500, 'rejected', 3),
('P-008', '2025-09-24 09:04:49', 14000, 'completed', 3),
('P-009', '2025-09-24 09:22:14', 11500, 'pending', 3),
('P-010', '2025-09-24 09:22:24', 4000, 'completed', 3),
('P-011', '2025-09-24 09:48:29', 42000, 'pending', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `password`, `created_at`) VALUES
(1, 'Zhilal', 'zhilal@mail.com', '$2b$10$Q9SGMzSKlmKmxvfl0MI.5uFbilCu.80CqUmm7htjJgS2YFYe2epN.', '2025-09-15 18:37:46'),
(2, 'Tes', 'tes@mail.com', '$2b$10$FZyfeM5ph/6g6lkty/w7leMcU1PLkrpwb7fI06jpqAHqsHLNEjY8S', '2025-09-16 01:13:06'),
(3, 'Adi', 'adi@mail.com', '$2b$10$Qqn5dqa/5ZKuUieNvm9UWe.N9BWYdCyX/HFDB2E/D7W5eo7nXOFQy', '2025-09-16 02:52:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idAdmin`);

--
-- Indexes for table `auth_logs`
--
ALTER TABLE `auth_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`idBarang`),
  ADD UNIQUE KEY `namaBarang` (`namaBarang`);

--
-- Indexes for table `detail_pembelian`
--
ALTER TABLE `detail_pembelian`
  ADD PRIMARY KEY (`idDetailPembelian`),
  ADD KEY `idPembelian` (`idPembelian`),
  ADD KEY `detail_pembelian_ibfk_1` (`idBarang`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`idPembelian`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `idAdmin` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `auth_logs`
--
ALTER TABLE `auth_logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `detail_pembelian`
--
ALTER TABLE `detail_pembelian`
  MODIFY `idDetailPembelian` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_pembelian`
--
ALTER TABLE `detail_pembelian`
  ADD CONSTRAINT `detail_pembelian_ibfk_1` FOREIGN KEY (`idBarang`) REFERENCES `barang` (`idBarang`) ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_pembelian_ibfk_2` FOREIGN KEY (`idPembelian`) REFERENCES `pembelian` (`idPembelian`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD CONSTRAINT `pembelian_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
