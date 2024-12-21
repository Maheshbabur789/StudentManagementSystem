<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Student</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7fc;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 50%;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            font-size: 1.1em;
            color: #333;
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"], input[type="email"], input[type="password"], input[type="tel"], textarea {
            width: 100%;
            padding: 8px;
            font-size: 1em;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
        }

        textarea {
            resize: vertical;
        }

        .btn {
            background-color: #5c6bc0;
            color: white;
            padding: 10px 20px;
            font-size: 1.1em;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #3f51b5;
        }

        .back-link {
            display: inline-block;
            margin-top: 20px;
            background-color: #9e9e9e;
            color: white;
            padding: 8px 16px;
            text-decoration: none;
            border-radius: 4px;
        }

        .back-link:hover {
            background-color: #616161;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Edit Student</h1>

        <!-- Form to Edit Student -->
        <form action="updateStudent" method="POST">
            <input type="hidden" name="id" value="${param.id}" /> <!-- Hidden ID field to pass the student ID -->

            <!-- Name Field -->
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" id="name" name="name" value="${student.name}" required />
            </div>

            <!-- Email Field -->
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" value="${student.email}" required />
            </div>

            <!-- Password Field -->
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" value="${student.password}" required />
            </div>

            <!-- Contact Field -->
            <div class="form-group">
                <label for="contact">Contact</label>
                <input type="tel" id="contact" name="contact" value="${student.contact}" required />
            </div>

            <!-- Address Field -->
            <div class="form-group">
                <label for="address">Address</label>
                <textarea id="address" name="address" required>${student.address}</textarea>
            </div>

            <!-- Submit Button -->
            <button type="submit" class="btn">Update Student</button>
        </form>

        <!-- Back to Student List -->
        <a href="studentAllData" class="back-link">Back to Student List</a>
    </div>
</body>
</html>
