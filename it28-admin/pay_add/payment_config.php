<?php
// Database configuration

$servername = "localhost";
$username = "u593341949_dev_cardines";
$password = "20191772Cardines";
$database = "u593341949_db_cardines";

/*
$servername = "localhost";
$username = "root";
$password = "";
$database = "cardines";*/
// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>