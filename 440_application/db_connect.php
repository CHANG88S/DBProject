<?php
$servername = "localhost";
$username = "root"; // Username
$password = ""; // Password
$dbname = "application440"; // Database name

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
