<?php

include('conn.php');

$id = $_POST['id'];
$nama_lengkap = $_POST['nama_lengkap'];
$email = $_POST['email'];
$password = password_hash($_POST['password'], PASSWORD_BCRYPT);

$sql = "UPDATE user SET nama_lengkap='$nama_lengkap', email='$email', password='$password' WHERE id='$id'";

if ($conn->query($sql) === true) {
    header("Location: /");
} else {
    echo $conn->error;
}