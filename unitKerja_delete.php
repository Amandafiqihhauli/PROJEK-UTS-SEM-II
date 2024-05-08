<?php
include_once('koneksi.php');

// tangkap data dari url
$id = $_GET['id'];

// buat query insert
$query = "DELETE FROM unit_kerja WHERE id='$id'";

// eksekusi query
if ($dbh->query($query)) {
    header('location: unit_kerja.php');
} else {
    echo "Gagal menghapus data";
}