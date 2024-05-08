<?php
include_once 'koneksi.php';

// tangkap input login
$email = $_POST['email'];
$password = md5($_POST['password']);

$query = "SELECT * FROM users WHERE email='$email' AND password='$password'";

// jalankan query
$result = $dbh->query($query)->fetch();


// validasi login
if ($result) {
    session_start();
    $_SESSION['name'] = $result['name'];
    $_SESSION['email'] = $result['email'];
    
    header('Location: dashboard.php');
} else {
    echo "Login Gagal";
}
