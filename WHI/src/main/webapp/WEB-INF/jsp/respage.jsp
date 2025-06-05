<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Resource Entry Page</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 20px;
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            color: #333;
        }
        .form-section {
            width: 60%;
            margin: 30px auto;
            background-color: #fff;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.1);
        }
        h3 {
            text-align: center;
            margin-bottom: 25px;
            font-size: 26px;
        }
        label {
            font-weight: 600;
            display: block;
            margin: 10px 0 6px;
        }
        input, textarea, select {
            width: 100%;
            padding: 10px;
            border: 2px solid #ccc;
            border-radius: 8px;
            font-size: 14px;
            background-color: #f9f9f9;
        }
        input[type="submit"] {
            margin-top: 20px;
            background-color: #4caf50;
            color: white;
            font-weight: bold;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        input[type="submit"]:hover {
            background-color: #388e3c;
        }
        .error {
            color: red;
            font-size: 12px;
        }
    </style>
</head>
<body>

    <!-- Customer Form -->
    <div class="form-section">
        <h3>Customer Entry Form</h3>
        <form:form action="submitCustomer" modelAttribute="customer">
            <label>Customer ID:</label>
            <form:input path="customerID" />
            <form:errors path="customerID" cssClass="error" />

            <label>Customer Name:</label>
            <form:input path="customerName" />
            <form:errors path="customerName" cssClass="error" />

            <label>Customer Phone:</label>
            <form:input path="customerPh" />
            <form:errors path="customerPh" cssClass="error" />

            <label>Customer Address:</label>
            <form:input path="customerAddress" />
            <form:errors path="customerAddress" cssClass="error" />

            <input type="submit" value="Submit Customer" />
        </form:form>
    </div>

    <!-- Category Form -->
    <div class="form-section">
        <h3>Category Entry Form</h3>
        <form:form action="submitCategory" modelAttribute="category">
            <label>Category ID:</label>
            <form:input path="categoryID" />
            <form:errors path="categoryID" cssClass="error" />

            <label>Category Name:</label>
            <form:input path="categoryName" />
            <form:errors path="categoryName" cssClass="error" />

            <label>Category Remark:</label>
            <form:textarea path="categoryRemark" rows="3" />
            <form:errors path="categoryRemark" cssClass="error" />

            <input type="submit" value="Submit Category" />
        </form:form>
    </div>

    <!-- Supplier Form -->
    <div class="form-section">
        <h3>Supplier Entry Form</h3>
        <form:form action="submitSupplier" modelAttribute="supplier">
            <label>Supplier ID:</label>
            <form:input path="supplierID" />
            <form:errors path="supplierID" cssClass="error" />

            <label>Supplier Name:</label>
            <form:input path="supplierName" />
            <form:errors path="supplierName" cssClass="error" />

            <label>Supplier Phone:</label>
            <form:input path="supplierPh" />
            <form:errors path="supplierPh" cssClass="error" />

            <label>Supplier Address:</label>
            <form:input path="supplierAddress" />
            <form:errors path="supplierAddress" cssClass="error" />

            <input type="submit" value="Submit Supplier" />
        </form:form>
    </div>

    <!-- Stock Form -->
    <div class="form-section">
        <h3>Stock Entry Form</h3>
        <form:form action="submitStock" modelAttribute="stock">
            <label>Stock ID:</label>
            <form:input path="stockID" />
            <form:errors path="stockID" cssClass="error" />

            <label>Stock Name:</label>
            <form:input path="stockName" />
            <form:errors path="stockName" cssClass="error" />

            <label>Stock Location:</label>
            <form:input path="stockLocation" />
            <form:errors path="stockLocation" cssClass="error" />

            <label>Stock Remark:</label>
            <form:input path="stockRemark" />
            <form:errors path="stockRemark" cssClass="error" />

            <label>Stock Method:</label>
            <form:select path="stockMethod">
                <form:option value="" label="-- Select Method --" />
                <form:option value="P" label="P" />
                <form:option value="S" label="S" />
            </form:select>
            <form:errors path="stockMethod" cssClass="error" />

            <input type="submit" value="Submit Stock" />
        </form:form>
    </div>

    <!-- Unit Form -->
    <div class="form-section">
        <h3>Unit Entry Form</h3>
        <form:form action="submitUnit" modelAttribute="unit">
            <label>Unit ID:</label>
            <form:input path="unitID" />
            <form:errors path="unitID" cssClass="error" />

            <label>Unit Name:</label>
            <form:input path="unitName" />
            <form:errors path="unitName" cssClass="error" />

            <label>Sub Unit:</label>
            <form:input path="subUnit" />
            <form:errors path="subUnit" cssClass="error" />

            <label>Unit Remark:</label>
            <form:input path="unitRemark" />
            <form:errors path="unitRemark" cssClass="error" />

            <input type="submit" value="Submit Unit" />
        </form:form>
    </div>

    <!-- Warehouse Form -->
    <div class="form-section">
        <h3>Warehouse Entry Form</h3>
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
    </div>

</body>
</html>
