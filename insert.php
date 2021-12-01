<?php
include('conn.php');

$sql = "SELECT * FROM user";
$users = $conn->query($sql);

$nama_lengkap = $_POST['nama_lengkap'];
$email = $_POST['email'];
$password = password_hash($_POST['password'], PASSWORD_BCRYPT);

$sql = "INSERT INTO user (nama_lengkap, email, password) VALUES ('$nama_lengkap', '$email', '$password')";
if ($conn->query($sql) === true) {
    header("Location: /");
} else {
    echo $conn->error;
}