-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2022 at 03:13 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kedai-faiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `chatting`
--

CREATE TABLE `chatting` (
  `id_chatting` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `pelanggan_send` text DEFAULT NULL,
  `admin_send` text DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chatting`
--

INSERT INTO `chatting` (`id_chatting`, `id_pelanggan`, `id_user`, `pelanggan_send`, `admin_send`, `time`) VALUES
(1, 2, 1, 'hai', NULL, '2022-07-01 23:21:22');

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id_detail` int(11) NOT NULL,
  `id_transaksi` varchar(30) NOT NULL,
  `id_diskon` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id_detail`, `id_transaksi`, `id_diskon`, `qty`) VALUES
(1, '20220531BFYO4P6M', 3, 1),
(2, '20220531BFYO4P6M', 9, 1),
(3, '20220531HILMNM1K', 3, 1),
(4, '20220531HILMNM1K', 9, 1),
(5, '20220617BINJSFHC', 37, 2),
(6, '20220617LCJDXWAI', 37, 2),
(7, '20220617LCJDXWAI', 1, 1),
(8, '20220617LCJDXWAI', 4, 1),
(9, '20220617LCJDXWAI', 13, 1),
(10, '20220617LCJDXWAI', 16, 1),
(11, '20220617TXHPGYZZ', 2, 2),
(12, '20220617TXHPGYZZ', 5, 1),
(13, '20220617TXHPGYZZ', 14, 1),
(14, '2022070298WQRIAO', 3, 1),
(15, '2022070298WQRIAO', 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `diskon`
--

CREATE TABLE `diskon` (
  `id_diskon` int(11) NOT NULL,
  `id_produk` varchar(10) NOT NULL,
  `nama_diskon` varchar(125) NOT NULL,
  `tgl_selesai` varchar(15) NOT NULL,
  `diskon` int(11) NOT NULL,
  `member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diskon`
--

INSERT INTO `diskon` (`id_diskon`, `id_produk`, `nama_diskon`, `tgl_selesai`, `diskon`, `member`) VALUES
(1, 'aro23', '0', '0', 0, 1),
(2, 'aro23', 'Every Day', '2022-06-30', 8, 2),
(3, 'aro23', '0', '0', 0, 3),
(4, 'U9iqB', '0', '0', 0, 1),
(5, 'U9iqB', '0', '0', 0, 2),
(6, 'U9iqB', '0', '0', 0, 3),
(7, 'yM4nr', '0', '0', 0, 1),
(8, 'yM4nr', '0', '0', 0, 2),
(9, 'yM4nr', '0', '0', 0, 3),
(10, '5X8Ak', '0', '0', 0, 1),
(11, '5X8Ak', '0', '0', 0, 2),
(12, '5X8Ak', 'Every Day', '2022-07-28', 5, 3),
(13, 'rH1m7', '0', '0', 0, 1),
(14, 'rH1m7', '0', '0', 0, 2),
(15, 'rH1m7', '0', '0', 0, 3),
(16, 'D2de9', '0', '0', 0, 1),
(17, 'D2de9', '0', '0', 0, 2),
(18, 'D2de9', '0', '0', 0, 3),
(19, 'KWifa', '0', '0', 0, 1),
(20, 'KWifa', '0', '0', 0, 2),
(21, 'KWifa', '0', '0', 0, 3),
(22, 'TE5O1', '0', '0', 0, 1),
(23, 'TE5O1', '0', '0', 0, 2),
(24, 'TE5O1', '0', '0', 0, 3),
(25, 'k3Rjx', '0', '0', 0, 1),
(26, 'k3Rjx', '0', '0', 0, 2),
(27, 'k3Rjx', '0', '0', 0, 3),
(28, 'NPkJ9', '0', '0', 0, 1),
(29, 'NPkJ9', '0', '0', 0, 2),
(30, 'NPkJ9', '0', '0', 0, 3),
(31, 'WPAI9', '0', '0', 0, 1),
(32, 'WPAI9', '0', '0', 0, 2),
(33, 'WPAI9', '0', '0', 0, 3),
(34, 'uqZ1s', '0', '0', 0, 1),
(35, 'uqZ1s', '0', '0', 0, 2),
(36, 'uqZ1s', '0', '0', 0, 3),
(37, 'tFnL4', 'Gold Edition', '2022-06-30', 10, 1),
(38, 'tFnL4', '0', '0', 0, 2),
(39, 'tFnL4', '0', '0', 0, 3),
(40, 'hUlqv', 'Every Day edit', '2022-06-23', 5, 1),
(41, 'hUlqv', '0', '0', 0, 2),
(42, 'hUlqv', '0', '0', 0, 3),
(43, 'zZL5X', '0', '0', 0, 1),
(44, 'zZL5X', '0', '0', 0, 2),
(45, 'zZL5X', '0', '0', 0, 3),
(46, 'njVMY', '0', '0', 0, 1),
(47, 'njVMY', '0', '0', 0, 2),
(48, 'njVMY', '0', '0', 0, 3),
(49, 'cb9B0', '0', '0', 0, 1),
(50, 'cb9B0', '0', '0', 0, 2),
(51, 'cb9B0', '0', '0', 0, 3),
(52, 'VG43t', '0', '0', 0, 1),
(53, 'VG43t', '0', '0', 0, 2),
(54, 'VG43t', 'Every Day', '2022-07-27', 5, 3),
(55, 'ofUQL', '0', '0', 0, 1),
(56, 'ofUQL', '0', '0', 0, 2),
(57, 'ofUQL', '0', '0', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Makanan'),
(2, 'Minuman');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id_kecamatan` int(11) NOT NULL,
  `kode` int(11) NOT NULL,
  `nm_kecamatan` varchar(125) NOT NULL,
  `ongkir` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id_kecamatan`, `kode`, `nm_kecamatan`, `ongkir`) VALUES
(1, 1, 'ciawigebang', '10000'),
(2, 1, 'cibeureum', '30000'),
(3, 1, 'cibingbin', '25000'),
(4, 1, 'cidahu', '15000'),
(5, 1, 'cidahu', '13000'),
(6, 1, 'cigandamekar', '25000'),
(7, 1, 'cigugur', '15000'),
(8, 1, 'cilebak', '30000'),
(9, 1, 'cilimus', '16000'),
(10, 1, 'cimahi', '14000'),
(11, 1, 'ciniru', '28000'),
(12, 1, 'cipicung', '21000'),
(13, 1, 'ciwaru', '25000'),
(14, 1, 'darma', '21000'),
(15, 1, 'garawangi', '20000'),
(16, 1, 'hantara', '30000'),
(17, 1, 'jalaksana', '9000'),
(18, 1, 'japara', '29000'),
(19, 1, 'kadugede', '16000'),
(20, 1, 'kalimanggis', '20000'),
(21, 1, 'karangkacana', '18000'),
(22, 1, 'kramatmulya', '15000'),
(23, 1, 'kuningan', '7000'),
(24, 1, 'lebakwangi', '26000'),
(25, 1, 'luragung', '30000'),
(26, 1, 'maleber', '29000'),
(27, 1, 'mandirancan', '24000'),
(28, 1, 'nusaherang', '19000'),
(29, 1, 'pancalang', '30000'),
(30, 1, 'pasawahan', '35000'),
(31, 1, 'selajambe', '35000'),
(32, 1, 'sindangagung', '25000'),
(33, 1, 'subang', '35000'),
(34, 2, 'arjawinangun', '50000'),
(35, 2, 'astanajapura', '51000'),
(36, 2, 'babakan', '52000'),
(37, 2, 'beber', '53000'),
(38, 2, 'Ciledug', '54000'),
(39, 2, 'Ciwaringin', '55000'),
(40, 2, 'Depok', '56000'),
(41, 2, 'Dukupuntang', '57000'),
(42, 2, 'Gebang', '58000'),
(43, 2, 'Gegesik', '59000'),
(44, 2, 'Gempol', '60000'),
(45, 2, 'Greged', '61000'),
(46, 2, 'Gunungjati', '62000'),
(47, 2, 'Jamblang', '63000'),
(48, 2, 'Kaliwedi', '64000'),
(49, 2, 'Kapetakan', '65000'),
(50, 2, 'Karangsembung', '66000'),
(51, 2, 'Karangwareng', '67000'),
(52, 2, 'Kedawung', '68000'),
(53, 2, 'Klangenan', '69000'),
(54, 2, 'Lemahabang', '70000'),
(55, 2, 'Losari', '71000'),
(56, 2, 'Mundu', '72000'),
(57, 2, 'Pabedilan', '73000'),
(58, 2, 'Pabuaran', '74000'),
(59, 2, 'Palimanan', '75000'),
(60, 2, 'Pangenan', '76000'),
(61, 2, 'Panguragan', '78000'),
(62, 2, 'Pasaleman', '79000'),
(63, 2, 'Plered', '80000'),
(64, 2, 'Plumbon', '81000'),
(65, 2, 'Sedong', '82000'),
(66, 2, 'Sumber', '83000'),
(67, 2, 'Suranenggala', '84000'),
(68, 2, 'Susukan', '85000'),
(69, 2, 'Susukanlebak', '86000'),
(70, 2, 'Talun', '87000'),
(71, 2, 'Tengahtani', '88000'),
(72, 2, 'Waled', '89000'),
(73, 2, 'Weru', '90000');

-- --------------------------------------------------------

--
-- Table structure for table `kritik_saran`
--

CREATE TABLE `kritik_saran` (
  `id_kritik` int(11) NOT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `isi_kritik` text DEFAULT NULL,
  `jawab_kritik` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kritik_saran`
--

INSERT INTO `kritik_saran` (`id_kritik`, `id_pelanggan`, `id_user`, `isi_kritik`, `jawab_kritik`) VALUES
(1, 2, 1, 'produk sangat recommded', NULL),
(2, 2, 1, NULL, 'bagus');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nm_pel` varchar(125) NOT NULL,
  `alamat` text NOT NULL,
  `no_tlpon` varchar(15) NOT NULL,
  `username` varchar(125) NOT NULL,
  `password` varchar(125) NOT NULL,
  `level_member` int(11) NOT NULL,
  `point` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nm_pel`, `alamat`, `no_tlpon`, `username`, `password`, `level_member`, `point`) VALUES
