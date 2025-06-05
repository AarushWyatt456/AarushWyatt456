<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Supplier Form</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #fddb92 0%, #d1fdff 100%);
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        .container {
            width: 40%;
            background: #fff;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        }
        h3 {
            text-align: center;
            color: #f57c00;
            font-size: 30px;
            margin-bottom: 30px;
        }
        label {
            font-weight: 600;
            margin-bottom: 8px;
            display: block;
            font-size: 14px;
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
            border-color: #f57c00;
            background-color: #fff;
        }
        .form-group input[type="submit"] {
            background-color: #f57c00;
            color: white;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            border: none;
        }
        .form-group input[type="submit"]:hover {
            background-color: #e65100;
        }
        .error {
            color: red;
            font-size: 12px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h3>Supplier Entry Form</h3>
        <form:form action="submitSupplier" modelAttribute="supplier">

            <div class="form-group">
                <label>Supplier ID:</label>
                <form:input path="supplierID" placeholder="Enter Supplier ID"/>
                <form:errors path="supplierID" cssClass="error"/>
            </div>

            <div class="form-group">
                <label>Supplier Name:</label>
                <form:input path="supplierName" placeholder="Enter Supplier Name"/>
                <form:errors path="supplierName" cssClass="error"/>
            </div>

            <div class="form-group">
                <label>Supplier Phone:</label>
                <form:input path="supplierPh" placeholder="Enter Phone Number"/>
                <form:errors path="supplierPh" cssClass="error"/>
            </div>

            <div class="form-group">
                <label>Supplier Address:</label>
                <form:input path="supplierAddress" placeholder="Enter Address"/>
                <form:errors path="supplierAddress" cssClass="error"/>
            </div>

            <div class="form-group">
                <input type="submit" value="Submit Supplier"/>
            </div>
             <div class="back-link">
         <a href="dashboard.jsp">Back to Home</a>
    </div>

        </form:form>
    </div>
</body>
</html>
