<?php
include_once('koneksi.php');

// tangkap data dari form
$pasien_id = $_POST['pasien_id'];
$tanggal = $_POST['tanggal'];
$berat = $_POST['berat'];
$tinggi = $_POST['tinggi'];
$tensi = $_POST['tensi'];
$keterangan = $_POST['keterangan'];
$dokter_id = $_POST['dokter_id'];

// buat query insert
$query = "INSERT INTO periksa (pasien_id, tanggal, berat, tinggi, tensi, keterangan, dokter_id) VALUES ('$pasien_id', '$tanggal', '$berat', '$tinggi', '$tensi', '$keterangan', '$dokter_id')";

// eksekusi query
if ($dbh->query($query)) {
    header('location: periksa.php');
} else {
    echo "Gagal menyimpan data";
}