-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Jun 2023 pada 15.56
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `si_penjualanalbum`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bahanbaku`
--

CREATE TABLE `bahanbaku` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_bahan` varchar(255) NOT NULL,
  `baik_digunakan` date NOT NULL,
  `takaran` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bahanbaku`
--

INSERT INTO `bahanbaku` (`id`, `nama_bahan`, `baik_digunakan`, `takaran`, `created_at`, `updated_at`) VALUES
(1, 'Album NCT', '2022-12-16', '75 pcs', NULL, '2023-06-05 06:03:18'),
(10, 'Album EXO', '2022-06-19', '100pcs', '2023-06-05 06:20:06', '2023-06-05 06:29:28'),
(11, 'Album Unforgiven', '2023-04-06', '708pcs', '2023-06-05 06:29:03', '2023-06-05 06:29:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `id_bahan` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `nama_barang`, `kategori`, `id_bahan`, `created_at`, `updated_at`) VALUES
(1, 'Album NWJNS ', 'Album', 1, '2023-05-23 15:48:11', '2023-06-02 04:22:31'),
(3, 'Lightstick IVE', 'Merchandise', 3, '2023-05-26 04:46:09', '2023-05-28 22:32:27'),
(4, 'Album Itzy Guess Who', 'Album', 3, '2023-05-30 11:15:11', '2023-05-30 11:15:11'),
(5, 'Album IU Lilac', 'Album', 3, '2023-05-30 11:15:30', '2023-05-30 11:15:30'),
(6, 'LightRing Itzy', 'Merchandise', 1, '2023-05-30 11:15:56', '2023-05-30 11:15:56'),
(7, 'CandyBong Z Twice', 'Merchandise', 3, '2023-05-30 11:16:44', '2023-05-30 11:16:44'),
(8, 'Album NCT Resonance', 'Album', 5, '2023-05-30 11:23:29', '2023-05-30 11:23:29'),
(9, 'Album ME Jisoo', 'Album', 6, '2023-05-30 11:26:08', '2023-05-30 11:26:08'),
(10, 'Hoodie Bornpink', 'Merchandise', 6, '2023-05-30 11:27:01', '2023-05-30 11:27:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gudangbahan`
--

CREATE TABLE `gudangbahan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_bahan` bigint(20) UNSIGNED DEFAULT NULL,
  `jumlah_bahan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `gudangbahan`
--

INSERT INTO `gudangbahan` (`id`, `id_bahan`, `jumlah_bahan`, `created_at`, `updated_at`) VALUES
(1, 1, '100 kg', NULL, NULL),
(3, 1, '116 kg', '2023-05-29 01:53:42', '2023-05-29 01:59:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gudangbarang`
--

CREATE TABLE `gudangbarang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_barang` bigint(20) UNSIGNED DEFAULT NULL,
  `jumlah_barang` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `gudangbarang`
--

