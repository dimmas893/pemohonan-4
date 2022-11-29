-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Nov 2022 pada 11.24
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
  `testing` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info_layanan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `layanan`
--

INSERT INTO `layanan` (`id`, `id_layanan`, `nama_layanan`, `testing`, `info_layanan`, `created_at`, `updated_at`) VALUES
(2, '1234', 'Pelantikan PPAT', 'p', 'layanan ini untuk membuat rumah kalangan bawah', '2022-11-23 21:40:13', '2022-11-23 23:49:16'),
(3, '123', 'Ganti Nama', NULL, 'layanan ini untuk kalangan bawah', '2022-11-23 22:21:12', '2022-11-23 23:48:54'),
(4, '1', 'Pelepasan Sebagian Hak', NULL, 'layanan ini untuk kalangan bawah', '2022-11-23 23:49:42', '2022-11-23 23:49:42'),
(5, '1', 'Pemecahan Bidang', NULL, 'layanan ini untuk kalangan bawah', '2022-11-23 23:50:00', '2022-11-23 23:50:00'),
(6, '1', 'Pemisahan Bidang', NULL, 'layanan ini untuk kalangan bawah', '2022-11-23 23:50:21', '2022-11-23 23:50:21'),
(7, '1', 'Pencatatan/Pelunasan BPHTB/PPH', NULL, 'layanan ini untuk kalangan bawah', '2022-11-23 23:51:19', '2022-11-23 23:51:19'),
(8, '1', 'Pengangkatan Sita', NULL, 'layanan ini untuk kalangan bawah', '2022-11-23 23:51:43', '2022-11-23 23:51:43'),
(9, '2', 'Penggabungan Bidang', NULL, 'layanan ini untuk kalangan bawah', '2022-11-23 23:52:05', '2022-11-23 23:52:05'),
(10, '1', 'Peningkatan Kualitas PPAT sementara', NULL, 'layanan ini untuk kalangan bawah', '2022-11-23 23:52:41', '2022-11-23 23:52:41'),
(11, '2', 'Peralihan Pihak - Hibah', 'p', 'layanan ini untuk kalangan bawah', '2022-11-23 23:53:09', '2022-11-23 23:53:09'),
(12, 'das', 'PERALIHAN HAK - PEMASUKAN KE DALAM PERUSAHAAN ( BPNRI.ii.1 )', NULL, '-dapat diakses online oleh PPTA : Ya\r\n-dapat diakses online oleh Masyarakat : Tidak\r\n-dapat diakses online oleh Penilai Tanah : Tidak\r\n-dapat diakses online oleh Suerveyor : Tidak', '2022-11-25 00:19:06', '2022-11-25 00:22:20');

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
(185, '1', '11', '194', '1', NULL, '2022-11-29 03:06:02', '2022-11-29 03:06:02'),
(186, '1', '11', '195', '1', NULL, '2022-11-29 03:06:55', '2022-11-29 03:06:55'),
(187, '1', '11', '196', '1', NULL, '2022-11-29 03:07:04', '2022-11-29 03:07:04'),
(188, '1', '11', '197', '1', NULL, '2022-11-29 03:08:36', '2022-11-29 03:08:36'),
(189, '1', '11', '198', '1', NULL, '2022-11-29 03:09:18', '2022-11-29 03:09:18'),
(190, '1', '11', '199', '1', NULL, '2022-11-29 03:09:28', '2022-11-29 03:09:28'),
(191, '1', '12', '200', '1', NULL, '2022-11-29 03:10:41', '2022-11-29 03:10:41'),
(192, '1', '12', '201', '1', NULL, '2022-11-29 03:11:38', '2022-11-29 03:11:38'),
(193, '1', '11', '202', '1', NULL, '2022-11-29 03:12:51', '2022-11-29 03:12:51'),
(194, '1', '11', '203', '1', NULL, '2022-11-29 03:13:10', '2022-11-29 03:13:10'),
(195, '1', '11', '204', '1', NULL, '2022-11-29 03:14:28', '2022-11-29 03:14:28'),
(196, '1', '11', '205', '1', NULL, '2022-11-29 03:14:42', '2022-11-29 03:14:42'),
(197, '1', '11', '206', '1', NULL, '2022-11-29 03:18:34', '2022-11-29 03:18:34'),
(198, '1', '12', '207', '1', NULL, '2022-11-29 03:19:11', '2022-11-29 03:19:11'),
(199, '1', '12', '208', '1', NULL, '2022-11-29 03:19:25', '2022-11-29 03:19:25'),
(200, '1', '12', '209', '1', NULL, '2022-11-29 03:19:35', '2022-11-29 03:19:35'),
(201, '1', '12', '210', '1', NULL, '2022-11-29 03:19:48', '2022-11-29 03:19:48'),
(202, '1', '12', '211', '1', NULL, '2022-11-29 03:20:11', '2022-11-29 03:20:11'),
(203, '1', '11', '212', '1', NULL, '2022-11-29 03:21:04', '2022-11-29 03:21:04');

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

