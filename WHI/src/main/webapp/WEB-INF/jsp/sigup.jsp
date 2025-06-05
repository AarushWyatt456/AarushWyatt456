<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Sign Up</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #ece9e6, #ffffff);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .signup-container {
            background: #fff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            width: 350px;
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #333;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: 600;
            color: #555;
        }

        input[type="text"],
        input[type="password"],
        input[type="email"],
        .form-input {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 6px;
            transition: border-color 0.3s ease;
        }

        input[type="text"]:focus,
        input[type="password"]:focus,
        input[type="email"]:focus {
            border-color: #6c63ff;
            outline: none;
        }

        input[type="submit"] {
            width: 100%;
            background-color: #6c63ff;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #574fcf;
        }
    </style>
</head>
<body>
    <div class="signup-container">
        <h2>Sign Up</h2>
        <form:form action="registerUser" modelAttribute="user">
            <label for="username">Username</label>
            <form:input path="username" cssClass="form-input" />

            <label for="email">Email</label>
            <form:input path="email" cssClass="form-input" />

            <label for="password">Password</label>
            <form:password path="password" cssClass="form-input" />

            <input type="submit" value="Sign Up" />
            
             <div class="register-link">
                Do you have an account? <a href="login">Login</a>
            </div>
        </form:form>
    </div>
</body>
</html>