INSERT INTO `gudangbarang` (`id`, `id_barang`, `jumlah_barang`, `created_at`, `updated_at`) VALUES
(1, 7, '540 Pcs', NULL, '2023-06-05 06:32:28'),
(4, 9, '499pcs', '2023-06-05 06:32:10', '2023-06-05 06:32:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_05_23_143320_barang', 1),
(6, '2023_05_23_144049_bahanbaku', 1),
(7, '2023_05_23_145507_gudangbarang', 2),
(8, '2023_05_23_145524_gudangbahan', 2),
(9, '2023_05_23_145608_produksi', 2),
(10, '2023_05_23_145640_pegawai', 3),
(11, '2023_05_23_145705_peralatan', 3),
(12, '2023_05_23_145721_pengiriman', 3),
(13, '2023_05_23_145738_outlet', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `outlet`
--

CREATE TABLE `outlet` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_outlet` varchar(255) NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `jumlah_stock` varchar(255) NOT NULL,
  `batas_stock` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `outlet`
--

INSERT INTO `outlet` (`id`, `nama_outlet`, `lokasi`, `jumlah_stock`, `batas_stock`, `created_at`, `updated_at`) VALUES
(3, 'Midevio', 'Malang, Kota Malang, Indonesia', '600 Unit', '900 Unit', '2023-05-28 21:38:24', '2023-06-05 06:34:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_pegawai` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id`, `nama_pegawai`, `jabatan`, `created_at`, `updated_at`) VALUES
(3, 'Lucas', 'Supply Management', '2023-05-29 04:11:47', '2023-06-05 06:33:34'),
(5, 'Fathur', 'Administration', '2023-06-05 06:33:14', '2023-06-05 06:33:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengiriman`
--

CREATE TABLE `pengiriman` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_outlet` bigint(20) UNSIGNED DEFAULT NULL,
  `id_barang` bigint(20) UNSIGNED DEFAULT NULL,
  `biaya_pengiriman` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengiriman`
--

INSERT INTO `pengiriman` (`id`, `id_outlet`, `id_barang`, `biaya_pengiriman`, `tanggal`, `created_at`, `updated_at`) VALUES
(4, 3, 10, 'Rp.2.000.000', '2023-06-08', '2023-05-28 21:38:48', '2023-06-05 06:31:15'),
(5, 2, 5, 'Rp.400.000', '2023-06-23', '2023-06-05 06:31:00', '2023-06-05 06:31:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peralatan`
--

CREATE TABLE `peralatan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_alat` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `kondisi` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `peralatan`
--

INSERT INTO `peralatan` (`id`, `nama_alat`, `jumlah`, `kondisi`, `created_at`, `updated_at`) VALUES
(9, 'Album RV', 75, 'Second Sealed', '2023-06-05 06:27:26', '2023-06-05 06:27:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produksi`
--

CREATE TABLE `produksi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_barang` bigint(20) UNSIGNED DEFAULT NULL,
  `id_pegawai` bigint(20) UNSIGNED DEFAULT NULL,
  `id_alat` bigint(20) UNSIGNED DEFAULT NULL,
  `jumlah_produksi` varchar(255) NOT NULL,
  `biaya_produksi` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `produksi`
--

INSERT INTO `produksi` (`id`, `id_barang`, `id_pegawai`, `id_alat`, `jumlah_produksi`, `biaya_produksi`, `tanggal`, `created_at`, `updated_at`) VALUES
(1, 6, 3, 1, '100 slop', 1200000, '2023-05-24', NULL, '2023-06-02 05:07:32'),
(3, 3, 1, 1, '150 slop', 12000000, '2023-12-03', '2023-05-29 04:07:40', '2023-05-29 04:07:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `role`, `created_at`, `updated_at`) VALUES
(2, 'fathur', 'fathur@gmail.com', NULL, '$2y$10$YjG6nWfCfB5Qm1E5d9B0gO10Lx/fsmj7cYSE5sOSpi5A2UwwBPtry', NULL, 'admin', '2023-06-02 07:45:27', '2023-06-02 07:45:27');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bahanbaku`
--
ALTER TABLE `bahanbaku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `gudangbahan`
--
ALTER TABLE `gudangbahan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gudangbarang`
--
ALTER TABLE `gudangbarang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `outlet`
--
ALTER TABLE `outlet`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengiriman`
--
ALTER TABLE `pengiriman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `peralatan`
--
ALTER TABLE `peralatan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `produksi`
--
ALTER TABLE `produksi`
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
-- AUTO_INCREMENT untuk tabel `bahanbaku`
--
ALTER TABLE `bahanbaku`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `gudangbahan`
--
ALTER TABLE `gudangbahan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `gudangbarang`
--
ALTER TABLE `gudangbarang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `outlet`
--
ALTER TABLE `outlet`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pengiriman`
--
ALTER TABLE `pengiriman`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `peralatan`
--
ALTER TABLE `peralatan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `produksi`
--
ALTER TABLE `produksi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
