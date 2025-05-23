-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 23 Bulan Mei 2025 pada 09.05
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
-- Database: `scw2025`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `speaker`
--

CREATE TABLE `speaker` (
  `id` int(11) NOT NULL,
  `gd` varchar(10) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `gb` varchar(50) NOT NULL,
  `posisi` varchar(128) NOT NULL,
  `organisasi` varchar(50) NOT NULL,
  `foto` text DEFAULT NULL,
  `kat` int(10) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `speaker`
--

INSERT INTO `speaker` (`id`, `gd`, `nama_lengkap`, `gb`, `posisi`, `organisasi`, `foto`, `kat`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Dr.', 'Farida Mohd Said', '', 'Professor of Nursing Studies, Lincoln University College, Kuala Lumpur', 'Malaysia', '1.webp', 1, '2025-02-21 15:24:47', '2025-05-23 13:28:26'),
(2, '', 'Nurbaisyah Badaruddin', '', 'Enterostomal Therapist Hospital Raja Permaisuri Bainun, Ipoh Kuala Lumpur', 'Malaysia', '2.png', 1, '2025-02-21 15:25:54', '2025-05-23 13:28:28'),
(3, '', 'Widasari Sri Gitarja', 'S.Kp., M.M., MARS, WOC(ET)N\n', 'CEO & Founder Corporate University of Wocare Indonesia', 'Indonesia', '3.webp', 0, '2025-02-21 15:25:54', '2025-05-20 15:06:57'),
(4, '', 'Rhyan A. Hitalla', 'RN', 'Department Head of the Stoma & Complex Wound Care Center, Medical City Hospital Philippines ', 'Philippines', '4.webp', 1, '2025-02-21 15:29:17', '2025-05-23 13:28:32'),
(5, 'dr.', 'Ariansah Margaluta', 'Sp.B-KBD\n', 'Dokter Spesialis Bedah Subspesialis Bedah Digestif Konsultan - Pusat Kanker Nasional RSK Dharmais – DKI Jakarta', 'Indonesia', '5.webp', 0, '2025-02-21 15:29:17', '2025-05-20 15:07:41'),
(6, 'dr.', 'Ulul Albab', 'Sp.OG', 'Sekretaris Jendral Pengurus Besar IDI – RSUD Jagakarsa DKI Jakarta', 'Indonesia', '6.webp', 0, '2025-02-21 15:29:17', '2025-05-20 15:07:58'),
(8, 'Dr. dr.', 'Sonar Soni Panigoro', 'Sp.B(K) Onk, M.Epid, MARS', 'Pengajar Ilmu Bedah Bedah Onkologi RS Cipto Mangunkusumo DKI Jakarta', 'Indonesia', '8.webp', 0, '2025-02-21 15:29:17', '2025-05-20 15:12:11'),
(9, 'dr.', 'Sjaiful Bachri', 'Sp.B-KBD', 'Dokter Spesialis Bedah Subspesialis Bedah Digestif Konsultan RSUD CIAWI Kab. Bogor – Jawa Barat', 'Indonesia', '9.webp', 0, '2025-02-21 15:29:17', '2025-05-20 15:12:14'),
(10, 'dr.', 'Mudatsir', 'M.Ked (surg), Sp.B, Subsp. BD (K) FINAC', 'Dokter Spesialis Bedah Subspesialis Bedah Digestif Konsultan RSUD Kota Bogor – Jawa Barat', 'Indonesia', '10.png', 0, '2025-02-21 15:30:29', '2025-05-20 15:12:17'),
(11, 'dr.', 'Rachmat Budi Santoso', 'Sp.U', 'Dokter Spesialis Urologi Subspesialis Urologi Onkologi Pusat Kanker Nasional RSK Dharmais – DKI Jakarta', 'Indonesia', '11.webp', 0, '2025-02-21 15:30:29', '2025-05-20 15:12:07'),
(12, 'dr.', 'Siti Annisa Nuhonni', 'Sp. KFR(K)', 'Dokter Konsultan spesialis Fisioterapi- RS Medistra Jakarta', 'Indonesia', '12.webp', 0, '2025-02-21 15:30:29', '2025-05-20 15:12:03'),
(13, 'dr.', 'Fajar Firsyada', 'Sp.B, Subsp.BD(K)', 'Dokter Spesialis Bedah Subspesialis Bedah Digestif Konsultan-Pusat Kanker Nasional RSK Dharmais – DKI Jakarta', 'Indonesia', '13.webp', 0, '2025-05-06 15:50:30', '2025-05-20 15:12:00'),
(14, 'Ns.', 'Endang Murwaningsih', 'S.Kep., M.Kep., Sp.Kep.MB, WOC(ET)N', 'Enterostomal Therapist -Pusat Kanker Nasional RSK Dharmais – DKI Jakarta', 'Indonesia', '14.webp', 0, '2025-05-06 15:50:30', '2025-05-20 15:11:57'),
(15, 'Ns.', 'Khairul Bahri', 'S.Kep., WOC(ET)N', 'Enterostomal Therapist - Wocare Center Bogor', 'Indonesia', '15.webp', 0, '2025-05-06 15:52:55', '2025-05-20 15:11:54'),
(16, 'Ns.', 'Marina Ruran', 'S.Kep., M.Kep., WOC(ET)N', 'Enterostomal Therapist & CEO Indocare DKI Jakarta', 'Indonesia', '16.webp', 0, '2025-05-06 15:52:55', '2025-05-20 15:11:51'),
(17, 'Ns.', 'Pipit Lestari', 'S.Kep., M.Sc, WOC(ET)N', 'Enterostomal Therapist - Wocare Center Bogor', 'Indonesia', '17.webp', 0, '2025-05-06 15:54:32', '2025-05-20 15:11:48'),
(18, 'Ns.', 'Rifa Qidya Ardi', 'S.Kep., CWCC, CSTP', 'Wocare Center Bogor', 'Indonesia', '18.webp', 0, '2025-05-06 15:54:32', '2025-05-20 15:11:42'),
(19, 'Ns.', 'Muhammad Fadli', 'S.Kep., CWCC, CSTP', 'Wocare Center Bogor', 'Indonesia', '19.webp', 0, '2025-05-06 15:55:55', '2025-05-20 15:11:37'),
(20, '', 'Tomy Abas', 'S.Kep., WOC(ET)N', 'Enterostomal Therapist - Wocare Center Bogor', 'Indonesia', '20.webp', 0, '2025-05-06 15:55:55', '2025-05-20 15:11:34'),
(21, 'Ns.', 'Kana Fajar', 'S.Kep., WOC(ET)N', 'Enterostomal Therapist - Wocare Center Bogor', 'Indonesia', '21.webp', 0, '2025-05-06 15:57:34', '2025-05-20 15:11:31'),
(22, 'Ns.', 'Tioma Naibaho', 'S.Kep., M.Kep., WOC(ET)N', 'Enterostomal Therapist - RS Kramat 128 – DKI Jakarta', 'Indonesia', '22.webp', 0, '2025-05-06 15:57:34', '2025-05-20 15:11:27'),
(23, '', 'Chusnul Justanti', 'Kes., S.Tr, Ftr, M.Kes', 'Fisioterapis - Kreasi Center', 'Indonesia', '23.webp', 0, '2025-05-06 15:58:16', '2025-05-20 15:11:23'),
(24, '', 'Tuti Widiastuty', '', 'Ostomate', 'Indonesia', '24.webp', 2, '2025-05-06 15:58:16', '2025-05-23 13:28:40'),
(25, '', 'Mr Elil Mathiyan Lakshmanan', '', 'Ostomate', 'Singapore', '25.png', 2, '2025-05-20 15:01:54', '2025-05-23 13:28:44'),
(26, '', 'Tengku Nazeehah Binti Tengku Mahmood', '', 'Ostomate', 'Malaysia', NULL, 2, '2025-05-20 15:01:54', '2025-05-23 13:28:46');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `speaker`
--
ALTER TABLE `speaker`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `speaker`
--
ALTER TABLE `speaker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
