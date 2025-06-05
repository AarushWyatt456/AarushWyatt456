<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Dashboard</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f7fa;
        }
        .header {
            background-color: #4a6baf;
            color: white;
            padding: 15px 30px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }
        .header h1 {
            margin: 0;
            font-size: 24px;
        }
        .user-info {
            display: flex;
            align-items: center;
        }
        .user-info span {
            margin-right: 15px;
        }
        .logout-btn {
            background-color: #e74c3c;
            color: white;
            border: none;
            padding: 8px 15px;
            border-radius: 4px;
            cursor: pointer;
        }
        .sidebar {
            width: 250px;
            background-color: white;
            height: calc(100vh - 60px);
            position: fixed;
            box-shadow: 2px 0 10px rgba(0,0,0,0.05);
            padding: 20px 0;
        }
        .menu-item {
            padding: 12px 25px;
            display: flex;
            align-items: center;
            color: #555;
            text-decoration: none;
            transition: all 0.3s;
        }
        .menu-item:hover {
            background-color: #f0f4f8;
            color: #4a6baf;
        }
        .menu-item.active {
            background-color: #e8f0fe;
            color: #4a6baf;
            border-left: 4px solid #4a6baf;
        }
        .menu-item i {
            margin-right: 10px;
        }
        .main-content {
            margin-left: 250px;
            padding: 30px;
        }
        .search-bar {
            margin-bottom: 30px;
            display: flex;
        }
        .search-bar input {
            padding: 10px 15px;
            border: 1px solid #ddd;
            border-radius: 4px;
            width: 300px;
            font-size: 14px;
        }
        .card-container {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 20px;
        }
        .card {
            background-color: white;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.05);
            transition: transform 0.3s;
        }
        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }
        .card h3 {
            margin-top: 0;
            color: #333;
        }
        .card p {
            color: #666;
            margin-bottom: 15px;
        }
        .card a {
            display: inline-block;
            padding: 8px 15px;
            background-color: #4a6baf;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>Warehouse Management System</h1>
        <div class="user-info">
            <span>Welcome, ${user.username}</span>
            <a href="logout" class="logout-btn">Logout</a>
        </div>
    </div>
    
    <div class="sidebar">
        <a href="dashboard" class="menu-item active">
            <i class="fas fa-tachometer-alt"></i> Dashboard
        </a>
        <a href="stockForm" class="menu-item">
            <i class="fas fa-boxes"></i> Stocks
        </a>
        <a href="#" class="menu-item">
            <i class="fas fa-clipboard-list"></i> Orders
        </a>
        <a href="customerForm" class="menu-item">
            <i class="fas fa-users"></i> Customers
        </a>
        <a href="supplierForm" class="menu-item">
            <i class="fas fa-truck"></i> Suppliers
        </a>
        <a href="categoryForm" class="menu-item">
            <i class="fas fa-tags"></i> Categories
        </a>
        <a href="#" class="menu-item">
            <i class="fas fa-balance-scale"></i> Stock Balance
        </a>
        <a href="warehouseForm" class="menu-item">
            <i class="fas fa-warehouse"></i> Warehouse
        </a>
        <a href="#" class="menu-item">
            <i class="fas fa-money-bill-wave"></i> Payments
        </a>
        <a href="#" class="menu-item">
            <i class="fas fa-receipt"></i> Vouchers
        </a>
    </div>
    
    <div class="main-content">
        <div class="search-bar">
            <input type="text" placeholder="Search...">
        </div>
        
        <h2>All Items</h2>
        <div class="card-container">
            <div class="card">
                <h3>Customers</h3>
                <p>Manage your customer database</p>
                <a href="customerForm">Go to Customers</a>
            </div>
            <div class="card">
                <h3>Suppliers</h3>
                <p>Manage your suppliers</p>
                <a href="supplierForm">Go to Suppliers</a>
            </div>
            <div class="card">
                <h3>Stocks</h3>
                <p>Manage your inventory</p>
                <a href="stockForm">Go to Stocks</a>
            </div>
            <div class="card">
                <h3>Warehouse</h3>
                <p>Manage warehouse locations</p>
                <a href="warehouseForm">Go to Warehouse</a>
            </div>
            <div class="card">
                <h3>Category</h3>
                <p>Manage Category</p>
                <a href="categoryForm">Go to Category</a>
            </div>
            <div class="card">
                <h3>Unit</h3>
                <p>Manage Your Unit</p>
                <a href="unitForm">Go to Unit</a>
            </div>
            <div class="card">
                <h3>Supplier</h3>
                <p>Manage Supplier</p>
                <a href="supplierForm">Go to See Supplier</a>
            </div>
            
        </div>
    </div>
</body>
</html>