--
-- Dumping data untuk tabel `pemohons`
--

INSERT INTO `pemohons` (`id`, `nik`, `no_kk`, `nama_pemohon`, `alamat`, `no_hp`, `email`, `id_user`, `created_at`, `updated_at`) VALUES
(194, 'sad', 'dshjhjh', 'hj', 'hjhjh', 'jhjhjhjhjh', 'jhjhjhj@jhjhj.com', 1, '2022-11-29 03:06:02', '2022-11-29 03:06:02'),
(195, 'sad', 'dshjhjh', 'hj', 'hjhjh', 'jhjhjhjhjh', 'jhjhjhj@jhjhj.com', 1, '2022-11-29 03:06:55', '2022-11-29 03:06:55'),
(196, 'sad', 'dshjhjh', 'hj', 'hjhjh', 'jhjhjhjhjh', 'jhjhjhj@jhjhj.com', 1, '2022-11-29 03:07:04', '2022-11-29 03:07:04'),
(197, 'sad', 'dshjhjh', 'hj', 'hjhjh', 'jhjhjhjhjh', 'jhjhjhj@jhjhj.com', 1, '2022-11-29 03:08:36', '2022-11-29 03:08:36'),
(198, 'sad', 'dshjhjh', 'hj', 'hjhjh', 'jhjhjhjhjh', 'jhjhjhj@jhjhj.com', 1, '2022-11-29 03:09:18', '2022-11-29 03:09:18'),
(199, 'sad', 'dshjhjh', 'hj', 'hjhjh', 'jhjhjhjhjh', 'jhjhjhj@jhjhj.com', 1, '2022-11-29 03:09:28', '2022-11-29 03:09:28'),
(200, 'jkk', 'jk', 'jkj', 'kj', 'kj', 'kjkkjkjkk@Jkjkjk.com', 1, '2022-11-29 03:10:41', '2022-11-29 03:10:41'),
(201, 'jkk', 'jk', 'jkj', 'kj', 'kj', 'kjkkjkjkk@Jkjkjk.com', 1, '2022-11-29 03:11:38', '2022-11-29 03:11:38'),
(202, 'adad', 'hjh', 'jj', 'hjh', 'jh', 'jhjh@kjkjk.com', 1, '2022-11-29 03:12:51', '2022-11-29 03:12:51'),
(203, 'adad', 'hjh', 'jj', 'hjh', 'jh', 'jhjh@kjkjk.com', 1, '2022-11-29 03:13:10', '2022-11-29 03:13:10'),
(204, 'adad', 'hjh', 'jj', 'hjh', 'jh', 'jhjh@kjkjk.com', 1, '2022-11-29 03:14:28', '2022-11-29 03:14:28'),
(205, 'adad', 'hjh', 'jj', 'hjh', 'jh', 'jhjh@kjkjk.com', 1, '2022-11-29 03:14:42', '2022-11-29 03:14:42'),
(206, 'adad', 'hjh', 'jj', 'hjh', 'jh', 'jhjh@kjkjk.com', 1, '2022-11-29 03:18:34', '2022-11-29 03:18:34'),
(207, 'hjhjh', 'jhj', 'hjhj', 'hjhjhjhj', 'hjjjh', 'jhjhjhjh@gmaild.com', 1, '2022-11-29 03:19:11', '2022-11-29 03:19:11'),
(208, 'hjhjh', 'jhj', 'hjhj', 'hjhjhjhj', 'hjjjh', 'jhjhjhjh@gmaild.com', 1, '2022-11-29 03:19:25', '2022-11-29 03:19:25'),
(209, 'hjhjh', 'jhj', 'hjhj', 'hjhjhjhj', 'hjjjh', 'jhjhjhjh@gmaild.com', 1, '2022-11-29 03:19:35', '2022-11-29 03:19:35'),
(210, 'hjhjh', 'jhj', 'hjhj', 'hjhjhjhj', 'hjjjh', 'jhjhjhjh@gmaild.com', 1, '2022-11-29 03:19:48', '2022-11-29 03:19:48'),
(211, 'hjhjh', 'jhj', 'hjhj', 'hjhjhjhj', 'hjjjh', 'jhjhjhjh@gmaild.com', 1, '2022-11-29 03:20:11', '2022-11-29 03:20:11'),
(212, 'jhhjhjhjj', 'hjhj', 'hjhj', 'hjhjhj', 'hjhjhj', 'hjjhjhjhh@JHjhjhjh.com', 1, '2022-11-29 03:21:04', '2022-11-29 03:21:04');

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
(6, 'Kartu Keluarga', '1', '1', 'Wajib', '2022-11-24 00:42:52', '2022-11-24 00:42:52'),
(7, 'Akta Jual Beli', '1', '1', 'Wajib', '2022-11-24 00:43:43', '2022-11-24 00:43:43'),
(8, 'Sertipikat Hak Atas Tanah', '1', '1', 'Wajib', '2022-11-25 00:30:59', '2022-11-25 00:30:59'),
(11, 'Akta Pemasukan Modal ke Perusahaan', '1', '1', 'wajib', '2022-11-25 01:26:04', '2022-11-25 01:26:04'),
(12, 'Fotocopy Pajak Bumi dan Bangunan', '1', '1', 'wajib', '2022-11-25 01:26:15', '2022-11-25 01:26:15'),
(13, 'Fotocopy Bea Perolehan Hak Tanah dan Bangunan', '1', '1', 'wajib', '2022-11-25 01:26:32', '2022-11-25 01:26:32'),
(14, 'Fotocopy Surat Setoran Pajak/PPH', '1', '1', 'wajib', '2022-11-25 01:26:43', '2022-11-25 01:26:43'),
(15, 'Fotocopy KTP / KK', '1', '1', 'wajib', '2022-11-25 01:26:53', '2022-11-25 01:26:53'),
(16, 'Surat Permohonan Keringanan Biaya', '1', '1', 'wajib', '2022-11-25 01:27:06', '2022-11-25 01:27:06'),
(17, 'Surat Permohonan', '1', '1', 'wajib', '2022-11-25 01:27:17', '2022-11-25 01:27:17'),
(18, 'Fotocopy KTP / Identitas Pemilik Hak', '1', '1', 'wajib', '2022-11-25 01:27:28', '2022-11-25 01:27:28'),
(19, 'Surat Pengantar PPAT', '1', '1', 'wajib', '2022-11-25 01:27:44', '2022-11-25 01:27:44'),
(20, 'Surat Kuasa Permohonan', '1', '1', 'wajib', '2022-11-25 01:28:02', '2022-11-25 01:28:02'),
(21, 'NPWP', '1', '1', 'wajib', '2022-11-25 01:28:15', '2022-11-25 01:28:15'),
(22, 'Surat Pernyataan Kepanjangan Nama', '1', '1', 'wajib', '2022-11-25 01:28:27', '2022-11-25 01:28:27'),
(23, 'Surat Pernyataan dari KAKANWIL', '1', '1', 'wajib', '2022-11-25 01:28:38', '2022-11-25 01:28:38'),
(24, 'Surat Pernyataan Pertanggungjawaban Mutlak Pelunasan BPHTB', '1', '1', 'wajib', '2022-11-25 01:28:49', '2022-11-25 01:28:49');

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
(5, 11, 5, 'layanan', '2022-11-24 00:44:56', '2022-11-24 00:45:20'),
(6, 11, 8, 'PERALIHAN HAK - PEMASUKAN KE DALAM PERUSAHAAN ( BPNRI.ii.1 )', '2022-11-25 01:30:59', '2022-11-25 01:30:59'),
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
  `id_permohonan` int(11) DEFAULT NULL,
  `id_persyaratan` int(11) DEFAULT NULL,
  `entry_data` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_data` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `rincian_permohonans`
--

INSERT INTO `rincian_permohonans` (`id`, `id_permohonan`, `id_persyaratan`, `entry_data`, `upload_data`, `created_at`, `updated_at`) VALUES
(458, 203, 5, 'jjhjhjhjh', 'C:\\xampp\\tmp\\php8431.tmp', '2022-11-29 03:21:04', '2022-11-29 03:21:04'),
(459, 203, 5, 'hjhjh', 'C:\\xampp\\tmp\\php8431.tmp', '2022-11-29 03:21:04', '2022-11-29 03:21:04');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT untuk tabel `pemohons`
--
ALTER TABLE `pemohons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=460;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
