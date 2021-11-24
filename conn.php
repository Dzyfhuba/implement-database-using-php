<?php
$servername = "localhost";
$username = "user";
$password = "12345678";
$database = "praktikum_db";

// Create connection
$conn = new mysqli(
  $servername,
  $username,
  $password,
  $database
);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM user";
$users = $conn->query($sql);

// $sql = "SELECT * FROM data_user";
// $data_users = $conn->query($sql);

// $sql = "SELECT * FROM jenis_role";
// $jenis_role = $conn->query($sql);

// $sql = "SELECT * FROM user_role";
// $user_role = $conn->query($sql);

// $sql = "SELECT * FROM jenis_permission";
// $jenis_permission = $conn->query($sql);

// $sql = "SELECT * FROM role_permission";
// $role_permission = $conn->query($sql);