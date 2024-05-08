<?php
include_once('koneksi.php');

// tangkap data dari form
$id = $_POST['id'];
$nama = $_POST['nama'];

// buat query insert
$query = "UPDATE unit_kerja SET nama='$nama' WHERE id=$id";

// eksekusi query
if ($dbh->query($query)) {
    header('location: unit_kerja.php');
} else {
    echo "Gagal menyimpan data";
}