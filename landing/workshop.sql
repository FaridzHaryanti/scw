-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 23 Bulan Mei 2025 pada 10.55
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
-- Struktur dari tabel `workshop`
--

CREATE TABLE `workshop` (
  `id` int(11) NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `nama` varchar(150) NOT NULL,
  `pembicara` varchar(100) NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `workshop`
--

INSERT INTO `workshop` (`id`, `jam_mulai`, `jam_selesai`, `nama`, `pembicara`, `id_jadwal`, `created_at`, `updated_at`) VALUES
(1, '08:30:00', '09:00:00', 'Managing High Output Ileostomy: A practical Guide for Pouching System Selection', 'Ns.Endang Murwaningsih, S.Kep., M.Kep., Sp.Kep.MB, WOC(ET)N', 1, '2025-02-24 08:41:18', '2025-05-23 07:28:12'),
(2, '09:00:00', '09:30:00', 'Navigating Challenges in Infected Enterocutaneous Fistula: Advances in Surgical and Multidisciplinary Management', 'dr. Ariansah Margaluta., Sp.B-KBD', 1, '2025-02-24 08:41:18', '2025-05-23 07:28:33'),
(3, '09:30:00', '10:00:00', 'Workshop: From Leakage to healing: Ileostomy Pouching Strategy', 'Tim: Ns. Endang Murwaningsih, S.Kep., Sp.Kep.MB', 1, '2025-02-24 08:41:18', '2025-05-23 07:28:51'),
(4, '08:30:00', '09:00:00', 'Clinical Presentation and Pouching System for  Infected Urostomy ', 'Rhyan A Hitalla., RN - Philipines', 2, '2025-02-24 08:41:18', '2025-05-23 07:29:15'),
(5, '09:00:00', '09:30:00', 'Pregnancy Preparation and Consideration for Patient with Stoma', 'dr. ulul Albab, Sp.OG', 2, '2025-02-24 08:41:18', '2025-05-23 07:29:28'),
(6, '09:30:00', '10:00:00', 'Workshop: Best Practice Application Urostomy Care in Limited Setting ', 'Ns. Hamka, M.Kep. WOC(ET)N  dan Tim WOCARE', 2, '2025-02-24 08:41:18', '2025-05-23 07:30:13'),
(7, '08:30:00', '09:00:00', 'Colostomy Irrigation: Enhancing Control and Quality of Life', 'Ns. Marina Ruran, S.Kep., M.Kep., WOC(ET)N ', 3, '2025-02-24 08:45:35', '2025-05-23 07:30:47'),
(8, '09:00:00', '09:30:00', 'Living Well with a Stoma: Promoting Health, Confidence, and Quality of Life', 'Ms Nurbaisyah Badaruddin- ET Malaysia', 3, '2025-02-24 08:45:35', '2025-05-23 07:31:11'),
(9, '09:30:00', '10:00:00', 'Workshop: Mastering Colostomy Irrigation: Techniques, Benefits, and Best Practices', 'Tomy Abas, S.Kep., WOC(ET)N dan TIM WOCARE', 3, '2025-02-24 08:45:35', '2025-05-23 07:31:49'),
(10, '09:00:00', '09:45:00', 'Unlocking full potential of NPWT: Fistula Management', 'Rhyan A Hitalla., RN - Philipines', 12, '2025-02-24 08:57:41', '2025-05-23 07:39:48'),
(11, '10:00:00', '10:45:00', 'Prevention, Identification, and Management of Surgical Wound Dehiscence: Early Prevention and Risk Assessment', 'dr. Mudatsir, M.Ked (surg), Sp.B, Subsp. BD (K) FINACS', 12, '2025-02-24 08:57:41', '2025-05-23 07:40:23'),
(12, '11:00:00', '12:00:00', 'Workshop: Dead Space in Chronic Wounds', 'Ns. Khairul Bahri, S.Kep, WOC(ET)N dan TIM WOCARE', 12, '2025-02-24 08:57:41', '2025-05-23 07:40:45'),
(13, '09:00:00', '09:30:00', 'Continence in Aging Populations: Urological Perspectives and Solutions', 'dr. Rachmat Budi Santoso, SpU', 13, '2025-02-24 08:57:41', '2025-05-23 07:41:02'),
(14, '09:30:00', '10:00:00', 'Empowering Stoma Patients: A Physiotherapist\'s Guide to Managing Incontinence', 'Chusnul Justanti, Kes., S.Tr, Ftr, M.KeS', 13, '2025-02-24 08:57:41', '2025-05-23 07:41:46'),
(15, '10:00:00', '10:45:00', 'Rebuilding Confidence: Functional Training for Stoma Patients with Incontinence', 'Ns. Marina Ruran, M.Kep., WOC(ET)N', 13, '2025-02-24 08:57:41', '2025-05-23 07:42:28'),
(16, '09:00:00', '09:30:00', 'The importance of Stoma Sitting as multidiciplinary procedure for Stoma Constuction Surgery', 'dr. Sjaiful Bachri, SpB-KBD', 14, '2025-02-27 04:00:03', '2025-05-23 07:45:29'),
(17, '09:30:00', '10:00:00', 'Stoma Sitting for Active Patients: Balancing Mobility and Comfort', 'Ns. Edy Mulyadi, M.Kep, WOC(ET)N ', 14, '2025-02-27 04:00:03', '2025-05-23 07:45:54'),
(18, '10:00:00', '10:45:00', 'Stoma Sitting: Fulfilling Rights of Ostomate', 'Ns. Hamka, M.Kep. WOC(ET)N', 14, '2025-02-27 04:00:03', '2025-05-23 07:46:34'),
(19, '11:00:00', '12:00:00', 'Workshop: Stoma Sitting', 'Tommy Abas, S.Kep, WOC(ET)N | M. Dafa | Ns. Kana Fajar, S.Kep, WOC(ET)N', 14, '2025-02-27 04:00:03', '2025-02-27 04:00:03'),
(20, '11:00:00', '12:00:00', 'Workshop: Kegel Exercise', 'Tuti Widiastuti - Chusnul Justanti, Kes., S.Tr, Ftr, M.Kes - Ns. Marina Ruran, M.Kep., WOC(ET)N', 13, '2025-05-23 07:43:42', '2025-05-23 07:43:42');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `workshop`
--
ALTER TABLE `workshop`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `workshop`
--
ALTER TABLE `workshop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
