<?php
// Database configuration using environment variables
$db_host = getenv('DB_HOST') ?: 'localhost'; // Replace with your environment variable
$db_username = getenv('DB_USERNAME') ?: 'cdm_user'; // Replace with your environment variable
$db_password = getenv('DB_PASSWORD') ?: 'changeme'; // Replace with your environment variable
$db_name = getenv('DB_NAME') ?: 'cdms'; // Replace with your environment variable

// Establish database connection
$conn = new mysqli($db_host, $db_username, $db_password, $db_name);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Set character set to UTF-8 to avoid character encoding issues
if (!$conn->set_charset("utf8")) {
    die("Error loading character set utf8: " . $conn->error);
}

// Optional: Set the MySQL client and connection timeout
$conn->options(MYSQLI_OPT_CONNECT_TIMEOUT, 10); // Timeout in seconds

// Optional: Enable error reporting for debugging (remove or comment out in production)
if (defined('DEBUG') && DEBUG) {
    $conn->report_mode = MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT;
}
?>
