<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Unit Form</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #cfd9df 0%, #e2ebf0 100%);
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
            color: #607d8b;
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
            border-color: #607d8b;
            background-color: #fff;
        }
        .form-group input[type="submit"] {
            background-color: #607d8b;
            color: white;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            border: none;
        }
        .form-group input[type="submit"]:hover {
            background-color: #455a64;
        }
        .error {
            color: red;
            font-size: 12px;
        }
.back-link {
 text-align: center; margin-top: 20px;} 
    </style>
</head>
<body>
    <div class="container">
        <h3>Unit Entry Form</h3>
        <form:form action="submitUnit" modelAttribute="unit">

            <div class="form-group">
                <label>Unit ID:</label>
                <form:input path="unitID" placeholder="Enter Unit ID"/>
                <form:errors path="unitID" cssClass="error"/>
            </div>

            <div class="form-group">
                <label>Unit Name:</label>
                <form:input path="unitName" placeholder="Enter Unit Name"/>
                <form:errors path="unitName" cssClass="error"/>
            </div>

            <div class="form-group">
                <label>Sub Unit:</label>
                <form:input path="subUnit" placeholder="Enter Sub Unit"/>
                <form:errors path="subUnit" cssClass="error"/>
            </div>

            <div class="form-group">
                <label>Unit Remark:</label>
                <form:input path="unitRemark" placeholder="Enter Remarks"/>
                <form:errors path="unitRemark" cssClass="error"/>
            </div>

            <div class="form-group">
                <input type="submit" value="Submit Unit"/>
            </div>
                          <div class="back-link">
         <a href="dashboard.jsp">Back to Home</a>
    </div>
        </form:form>
    </div>
</body>
</html>
