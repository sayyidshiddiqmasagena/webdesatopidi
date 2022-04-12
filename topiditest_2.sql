-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2022 at 04:51 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `topiditest_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `nama`, `email`, `password`) VALUES
(1, 'Sayyid Shiddiq Masagena', 'sayyidshiddiqm@gmail.com', '$2y$10$/U4x9DkzWr32oZgL7in/Ouae7UnJeEkaZC0LL10otgviGkLxd1bju'),
(2, 'Faturrahman Abdullah', 'faturrahmanabdullah75@gmail.com', '$2y$10$D1kmRrXAE7lj8ym9dSa7B.GjqfZBaFMO0gEuMUBd2X20oQpjxFQfa'),
(3, 'Muhammad Hijir Ismail', 'hijirismail007@gmail.com', '$2y$10$i/xF1dJ7Fg3vKEhW4DSmYuHhTqWtsrnIWL40AF1QD/kImuSQD4IN');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_informasi`
--

CREATE TABLE `tbl_informasi` (
  `id_informasi` int(50) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `isi_informasi` text NOT NULL,
  `tgl_informasi` datetime NOT NULL,
  `gambar_informasi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_informasi`
--

INSERT INTO `tbl_informasi` (`id_informasi`, `judul`, `kategori`, `isi_informasi`, `tgl_informasi`, `gambar_informasi`) VALUES
(1, 'Peluncuran Website Sistem Informasi Desa Topidi', 'Teknologi', '<p>Website Sistem Informasi Desa Topidi yang telah dirancang oleh Mahasiswa Teknik Informatika UNHAS akhirnya akan segera dilaunching pada 30 April Mendatang.<p>', '2022-04-12 21:44:27', './assets/img/informasi/coverlaunchingtopidi_informasi1.jpg'),
(2, 'Penggunaan Pestisida Untuk Kebun Kopi', 'Perkebunan', '<p>Dikarenakan banyak hama yang cukup mengganggu kesuburan dari tanaman kopi di perkebunan kopi desa Topidi, maka dilaksanakan penyemprotan pestisida yang aman agar tidak mengganggu ekosistem kebun.<p>', '2022-04-09 22:33:17', './assets/img/informasi/coverpestisida.jpg'),
(3, 'Pembangunan Perbaikan Jalan Desa Topidi', 'Pembangunan', '<p>Desa Topidi selama belakangan tahun terakhir mulai mendapatkan perhatian dari masyarakat luas, tetapi jalan akses ke Desa Topidi masih kurang baik. Oleh karena itu Pemerintah Kabupaten Gowa melaksanakan perbaikan Jalan untuk akses ke Desa Topidi.<p>', '2022-04-10 22:41:38', './assets/img/informasi/coverperbaikanjalantopidi.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_produk`
--

CREATE TABLE `tbl_produk` (
  `id_produk` int(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` varchar(100) NOT NULL,
  `gambar_produk` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_produk`
--

INSERT INTO `tbl_produk` (`id_produk`, `nama`, `deskripsi`, `harga`, `gambar_produk`) VALUES
(1, 'Biji Kopi Topidi', 'Biji Kopi pilihan dari perkebunan kopi di desa topidi yang menyuguhkan aroma kopi arabica', '40000', 'http://localhost/topiditest1/assets/img/produk/bijikopi1.jpg'),
(2, 'Bubuk Kopi Arabica', 'Bubuk Kopi Arabica dari perkebunan kopi Desa Topidi yang telah digiling secara halus yang memudahkan penikmat kopi untuk mengonsumsi Kopi Arabica Topidi ini', '60000', 'http://localhost/topiditest1/assets/img/produk/bubukkopiarabica.jpg'),
(3, 'Bubuk Kopi Robusta', 'Bubuk Kopi Robusta dari perkebunan kopi Desa Topidi yang telah digiling secara halus yang memudahkan penikmat kopi untuk mengonsumsi Kopi Robusta Topidi ini', '50000', 'http://localhost/topiditest1/assets/img/produk/bubukkopirobusta.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wisata`
--

CREATE TABLE `tbl_wisata` (
  `id_wisata` int(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` varchar(100) NOT NULL,
  `gambar_produk` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_wisata`
--

INSERT INTO `tbl_wisata` (`id_wisata`, `nama`, `deskripsi`, `harga`, `gambar_produk`) VALUES
(1, 'Langit Topidi Resort', 'Langit Topidi Resort', '10000', 'http://localhost/topiditest1/assets/img/wisata/langittopidiresort.jpg'),
(2, 'Air Terjun Topidi', 'Air Terjun Topidi terletak pada desa topidi yang memiliki jalur yang belum baik, tetapi memiliki keindahan dan suasana sejuk ketika mengunjunginya', '10000', 'http://localhost/topiditest1/assets/img/wisata/airterjuntopidi.jpg'),
(3, 'Wisata Kebun Kopi', 'Wisata Kebun Kopi di Desa Topidi menyajikan kebun kopi khas Desa Topidi yang memberikan pengalaman dan suasana yang menarik dengan perkebunan kopi yang langka di Sulawesi Selatan yang disertai dengan kabut', '15000', 'http://localhost/topiditest1/assets/img/wisata/wisatakebunkopi.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_informasi`
--
ALTER TABLE `tbl_informasi`
  ADD PRIMARY KEY (`id_informasi`);

--
-- Indexes for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `tbl_wisata`
--
ALTER TABLE `tbl_wisata`
  ADD PRIMARY KEY (`id_wisata`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_informasi`
--
ALTER TABLE `tbl_informasi`
  MODIFY `id_informasi` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
  MODIFY `id_produk` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_wisata`
--
ALTER TABLE `tbl_wisata`
  MODIFY `id_wisata` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
