-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2023 at 06:15 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_stokbarang`
--
CREATE DATABASE IF NOT EXISTS `db_stokbarang` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_stokbarang`;

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(20) DEFAULT NULL,
  `nama_barang` varchar(80) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `jumlah_terjual` int(11) NOT NULL,
  `tgl_transaksi` varchar(100) NOT NULL,
  `satuan` varchar(20) DEFAULT NULL,
  `jenis_barang` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `kode_barang`, `nama_barang`, `stok`, `jumlah_terjual`, `tgl_transaksi`, `satuan`, `jenis_barang`) VALUES
(73, '32740639', 'Kopi', 100, 100, '01/05/2021', 'pcs', 'Komsumsi'),
(74, '96332658', 'Teh', 100, 19, '05/05/2021', 'unit', 'Konsumsi'),
(75, '13729085', 'Kopi', 90, 15, '10/05/2021', 'unit', 'Konsumsi'),
(76, '65253221', 'Pasta Gigi', 100, 20, '11/05/2021', 'unit', 'Pembersih'),
(77, '35492773', 'Sabun Mandi', 100, 30, '11/05/2021', 'unit', 'Pembersih'),
(78, '99813888', 'Sampo', 100, 25, '12/05/2021', 'pcs', 'Pembersih'),
(79, '11195241', 'Teh', 81, 5, '12/05/2021', 'unit', 'Konsumsi'),
(80, '45782896', 'Sabun Mandi', 50, 20, '01/08/2023', 'unit', 'Produksi');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `kode` varchar(20) DEFAULT NULL,
  `nama` varchar(80) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telepon` varchar(15) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `kode`, `nama`, `email`, `telepon`, `alamat`) VALUES
(4, 'CST410', 'Nizar', 'inventaris@gmail.com', '085000000000', 'Jogja'),
(5, 'CST224', 'Suyitno', NULL, '082244522600', NULL),
(7, 'CST861', 'Ainul Solihin, S.T.', NULL, '0', NULL),
(8, 'CST287', 'Riski Wijaya', NULL, '0', NULL),
(9, 'CST226', 'Very Adi Wijaya', NULL, '0', NULL),
(10, 'CST527', 'Hadi', NULL, '0', NULL),
(11, 'CST949', 'Zidan', NULL, '0', NULL),
(12, 'CST676', 'Wahyu Widodo', NULL, '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `data_toko`
--

CREATE TABLE `data_toko` (
  `id` int(11) NOT NULL,
  `nama_toko` varchar(80) DEFAULT NULL,
  `nama_pemilik` varchar(80) DEFAULT NULL,
  `no_telepon` varchar(15) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_toko`
--

INSERT INTO `data_toko` (`id`, `nama_toko`, `nama_pemilik`, `no_telepon`, `alamat`) VALUES
(1, 'Penjualan Barang Perlengkapan Aset', 'Unnikke Rahmawati', '085664206273', 'https://github.com/Rahmyvall');

-- --------------------------------------------------------

--
-- Table structure for table `detail_keluar`
--

CREATE TABLE `detail_keluar` (
  `no_keluar` varchar(25) DEFAULT NULL,
  `nama_barang` varchar(80) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `satuan` varchar(20) DEFAULT NULL,
  `keterangan` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_keluar`
--

INSERT INTO `detail_keluar` (`no_keluar`, `nama_barang`, `jumlah`, `satuan`, `keterangan`) VALUES
('TR1680493850', 'Pitingan Lampu Bolam', 1, 'pcs', 'Gedung F'),
('TR1680661543', 'Lampu TL 18 Watt Putih', 4, 'pcs', 'LP2RP'),
('TR1680661597', 'Gembok besar', 1, 'pcs', 'Ex Bookstore');

-- --------------------------------------------------------

--
-- Table structure for table `detail_terima`
--

CREATE TABLE `detail_terima` (
  `no_terima` varchar(25) DEFAULT NULL,
  `nama_barang` varchar(80) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `satuan` varchar(20) DEFAULT NULL,
  `keterangan` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_terima`
--

INSERT INTO `detail_terima` (`no_terima`, `nama_barang`, `jumlah`, `satuan`, `keterangan`) VALUES
('TR1680749518', 'Gembok besar', 2, 'pcs', 'Barang dilantai 5');

-- --------------------------------------------------------

--
-- Table structure for table `penerimaan`
--

CREATE TABLE `penerimaan` (
  `id` int(11) NOT NULL,
  `no_terima` varchar(25) DEFAULT NULL,
  `tgl_terima` varchar(25) DEFAULT NULL,
  `jam_terima` varchar(10) DEFAULT NULL,
  `nama_supplier` varchar(80) DEFAULT NULL,
  `nama_petugas` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penerimaan`
--

INSERT INTO `penerimaan` (`id`, `no_terima`, `tgl_terima`, `jam_terima`, `nama_supplier`, `nama_petugas`) VALUES
(23, 'TR1680749518', '06/04/2023', '09:51:58', 'Perlengkapan', 'M. Faisol, SH., MH');

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id` int(11) NOT NULL,
  `no_keluar` varchar(25) DEFAULT NULL,
  `tgl_keluar` varchar(25) DEFAULT NULL,
  `jam_keluar` varchar(10) DEFAULT NULL,
  `nama_customer` varchar(80) DEFAULT NULL,
  `nama_petugas` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengeluaran`
--

INSERT INTO `pengeluaran` (`id`, `no_keluar`, `tgl_keluar`, `jam_keluar`, `nama_customer`, `nama_petugas`) VALUES
(20, 'TR1680493850', '03/04/2023', '10:50:50', 'Ainul Solihin, S.T.', 'Chamidah'),
(22, 'TR1680661543', '05/04/2023', '09:25:43', 'Riski Wijaya', 'Chamidah'),
(23, 'TR1680661597', '05/04/2023', '09:26:37', 'Nizar', 'Chamidah');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `kode` varchar(20) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id`, `kode`, `nama`, `username`, `password`) VALUES
(1, 'PGN17', 'Unnikke Rahmawati', 'admin', 'admin'),
(2, 'PENGGUNA - 35', 'Resty A', 'user', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id` int(11) NOT NULL,
  `kode` varchar(20) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id`, `kode`, `nama`, `username`, `password`) VALUES
(3, 'PETUGAS - 35', 'Faisol', 'faisol', 'faisol'),
(4, 'PETUGAS - 43', 'Hadi', 'hadi', 'hadi'),
(6, 'PETUGAS - 61', 'Teknisi', 'teknisi', 'teknisi');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `kode` varchar(20) DEFAULT NULL,
  `nama` varchar(80) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telepon` varchar(15) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `kode`, `nama`, `email`, `telepon`, `alamat`) VALUES
(2, 'SPL118', 'Kepala Keuangan Boss', 'kepalakeuangan@gmail.com', '085000000000', 'Jogja');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_toko`
--
ALTER TABLE `data_toko`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penerimaan`
--
ALTER TABLE `penerimaan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `no_terima` (`no_terima`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `no_keluar` (`no_keluar`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `data_toko`
--
ALTER TABLE `data_toko`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `penerimaan`
--
ALTER TABLE `penerimaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
