-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Des 2021 pada 09.34
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_donation`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_admin`
--

CREATE TABLE `data_admin` (
  `id_admin` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `hak_akses` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_admin`
--

INSERT INTO `data_admin` (`id_admin`, `username`, `password`, `hak_akses`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_donasi`
--

CREATE TABLE `data_donasi` (
  `id_donasi` int(11) NOT NULL,
  `nama_donasi` text NOT NULL,
  `kategori_donasi` text NOT NULL,
  `target_donasi` text NOT NULL,
  `perolehan_donasi` text NOT NULL,
  `masa_donasi` date NOT NULL,
  `deskripsi_donasi` text NOT NULL,
  `tgl_donasi` date NOT NULL,
  `masa_aktif` int(3) NOT NULL,
  `img1` text NOT NULL,
  `img2` text NOT NULL,
  `img3` text NOT NULL,
  `img4` text NOT NULL,
  `img5` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_donasi`
--

INSERT INTO `data_donasi` (`id_donasi`, `nama_donasi`, `kategori_donasi`, `target_donasi`, `perolehan_donasi`, `masa_donasi`, `deskripsi_donasi`, `tgl_donasi`, `masa_aktif`, `img1`, `img2`, `img3`, `img4`, `img5`) VALUES
(32, 'Bantu Gilang menemukan 7 bola naga', 'Kemanusiaan', '10000000', '10512518', '2021-11-26', 'hjkjhgf', '2021-11-04', -28, 'front/images/donasi/0f6dacff-a900-48c4-b139-88f4d5db0610.jpg', 'front/images/donasi/', 'front/images/donasi/', 'front/images/donasi/', 'front/images/donasi/'),
(33, 'Pray for Batu', 'Sosial', '20000000', '55353', '2021-11-30', 'mari bantu korban banjir', '2021-11-07', -23, 'front/images/donasi/karyawan-dan-tamu-discovery-kartika-plaza-hotel-bersihkan-sampah-di-pantai-kuta_20160129_223914.jpg', 'front/images/donasi/53388-banjir-bandang-kota-batu-jatim.jpg', 'front/images/donasi/download (1).jfif', 'front/images/donasi/download.jfif', 'front/images/donasi/images (1).jfif'),
(34, 'Bantu upin belikan kaki palsu', 'Kemanusiaan', '5000000', '1000148', '2022-01-30', 'upin adalah anak difabel yg memiliki semangat tinggi bersekolah ', '2021-12-23', 38, 'front/images/donasi/dif.jpg', 'front/images/donasi/images (2).jfif', 'front/images/donasi/images (3).jfif', 'front/images/donasi/images (4).jfif', 'front/images/donasi/images (5).jfif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_feedback`
--

CREATE TABLE `data_feedback` (
  `id_feedback` int(11) NOT NULL,
  `nama_feedback` text NOT NULL,
  `no_telp_feedback` text NOT NULL,
  `pesan_feedback` text NOT NULL,
  `tgl_feedback` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_feedback`
--

INSERT INTO `data_feedback` (`id_feedback`, `nama_feedback`, `no_telp_feedback`, `pesan_feedback`, `tgl_feedback`) VALUES
(3, 'miracle', '0987890', 'sip dah', '2021-11-04'),
(4, 'miraclegols', '0987654321', 'poi', '2021-11-08'),
(5, 'miraclegolssssssssss', '123232321234', 'sippp', '2021-11-14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_transaksi`
--

CREATE TABLE `data_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_donasi` int(11) NOT NULL,
  `nama_donatur` text NOT NULL,
  `no_telp_donatur` text NOT NULL,
  `pesan_donatur` text NOT NULL,
  `jumlah_donasi` int(11) NOT NULL,
  `kode_transaksi` text NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `bayar` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_transaksi`
--

INSERT INTO `data_transaksi` (`id_transaksi`, `id_donasi`, `nama_donatur`, `no_telp_donatur`, `pesan_donatur`, `jumlah_donasi`, `kode_transaksi`, `tgl_transaksi`, `bayar`) VALUES
(29, 1, 'gils', '09090909', 'seadanya', 10236, 'LMI27092', '2021-10-27', 0),
(30, 30, 'gilaaang', '09090909888', 'ini', 10558, 'LMI270441', '2021-10-27', 0),
(31, 25, 'gilangssss', '080808080909', 'semoga cepet sembuh', 1000217, 'LMI280987', '2021-10-28', 1),
(32, 28, 'okk', '898989898', 'semoga bermanfaat', 10000832, 'LMI280530', '2021-10-28', 0),
(33, 2, 'wakwak', '09090909887', 'semangat sekolahnya', 500060, 'LMI280579', '2021-10-28', 1),
(34, 25, 'hshsshs', '0000000000', 'ok', 10083, 'LMI290978', '2021-10-29', 0),
(35, 28, 'Saputra GIlang', '1111919191', 'semoga bermanfaat', 500765, 'LMI290832', '2021-10-29', 1),
(36, 25, 'anam', '111191919112', 'smng', 10928, 'LMI040446', '2021-11-04', 0),
(37, 32, 'ssss', '12345678', 'semoga cpet ketmu', 10912, 'LMI080165', '2021-11-08', 1),
(39, 1, 'syut', '12343434', 'sip', 10908, 'LMI140347', '2021-11-14', 0),
(40, 2, 'ghjhgf', '767767676', 'okeokeokekoe', 10000623, 'LMI14024', '2021-11-14', 0),
(41, 32, 'hshsshsxcvbhnjm', '1234567811', 'y', 10000877, 'LMI230568', '2021-11-23', 1),
(42, 32, 'adiii', '112233112', 'mantapppppp semoga ketemu', 500729, 'LMI060936', '2021-12-06', 1),
(43, 25, 'okssss', '1112223333', 'sip', 1000361, 'LMI160759', '2021-12-16', 0),
(44, 33, 'gilanganteng', '0101011', 'oke', 55353, 'LMI230932', '2021-12-23', 1),
(45, 34, 'gilanggg', '090909091', 'semngat sekolahnya', 1000148, 'LMI230923', '2021-12-23', 1),
(46, 33, 'secret', '11122331', 'smga berkah', 10000795, 'LMI230304', '2021-12-23', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_admin`
--
ALTER TABLE `data_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `data_donasi`
--
ALTER TABLE `data_donasi`
  ADD PRIMARY KEY (`id_donasi`);

--
-- Indeks untuk tabel `data_feedback`
--
ALTER TABLE `data_feedback`
  ADD PRIMARY KEY (`id_feedback`);

--
-- Indeks untuk tabel `data_transaksi`
--
ALTER TABLE `data_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_admin`
--
ALTER TABLE `data_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `data_donasi`
--
ALTER TABLE `data_donasi`
  MODIFY `id_donasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `data_feedback`
--
ALTER TABLE `data_feedback`
  MODIFY `id_feedback` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `data_transaksi`
--
ALTER TABLE `data_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
