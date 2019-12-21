-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2019 at 12:51 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `item`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(50) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `jenis_barang` varchar(50) NOT NULL,
  `harga` varchar(50) NOT NULL,
  `jumlah` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `jenis_barang`, `harga`, `jumlah`) VALUES
(1, 'Head & Shoulders Shampoo Anti Dandruff 165Ml', 'shampo', 'Rp.26.000', 30),
(2, 'Lifebuoy Shampoo Anti Dandruff 170Ml', 'shampo', 'Rp.18.000', 20),
(3, 'Dove Shampoo Hair Fall Treatment 160Ml', 'shampo', 'Rp.26.000', 25),
(4, 'Clear Shampoo Anti Dandruff Lemon Fresh 160Ml', 'shampo', 'Rp.27.000', 40),
(5, 'Sunsilk Shampoo Black Shine 170Ml', 'shampo', 'Rp.23.500', 36),
(6, 'Dettol Sabun Mandi Anti Bakteri Lasting Fresh 110G', 'sabun', 'Rp.7.000', 24),
(7, 'Zen Anti Bacterial Body Soap Shiso&Sea Salt 80G ', 'sabun', 'Rp.4.000', 27),
(8, 'Giv Sabun Mandi White Bengkoang & Yoghurt 110g', 'sabun', 'Rp.4.000', 38),
(9, 'Lifebuoy Sabun Mandi Lemon Fresh 110G', 'sabun', 'Rp.4.500', 36),
(10, 'Lux Sabun Mandi Batang Soft Rose 110G', 'sabun', 'Rp.4.800', 70),
(11, 'budy jam 120g', 'selai', 'Rp.12.000', 56),
(12, 'morin jam strawberry 170g', 'selai', 'Rp.20.000', 47),
(13, 'Ceres Choco Spread Choco Hazelnut 200G', 'selai', 'Rp.28.000', 56),
(14, 'Colatta Crunchy Chocolate Spread 220G', 'selai', 'Rp.32.000', 89),
(15, 'mariza topping jam 200g', 'selai', 'Rp.10.000', 58),
(16, 'Sovia Minyak Goreng 2L', 'minyak goreng', 'Rp.20.000', 112),
(17, 'Bimoli Minyak Goreng 2000Ml', 'minyak goreng', 'Rp.24.000', 68),
(18, 'Tropical Minyak Goreng Refill 2000Ml', 'minyak goreng', 'Rp.22.000', 78),
(19, 'Sania Minyak Goreng Refill 2000Ml', 'minyak goreng', 'Rp.21.500', 67),
(20, 'Fortune Minyak Goreng Refill 2000Ml', 'minyak goreng', 'Rp.21.000', 80),
(21, 'Kraft Cheese Quick Melt 175G', 'keju', 'Rp.23.000', 78),
(22, 'Kraft Keju Cheddar Olahan 165G', 'keju', 'Rp.18.000', 60),
(23, 'Pro Chiz Keju Gold 170G', 'keju', 'Rp.13.500', 70),
(24, 'Meg Keju Serbaguna 180G', 'keju', 'Rp.12.500', 46),
(25, 'Kraft Cheese Single High Calcium 10S Plain 167G', 'keju', 'Rp.20.500', 58),
(26, 'Abc Sardines Chili 425G', 'ikan kaleng', 'Rp.20.000', 70),
(27, 'Botan Mackarel 425G', 'ikan kaleng', 'Rp.32.000', 99),
(28, 'Gaga Sardines Tomat & Chilli 425G', 'ikan kaleng', 'Rp.17.500', 86),
(29, 'Fiesta Mackerel In Chili Sauce 425G', 'ikan kaleng', 'Rp.16.000', 120),
(30, 'King\'s Fisher Sarden Goreng Balado 425G', 'ikan kaleng', 'Rp.25.000', 105),
(31, 'Silver Queen Chocolate Chunky Bar Almond 100G', 'coklat', 'Rp.24.000', 120),
(32, ' Cadbury Chocolate Dairy Milk Cashew Nut 65G ', 'coklat', 'Rp.15.000', 131),
(33, 'Kit Kat Chocolate 4 Fingers 35G', 'coklat', 'Rp.9.500', 115),
(34, 'Delfi Chocolate Cha Cha Milk 40G', 'coklat', 'Rp.5.000', 113),
(35, 'Kinder Joy Chocolate Crispy Boys 20G', 'coklat', 'Rp.13.000', 105),
(36, 'Daia Detergent Bubuk Putih Extrak Pemutih 1.8Kg', 'deterjen', 'Rp.30.000', 103),
(37, ' Kao Attack Detergent Powder Easy Romantic Flower ', 'deterjen', 'Rp.25.500', 123),
(38, 'Rinso Deterjen Powder + Molto Purple 800G', 'deterjen', 'Rp.20.000', 108),
(39, 'Kao Attack Detergent Powder Plus Softener 800G', 'deterjen', 'Rp.22.000', 134),
(40, 'So Klin Softergent Powder Purple Lavender 300G', 'deterjen', 'Rp.7.000', 132),
(41, 'Harpic Pembersih Kloset Triple Action Power 450Ml', 'pembersih lantai & toilet', 'Rp.19.500', 76),
(42, 'Mr.Muscle Glass Cleaner Clear Liquid Pump Original', 'pembersih lantai & toilet', 'Rp.12.500', 86),
(43, 'So Klin Pembersih Lantai Refill Relaxing Lavender ', 'pembersih lantai & toilet', 'Rp.13.000', 92),
(44, 'Sos Pembersih Lantai Sereh 700Ml', 'pembersih lantai & toilet', 'Rp.15.000', 64),
(45, 'Super Pell Pembersih Lantai Fresh Apple 770Ml', 'pembersih lantai & toilet', 'Rp.14.500', 54),
(46, 'Dettol Antiseptic Wet Wipes 10\'S', 'tisu', 'Rp.10.000', 105),
(47, 'Multi Facial Tissue Mp-01/250\'S Non Parfumed', 'tisu', 'Rp.16.000', 126),
(48, 'Nice Facial Tissue 250\'S Non Perfumed', 'tisu', 'Rp.15.000', 134),
(49, 'Paseo Facial Tissue Soft Pack 250\'S', 'tisu', 'Rp.18.000', 154),
(50, 'Tessa Facial Tissue Tp-02/260\'S', 'tisu', 'Rp.16.000', 178);

-- --------------------------------------------------------

--
-- Table structure for table `jenisbarang`
--

CREATE TABLE `jenisbarang` (
  `id_jenisbarang` int(50) NOT NULL,
  `jenis_barangs` varchar(50) NOT NULL,
  `lokasi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenisbarang`
--

INSERT INTO `jenisbarang` (`id_jenisbarang`, `jenis_barangs`, `lokasi`) VALUES
(1, 'shampo', 'A2'),
(2, 'sabun', 'Q1'),
(3, 'selai', 'S2'),
(4, 'minyak goreng', 'D2'),
(5, 'ikan kaleng', 'B2'),
(6, 'keju', 'K2'),
(7, 'coklat', 'G2'),
(8, 'deterjen', 'R3'),
(9, 'pembersih lantai & toilet', 'F2'),
(10, 'tisu', 'C3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `jenisbarang`
--
ALTER TABLE `jenisbarang`
  ADD PRIMARY KEY (`id_jenisbarang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
