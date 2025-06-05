<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Category Confirmation</title>
    <style>
        body { font-family: Arial; background: #ede7f6; padding: 30px; }
        .box { background: #fff; padding: 25px; margin: auto; max-width: 500px; border-radius: 12px; box-shadow: 0 0 10px #ccc; }
        h2 { color: #6a1b9a; text-align: center; }
        p { font-size: 16px; }
        .back-link { text-align: center; margin-top: 20px; }
    </style>
</head>
<body>
<div class="box">
    <h2>Category Saved Successfully</h2>
    <p><strong>Category ID:</strong> ${category.categoryID}</p>
    <p><strong>Category Name:</strong> ${category.categoryName}</p>
    <p><strong>Remark:</strong> ${category.categoryRemark}</p>
    <div class="back-link">
         <a href="dashboard.jsp">Back to Home</a>
    </div>
</div>
</body>
</html>
