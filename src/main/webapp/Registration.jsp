<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Registration - Attendance Management System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: #f4f4f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #333;
        }

        .registration-container {
            background: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
            padding: 30px;
            width: 100%;
            max-width: 400px;
            text-align: center;
        }

        .registration-container h1 {
            margin-bottom: 20px;
            font-size: 1.8em;
            color: #4CAF50;
        }

        .registration-container form {
            display: flex;
            flex-direction: column;
        }

        .registration-container input[type="text"],
        .registration-container input[type="email"],
        .registration-container input[type="password"] {
            margin: 10px 0;
            padding: 10px;
            font-size: 1em;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .registration-container button {
            margin-top: 10px;
            padding: 10px;
            font-size: 1em;
            color: white;
            background-color: #4CAF50;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .registration-container button:hover {
            background-color: #45a049;
        }

        .registration-container a {
            margin-top: 15px;
            display: block;
            font-size: 0.9em;
            color: #007BFF;
            text-decoration: none;
        }

        .registration-container a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="registration-container">
        <h1>Admin Registration</h1>
        <form action="register" method="post">
            <input type="text" name="username" placeholder="Enter Username" required>
            <input type="email" name="email" placeholder="Enter Email" required>
            <input type="password" name="password" placeholder="Enter Password" required>
            <button type="submit">Register</button>
        </form>
        <a href="Home.jsp">Back to Home</a>
    </div>
</body>
</html>
