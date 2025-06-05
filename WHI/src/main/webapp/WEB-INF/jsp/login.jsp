<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
        }
        .login-container {
            background: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
            width: 350px;
        }
        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-bottom: 8px;
            font-weight: 600;
        }
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 12px;
            border: 2px solid #ddd;
            border-radius: 8px;
            font-size: 14px;
            transition: border-color 0.3s;
        }
        input[type="text"]:focus, input[type="password"]:focus {
            border-color: #667eea;
            outline: none;
        }
        input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #667eea;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        input[type="submit"]:hover {
            background-color: #5a67d8;
        }
        .error {
            color: #e53e3e;
            font-size: 12px;
            margin-top: 5px;
        }
        .register-link {
            text-align: center;
            margin-top: 20px;
        }
        .register-link a {
            color: #667eea;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Warehouse Management Login</h2>
        <form:form action="loginUser" modelAttribute="user" method="POST">
            <div class="form-group">
                <label for="username">Username:</label>
                <form:input path="username" id="username" type="text" placeholder="Enter your username"/>
                <form:errors path="username" cssClass="error"/>
            </div>
            
            <div class="form-group">
                <label for="password">Password:</label>
                <form:password path="password" id="password" placeholder="Enter your password"/>
                <form:errors path="password" cssClass="error"/>
            </div>
            
            <div class="form-group">
                <input type="submit" value="Login"/>
            </div>
            
            <div class="register-link">
                Don't have an account? <a href="signupForm">Sign up</a>
            </div>
        </form:form>
    </div>
</body>
</html>