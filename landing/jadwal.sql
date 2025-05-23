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
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id` int(11) NOT NULL,
  `hari` int(11) NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `nama` varchar(150) NOT NULL,
  `speaker` varchar(150) DEFAULT NULL,
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
(1, 1, '08:00:00', '10:00:00', 'Workshop 1 Pouching System – Ileustomy And Wound Infection', 'Ns.Endang Murwaningsih, S.Kep., M.Kep., Sp.Kep.MB, WOC(ET)N | dr. Ariansah Margaluta., Sp.B-KBD', 'AULA LT 2', 50, 1, '2025-02-21 02:23:22', '2025-05-23 08:09:13'),
(2, 1, '08:00:00', '10:00:00', 'Workshop 2 Urostomy Pouching and Wound Infection', 'Rhyan A Hitalla., RN | dr. ulul Albab, Sp.OG | Tim Wocare', 'CLASSROOM A', 30, 1, '2025-02-21 02:23:22', '2025-05-23 08:08:16'),
(3, 1, '08:00:00', '10:00:00', 'Workshop 3 Pouching System – Colostomy And Stoma Irrigation', 'Ns. Marina Ruran, S.Kep., M.Kep., WOC(ET)N | Ms Nurbaisyah Badaruddin | Tomy Abas, S.Kep., WOC(ET)N', 'CLASSROOM B', 30, 1, '2025-02-21 02:26:33', '2025-05-23 08:08:32'),
(4, 1, '10:00:00', '10:45:00', 'Opening Ceremony ', 'Dr. dr. Sonar Soni Panigoro, Sp.B (K) Onk, M.Epid, MARS', 'AUDITORIUM', 150, NULL, '2025-02-21 03:48:34', '2025-05-23 08:09:21'),
(5, 1, '10:45:00', '11:30:00', 'Keynote 1: HRQOL in Stoma Patient & Multidiciplinary Team of Stoma Management: Aiming Ostomate Quality of Life', 'Prof. Dr. Farida Mohd Said, RN, MS', 'AUDITORIUM', 150, NULL, '2025-02-21 03:52:15', '2025-05-23 08:09:41'),
(6, 1, '11:30:00', '12:15:00', 'Keynote 2: The Language of Love: Communicating Compassion in Palliative Care', 'Prof. Dr. Christantie Effendy, SKp., M.Kes', 'AUDITORIUM', 150, NULL, '2025-02-21 03:52:15', '2025-05-23 08:10:34'),
(7, 1, '13:00:00', '13:45:00', 'Keynote 3 : The Vital Role of the Stoma Nurse: Empowering Patients, Enhancing CareKeynote 3 : The Vital Role of the Stoma Nurse: Empowering Patients,E', 'Widasari Sri Gitarja, S.Kp., M.M., MARS., WOC(ET)N', 'AUDITORIUM', 150, NULL, '2025-02-21 03:57:19', '2025-05-23 08:10:40'),
(8, 1, '13:45:00', '14:15:00', 'Panel Discussion', '-', 'AUDITORIUM', 150, NULL, '2025-02-21 03:57:19', '2025-05-23 08:10:47'),
(10, 1, '15:00:00', '16:00:00', 'Talkshow : Finding Joy And Purpose With Stoma ', 'Mr. Elil Mathiyan Lakshmanan | Tengku Nazeehah Binti Tengku Mahmood | Widasari Sri Gitarja, S.Kp., MM.,MARS ', 'AUDITORIUM', 150, NULL, '2025-02-21 03:57:19', '2025-05-23 08:10:53'),
(11, 1, '16:00:00', '17:00:00', 'Awards and Stoma Gathering', '-', 'AUDITORIUM', 150, NULL, '2025-02-21 03:57:19', '2025-05-23 08:11:00'),
(12, 2, '09:00:00', '12:00:00', 'Workshop 4:  Surgical Wound Dehiscence and Fistula with NPWT', 'Rhyan A Hitalla., RN - Philipine | dr. Mudatsir, M.Ked (surg), Sp.B, Subsp. BD (K) FINACS', 'KELAS LT 1', 50, 1, '2025-02-21 04:10:37', '2025-05-23 08:12:52'),
(13, 2, '09:00:00', '12:00:00', 'Workshop 5:  Continence Management in Stoma Patient', 'dr. Rachmat Budi Santoso, Sp.U | Chusnul Justanti, Kes., S.Tr, Ftr, M.Kes | Ns. Marina Ruran, M.Kep., WOC(ET)N', 'CLASSROOM A', 30, 1, '2025-02-21 04:12:42', '2025-05-23 08:12:56'),
(14, 2, '09:00:00', '12:00:00', 'Workshop 6: Stoma Sitting', 'dr. Sjaiful Bachri, SpB-KBD | Ns. Edy Mulyadi, M.Kep, WOC(ET)N | Ns. Hamka, M.Kep. WOC(ET)N', 'CLASSROOM B', 30, 1, '2025-02-21 04:12:42', '2025-05-23 08:13:00'),
(15, 2, '13:00:00', '14:00:00', 'Keynote Speakers 5: Establishing & Managing a Ostomy Practice in a Hospital Setting', 'Rhyan A Hitalla., RN', 'AUDITORIUM', 150, NULL, '2025-02-24 08:28:46', '2025-05-23 08:13:09'),
(16, 2, '14:00:00', '15:30:00', 'Keynote Speakers 6: Interactive Talkshow Stoma Nurse – Ostomate – Surgeon: Stoma Sitting & Stoma Bag In Right Position', 'dr. Fajar Firsyada, Sp.B,Subsp.BD(K) | Tuti Widiastuty  | Ns. Tioma Naibaho, S.Kep., M.Kep | dr. Siti Annisa Nuhonni, Sp.KFR (K)', 'AUDITORIUM', 150, NULL, '2025-02-24 08:28:46', '2025-05-23 08:13:18'),
(17, 2, '16:00:00', '16:15:00', 'Keynote Speakers 7: Encompassing barrier of stoma Care: Unveiling the Transformative Impact of Indonesian ETNEP ', 'Widasari Sri Gitarja, S.Kp., MM. MARS, WOC(ET)N', 'AUDITORIUM', 150, NULL, '2025-02-24 08:28:46', '2025-05-23 08:13:25'),
(18, 2, '16:15:00', '17:00:00', 'Award, Stoma Book Launch, Doorprize dan Photo Session', '-', 'AUDITORIUM', 150, NULL, '2025-02-24 08:28:46', '2025-05-23 08:13:34');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
