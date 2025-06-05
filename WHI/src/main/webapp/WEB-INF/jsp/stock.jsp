<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Stock Form</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #ffecd2 0%, #fcb69f 100%);
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
            color: #ff7043;
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
        .form-group input, .form-group select {
            width: 100%;
            padding: 10px;
            border-radius: 8px;
            border: 2px solid #ccc;
            font-size: 14px;
            background-color: #f9f9f9;
            transition: border-color 0.3s ease;
        }
        .form-group input:focus, .form-group select:focus {
            border-color: #ff7043;
            background-color: #fff;
        }
        .form-group input[type="submit"] {
            background-color: #ff7043;
            color: white;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            border: none;
        }
        .form-group input[type="submit"]:hover {
            background-color: #e64a19;
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
        <h3>Stock Entry Form</h3>
        <form:form action="submitStock" modelAttribute="stock">

            <div class="form-group">
                <label>Stock ID:</label>
                <form:input path="stockID" placeholder="Enter Stock ID"/>
                <form:errors path="stockID" cssClass="error"/>
            </div>

            <div class="form-group">
                <label>Stock Name:</label>
                <form:input path="stockName" placeholder="Enter Stock Name"/>
                <form:errors path="stockName" cssClass="error"/>
            </div>

            <div class="form-group">
                <label>Stock Location:</label>
                <form:input path="stockLocation" placeholder="Enter Stock Location"/>
                <form:errors path="stockLocation" cssClass="error"/>
            </div>

            <div class="form-group">
                <label>Stock Remark:</label>
                <form:input path="stockRemark" placeholder="Enter Remarks"/>
                <form:errors path="stockRemark" cssClass="error"/>
            </div>

            <div class="form-group">
                <label>Stock Method:</label>
                <form:select path="stockMethod">
                    <form:option value="" label="-- Select Method --"/>
                    <form:option value="P" label="P"/>
                    <form:option value="S" label="S"/>
                </form:select>
                <form:errors path="stockMethod" cssClass="error"/>
            </div>

            <div class="form-group">
                <input type="submit" value="Submit Stock"/>
            </div>
             <div class="back-link">
         <a href="dashboard.jsp">Back to Home</a>
    </div>

        </form:form>
    </div>
</body>
</html>
