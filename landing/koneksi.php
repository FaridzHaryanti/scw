<?php
$host = "localhost";  // Sesuaikan dengan server MySQL kamu
$user = "root";       // Username MySQL (default: root)
$pass = "";           // Password MySQL (kosong jika di XAMPP)
$db   = "scw2025"; // Ganti dengan nama database kamu

$koneksi = mysqli_connect($host, $user, $pass, $db);

if (!$koneksi) {
    die("Koneksi gagal: " . mysqli_connect_error());
}
?>
