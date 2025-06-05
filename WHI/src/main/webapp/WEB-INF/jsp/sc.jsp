<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Supplier Confirmation</title>
    <style>
        body { font-family: Arial; background: #fff3e0; padding: 30px; }
        .box { background: #fff; padding: 25px; max-width: 500px; margin: auto; border-radius: 12px; box-shadow: 0 0 10px #ccc; }
        h2 { color: #ef6c00; text-align: center; }
        p { font-size: 16px; }
        .back-link { text-align: center; margin-top: 20px; }
    </style>
</head>
<body>
<div class="box">
    <h2>Supplier Saved Successfully</h2>
    <p><strong>Supplier ID:</strong> ${supplier.supplierID}</p>
    <p><strong>Supplier Name:</strong> ${supplier.supplierName}</p>
    <p><strong>Phone:</strong> ${supplier.supplierPh}</p>
    <p><strong>Address:</strong> ${supplier.supplierAddress}</p>
    <div class="back-link">
          <a href="dashboard.jsp">Back to Home</a>
    </div>
</div>
</body>
</html>
