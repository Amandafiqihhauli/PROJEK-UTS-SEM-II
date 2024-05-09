<?php
include_once('koneksi.php');

// tangkap data dari form
$id = $_POST['id'];
$nama = $_POST['nama'];
$kode = $_POST['kode'];
$email = $_POST['email'];
$tgl_lahir = $_POST['tgl_lahir'];
$tmp_lahir = $_POST['tmp_lahir'];
$gender = $_POST['gender'];
$kelurahan_id = $_POST['kelurahan_id'];
$alamat = $_POST['alamat'];

// buat query insert
$query = "UPDATE pasien SET nama='$nama', kode='$kode', email='$email', tgl_lahir='$tgl_lahir', tmp_lahir='$tmp_lahir', gender='$gender', alamat='$alamat', kelurahan_id= '$kelurahan_id' WHERE id=$id";

// eksekusi query
if ($dbh->query($query)) {
    header('location: pasien.php');
} else {
    echo "Gagal menyimpan data";
}
