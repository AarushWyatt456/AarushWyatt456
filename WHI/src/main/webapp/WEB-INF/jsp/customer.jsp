<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Form</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #fbc2eb 0%, #a6c1ee 100%);
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        .container {
            width: 40%;
            background-color: #ffffff;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        }
        h3 {
            text-align: center;
            color: #7b1fa2;
            font-size: 32px;
            margin-bottom: 30px;
        }
        label {
            font-weight: 600;
            margin-bottom: 8px;
            display: block;
            font-size: 14px;
            color: #444;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group input {
            width: 100%;
            padding: 10px;
            border-radius: 8px;
            border: 2px solid #ccc;
            font-size: 14px;
            background-color: #f9f9f9;
            transition: border-color 0.3s ease;
        }
        .form-group input:focus {
            border-color: #7b1fa2;
            background-color: #fff;
            box-shadow: 0 0 5px rgba(123, 31, 162, 0.2);
        }
        .form-group input[type="submit"] {
            background-color: #7b1fa2;
            color: white;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            border: none;
            transition: background-color 0.3s ease;
        }
        .form-group input[type="submit"]:hover {
            background-color: #5e157d;
        }
        .error {
            color: red;
            font-size: 12px;
            margin-top: 5px;
        }
        .back-link {
            display: block;
            text-align: center;
            margin-top: 15px;
        }
    </style>
</head>
<body>
<div class="container">
    <h3>Customer Entry Form</h3>
    <form:form action="submitCustomer" modelAttribute="customer">

        <div class="form-group">
            <label>Customer ID:</label>
            <form:input path="customerID" placeholder="Enter Customer ID" />
            <form:errors path="customerID" cssClass="error" />
        </div>

        <div class="form-group">
            <label>Customer Name:</label>
            <form:input path="customerName" placeholder="Enter Customer Name" />
            <form:errors path="customerName" cssClass="error" />
        </div>

        <div class="form-group">
            <label>Customer Phone:</label>
            <form:input path="customerPh" placeholder="Enter Phone Number" />
            <form:errors path="customerPh" cssClass="error" />
        </div>

        <div class="form-group">
            <label>Customer Address:</label>
            <form:input path="customerAddress" placeholder="Enter Address" />
            <form:errors path="customerAddress" cssClass="error" />
        </div>

        <div class="form-group">
            <input type="submit" value="Submit Customer" />
        </div>
        
         <div class="back-link">
        <a href="dashboard.jsp">Back to Home</a>
    </div>
    </form:form>
</div>
</body>
</html>
