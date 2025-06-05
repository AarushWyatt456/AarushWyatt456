<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Unit Confirmation</title>
    <style>
        body { font-family: Arial; background: #f0f8ff; padding: 30px; }
        .box { background: #fff; padding: 25px; margin: auto; max-width: 500px; border-radius: 12px; box-shadow: 0 0 10px #ccc; }
        h2 { color: #0077b6; text-align: center; }
        p { font-size: 16px; }
        .back-link { text-align: center; margin-top: 20px; }
    </style>
</head>
<body>
<div class="box">
    <h2>Unit Saved Successfully</h2>
    <p><strong>Unit ID:</strong> ${unit.unitID}</p>
    <p><strong>Unit Name:</strong> ${unit.unitName}</p>
    <p><strong>Sub Unit:</strong> ${unit.subUnit}</p>
    <p><strong>Remark:</strong> ${unit.unitRemark}</p>
    <div class="back-link">
         <a href="dashboard.jsp">Back to Home</a>
    </div>
</div>
</body>
</html>
