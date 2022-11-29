-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Nov 2022 pada 07.24
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yuhu`
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
-- Struktur dari tabel `layanan`
--

CREATE TABLE `layanan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_layanan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_layanan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info_layanan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `layanan`
--

INSERT INTO `layanan` (`id`, `id_layanan`, `nama_layanan`, `info_layanan`, `created_at`, `updated_at`) VALUES
(2, '1234', 'Pelantikan PPAT', 'layanan ini untuk membuat rumah kalangan bawah', '2022-11-23 21:40:13', '2022-11-23 23:49:16'),
(3, '123', 'Ganti Nama', 'layanan ini untuk kalangan bawah', '2022-11-23 22:21:12', '2022-11-23 23:48:54'),
(4, '1', 'Pelepasan Sebagian Hak', 'layanan ini untuk kalangan bawah', '2022-11-23 23:49:42', '2022-11-23 23:49:42'),
(5, '1', 'Pemecahan Bidang', 'layanan ini untuk kalangan bawah', '2022-11-23 23:50:00', '2022-11-23 23:50:00'),
(6, '1', 'Pemisahan Bidang', 'layanan ini untuk kalangan bawah', '2022-11-23 23:50:21', '2022-11-23 23:50:21'),
(7, '1', 'Pencatatan/Pelunasan BPHTB/PPH', 'layanan ini untuk kalangan bawah', '2022-11-23 23:51:19', '2022-11-23 23:51:19'),
(8, '1', 'Pengangkatan Sita', 'layanan ini untuk kalangan bawah', '2022-11-23 23:51:43', '2022-11-23 23:51:43'),
(9, '2', 'Penggabungan Bidang', 'layanan ini untuk kalangan bawah', '2022-11-23 23:52:05', '2022-11-23 23:52:05'),
(10, '1', 'Peningkatan Kualitas PPAT sementara', 'layanan ini untuk kalangan bawah', '2022-11-23 23:52:41', '2022-11-23 23:52:41'),
(11, '2', 'Peralihan Pihak - Hibah', 'layanan ini untuk kalangan bawah', '2022-11-23 23:53:09', '2022-11-23 23:53:09'),
(12, 'das', 'PERALIHAN HAK - PEMASUKAN KE DALAM PERUSAHAAN ( BPNRI.ii.1 )', '-dapat diakses online oleh PPTA : Ya\r\n-dapat diakses online oleh Masyarakat : Tidak\r\n-dapat diakses online oleh Penilai Tanah : Tidak\r\n-dapat diakses online oleh Suerveyor : Tidak', '2022-11-25 00:19:06', '2022-11-25 00:22:20');

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
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2022_11_24_033235_create_layanan_table', 1),
(11, '2022_11_24_033251_create_persyaratan_table', 1),
(12, '2022_11_24_033307_create_rincian_layanan_table', 1),
(13, '2022_11_24_074936_create_pemohons_table', 2),
(14, '2022_11_24_074957_create_pemohonans_table', 2),
(15, '2022_11_24_075018_create_rincian_permohonans_table', 2),
(16, '2022_11_25_031434_create_rincian_permohonans_table', 3);

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
-- Struktur dari tabel `pemohonans`
--

CREATE TABLE `pemohonans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_permohonan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_layanan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_pemohon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pemohonans`
--

