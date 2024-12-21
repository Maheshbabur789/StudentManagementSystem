<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Management</title>
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
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        .back-link {
            display: inline-block;
            margin-bottom: 20px;
            background-color: #5c6bc0;
            color: white;
            padding: 10px 15px;
            text-decoration: none;
            border-radius: 4px;
        }

        .back-link:hover {
            background-color: #3f51b5;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
            background-color: #fff;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #5c6bc0;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #e0e0e0;
        }

        .table-container {
            overflow-x: auto;
        }

        .action-btns {
            display: flex;
            gap: 10px;
        }

        .action-btns a {
            padding: 6px 12px;
            background-color: #ff9800;
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }

        .action-btns a:hover {
            background-color: #e65100;
        }

        .delete-btn {
            background-color: #f44336;
        }

        .delete-btn:hover {
            background-color: #d32f2f;
        }

        .empty-msg {
            font-size: 1.2em;
            color: #ff5722;
            text-align: center;
            margin-top: 50px;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Back to Home Link -->
        <a href="dashboard.jsp" class="back-link">Back to Home</a>
        <a href="studentRegistration.jsp" class="back-link">Add Student</a>

        <h1>Student Details</h1>

        <div class="table-container">
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Password</th>
                        <th>Contact</th>
                        <th>Address</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="student" items="${Students}">
                        <tr>
                            <td>${student.id}</td>
                            <td>${student.name}</td>
                            <td>${student.email}</td>
                            <td>${student.password}</td>
                            <td>${student.contact}</td>
                            <td>${student.address}</td>
                            <td class="action-btns">
                                <!-- Edit Button -->
                                <a href="editStudent.jsp?id=${student.id}" class="edit-btn">Edit</a>
                                
                                <!-- Delete Button -->
                                <a href="deleteStudent?id=${student.id}" class="delete-btn">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
