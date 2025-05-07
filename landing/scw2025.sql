-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 07 Bulan Mei 2025 pada 11.18
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
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id` int(11) NOT NULL,
  `hari` int(11) NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `nama` varchar(100) NOT NULL,
  `speaker` varchar(120) DEFAULT NULL,
  `lokasi` varchar(20) NOT NULL,
  `kapasitas` int(11) NOT NULL,
  `ket` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id`, `hari`, `jam_mulai`, `jam_selesai`, `nama`, `speaker`, `lokasi`, `kapasitas`, `ket`, `created_at`, `updated_at`) VALUES
(1, 1, '08:00:00', '09:00:00', 'Workshop 1 Pouching System – Ileustomy And Wound Infection', 'Ns.Endang Murwaningsih, S.Kep., M.Kep., Sp.Kep.MB, WOC(ET)N | dr. Ariansah Margaluta., Sp.B-KBD', 'BALLROOM 1  PLENARY ', 250, 1, '2025-02-21 02:23:22', '2025-02-24 09:41:56'),
(2, 1, '08:00:00', '09:00:00', 'Workshop 2 Urostomy Pouching and Wound Infection', 'Ns. Khairul Bahri, S.Kep., WOC(ET)N | dr. ulul Albab, Sp.OG | Tim Wocare', 'CLASSROOM A WORKSHOP', 40, 1, '2025-02-21 02:23:22', '2025-02-24 09:42:30'),
(3, 1, '08:00:00', '09:00:00', 'Workshop 3 Pouching System – Colostomy And Stoma Irrigation', 'Ns. Marina Ruran, S.Kep., M.Kep., WOC(ET)N | Dr. dr. Rebecca Angka, M.Biomed | Tomy Abas, S.Kep., WOC(ET)N', 'CLASSROOM B WORKSHOP', 250, 1, '2025-02-21 02:26:33', '2025-02-24 09:43:57'),
(4, 1, '10:00:00', '10:45:00', 'Opening Ceremony ', 'Dr. dr. Sonar Soni Panigoro, Sp.B (K) Onk, M.Epid, MARS', 'BALLROOM 1  PLENARY ', 250, NULL, '2025-02-21 03:48:34', '2025-02-21 04:09:22'),
(5, 1, '10:45:00', '11:30:00', 'Keynote 1: HRQOL in Stoma Patient', 'Prof. Dr. Farida Mohd Said', 'BALLROOM 1  PLENARY ', 250, NULL, '2025-02-21 03:52:15', '2025-02-21 03:52:15'),
(6, 1, '11:30:00', '12:15:00', 'Keynote 2 – InOA vision and Future Plan', 'Dr. dr. Sonar Soni Panigoro, Sp.B (K) Onk, M.Epid, MARS', 'BALLROOM 1  PLENARY ', 250, NULL, '2025-02-21 03:52:15', '2025-02-21 03:52:15'),
(7, 1, '13:00:00', '13:45:00', 'Keynote 3 : The Vital Role of the Stoma Nurse: Empowering Patients, Enhancing Care', 'Widasari Sri Gitarja, S.Kp., M.M., MARS., WOC(ET)N', 'BALLROOM 1  PLENARY ', 250, NULL, '2025-02-21 03:57:19', '2025-02-21 03:57:19'),
(8, 1, '13:45:00', '14:15:00', 'Keynote 4: Multidiciplinary team of stoma management: Aiming Ostomate Quality of Life', 'Dr. dr. Rebecca Angka, M.Biomed', 'BALLROOM 1  PLENARY ', 250, NULL, '2025-02-21 03:57:19', '2025-02-21 03:57:19'),
(10, 1, '15:00:00', '16:00:00', 'Talkshow : Finding Joy And Purpose With Stoma', 'Widasari Sri Gitarja, S.Kp., MM., MARS, WOC(ET)N ', 'BALLROOM 1  PLENARY ', 250, NULL, '2025-02-21 03:57:19', '2025-02-21 03:57:19'),
(11, 1, '16:00:00', '17:00:00', 'Awards and Stoma Gathering Clossing', 'Widasari Sri Gitarja, S.Kp., MM., MARS, WOC(ET)N ', 'BALLROOM 1  PLENARY ', 250, NULL, '2025-02-21 03:57:19', '2025-02-21 03:57:19'),
(12, 2, '09:00:00', '12:00:00', 'Workshop 4:  Surgical Wound Dehiscence And Fistula With NPWT', 'Ns. Khairul Bahri, S.Kep, WOC(ET)N | dr. Heldrian Dwinanda Suyuthie, SpB, Subsp. Onk(K), M.Ked(Surg)', 'BALLROOM 1  PLENARY ', 250, 1, '2025-02-21 04:10:37', '2025-02-24 09:44:48'),
(13, 2, '09:00:00', '12:00:00', 'Workshop 5:  Continence Management in Stoma Patient', 'dr. Rachmat Budi Santoso, Sp.U | Chusnul Justanti, Kes., S.Tr, Ftr, M.Kes | Ns. Marina Ruran, M.Kep., WOC(ET)N', 'CLASSROOM A WORKSHOP', 40, 1, '2025-02-21 04:12:42', '2025-02-24 09:45:48'),
(14, 2, '09:00:00', '12:00:00', 'Workshop 6: Stoma Sitting', 'dr. Sjaiful Bachri, SpB-KBD | dr. Siti Annisa Nuhonni, Sp.KFR (K) | Ns. Kana Fajar, S.Kep. WOC(ET)N', 'CLASSROOM B WORKSHOP', 250, 1, '2025-02-21 04:12:42', '2025-02-28 07:10:53'),
(15, 2, '13:00:00', '14:00:00', 'Establishing & Managing a Ostomy Practice in a Hospital Setting', 'Rhyan A Hitalla., RN - Philipines', 'BALLROOM 1  PLENARY ', 250, NULL, '2025-02-24 08:28:46', '2025-02-24 08:28:46'),
(16, 2, '14:00:00', '15:30:00', 'Interactive Talkshow Stoma Nurse – Ostomate – Surgeon: Stoma Sitting & Stoma Bag In Right Position', 'dr. Fajar Firsyada, Sp.B,Subsp.BD(K) | Tuti Widiastuty (Ostomate) | Ns. Tioma Naibaho, S.Kep., M.Kep', 'BALLROOM 1  PLENARY ', 250, NULL, '2025-02-24 08:28:46', '2025-02-24 08:28:46'),
(17, 2, '16:00:00', '16:15:00', 'Encompassing barrier of stoma Care: Unveiling the Transformative Impact of Indonesian ETNEP ', 'Widasari Sri Gitarja, S.Kp., MM. MARS, WOC(ET)N', 'BALLROOM 1  PLENARY ', 250, NULL, '2025-02-24 08:28:46', '2025-02-24 08:28:46'),
(18, 2, '16:15:00', '17:00:00', 'Award, Stoma Book Launch, Doorprize dan Photo Session', '-', 'BALLROOM 1  PLENARY ', 250, NULL, '2025-02-24 08:28:46', '2025-02-24 08:28:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `speaker`
--

CREATE TABLE `speaker` (
  `id` int(11) NOT NULL,
  `gd` varchar(10) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `gb` varchar(50) NOT NULL,
  `posisi` varchar(50) NOT NULL,
  `organisasi` varchar(50) NOT NULL,
  `foto` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `speaker`
--

INSERT INTO `speaker` (`id`, `gd`, `nama_lengkap`, `gb`, `posisi`, `organisasi`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Dr.', 'Farida Mohd Said', '', '', '', '1.webp', '2025-02-21 15:24:47', '2025-05-07 15:09:54'),
(2, '', 'Puan Mariam Mohd. Nassir', '', '', '', '2.webp', '2025-02-21 15:25:54', '2025-05-07 14:17:46'),
(3, '', 'Widasari Sri Gitarja', 'S.Kp., M.M., MARS, WOC(ET)N\n', '', '', '3.webp', '2025-02-21 15:25:54', '2025-05-07 14:17:46'),
(4, '', 'Rhyan A. Hitalla', 'RN', '', '', '4.webp', '2025-02-21 15:29:17', '2025-05-07 14:17:46'),
(5, 'dr.', 'Ariansah Margaluta', 'Sp.B-KBD\n', '', '', '5.webp', '2025-02-21 15:29:17', '2025-05-07 14:17:46'),
(6, 'dr.', 'Ulul Albab', 'Sp.OG', '', '', '6.webp', '2025-02-21 15:29:17', '2025-05-07 14:17:46'),
(7, 'Dr. dr.', 'Rebecca Angka', 'M.Biomed\n', '', '', '7.webp', '2025-02-21 15:29:17', '2025-05-07 14:17:46'),
(8, 'Dr. dr.', 'Sonar Soni Panigoro', 'Sp.B(K) Onk, M.Epid, MARS', '', '', '8.webp', '2025-02-21 15:29:17', '2025-05-07 14:17:46'),
(9, 'dr.', 'Sjaiful Bachri', 'Sp.B-KBD', '', '', '9.webp', '2025-02-21 15:29:17', '2025-05-07 14:17:46'),
(10, 'dr.', 'Heldrian Dwinanda Suyuthie', 'SpB, Subsp. Onk(K), M.Ked(Surg)\n', '', '', '10.webp', '2025-02-21 15:30:29', '2025-05-07 14:17:46'),
(11, 'dr.', 'Rachmat Budi Santoso', 'Sp.U', '', '', '11.webp', '2025-02-21 15:30:29', '2025-05-07 14:17:46'),
(12, 'dr.', 'Siti Annisa Nuhonni', 'Sp. KFR(K)', '', '', '12.webp', '2025-02-21 15:30:29', '2025-05-07 14:17:46'),
(13, 'dr.', 'Fajar Firsyada', 'Sp.B, Subsp.BD(K)', '', '', '13.webp', '2025-05-06 15:50:30', '2025-05-07 14:17:46'),
(14, 'Ns.', 'Endang Murwaningsih', 'S.Kep., M.Kep., Sp.Kep.MB, WOC(ET)N', '', '', '14.webp', '2025-05-06 15:50:30', '2025-05-07 14:17:46'),
(15, 'Ns.', 'Khairul Bahri', 'S.Kep., WOC(ET)N', '', '', '15.webp', '2025-05-06 15:52:55', '2025-05-07 14:17:46'),
(16, 'Ns.', 'Marina Ruran', 'S.Kep., M.Kep., WOC(ET)N', '', '', '16.webp', '2025-05-06 15:52:55', '2025-05-07 14:17:46'),
(17, 'Ns.', 'Pipit Lestari', 'S.Kep., M.Sc, WOC(ET)N', '', '', '17.webp', '2025-05-06 15:54:32', '2025-05-07 14:17:46'),
(18, 'Ns.', 'Rifa Qidya Ardi', 'S.Kep., CWCC, CSTP', '', '', '18.webp', '2025-05-06 15:54:32', '2025-05-07 14:17:46'),
(19, 'Ns.', 'Muhammad Fadli', 'S.Kep., CWCC, CSTP', '', '', '19.webp', '2025-05-06 15:55:55', '2025-05-07 14:17:46'),
(20, '', 'Tomy Abas', 'S.Kep., WOC(ET)N', '', '', '20.webp', '2025-05-06 15:55:55', '2025-05-07 14:17:46'),
(21, 'Ns.', 'Kana Fajar', 'S.Kep., WOC(ET)N', '', '', '21.webp', '2025-05-06 15:57:34', '2025-05-07 14:17:46'),
(22, 'Ns.', 'Tioma Naibaho', 'S.Kep., M.Kep., WOC(ET)N', '', '', '22.webp', '2025-05-06 15:57:34', '2025-05-07 14:17:46'),
(23, '', 'Chusnul Justanti', 'Kes., S.Tr, Ftr, M.Kes', '', '', '23.webp', '2025-05-06 15:58:16', '2025-05-07 14:17:46'),
(24, '', 'Tuti Widiastuty', '', '', '', '24.webp', '2025-05-06 15:58:16', '2025-05-07 14:17:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `workshop`
--

CREATE TABLE `workshop` (
  `id` int(11) NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `nama` varchar(50) NOT NULL,
  `pembicara` varchar(100) NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `workshop`
--

INSERT INTO `workshop` (`id`, `jam_mulai`, `jam_selesai`, `nama`, `pembicara`, `id_jadwal`, `created_at`, `updated_at`) VALUES
(1, '08:30:00', '09:00:00', 'Managing High Output Ileostomy: A practical Guide ', 'Ns.Endang Murwaningsih, S.Kep., M.Kep., Sp.Kep.MB, WOC(ET)N', 1, '2025-02-24 08:41:18', '2025-02-24 08:42:42'),
(2, '09:00:00', '09:30:00', ' Navigating Challenges in Infected Enterocutaneous', 'dr. Ariansah Margaluta., Sp.B-KBD', 1, '2025-02-24 08:41:18', '2025-02-24 08:43:05'),
(3, '09:30:00', '10:00:00', 'Workshop: From Leakage to healing: Ileostomy Pouch', 'Tim: Ns. Endang Murwaningsih, S.Kep., Sp.Kep.MB', 1, '2025-02-24 08:41:18', '2025-02-24 08:43:18'),
(4, '08:30:00', '09:00:00', 'Clinical Presentation and pouching system for Infe', 'Ns. Khairul Bahri, S.Kep., WOC(ET)N', 2, '2025-02-24 08:41:18', '2025-02-24 08:43:29'),
(5, '09:00:00', '09:30:00', 'Pregnancy Preparation and Consideration for Patien', 'dr. ulul Albab, Sp.OG', 2, '2025-02-24 08:41:18', '2025-02-24 08:43:44'),
(6, '09:30:00', '10:00:00', 'Workshop: Best Practice Application Urostomy Care ', 'Tim WOCARE', 2, '2025-02-24 08:41:18', '2025-02-24 08:43:55'),
(7, '08:30:00', '09:00:00', 'Colostomy Irrigation: Enhancing Control and Qualit', 'Ns. Marina Ruran, S.Kep., M.Kep., WOC(ET)N ', 3, '2025-02-24 08:45:35', '2025-02-24 08:45:35'),
(8, '09:00:00', '09:30:00', 'Living Well with a Stoma: Promoting Health, Confid', 'Dr. dr. Rebecca Angka, M.Biomed', 3, '2025-02-24 08:45:35', '2025-02-24 08:45:35'),
(9, '09:30:00', '10:00:00', 'Workshop: Mastering Colostomy Irrigation: Techniqu', 'Tim : Tomy Abas, S.Kep., WOC(ET)N ', 3, '2025-02-24 08:45:35', '2025-02-24 08:45:35'),
(10, '09:00:00', '09:45:00', 'Unlocking full potential of NPWT: Fistula Manageme', 'Ns. Khairul Bahri, S.Kep, WOC(ET)N', 12, '2025-02-24 08:57:41', '2025-02-24 08:57:41'),
(11, '10:00:00', '10:45:00', 'LECTUREPrevention, Identification, and Management ', 'dr. Heldrian Dwinanda Suyuthie, SpB, Subsp. Onk(K), M.Ked(Surg) ', 12, '2025-02-24 08:57:41', '2025-02-24 08:57:41'),
(12, '11:00:00', '12:00:00', 'Workshop: Dead Space in Chronic Wounds', 'Tim : Ns. Khairul Bahri, S.Kep, WOC(ET)N ', 12, '2025-02-24 08:57:41', '2025-02-24 08:57:41'),
(13, '09:00:00', '09:30:00', 'Continence in Aging Populations: Urological Perspe', 'dr. Rachmat Budi Santoso, SpU', 13, '2025-02-24 08:57:41', '2025-02-24 08:57:41'),
(14, '09:30:00', '10:00:00', 'Empowering Stoma Patients: A Physiotherapists Guid', 'dr. Heldrian Dwinanda Suyuthie, SpB, Subsp. Onk(K), M.Ked(Surg)', 13, '2025-02-24 08:57:41', '2025-02-24 08:57:41'),
(15, '10:00:00', '10:45:00', 'Rebuilding Confidence: Functional Training for Sto', 'Tim : Ns. Marina Ruran, M.Kep., WOC(ET)N', 13, '2025-02-24 08:57:41', '2025-02-24 08:57:41'),
(16, '09:00:00', '09:30:00', 'The importance of Stoma Sitting as multidiciplinar', 'dr. Sjaiful Bachri, SpB-KBD (RSUD CIAWI-Bogor)', 14, '2025-02-27 04:00:03', '2025-02-27 04:00:03'),
(17, '09:30:00', '10:00:00', 'Stoma Sitting for Active Patients: Balancing Mobil', 'dr. Siti Annisa Nuhonni, Sp.KFR (K)', 14, '2025-02-27 04:00:03', '2025-02-27 04:00:03'),
(18, '10:00:00', '10:45:00', 'Stoma Sitting: Fulfilling rights of ostomate', 'Ns. Kana Fajar, S.Kep. WOC(ET)N ', 14, '2025-02-27 04:00:03', '2025-02-27 04:00:03'),
(19, '11:00:00', '12:00:00', 'Workshop: Stoma Sitting', 'Tommy Abas, S.Kep, WOC(ET)N | M. Dafa | Ns. Kana Fajar, S.Kep, WOC(ET)N', 14, '2025-02-27 04:00:03', '2025-02-27 04:00:03');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `speaker`
--
ALTER TABLE `speaker`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `workshop`
--
ALTER TABLE `workshop`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `speaker`
--
ALTER TABLE `speaker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `workshop`
--
ALTER TABLE `workshop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
