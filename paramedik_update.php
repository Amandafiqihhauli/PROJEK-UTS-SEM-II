<?php
include_once('koneksi.php');

// tangkap data dari form
$id = $_POST['id'];
$nama = $_POST['nama'];
$gender = $_POST['gender'];
$tmp_lahir = $_POST['tmp_lahir'];
$tgl_lahir = $_POST['tgl_lahir'];
$telpon = $_POST['telpon'];
$alamat = $_POST['alamat'];
$kategori = $_POST['kategori'];
$unit_kerja_id = $_POST['unit_kerja_id'];


// buat query insert
$query = "UPDATE paramedik SET nama='$nama', gender='$gender', tmp_lahir='$tmp_lahir', tgl_lahir='$tgl_lahir', telpon='$telpon', alamat='$alamat', kategori='$kategori', unit_kerja_id='$unit_kerja_id' WHERE id=$id";

// eksekusi query
if ($dbh->query($query)) {
    header('location: paramedik.php');
} else {
    echo "Gagal menyimpan data";
}