<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Customer Confirmation</title>
    <style>
        body { font-family: Arial; background: #f1f8e9; padding: 30px; }
        .box { background: #fff; padding: 25px; margin: auto; max-width: 500px; border-radius: 12px; box-shadow: 0 0 10px #ccc; }
        h2 { color: #558b2f; text-align: center; }
        p { font-size: 16px; }
        .back-link { text-align: center; margin-top: 20px; }
    </style>
</head>
<body>
<div class="box">
    <h2>Customer Saved Successfully</h2>
    <p><strong>Customer ID:</strong> ${customer.customerID}</p>
    <p><strong>Customer Name:</strong> ${customer.customerName}</p>
    <p><strong>Phone:</strong> ${customer.customerPh}</p>
    <p><strong>Address:</strong> ${customer.customerAddress}</p>
    <p><strong>Email:</strong> ${customer.customerEmail}</p>
    <div class="back-link">
         <a href="dashboard.jsp">Back to Home</a>
    </div>
</div>
</body>
</html>
