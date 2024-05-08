<?php
include_once('koneksi.php');

// tangkap data dari form
$nama = $_POST['nama'];
$kode = $_POST['kode'];
$email = $_POST['email'];
$tgl_lahir = $_POST['tgl_lahir'];
$tmp_lahir = $_POST['tmp_lahir'];
$gender = $_POST['gender'];
$kelurahan_id = $_POST['kelurahan_id'];
$alamat = $_POST['alamat'];

// buat query insert
$query = "INSERT INTO pasien (nama, kode, email, tgl_lahir, tmp_lahir, gender, kelurahan_id, alamat) VALUES ('$nama', '$kode', '$email', '$tgl_lahir', '$tmp_lahir', '$gender', '$kelurahan_id', '$alamat')";

// eksekusi query
if ($dbh->query($query)) {
    header('location: pasien.php');
} else {
    echo "Gagal menyimpan data";
}