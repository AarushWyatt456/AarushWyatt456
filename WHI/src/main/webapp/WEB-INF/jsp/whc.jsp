<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Warehouse Confirmation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #e9f5f2;
            padding: 30px;
        }
        .confirmation-box {
            background: #fff;
            padding: 30px;
            max-width: 500px;
            margin: auto;
            border-radius: 12px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            color: #28a745;
        }
        p {
            font-size: 16px;
            line-height: 1.6;
        }
        .back-link {
            margin-top: 20px;
            text-align: center;
        }
    </style>
</head>
<body>
<div class="confirmation-box">
    <h2>Warehouse Saved Successfully</h2>
    <p><strong>ID:</strong> ${warehouse.wareHouseID}</p>
    <p><strong>Name:</strong> ${warehouse.wareHouseName}</p>
    <p><strong>Address:</strong> ${warehouse.wareHouseAddress}</p>
    <p><strong>Level:</strong> ${warehouse.wareHouseLevel}</p>
    <p><strong>Location:</strong> ${warehouse.wareHouseLocation}</p>
    <p><strong>Line Number:</strong> ${warehouse.wareHouseLineNumber}</p>
    <div class="back-link">
         <a href="dashboard.jsp">Back to Home</a>
    </div>
</div>
</body>
</html>