INSERT INTO `pemohonans` (`id`, `id_permohonan`, `id_layanan`, `id_pemohon`, `id_user`, `tanggal`, `created_at`, `updated_at`) VALUES
(5, 'ssd', NULL, '14', '1', NULL, '2022-11-24 21:32:59', '2022-11-24 21:32:59'),
(6, 'dsd', NULL, '15', '1', NULL, '2022-11-24 23:17:55', '2022-11-24 23:17:55'),
(7, 'sdsds', NULL, '16', '1', NULL, '2022-11-24 23:18:16', '2022-11-24 23:18:16'),
(8, 'sds', NULL, '17', '1', NULL, '2022-11-25 00:06:21', '2022-11-25 00:06:21'),
(9, 'adad', NULL, '18', '1', NULL, '2022-11-25 00:10:55', '2022-11-25 00:10:55'),
(10, 'sss', NULL, '19', '1', NULL, '2022-11-25 00:12:23', '2022-11-25 00:12:23'),
(11, 'sdsdsd', NULL, '20', '1', NULL, '2022-11-25 00:13:06', '2022-11-25 00:13:06'),
(12, 'dsss', NULL, '21', '1', NULL, '2022-11-25 00:13:45', '2022-11-25 00:13:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemohons`
--

CREATE TABLE `pemohons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_kk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_pemohon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_hp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `persyaratan`
--

CREATE TABLE `persyaratan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_persyaratan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entry_data` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_data` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `persyaratan`
--

INSERT INTO `persyaratan` (`id`, `nama_persyaratan`, `entry_data`, `upload_data`, `status`, `created_at`, `updated_at`) VALUES
(5, 'KTP', '1', '1', 'Wajib', '2022-11-24 00:40:32', '2022-11-24 00:40:32'),
(6, 'Kartu Keluarga', NULL, NULL, 'Wajib', '2022-11-24 00:42:52', '2022-11-24 00:42:52'),
(7, 'Akta Jual Beli', NULL, NULL, 'Wajib', '2022-11-24 00:43:43', '2022-11-24 00:43:43'),
(8, 'Sertipikat Hak Atas Tanah', NULL, NULL, 'Wajib', '2022-11-25 00:30:59', '2022-11-25 00:30:59'),
(11, 'Akta Pemasukan Modal ke Perusahaan', 'WAJIB', NULL, 'wajib', '2022-11-25 01:26:04', '2022-11-25 01:26:04'),
(12, 'Fotocopy Pajak Bumi dan Bangunan', 'WAJIB', NULL, 'wajib', '2022-11-25 01:26:15', '2022-11-25 01:26:15'),
(13, 'Fotocopy Bea Perolehan Hak Tanah dan Bangunan', 'WAJIB', NULL, 'wajib', '2022-11-25 01:26:32', '2022-11-25 01:26:32'),
(14, 'Fotocopy Surat Setoran Pajak/PPH', NULL, NULL, 'wajib', '2022-11-25 01:26:43', '2022-11-25 01:26:43'),
(15, 'Fotocopy KTP / KK', 'WAJIB', NULL, 'wajib', '2022-11-25 01:26:53', '2022-11-25 01:26:53'),
(16, 'Surat Permohonan Keringanan Biaya', 'WAJIB', NULL, 'wajib', '2022-11-25 01:27:06', '2022-11-25 01:27:06'),
(17, 'Surat Permohonan', 'WAJIB', NULL, 'wajib', '2022-11-25 01:27:17', '2022-11-25 01:27:17'),
(18, 'Fotocopy KTP / Identitas Pemilik Hak', 'WAJIB', NULL, 'wajib', '2022-11-25 01:27:28', '2022-11-25 01:27:28'),
(19, 'Surat Pengantar PPAT', 'WAJIB', NULL, 'wajib', '2022-11-25 01:27:44', '2022-11-25 01:27:44'),
(20, 'Surat Kuasa Permohonan', 'WAJIB', NULL, 'wajib', '2022-11-25 01:28:02', '2022-11-25 01:28:02'),
(21, 'NPWP', 'WAJIB', NULL, 'wajib', '2022-11-25 01:28:15', '2022-11-25 01:28:15'),
(22, 'Surat Pernyataan Kepanjangan Nama', 'WAJIB', NULL, 'wajib', '2022-11-25 01:28:27', '2022-11-25 01:28:27'),
(23, 'Surat Pernyataan dari KAKANWIL', 'WAJIB', NULL, 'wajib', '2022-11-25 01:28:38', '2022-11-25 01:28:38'),
(24, 'Surat Pernyataan Pertanggungjawaban Mutlak Pelunasan BPHTB', 'WAJIB', NULL, 'wajib', '2022-11-25 01:28:49', '2022-11-25 01:28:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rincian_layanan`
--

CREATE TABLE `rincian_layanan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_layanan` int(11) NOT NULL,
  `id_persyaratan` int(11) NOT NULL,
  `nama_layanan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `rincian_layanan`
--

INSERT INTO `rincian_layanan` (`id`, `id_layanan`, `id_persyaratan`, `nama_layanan`, `created_at`, `updated_at`) VALUES
(5, 11, 5, 'Peralihan Pihak - Hibah', '2022-11-24 00:44:56', '2022-11-24 00:45:20'),
(6, 12, 8, 'PERALIHAN HAK - PEMASUKAN KE DALAM PERUSAHAAN ( BPNRI.ii.1 )', '2022-11-25 01:30:59', '2022-11-25 01:30:59'),
(7, 12, 11, 'PERALIHAN HAK - PEMASUKAN KE DALAM PERUSAHAAN ( BPNRI.ii.1 )', '2022-11-25 01:31:15', '2022-11-25 01:31:15'),
(8, 12, 12, 'PERALIHAN HAK - PEMASUKAN KE DALAM PERUSAHAAN ( BPNRI.ii.1 )', '2022-11-25 01:31:46', '2022-11-25 01:31:46'),
(9, 12, 13, 'PERALIHAN HAK - PEMASUKAN KE DALAM PERUSAHAAN ( BPNRI.ii.1 )', '2022-11-25 01:32:16', '2022-11-25 01:32:16'),
(10, 12, 14, 'PERALIHAN HAK - PEMASUKAN KE DALAM PERUSAHAAN ( BPNRI.ii.1 )', '2022-11-25 02:24:41', '2022-11-25 02:24:41'),
(11, 12, 15, 'PERALIHAN HAK - PEMASUKAN KE DALAM PERUSAHAAN ( BPNRI.ii.1 )', '2022-11-25 02:25:14', '2022-11-25 02:25:14'),
(12, 12, 16, 'PERALIHAN HAK - PEMASUKAN KE DALAM PERUSAHAAN ( BPNRI.ii.1 )', '2022-11-25 02:25:50', '2022-11-25 02:25:50'),
(13, 12, 17, 'PERALIHAN HAK - PEMASUKAN KE DALAM PERUSAHAAN ( BPNRI.ii.1 )', '2022-11-25 02:26:06', '2022-11-25 02:26:06'),
(14, 12, 18, 'PERALIHAN HAK - PEMASUKAN KE DALAM PERUSAHAAN ( BPNRI.ii.1 )', '2022-11-25 02:26:20', '2022-11-25 02:26:20'),
(15, 12, 19, 'PERALIHAN HAK - PEMASUKAN KE DALAM PERUSAHAAN ( BPNRI.ii.1 )', '2022-11-25 02:26:32', '2022-11-25 02:26:32'),
(16, 12, 20, 'PERALIHAN HAK - PEMASUKAN KE DALAM PERUSAHAAN ( BPNRI.ii.1 )', '2022-11-25 02:27:08', '2022-11-25 02:27:08'),
(17, 12, 21, 'PERALIHAN HAK - PEMASUKAN KE DALAM PERUSAHAAN ( BPNRI.ii.1 )', '2022-11-25 02:27:23', '2022-11-25 02:27:23'),
(18, 12, 22, 'PERALIHAN HAK - PEMASUKAN KE DALAM PERUSAHAAN ( BPNRI.ii.1 )', '2022-11-25 02:27:33', '2022-11-25 02:27:33'),
(19, 12, 24, 'PERALIHAN HAK - PEMASUKAN KE DALAM PERUSAHAAN ( BPNRI.ii.1 )', '2022-11-25 02:27:46', '2022-11-25 02:27:46'),
(20, 12, 23, 'PERALIHAN HAK - PEMASUKAN KE DALAM PERUSAHAAN ( BPNRI.ii.1 )', '2022-11-25 02:28:03', '2022-11-25 02:28:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rincian_permohonans`
--

CREATE TABLE `rincian_permohonans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_permohonan` int(11) NOT NULL,
  `id_persyaratan` int(11) NOT NULL,
  `entry_data` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `upload_data` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'dimmas', 'dimmas@gmail.com', NULL, '$2y$10$r2Rxh9jzFOoeWdpYD.ICbOjL5xy8ATXlYZm0fn8j2FUijAx1aGooq', NULL, '2022-11-23 20:44:48', '2022-11-23 21:57:13'),
(4, 'dsds', 'ddsds@gmjlkl.com', NULL, '$2y$10$y3h4Xv97bqdgo1EogdAe5elnVPzpFAXPFWb1UJTL1rAQeZGfcmrRa', NULL, '2022-11-25 02:50:20', '2022-11-25 02:50:20');

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
-- Indeks untuk tabel `layanan`
--
ALTER TABLE `layanan`
  ADD PRIMARY KEY (`id`);

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
-- Indeks untuk tabel `pemohonans`
--
ALTER TABLE `pemohonans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pemohons`
--
ALTER TABLE `pemohons`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `persyaratan`
--
ALTER TABLE `persyaratan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rincian_layanan`
--
ALTER TABLE `rincian_layanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rincian_permohonans`
--
ALTER TABLE `rincian_permohonans`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT untuk tabel `layanan`
--
ALTER TABLE `layanan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `pemohonans`
--
ALTER TABLE `pemohonans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `pemohons`
--
ALTER TABLE `pemohons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `persyaratan`
--
ALTER TABLE `persyaratan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `rincian_layanan`
--
ALTER TABLE `rincian_layanan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `rincian_permohonans`
--
ALTER TABLE `rincian_permohonans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
