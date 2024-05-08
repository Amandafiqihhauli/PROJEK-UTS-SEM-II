<?php
include_once('koneksi.php');

// tangkap data dari form
$nama = $_POST['nama'];

// buat query insert
$query = "INSERT INTO unit_kerja (nama) VALUES ('$nama')";

// eksekusi query
if ($dbh->query($query)) {
    header('location: unit_kerja.php');
} else {
    echo "Gagal menyimpan data";
}