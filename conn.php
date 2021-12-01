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