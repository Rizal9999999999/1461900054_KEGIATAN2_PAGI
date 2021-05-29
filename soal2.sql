-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Bulan Mei 2021 pada 08.33
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `soal2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ms_buku`
--

CREATE TABLE `ms_buku` (
  `kode_buku` char(10) NOT NULL,
  `kode_kategori` char(10) DEFAULT NULL,
  `kode_penerbit` char(10) DEFAULT NULL,
  `judul_buku` varchar(50) DEFAULT NULL,
  `jumlah_buku` int(11) DEFAULT NULL,
  `pengarang_buku` varchar(50) DEFAULT NULL,
  `tahun_terbit_buku` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ms_buku`
--

INSERT INTO `ms_buku` (`kode_buku`, `kode_kategori`, `kode_penerbit`, `judul_buku`, `jumlah_buku`, `pengarang_buku`, `tahun_terbit_buku`) VALUES
('B001', 'K001', 'P004', 'Boku No Hero Academia', 4, 'Kohei Horikoshi', 2016),
('B002', 'K002', 'P002', 'Dr. Stone', 2, 'Riichiro Inagaki', 2017),
('B003', 'K003', 'P001', 'Bakusou Kyodai Lets & Go', 5, 'Tetsuhiro Koshita', 1994),
('B004', 'K004', 'P002', 'Kabukichou Sherlock', 2, 'Arthur Conan Doyle', 2019),
('B005', 'K005', 'P002', 'Yami Shibai', 2, 'Tomoya Takashima', 2013),
('B006', 'K006', 'P003', 'Gegege No Kitarou', 3, 'Shigeru Mizuki', 1959),
('B007', 'K001', 'P003', 'Enen No Shouboutai', 3, 'Atsushi Okubo', 2015),
('B008', 'K001', 'P003', 'No Guns Life', 3, 'Tasuku Karasuma', 2014),
('B009', 'K001', 'P001', 'Psycho-Pass', 1, 'Hikaru Miyoshi', 2015),
('B010', 'K002', 'P004', 'Granblue Fantasy The Animation', 4, 'Ayato Kurata', 2017),
('B011', 'K002', 'P004', 'Mugen No Juunin: Immortal', 4, 'Hiroaki Samura', 2019),
('B012', 'K004', 'P002', 'Mairimashita! Iruma-kun', 2, 'Osamu Nishi', 2017),
('B013', 'K004', 'P003', 'Shin Chuuka Ichiban', 3, 'Etsushi Ogawa', 2019),
('B014', 'K005', 'P002', 'Mawaru Penguindrum', 2, 'Etsuko Yakushimaru', 2016),
('B015', 'K005', 'P004', 'Ousama Game The Animation', 4, 'Nobuaki Kanazawa', 2017),
('B016', 'K006', 'P002', 'Fairy Gone', 2, 'Ao Jyumonji', 2019);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ms_detail_pinjam`
--

CREATE TABLE `ms_detail_pinjam` (
  `kode_peminjaman` char(10) DEFAULT NULL,
  `kode_buku` char(10) DEFAULT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `denda` double DEFAULT NULL,
  `status_kembali` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ms_detail_pinjam`
--

INSERT INTO `ms_detail_pinjam` (`kode_peminjaman`, `kode_buku`, `tgl_kembali`, `denda`, `status_kembali`) VALUES
('PMJ001', 'B003', '2019-12-03', 0, 1),
('PMJ002', 'B005', '2019-12-05', 0, 1),
('PMJ003', 'B007', '2019-10-07', 0, 1),
('PMJ004', 'B009', '2019-12-09', 5000, 0),
('PMJ005', 'B004', '2019-11-04', 10000, 0),
('PMJ006', 'B006', '2019-12-06', 15000, 0),
('PMJ007', 'B008', '2019-10-08', 0, 1),
('PMJ008', 'B009', '2019-12-09', 0, 1),
('PMJ009', 'B012', '2019-12-12', 20000, 0),
('PMJ010', 'B010', '2019-12-10', 25000, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ms_kartu_pendaftaran`
--

CREATE TABLE `ms_kartu_pendaftaran` (
  `kode_kartu` char(10) NOT NULL,
  `kode_petugas` char(10) DEFAULT NULL,
  `kode_peminjam` char(10) DEFAULT NULL,
  `tgl_pembuatan` date DEFAULT NULL,
  `tgl_akhir` date DEFAULT NULL,
  `status_aktif` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ms_kartu_pendaftaran`
--

INSERT INTO `ms_kartu_pendaftaran` (`kode_kartu`, `kode_petugas`, `kode_peminjam`, `tgl_pembuatan`, `tgl_akhir`, `status_aktif`) VALUES
('KR001', 'PT001', 'PM001', '2019-12-01', '2020-01-01', 1),
('KR002', 'PT003', 'PM002', '2019-11-02', '2019-12-01', 0),
('KR003', 'PT005', 'PM003', '2019-12-03', '2020-01-01', 1),
('KR004', 'PT002', 'PM004', '2019-12-04', '2020-01-01', 1),
('KR005', 'PT004', 'PM005', '2019-10-05', '2019-11-01', 0),
('KR006', 'PT006', 'PM006', '2019-10-06', '2019-11-01', 0),
('KR007', 'PT003', 'PM007', '2019-12-07', '2020-01-01', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ms_kategori`
--

CREATE TABLE `ms_kategori` (
  `kode_kategori` char(10) NOT NULL,
  `nama_kategori` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ms_peminjam`
--

CREATE TABLE `ms_peminjam` (
  `kode_peminjam` char(10) NOT NULL,
  `nama_peminjam` varchar(30) DEFAULT NULL,
  `alamat_peminjam` varchar(50) DEFAULT NULL,
  `telp_peminjam` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ms_peminjaman`
--

CREATE TABLE `ms_peminjaman` (
  `kode_peminjaman` char(10) NOT NULL,
  `kode_petugas` char(10) DEFAULT NULL,
  `kode_peminjam` char(10) DEFAULT NULL,
  `tgl_peminjaman` date DEFAULT NULL,
  `tgl_kembali` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ms_penerbit`
--

CREATE TABLE `ms_penerbit` (
  `kode_penerbit` char(10) NOT NULL,
  `nama_penerbit` varchar(20) DEFAULT NULL,
  `alamat_penerbit` varchar(50) DEFAULT NULL,
  `telp_penerbit` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ms_petugas`
--

CREATE TABLE `ms_petugas` (
  `kode_petugas` char(10) NOT NULL,
  `nama_petugas` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
