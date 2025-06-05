<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Stock Confirmation</title>
    <style>
        body { font-family: Arial; background: #ffe0e0; padding: 30px; }
        .box { background: #fff; padding: 25px; margin: auto; max-width: 500px; border-radius: 12px; box-shadow: 0 0 10px #ccc; }
        h2 { color: #d84315; text-align: center; }
        p { font-size: 16px; }
        .back-link { text-align: center; margin-top: 20px; }
    </style>
</head>
<body>
<div class="box">
    <h2>Stock Saved Successfully</h2>
    <p><strong>Stock ID:</strong> ${stock.stockID}</p>
    <p><strong>Stock Name:</strong> ${stock.stockName}</p>
    <p><strong>Location:</strong> ${stock.stockLocation}</p>
    <p><strong>Remark:</strong> ${stock.stockRemark}</p>
    <p><strong>Method:</strong> ${stock.stockMethod}</p>
    <div class="back-link">
          <a href="dashboard.jsp">Back to Home</a>
    </div>
</div>
</body>
</html>
