<?php
// Database configuration
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "bloodvaultdb";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Retrieve form data
$name = $_POST['name'];
$age = $_POST['age'];
$gender = $_POST['gender'];
$bloodType = $_POST['bloodType'];
$contactNumber = $_POST['contactNumber'];
$email = $_POST['email'];
$address = $_POST['address'];

// Prepare and bind
$stmt = $conn->prepare("INSERT INTO Donor (Name, Age, Gender, BloodType, ContactNumber, Email, Address) VALUES (?, ?, ?, ?, ?, ?, ?)");
$stmt->bind_param("sisssss", $name, $age, $gender, $bloodType, $contactNumber, $email, $address);

// Execute the statement
if ($stmt->execute()) {
    echo "Donor registered successfully!";
} else {
    echo "Error: " . $stmt->error;
}

// Close connections
$stmt->close();
$conn->close();

