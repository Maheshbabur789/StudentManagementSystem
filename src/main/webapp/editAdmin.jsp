<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Admin</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7fc;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            color: #333;
            margin-top: 20px;
            font-size: 2em;
        }

        .container {
            width: 90%;
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            font-size: 1em;
            margin-bottom: 5px;
        }

        .form-group input {
            width: 100%;
            padding: 10px;
            font-size: 1em;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        .btn {
            display: inline-block;
            background-color: #5c6bc0;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 4px;
            text-align: center;
        }

        .btn:hover {
            background-color: #3f51b5;
        }

        .back-link {
            margin-bottom: 20px;
            display: inline-block;
            background-color: #5c6bc0;
            color: white;
            padding: 10px 15px;
            text-decoration: none;
            border-radius: 4px;
        }

        .back-link:hover {
            background-color: #3f51b5;
        }
    </style>
</head>
<body>

    

        <h1>Edit Admin</h1>

        <!-- Admin Edit Form -->
        <form action="updateAdmin" method="post">
            <!-- Admin ID -->
            <input type="hidden" name="id" value="${admin.id}">

            <!-- Admin Username -->
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" value="${admin.username}" required>
            </div>

            <!-- Admin Email -->
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" value="${admin.email}" required>
            </div>

            <!-- Admin Password -->
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" value="${admin.password}" required>
            </div>

            <!-- Submit Button -->
            <div class="form-group">
                <button type="submit" class="btn">Update Admin</button>
            </div>
        </form>
          <a href="Admin-Data" class="back-link">Back to Admin List</a>
    </div>

</body>
</html>
