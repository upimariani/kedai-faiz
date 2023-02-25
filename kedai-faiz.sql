-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Feb 2023 pada 14.34
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

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
-- Struktur dari tabel `chatting`
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
-- Dumping data untuk tabel `chatting`
--

INSERT INTO `chatting` (`id_chatting`, `id_pelanggan`, `id_user`, `pelanggan_send`, `admin_send`, `time`) VALUES
(1, 2, 1, 'hai', NULL, '2022-07-01 23:21:22'),
(2, 3, 1, 'Kak', NULL, '2022-07-19 01:48:07'),
(3, 2, 1, NULL, 'Hi^^ Selamat datang di Kedai Faiz', '2022-07-19 02:01:56'),
(4, 3, 1, NULL, 'Hi^^ Selamat Datang Di Krdai Faiz.\r\nAda yang bisa saya bantu ?', '2022-07-19 02:02:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id_detail` int(11) NOT NULL,
  `id_transaksi` varchar(30) NOT NULL,
  `id_diskon` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_transaksi`
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
(15, '2022070298WQRIAO', 12, 1),
(16, '20220719BKCIJUD7', 21, 2),
(17, '202207239GC0USEW', 12, 3),
(18, '202207239GC0USEW', 24, 3),
(19, '202207239GC0USEW', 18, 3),
(20, '202207239GC0USEW', 33, 2),
(21, '202207239GC0USEW', 30, 1),
(22, '20220723PNOJQ6EX', 54, 1),
(23, '20220723PNOJQ6EX', 18, 1),
(24, '20220725KGEFPVD3', 54, 2),
(25, '20220725KGEFPVD3', 9, 1),
(26, '20220811US0H6Z4S', 14, 1),
(27, '20220811US0H6Z4S', 20, 1),
(28, '202209043UFMUH6O', 15, 1),
(29, '20220911ETLXQ60O', 24, 1),
(30, '202209118LKEQMDR', 18, 1),
(31, '20220914CIMUURG1', 24, 1),
(32, '20220914CIMUURG1', 9, 1),
(33, '20220914CIMUURG1', 15, 1),
(34, '20220914CIMUURG1', 42, 1),
(35, '20220914KVNSAGNI', 6, 1),
(36, '20220914KVNSAGNI', 18, 1),
(37, '20220914U2HXNP5V', 3, 1),
(38, '20220914U2HXNP5V', 36, 1),
(39, '20220914U2HXNP5V', 42, 1),
(40, '20221003NMQEGCAO', 6, 1),
(41, '20221003RPUEL16O', 9, 1),
(42, '20221003RPUEL16O', 15, 1),
(43, '20221003Y7PE8GKJ', 9, 1),
(44, '20221004ZUQLMRPW', 15, 1),
(45, '20221004CMEJG5YH', 6, 1),
(46, '20221004CMEJG5YH', 9, 1),
(47, '202210041QFPYWDC', 3, 1),
(48, '202210041QFPYWDC', 6, 1),
(49, '202210041QFPYWDC', 12, 1),
(50, '20221004W7URKPFE', 3, 1),
(51, '20221004W7URKPFE', 6, 1),
(52, '20221004W7URKPFE', 9, 1),
(53, '20221004RN1CND6Q', 3, 1),
(54, '20221004RN1CND6Q', 6, 1),
(55, '20221005H04OT9UY', 6, 1),
(56, '20221005H04OT9UY', 15, 1),
(57, '20221005OABQLC6N', 3, 1),
(58, '20230207D3XYFJBP', 3, 1),
(59, '20230207DU0F3X1Y', 9, 1),
(60, '20230207DU0F3X1Y', 18, 1),
(61, '20230207DU0F3X1Y', 21, 1),
(62, '2023020743ONMITE', 3, 1);

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
(2, 'aro23', 'Meriah', '2022-07-25', 10, 2),
(3, 'aro23', '0', '0', 0, 3),
(4, 'U9iqB', '0', '0', 0, 1),
(5, 'U9iqB', 'liburan', '2022-09-15', 50, 2),
(6, 'U9iqB', '0', '0', 0, 3),
(7, 'yM4nr', '0', '0', 0, 1),
(8, 'yM4nr', '0', '0', 0, 2),
(9, 'yM4nr', '0', '0', 0, 3),
(10, '5X8Ak', '0', '0', 0, 1),
(11, '5X8Ak', 'mantan', '2022-09-17', 50, 2),
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
(57, 'ofUQL', '0', '0', 0, 3),
(58, 'STV2e', '0', '0', 0, 1),
(59, 'STV2e', '0', '0', 0, 2),
(60, 'STV2e', '0', '0', 0, 3),
(61, 'ABRuf', '0', '0', 0, 1),
(62, 'ABRuf', '0', '0', 0, 2),
(63, 'ABRuf', '0', '0', 0, 3),
(64, 'MWf5C', '0', '0', 0, 1),
(65, 'MWf5C', '0', '0', 0, 2),
(66, 'MWf5C', '0', '0', 0, 3);

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
-- Struktur dari tabel `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id_kecamatan` int(11) NOT NULL,
  `kode` int(11) NOT NULL,
  `nm_kecamatan` varchar(125) NOT NULL,
  `ongkir` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kecamatan`
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
(33, 1, 'subang', '35000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kritik_saran`
--

CREATE TABLE `kritik_saran` (
  `id_kritik` int(11) NOT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `isi_kritik` text DEFAULT NULL,
  `jawab_kritik` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kritik_saran`
--

INSERT INTO `kritik_saran` (`id_kritik`, `id_pelanggan`, `id_user`, `isi_kritik`, `jawab_kritik`) VALUES
(1, 2, 1, 'produk sangat recommded', NULL),
(2, 2, 1, NULL, 'bagus'),
(3, 3, 1, 'Mantapppp', NULL);

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
  `email` varchar(125) DEFAULT NULL,
  `password` varchar(125) NOT NULL,
  `level_member` int(11) NOT NULL,
  `point` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nm_pel`, `alamat`, `no_tlpon`, `username`, `email`, `password`, `level_member`, `point`) VALUES
(1, 'hana', 'Kuningan', '0891291829182', 'hana', 'rizkihasbiallah06@gmail.com', 'akuadalah', 3, 735),
(3, 'Zaskia', 'Kuningan', '089876567654', 'zaskia', 'zaskia@gmail.com', 'zaskia', 3, 105);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengiriman`
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
-- Dumping data untuk tabel `pengiriman`
--

INSERT INTO `pengiriman` (`id_pengiriman`, `id_transaksi`, `rt`, `rw`, `ongkir`, `alamat_pengiriman`, `id_kecamatan`, `kota`) VALUES
(1, '20220531BFYO4P6M', '23', '565', '9000', 'ftgfgfg', '17', '1'),
(2, '20220531HILMNM1K', '12', '21', '9000', 'Ciawigebang, Kuningan', '17', '1'),
(3, '20220617BINJSFHC', '12', '12', '67000', 'Ciawigebang, Kuningan', '51', '2'),
(4, '20220617LCJDXWAI', '12', '34', '7000', 'Ciawigebang, Kuningan', '23', '1'),
(5, '20220617TXHPGYZZ', '12', '2', '68000', 'cirebon kedawung', '52', '2'),
(6, '20220702QNC4WSFL', '12', '03', '9000', 'Ciawigebang, Kuningan', '17', '1'),
(7, '2022070298WQRIAO', '12', '03', '10000', 'Ciawigebang, Kuningan', '1', '1'),
(8, '20220719BKCIJUD7', '01', '05', '26000', 'Dusun Oleced Kec. Lebakwangi. Sebrang Pom Bensin Oleced', '24', '1'),
(9, '202207239GC0USEW', '05', '05', '7000', 'Kuningan', '23', '1'),
(10, '20220723PNOJQ6EX', '01', '01', '26000', 'Manggarin', '24', '1'),
(11, '20220725KGEFPVD3', '05', '02', '53000', 'Jl.beber baru no.45', '37', '2'),
(12, '20220911ETLXQ60O', '', '', '64000', 'jerman', '48', '2'),
(13, '202209118LKEQMDR', '', '', '21000', 'Kuningan', '14', '1'),
(14, '20220914CIMUURG1', '', '', '20000', 'Kuningan', '15', '1'),
(15, '20220914KVNSAGNI', '', '', '16000', 'Kuningan', '19', '1'),
(16, '20220914U2HXNP5V', '', '', '59000', 'Kuningan', '43', '2');

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
('5X8Ak', 1, 'Ayam Goreng', 'Ayam Goreng Renyah + Sambel lalab', '15000', 25, 1, 'ayam_goreng.jpg'),
('ABRuf', 2, 'Nutrisari', 'Minuman Nutrisari Jeruk', '5000', 20, 1, 'Nutrisari.jpg'),
('aro23', 1, 'Paket Burung Puyuh', 'Paket nasi burung puyuh goreng renyah', '21000', 15, 2, 'burungpuyuh1.jpg'),
('cb9B0', 1, 'Cireng', 'Cireng Goreng  Kedai Faiz', '1000', 70, 1, 'cireng.jpg'),
('D2de9', 2, 'MiloJel', 'Drink Milo Jelly', '10000', 25, 1, 'Milojel.jpg'),
('hUlqv', 2, 'Coffe milk ', 'Coffe Milk Original Tasteee', '12000', 30, 1, 'dfdfd.jpg'),
('k3Rjx', 1, 'Rujak Kangkung', 'Rujak Kangkung manis pedas ', '5000', 30, 1, 'kangkung.jpg'),
('KWifa', 1, 'Mie Ayam Hot Spesial', 'Food Mie ayamm ', '20000', 30, 1, 'KEDAI_BAKMI_AYAM_MPOK_LALA.jpg'),
('MWf5C', 2, 'vietnam drink', 'ok', '15000', 40, 1, 'b21.jpg'),
('NPkJ9', 0, 'Roti Bakar', 'Roti Bakar Abang-abang versi Sandwich', '35000', 40, 1, 'Roti_Bakar_Abang-abang_versi_Sandwich.jpg'),
('rH1m7', 1, 'Burung Puyuh Goreng', 'Burung Puyuh Goreng + Sambel Lalab', '15000', 20, 1, 'Burungpuyuh.jpg'),
('STV2e', 2, 'Pop Ice Coklat', 'Blend Pop Ice Coklat', '6000', 50, 1, 'popice_coklat.jpg'),
('TE5O1', 1, 'Paket Ayam Bakar', 'Paket nasi ayam bakar manis pedas', '21000', 25, 2, '62e6e38bc36889ee657d2902b15a4551.jpg'),
('tFnL4', 2, 'Hot Coffee', 'Hot Coffee, lifestyle', '11000', 20, 1, 'Hot_Coffee,_lifestyle.jpg'),
('U9iqB', 1, 'Ayam Bakar', 'Ayam Bakar + Sambel Lalab', '15000', 50, 1, 'Ayambakar.jpg'),
('uqZ1s', 2, 'Pop Ice Strawberry', 'Drink Strawberry Popice', '6000', 45, 1, 'popice_strawwberry.jpg'),
('VG43t', 1, 'Paket Ayam Goreng', 'Paket Ayam Goreng renyah', '21000', 20, 2, 'Paketayamgoreng.jpg'),
('WPAI9', 2, 'Milo Milk', 'Drink Milo Milk', '10000', 40, 1, '7e5646a7-9c53-44a3-a660-3c943f4ba186.jpg'),
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
  `type_order` int(11) NOT NULL DEFAULT 1,
  `bukti_pembayaran` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_pelanggan`, `tgl_transaksi`, `total_bayar`, `status_order`, `type_order`, `bukti_pembayaran`) VALUES
('20220531BFYO4P6M', 1, '2022-05-31', '75000', 4, 1, 'Ini-Dia-Bukti-Transfer-Mandiri-Dari-ATM-mBanking-dan-Internet-Banking-Mandiri-1.jpg'),
('20220531HILMNM1K', 1, '2022-05-31', '75000', 4, 1, '31084499740-bukti_transfer.jpg'),
('20220617BINJSFHC', 1, '2022-06-18', '52200', 4, 1, '0'),
('20220617LCJDXWAI', 1, '2022-06-17', '202200', 3, 1, 'a1.jpg'),
('20220617TXHPGYZZ', 2, '2022-06-17', '157000', 4, 1, '31084499740-bukti_transfer1.jpg'),
('2022070298WQRIAO', 2, '2022-07-02', '78500', 0, 1, '0'),
('20220719BKCIJUD7', 3, '2022-07-19', '40000', 4, 1, 'Bukti-Transfer-BRI-Terbaru-dan-Terlengkap.jpg'),
('202207239GC0USEW', 4, '2022-07-23', '190750', 4, 1, 'images_(1).jpg'),
('20220723PNOJQ6EX', 3, '2022-07-23', '29950', 0, 1, '0'),
('20220725KGEFPVD3', 6, '2022-07-25', '64900', 4, 1, 'Nutrisari.jpg'),
('20220811US0H6Z4S', 1, '2022-08-11', '35000', 4, 2, '0'),
('202209043UFMUH6O', 1, '2022-09-04', '15000', 4, 2, '0'),
('202209118LKEQMDR', 1, '2022-09-11', '10000', 4, 1, 'b2.jpg'),
('20220911ETLXQ60O', 1, '2022-09-11', '21000', 0, 1, '0'),
('20220914CIMUURG1', 1, '2022-09-14', '73000', 4, 1, 'b.jpg'),
('20220914KVNSAGNI', 1, '2022-09-14', '25000', 4, 1, 'b1.jpg'),
('20220914U2HXNP5V', 1, '2022-09-14', '39000', 4, 1, 'WhatsApp_Image_2022-08-03_at_08_41_37_(1).jpeg'),
('20221004RN1CND6Q', 1, '2022-10-04', '36000', 4, 2, '0'),
('20221004W7URKPFE', 1, '2022-10-04', '61000', 4, 2, '0'),
('20221005H04OT9UY', 1, '2022-10-05', '30000', 4, 2, '0'),
('20221005OABQLC6N', 1, '2022-10-05', '21000', 4, 2, '0'),
('2023020743ONMITE', 3, '2023-02-07', '21000', 4, 2, '0'),
('20230207D3XYFJBP', 1, '2023-02-07', '21000', 4, 2, '0'),
('20230207DU0F3X1Y', 3, '2023-02-07', '55000', 4, 2, '0');

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
-- Indeks untuk tabel `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id_kecamatan`);

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
  MODIFY `id_chatting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT untuk tabel `diskon`
--
ALTER TABLE `diskon`
  MODIFY `id_diskon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `id_kecamatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT untuk tabel `kritik_saran`
--
ALTER TABLE `kritik_saran`
  MODIFY `id_kritik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pengiriman`
--
ALTER TABLE `pengiriman`
  MODIFY `id_pengiriman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
