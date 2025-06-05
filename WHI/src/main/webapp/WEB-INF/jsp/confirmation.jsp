<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Submission Confirmation</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #f6d365 0%, #fda085 100%);
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            color: #333;
        }
        .confirmation-box {
            background-color: #fff;
            padding: 40px;
            border-radius: 20px;
            text-align: center;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        }
        h2 {
            color: #4caf50;
            margin-bottom: 20px;
        }
        p {
            font-size: 18px;
        }
    </style>
</head>
<body>
    <div class="confirmation-box">
        <h2>Thank you!</h2>
        <p>Your form has been submitted successfully.</p>
          <a href="dashboard.jsp">Go Back to Form Page</a>
    </div>
</body>
</html>
