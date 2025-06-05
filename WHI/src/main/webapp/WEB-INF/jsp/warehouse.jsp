<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Warehouse Entry Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f4f4;
            padding: 30px;
        }

        .form-container {
            background: #ffffff;
            padding: 30px;
            margin: auto;
            max-width: 500px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            border-radius: 12px;
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
        }

        label {
            display: block;
            margin-top: 15px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 8px 12px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 6px;
            box-sizing: border-box;
        }

        .error {
            color: red;
            font-size: 0.9em;
        }

        input[type="submit"] {
            margin-top: 20px;
            width: 100%;
            background-color: #28a745;
            color: white;
            padding: 10px;
            font-size: 16px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #218838;
        }

        .back-link {
            display: block;
            text-align: center;
            margin-top: 15px;
        }
    </style>
</head>
<body>

<div class="form-container">
    <h2>Warehouse Entry Form</h2>
    <form:form action="submitWarehouse" modelAttribute="warehouse">
        <label>Warehouse ID:</label>
        <form:input path="wareHouseID" />
        <form:errors path="wareHouseID" cssClass="error" />

        <label>Warehouse Name:</label>
        <form:input path="wareHouseName" />
        <form:errors path="wareHouseName" cssClass="error" />

        <label>Warehouse Address:</label>
        <form:input path="wareHouseAddress" />
        <form:errors path="wareHouseAddress" cssClass="error" />

        <label>Warehouse Level:</label>
        <form:input path="wareHouseLevel" />
        <form:errors path="wareHouseLevel" cssClass="error" />

        <label>Warehouse Location:</label>
        <form:input path="wareHouseLocation" />
        <form:errors path="wareHouseLocation" cssClass="error" />

        <label>Warehouse Line Number:</label>
        <form:input path="wareHouseLineNumber" />
        <form:errors path="wareHouseLineNumber" cssClass="error" />

        <input type="submit" value="Submit Warehouse" />
    </form:form>
    <div class="back-link">
        <a href="dashboard.jsp">Back to Home</a>
    </div>
</div>

</body>
</html>
