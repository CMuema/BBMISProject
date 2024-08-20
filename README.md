# Pewa Damu

Pewa Damu is a comprehensive Blood Bank Management System designed to facilitate blood donation, manage hospital requests for blood supplies, and track inventory and patient transfusions. This system integrates various functionalities to streamline operations for hospitals, donors, and administrators.

## Table of Contents

- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Pages](#pages)
- [Database Schema](#database-schema)
- [Contact Information](#contact-information)

## Features

- **Donor Registration**: Allows users to register as blood donors.
- **Hospital Dashboard**: Hospitals can request blood supplies, track inventory, and manage patient transfusions.
- **Admin Dashboard**: Administrative functionalities to manage users, blood inventory, and other system settings.
- **User Authentication**: Secure login for donors and hospitals.
- **Responsive Design**: Accessible on various devices with a user-friendly interface.

## Installation

### Prerequisites

- [XAMPP](https://www.apachefriends.org/index.html) (PHP, MySQL)
- [VS Code](https://code.visualstudio.com/) or any preferred code editor

### Steps

1. **Clone the repository**:
   ```bash
   git clone [https://github.com/CMuema/BloodBank.git](https://github.com/CMuema/BloodBank.git)
   cd Bloodbank
Set up XAMPP:

2. **Start Apache and MySQL from the XAMPP Control Panel.**
Open phpMyAdmin and create a new database named BloodbankDB.

3. **Import Database:**

In phpMyAdmin, import the BloodbankDB.sql file provided in the repository to create necessary tables and seed data.

4. **Configure Database Connection:**

Update the database connection settings in the connect_to_db.php file.

5. **Run the Application:**

Place the project folder in the htdocs directory of your XAMPP installation.
Open a browser and navigate to http://localhost/BloodBank

## Usage

**Home Page**
The Home Page serves as the entry point to the system with links to register as a donor, login, and access the admin and hospital dashboards.

**Registration**
Users can register as blood donors by filling out the form on the Registration.html page.

**Hospital Dashboard**
Hospitals can request blood supplies, track their inventory, and manage patient transfusions through the hospital.html page.

**Admin Dashboard**
The admin dashboard allows administrators to manage users, blood inventory, and other system settings.