(1, 'Salsa', 'ciawigebanhg, kuningan', '0875698745633', 'pelanggan', 'pelanggan', 2, 1761),
(2, 'Dahlan', 'LINK.KRAMAT JAYA RT/RW 007/003', '085156727368', 'dahlan', 'dahlan123', 3, 785);

-- --------------------------------------------------------

--
-- Table structure for table `pengiriman`
--

CREATE TABLE `pengiriman` (
  `id_pengiriman` int(11) NOT NULL,
  `id_transaksi` varchar(30) NOT NULL,
  `rt` varchar(10) NOT NULL,
  `rw` varchar(15) NOT NULL,
  `ongkir` varchar(15) NOT NULL,
  `alamat_pengiriman` text NOT NULL,
  `id_kecamatan` varchar(20) NOT NULL,
  `kota` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengiriman`
--

INSERT INTO `pengiriman` (`id_pengiriman`, `id_transaksi`, `rt`, `rw`, `ongkir`, `alamat_pengiriman`, `id_kecamatan`, `kota`) VALUES
(1, '20220531BFYO4P6M', '23', '565', '9000', 'ftgfgfg', '17', '1'),
(2, '20220531HILMNM1K', '12', '21', '9000', 'Ciawigebang, Kuningan', '17', '1'),
(3, '20220617BINJSFHC', '12', '12', '67000', 'Ciawigebang, Kuningan', '51', '2'),
(4, '20220617LCJDXWAI', '12', '34', '7000', 'Ciawigebang, Kuningan', '23', '1'),
(5, '20220617TXHPGYZZ', '12', '2', '68000', 'cirebon kedawung', '52', '2'),
(6, '20220702QNC4WSFL', '12', '03', '9000', 'Ciawigebang, Kuningan', '17', '1'),
(7, '2022070298WQRIAO', '12', '03', '10000', 'Ciawigebang, Kuningan', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` varchar(10) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_produk` varchar(125) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` varchar(15) NOT NULL,
  `stok` int(11) NOT NULL,
  `tipe` int(11) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `nama_produk`, `deskripsi`, `harga`, `stok`, `tipe`, `gambar`) VALUES
