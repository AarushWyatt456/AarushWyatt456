<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Warehouse Management System</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f0f8ff;
            padding: 50px;
            text-align: center;
        }
        h1 {
            margin-bottom: 40px;
            color: #333;
        }
        .menu-container {
            display: inline-block;
            background: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 0 20px rgba(0,0,0,0.1);
        }
        .form-link {
            display: block;
            margin: 15px 0;
            padding: 12px 25px;
            font-size: 16px;
            text-decoration: none;
            color: white;
            background-color: #007BFF;
            border-radius: 8px;
            transition: background-color 0.3s;
        }
        .form-link:hover {
            background-color: #0056b3;
        }
        .auth-section {
            margin-top: 30px;
            border-top: 1px solid #ccc;
            padding-top: 20px;
        }
    </style>
</head>
<body>
    <h1>Warehouse Management System</h1>
    
    <div class="menu-container">
        <a href="loginForm" class="form-link">Login</a>
        <a href="signupForm" class="form-link">Sign Up</a>
    </div>
</body>
</html>