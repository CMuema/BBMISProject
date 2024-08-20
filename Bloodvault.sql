CREATE DATABASE BloodVaultDB;

USE BloodVaultDB;

CREATE TABLE UserRole (
    RoleID INT AUTO_INCREMENT PRIMARY KEY,
    RoleName VARCHAR(50) NOT NULL
);

INSERT INTO UserRole (RoleName) VALUES ('Admin'), ('Donor'), ('Hospital');

CREATE TABLE Users (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    Username VARCHAR(50) NOT NULL UNIQUE,
    Password VARCHAR(50) NOT NULL,
    RoleID INT,
    Name VARCHAR(100),
    ContactNumber VARCHAR(15),
    Email VARCHAR(50),
    Address VARCHAR(255),
    FOREIGN KEY (RoleID) REFERENCES UserRole(RoleID)
);

CREATE TABLE Admin (
    AdminID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT,
    Username VARCHAR(50) NOT NULL,
    Password VARCHAR(50) NOT NULL,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

CREATE TABLE Donor (
    DonorID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT,
    Name VARCHAR(100) NOT NULL,
    Age INT NOT NULL,
    Gender CHAR(1) NOT NULL,
    BloodType VARCHAR(3) NOT NULL,
    ContactNumber VARCHAR(15) NOT NULL,
    Email VARCHAR(50),
    Address VARCHAR(255),
    LastDonationDate DATE,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

CREATE TABLE Hospital (
    HospitalID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT,
    Name VARCHAR(100) NOT NULL,
    ContactNumber VARCHAR(15) NOT NULL,
    Email VARCHAR(50),
    Address VARCHAR(255),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

CREATE TABLE BloodStock (
    StockID INT AUTO_INCREMENT PRIMARY KEY,
    BloodType VARCHAR(3) NOT NULL,
    Quantity INT NOT NULL
);

CREATE TABLE BloodRequest (
    RequestID INT AUTO_INCREMENT PRIMARY KEY,
    HospitalID INT,
    BloodType VARCHAR(3) NOT NULL,
    Quantity INT NOT NULL,
    RequestDate DATE NOT NULL,
    Status VARCHAR(50) NOT NULL,
    FOREIGN KEY (HospitalID) REFERENCES Hospital(HospitalID)
);
