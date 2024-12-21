<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Dashboard</title>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: Arial, sans-serif;
      display: flex;
      height: 100vh;
    }

    .sidebar {
      width: 250px;
      background-color: #333;
      color: white;
      padding: 20px;
      position: fixed;
      top: 0;
      left: 0;
      height: 100%;
    }

    .sidebar h2 {
      text-align: center;
      margin-bottom: 30px;
    }

    .sidebar ul {
      list-style-type: none;
      padding: 0;
    }

    .sidebar ul li {
      margin: 15px 0;
    }

    .sidebar ul li a {
      color: white;
      text-decoration: none;
      font-size: 18px;
      display: block;
      padding: 10px;
    }

    .sidebar ul li a:hover {
      background-color: #444;
    }

    .main-content {
      flex-grow: 1;
      margin-left: 250px;
      padding: 20px;
      overflow-y: auto;
    }

    header h1 {
      text-align: center;
      margin-bottom: 30px;
    }

    h2 {
      margin-bottom: 20px;
    }

    .section {
      margin-bottom: 40px;
    }

    button {
      padding: 10px 20px;
      background-color: #4CAF50;
      color: white;
      border: none;
      cursor: pointer;
      margin-bottom: 20px;
    }

    button:hover {
      background-color: #45a049;
    }

    .user-management-buttons {
      display: flex;
      gap: 10px;
    }

    .user-management-buttons button {
      width: 150px;
    }

    .card-container {
      display: flex;
      justify-content: space-between;
    }

    .card {
      background-color: #f1f1f1;
      padding: 20px;
      width: 30%;
      border-radius: 5px;
      text-align: center;
    }

    .card h3 {
      margin-bottom: 10px;
    }

    .user-management table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 20px;
    }

    .user-management table, th, td {
      border: 1px solid #ddd;
    }

    .user-management th, td {
      padding: 10px;
      text-align: left;
    }

    #search-users {
      padding: 8px;
      margin-bottom: 20px;
      width: 100%;
    }
  </style>
</head>
<body>

  <!-- Sidebar -->
  <div class="sidebar">
    <h2>Admin Dashboard</h2>
    <ul>
      <li><a href="#student-management">User Management</a></li>
      <li><a href="#attendance-management">Attendance Management</a></li>
      
      <li><a href="Home.jsp">Logout</a></li>
    </ul>
  </div>

  <!-- Main Content -->
  <div class="main-content">
    <header>
      <h1>Welcome to the Admin Dashboard</h1>
    </header>

    <!-- User Management Section -->
    <section id="user-management" class="section">
      <h2>User Management</h2>
      <div class="user-management-buttons">
        <button onclick="location.href='#'">Add Faculty</button>
        <button onclick="location.href='studentAllData'">All Student Data</button>

          <button onclick="location.href='Admin-Data'">All Admin Data</button>
      </div>
      <input type="text" id="search-users" placeholder="Search Users" onkeyup="searchUsers()">
      
  
    </section>
    </div>
    </body>
    </html>
   

   

 
   
