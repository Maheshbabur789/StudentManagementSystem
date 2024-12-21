<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Attendance Management System</title>
    <link rel="stylesheet" href="styles.css"> <!-- Linking CSS file -->
    <style>
        /* Global styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: #f4f4f9;
            color: #333;
        }

        header {
            background-color: #4CAF50;
            color: white;
            padding: 20px;
            text-align: center;
        }

        header h1 {
            margin: 0;
            font-size: 2.5em;
        }

        header p {
            margin: 5px 0 0;
            font-size: 1.2em;
        }

        nav {
            margin: 20px auto;
            text-align: center;
        }

        nav ul {
            list-style-type: none;
            padding: 0;
        }

        nav ul li {
            display: inline-block;
            margin: 0 15px;
        }

        nav ul li a {
            text-decoration: none;
            font-size: 1.2em;
            padding: 10px 20px;
            color: white;
            background-color: #007BFF;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        nav ul li a:hover {
            background-color: #0056b3;
        }

        footer {
            margin-top: 20px;
            text-align: center;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
        }

        .description {
            text-align: center;
            margin: 40px auto;
            max-width: 800px;
            line-height: 1.6;
            font-size: 1.2em;
        }

        .card-container {
            display: flex;
            justify-content: center;
            gap: 20px;
            flex-wrap: wrap;
            margin: 20px auto;
        }

        .card {
            background: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            width: 300px;
            text-align: center;
            padding: 20px;
            transition: transform 0.3s ease;
        }

        .card:hover {
            transform: scale(1.05);
        }

        .card h3 {
            margin: 0 0 10px;
        }

        .card p {
            color: #666;
            font-size: 0.9em;
            margin-bottom: 15px;
        }

        .card a {
            text-decoration: none;
            padding: 10px 15px;
            color: white;
            background-color: #007BFF;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .card a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <header>
        <h1>Attendance Management System</h1>
       
    </header>
    <div class="description">
        <p>Welcome to the Attendance Management Portal</p>
  
    <div class="card-container">
        <div class="card">
            <h3>Admin</h3>
            <p>Admins can manage users, update records, and view detailed reports.</p>
            <a href="adminLogin">Login as Admin</a>
        </div>
        <div class="card">
            <h3>Student</h3>
            <p>Students can view their attendance records and updates.</p>
            <a href="studentLogin">Login as Student</a>
        </div>
        <div class="card">
            <h3>Faculty</h3>
            <p>Faculty can mark attendance and manage their classes efficiently.</p>
            <a href="facultyLogin">Login as Faculty</a>
        </div>
    </div>
    <footer>
        <p>&copy; 2024 Attendance Management System. All Rights Reserved.</p>
    </footer>
</body>
</html>
