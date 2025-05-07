<?php
include 'koneksi.php'; // Hubungkan ke database

// Jadwal Hari Pertama
$query_jadwal1 = "SELECT * FROM jadwal WHERE hari = 1 ORDER BY jam_mulai ASC";
$result_jadwal1 = mysqli_query($koneksi, $query_jadwal1);

// Jadwal Hari Kedua
$query_jadwal2 = "SELECT * FROM jadwal WHERE hari = 2 ORDER BY jam_mulai ASC";
$result_jadwal2 = mysqli_query($koneksi, $query_jadwal2);

// Data workshop dengan ket = 1
$query_workshop = "SELECT * FROM jadwal WHERE ket = 1 ORDER BY hari ASC";
$result_workshop = mysqli_query($koneksi, $query_workshop);

// Speaker
$query_speaker = "SELECT * FROM speaker ORDER BY id ASC";
$result_speaker = mysqli_query($koneksi, $query_speaker);

// Speaker 8 teratas
$query_speaker_8 = "SELECT * FROM speaker ORDER BY id ASC LIMIT 8";
$result_speaker_8 = mysqli_query($koneksi, $query_speaker_8);

// Workshop
$workshop_id = isset($_GET['id']) ? $_GET['id'] : 1;
// Ambil detail workshop utama
$query_workshops = "SELECT * FROM jadwal WHERE ket = 1 AND id = $workshop_id";
$result_workshops = mysqli_query($koneksi, $query_workshops);
$workshops = mysqli_fetch_assoc($result_workshops);

// Ambil semua materi & speaker untuk workshop ini
$query_detail = "SELECT * FROM workshop WHERE id_jadwal = $workshop_id";
$result_detail = mysqli_query($koneksi, $query_detail);

?>

<!DOCTYPE html>
<html lang="en">
<head>

  <!-- SITE TITTLE -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>Stoma Care Week 2025</title>
  
  <!-- PLUGINS CSS STYLE -->
  <!-- Bootstrap -->
  <link href="plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Themefisher Font -->  
  <link href="plugins/themefisher-font/style.css" rel="stylesheet">
  <!-- Font Awesome -->
  <link href="plugins/font-awsome/css/font-awesome.min.css" rel="stylesheet">
  <!-- Magnific Popup -->
  <link href="plugins/magnific-popup/magnific-popup.css" rel="stylesheet">
  <!-- Slick Carousel -->
  <link href="plugins/slick/slick.css" rel="stylesheet">
  <link href="plugins/slick/slick-theme.css" rel="stylesheet">
  <!-- CUSTOM CSS -->
  <link href="css/style.css" rel="stylesheet">

  <!-- FAVICON -->
  <link href="images/logoscw-01.png" rel="shortcut icon">

</head>

<body class="body-wrapper">


<!--========================================
=            Navigation Section            =
=========================================-->

<nav class="navbar main-nav border-less fixed-top navbar-expand-lg p-0">
  <div class="container-fluid p-0">
      <!-- logo -->
      <a class="navbar-brand" href="index.html">
        <img src="images/logo_scw_horizontal.png" alt="logo" class="img-fluid" width="300" height="auto">
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="fa fa-bars"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav mx-auto">
        <li class="nav-item">
          <a class="nav-link" href="index.php">Beranda
            <span>/</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="tentang.php">Tentang
            <span>/</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="pembicara.php">Pembicara
            <span>/</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="jadwal.php">Jadwal<span>/</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="workshop.php">Workshop<span>/</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="sponsor.php">Sponsor
          </a>
        </li>
      </ul>
      <a href="https://wocare.id/event/detail_acara.php?id=106" class="ticket">
        <img src="images/icon/ticket.png" alt="ticket">
        <span>DAPATKAN SEGERA!</span>
      </a>
      </div>
  </div>
</nav>

<!--====  End of Navigation Section  ====-->