('5X8Ak', 1, 'Curry Beef', 'Beef Curry ala Medannn', '30000', 20, 1, 'Berburu_Kuliner_Legendaris_Di_Medan,_Yuk!.jpg'),
('aro23', 1, 'Steak Beef', 'Steak Beef Tenderoin Kualitas No.1', '50000', 12, 1, '52e173da-9bfa-4752-b6ad-5e3b8714577f.jpg'),
('cb9B0', 1, 'Farafe Blubery Delight', 'Sugar Rush Bluberry', '50000', 30, 2, '37f8d33cc58ddc3ef01863eba0dc4286.jpg'),
('D2de9', 1, 'Food Photography', 'Noodle, Egg and ACARR', '35000', 25, 1, 'Food_Photography.jpg'),
('hUlqv', 2, 'Coffe milk ', 'Coffe Milk Original Tasteee', '26000', 30, 1, 'dfdfd.jpg'),
('k3Rjx', 1, 'Curry Papeda', 'Resep Kiriman Pembaca JTT - Papeda, The Delicious Papua!', '38000', 30, 1, 'Kuliner_Rumah_Makan_Padang_Kedai_Nasi_Pauh_Piaman1.jpg'),
('KWifa', 1, 'Bakmi Ayam', 'Food Bakmi ayamm', '20000', 30, 1, 'KEDAI_BAKMI_AYAM_MPOK_LALA.jpg'),
('njVMY', 1, 'Lunch Together Salad', 'Paket lunch together', '60000', 30, 2, '77d24b7e201f2fb946211281d40a373e.jpg'),
('NPkJ9', 0, 'Roti Bakar', 'Roti Bakar Abang-abang versi Sandwich', '35000', 40, 1, 'Roti_Bakar_Abang-abang_versi_Sandwich.jpg'),
('rH1m7', 1, 'Fish Streat', 'Fish Streat, Solusi Makan Fish Chips Enak Tanpa Menguras Kantong', '45000', 20, 1, 'Fish_Streat,_Solusi_Makan_Fish_Chips_Enak_Tanpa_Menguras_Kantong.jpg'),
('TE5O1', 0, 'Paruh', 'Kuliner Rumah Makan Padang Kedai Nasi Pauh Piaman', '50000', 25, 1, 'Kuliner_Rumah_Makan_Padang_Kedai_Nasi_Pauh_Piaman.jpg'),
('tFnL4', 2, 'Hot Coffee', 'Hot Coffee, lifestyle', '29000', 20, 1, 'Hot_Coffee,_lifestyle.jpg'),
('U9iqB', 1, 'Chicken Noodle', 'Noodle, Vegetable, Spicy hoootttt', '20000', 50, 1, '771a52d6-10b3-40bc-ab1c-7fa5f359e08e.jpg'),
('uqZ1s', 2, 'V60', 'Coffe original taste...', '36000', 20, 1, 'af24397b-d1f2-47f6-85f4-11665cdcdf39.jpg'),
('VG43t', 1, 'Suki Time', 'Paket Suki ', '135000', 20, 2, '4642a485cc4a35e678f0a87b60aa6d15.jpg'),
('WPAI9', 2, 'Coffe Latte', 'Drink Cofffe Late Frezeee', '25000', 40, 1, '7e5646a7-9c53-44a3-a660-3c943f4ba186.jpg'),
('yM4nr', 1, 'Meet Ball Yamin', 'Meet ball spicyy hooottt, versi YAMINN', '25000', 30, 1, 'Bakso_Telur,_Sumsum,_Rawit_Rusuk.jpg'),
('zZL5X', 1, 'Takoyaki Paket Crumble', 'Cruble white spicy', '30000', 12, 2, '01e473522a5e61c5b281646d61562ac4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` varchar(30) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `tgl_transaksi` varchar(15) NOT NULL,
  `total_bayar` varchar(15) NOT NULL,
  `status_order` int(11) NOT NULL,
  `bukti_pembayaran` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_pelanggan`, `tgl_transaksi`, `total_bayar`, `status_order`, `bukti_pembayaran`) VALUES
('20220531BFYO4P6M', 1, '2022-05-31', '75000', 4, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg'),
('20220531HILMNM1K', 1, '2022-05-31', '75000', 2, '31084499740-bukti_transfer.jpg'),
('20220617BINJSFHC', 1, '2022-06-18', '52200', 4, '0'),
('20220617LCJDXWAI', 1, '2022-06-17', '202200', 0, '0'),
('20220617TXHPGYZZ', 2, '2022-06-17', '157000', 4, '31084499740-bukti_transfer1.jpg'),
('2022070298WQRIAO', 2, '2022-07-02', '78500', 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(125) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `username` varchar(125) NOT NULL,
  `password` varchar(125) NOT NULL,
  `level_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `alamat`, `no_hp`, `username`, `password`, `level_user`) VALUES
(1, 'Admin', 'Kuningan Jawa Barat', '085156727368', 'admin', 'admin', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chatting`
--
ALTER TABLE `chatting`
  ADD PRIMARY KEY (`id_chatting`);

--
-- Indexes for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id_detail`);

--
-- Indexes for table `diskon`
--
ALTER TABLE `diskon`
  ADD PRIMARY KEY (`id_diskon`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id_kecamatan`);

--
-- Indexes for table `kritik_saran`
--
ALTER TABLE `kritik_saran`
  ADD PRIMARY KEY (`id_kritik`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pengiriman`
--
ALTER TABLE `pengiriman`
  ADD PRIMARY KEY (`id_pengiriman`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chatting`
--
ALTER TABLE `chatting`
  MODIFY `id_chatting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `diskon`
--
ALTER TABLE `diskon`
  MODIFY `id_diskon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `id_kecamatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `kritik_saran`
--
ALTER TABLE `kritik_saran`
  MODIFY `id_kritik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pengiriman`
--
ALTER TABLE `pengiriman`
  MODIFY `id_pengiriman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
