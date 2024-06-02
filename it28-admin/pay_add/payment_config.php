<?php
// Database configuration

$servername = "localhost";
$username = "u593341949_dev_cabana";
$password = "20221190Cabana";
$database = "u593341949_db_cabana";

/*
$servername = "localhost";
$username = "root";
$password = "";
$database = "cabana";*/
// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>