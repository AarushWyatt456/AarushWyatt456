<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Category Form</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #84fab0 0%, #8fd3f4 100%);
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            color: #333;
        }
        .container {
            width: 40%;
            background: white;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        }
        h3 {
            text-align: center;
            color: #2196f3;
            margin-bottom: 30px;
            font-size: 28px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        label {
            font-weight: 600;
            display: block;
            margin-bottom: 6px;
        }
        input, textarea {
            width: 100%;
            padding: 10px;
            border: 2px solid #ccc;
            border-radius: 8px;
            font-size: 14px;
        }
        input[type="submit"] {
            background-color: #2196f3;
            color: white;
            font-weight: bold;
            cursor: pointer;
            border: none;
        }
        input[type="submit"]:hover {
            background-color: #0d8ae2;
        }
        .error {
            color: red;
            font-size: 12px;
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
        <h3>Category Entry Form</h3>
        <form:form action="submitCategory" modelAttribute="category">

            <div class="form-group">
                <label>Category ID</label>
                <form:input path="categoryID" placeholder="Enter Category ID" />
                <form:errors path="categoryID" cssClass="error" />
            </div>

            <div class="form-group">
                <label>Category Name</label>
                <form:input path="categoryName" placeholder="Enter Category Name" />
                <form:errors path="categoryName" cssClass="error" />
            </div>

            <div class="form-group">
                <label>Category Remark</label>
                <form:textarea path="categoryRemark" rows="3" placeholder="Enter Remarks" />
                <form:errors path="categoryRemark" cssClass="error" />
            </div>

            <div class="form-group">
                <input type="submit" value="Submit Category" />
            </div>
             <div class="back-link">
         <a href="dashboard">Back to Home</a>
    </div>

        </form:form>
    </div>
</body>
</html>
