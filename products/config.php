<?php
$host = 'localhost';
$dbname = 'u593341949_db_cardines';
$username = 'u593341949_dev_cardines';
$password = '20191772Cardines';
try {   
 $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
 $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
 die("Database connection failed: " . $e->getMessage());
}

