-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Bulan Mei 2022 pada 14.50
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
-- Struktur dari tabel `chatting`
--

CREATE TABLE `chatting` (
  `id_chatting` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `pelanggan_send` text NOT NULL,
  `admin_send` text NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id_detail` int(11) NOT NULL,
  `id_transaksi` varchar(30) NOT NULL,
  `id_produk` varchar(10) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `diskon`
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
-- Dumping data untuk tabel `diskon`
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
(40, 'hUlqv', '0', '0', 0, 1),
(41, 'hUlqv', 'Every Day', '2022-06-23', 5, 2),
(42, 'hUlqv', '0', '0', 0, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Makanan'),
(2, 'Minuman');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kritik_saran`
--

CREATE TABLE `kritik_saran` (
  `id_kritik` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `isi_kritik` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengiriman`
--

CREATE TABLE `pengiriman` (
  `id_pengiriman` int(11) NOT NULL,
  `id_transaksi` varchar(30) NOT NULL,
  `expedisi` varchar(10) NOT NULL,
  `estimasi` varchar(15) NOT NULL,
  `ongkir` varchar(15) NOT NULL,
  `alamat_pengiriman` text NOT NULL,
  `provinsi` varchar(20) NOT NULL,
  `kota` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
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
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `nama_produk`, `deskripsi`, `harga`, `stok`, `tipe`, `gambar`) VALUES
('5X8Ak', 1, 'Curry Beef', 'Beef Curry ala Medannn', '30000', 20, 1, 'Berburu_Kuliner_Legendaris_Di_Medan,_Yuk!.jpg'),
('aro23', 1, 'Steak Beef', 'Steak Beef Tenderoin Kualitas No.1', '50000', 12, 1, '52e173da-9bfa-4752-b6ad-5e3b8714577f.jpg'),
('D2de9', 1, 'Food Photography', 'Noodle, Egg and ACARR', '35000', 25, 1, 'Food_Photography.jpg'),
('hUlqv', 2, 'Coffe milk ', 'Coffe Milk Original Tasteee', '26000', 30, 1, 'dfdfd.jpg'),
('k3Rjx', 1, 'Curry Papeda', 'Resep Kiriman Pembaca JTT - Papeda, The Delicious Papua!', '38000', 30, 1, 'Kuliner_Rumah_Makan_Padang_Kedai_Nasi_Pauh_Piaman1.jpg'),
('KWifa', 1, 'Bakmi Ayam', 'Food Bakmi ayamm', '20000', 30, 1, 'KEDAI_BAKMI_AYAM_MPOK_LALA.jpg'),
('NPkJ9', 0, 'Roti Bakar', 'Roti Bakar Abang-abang versi Sandwich', '35000', 40, 1, 'Roti_Bakar_Abang-abang_versi_Sandwich.jpg'),
('rH1m7', 1, 'Fish Streat', 'Fish Streat, Solusi Makan Fish Chips Enak Tanpa Menguras Kantong', '45000', 20, 1, 'Fish_Streat,_Solusi_Makan_Fish_Chips_Enak_Tanpa_Menguras_Kantong.jpg'),
('TE5O1', 0, 'Paruh', 'Kuliner Rumah Makan Padang Kedai Nasi Pauh Piaman', '50000', 25, 1, 'Kuliner_Rumah_Makan_Padang_Kedai_Nasi_Pauh_Piaman.jpg'),
('tFnL4', 2, 'Hot Coffee', 'Hot Coffee, lifestyle', '29000', 20, 1, 'Hot_Coffee,_lifestyle.jpg'),
('U9iqB', 1, 'Chicken Noodle', 'Noodle, Vegetable, Spicy hoootttt', '20000', 50, 1, '771a52d6-10b3-40bc-ab1c-7fa5f359e08e.jpg'),
('uqZ1s', 2, 'V60', 'Coffe original taste...', '36000', 20, 1, 'af24397b-d1f2-47f6-85f4-11665cdcdf39.jpg'),
('WPAI9', 2, 'Coffe Latte', 'Drink Cofffe Late Frezeee', '25000', 40, 1, '7e5646a7-9c53-44a3-a660-3c943f4ba186.jpg'),
('yM4nr', 1, 'Meet Ball Yamin', 'Meet ball spicyy hooottt, versi YAMINN', '25000', 30, 1, 'Bakso_Telur,_Sumsum,_Rawit_Rusuk.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` varchar(30) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `tgl_transaksi` varchar(15) NOT NULL,
  `total_bayar` varchar(15) NOT NULL,
  `status_order` int(11) NOT NULL,
  `bukti_pembayaran` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
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
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `alamat`, `no_hp`, `username`, `password`, `level_user`) VALUES
(1, 'Admin', 'Kuningan Jawa Barat', '085156727368', 'admin', 'admin', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `chatting`
--
ALTER TABLE `chatting`
  ADD PRIMARY KEY (`id_chatting`);

--
-- Indeks untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id_detail`);

--
-- Indeks untuk tabel `diskon`
--
ALTER TABLE `diskon`
  ADD PRIMARY KEY (`id_diskon`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `kritik_saran`
--
ALTER TABLE `kritik_saran`
  ADD PRIMARY KEY (`id_kritik`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `pengiriman`
--
ALTER TABLE `pengiriman`
  ADD PRIMARY KEY (`id_pengiriman`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `chatting`
--
ALTER TABLE `chatting`
  MODIFY `id_chatting` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `diskon`
--
ALTER TABLE `diskon`
  MODIFY `id_diskon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kritik_saran`
--
ALTER TABLE `kritik_saran`
  MODIFY `id_kritik` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pengiriman`
--
ALTER TABLE `pengiriman`
  MODIFY `id_pengiriman` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
