package com.javatpoint.controllers;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class Models {

    // 1. Customer
    public static class Customer {
        @NotNull @Size(min = 1, message = "Customer ID is required")
        private String customerID;

        @NotNull @Size(min = 1, message = "Customer Name is required")
        private String customerName;

        @NotNull @Size(min = 1, message = "Phone is required")
        private String customerPh;

        @NotNull @Size(min = 1, message = "Address is required")
        private String customerAddress;

       
        public String getCustomerID() { return customerID; }
        public void setCustomerID(String customerID) { this.customerID = customerID; }

        public String getCustomerName() { return customerName; }
        public void setCustomerName(String customerName) { this.customerName = customerName; }

        public String getCustomerPh() { return customerPh; }
        public void setCustomerPh(String customerPh) { this.customerPh = customerPh; }

        public String getCustomerAddress() { return customerAddress; }
        public void setCustomerAddress(String customerAddress) { this.customerAddress = customerAddress; }
    }

    // 2. Category
    public static class Category {
        @NotNull @Size(min = 1, message = "Category ID is required")
        private String categoryID;

        @NotNull @Size(min = 1, message = "Category Name is required")
        private String categoryName;

        @NotNull @Size(min = 1, message = "Remark is required")
        private String categoryRemark;

        // Getters and Setters
        public String getCategoryID() { return categoryID; }
        public void setCategoryID(String categoryID) { this.categoryID = categoryID; }

        public String getCategoryName() { return categoryName; }
        public void setCategoryName(String categoryName) { this.categoryName = categoryName; }

        public String getCategoryRemark() { return categoryRemark; }
        public void setCategoryRemark(String categoryRemark) { this.categoryRemark = categoryRemark; }
    }

    // 3. Supplier
    public static class Supplier {
        @NotNull @Size(min = 1, message = "Supplier ID is required")
        private String supplierID;

        @NotNull @Size(min = 1, message = "Supplier Name is required")
        private String supplierName;

        @NotNull @Size(min = 1, message = "Phone is required")
        private String supplierPh;

        @NotNull @Size(min = 1, message = "Address is required")
        private String supplierAddress;

        // Getters and Setters
        public String getSupplierID() { return supplierID; }
        public void setSupplierID(String supplierID) { this.supplierID = supplierID; }

        public String getSupplierName() { return supplierName; }
        public void setSupplierName(String supplierName) { this.supplierName = supplierName; }

        public String getSupplierPh() { return supplierPh; }
        public void setSupplierPh(String supplierPh) { this.supplierPh = supplierPh; }

        public String getSupplierAddress() { return supplierAddress; }
        public void setSupplierAddress(String supplierAddress) { this.supplierAddress = supplierAddress; }
    }

    // 4. Stock
    public static class Stock {
        @NotNull @Size(min = 1, message = "Stock ID is required")
        private String stockID;

        @NotNull @Size(min = 1, message = "Stock Name is required")
        private String stockName;

        @NotNull @Size(min = 1, message = "Location is required")
        private String stockLocation;

        @NotNull @Size(min = 1, message = "Remark is required")
        private String stockRemark;

        @NotNull(message = "Method is required")
        private String stockMethod;

        // Getters and Setters
        public String getStockID() { return stockID; }
        public void setStockID(String stockID) { this.stockID = stockID; }

        public String getStockName() { return stockName; }
        public void setStockName(String stockName) { this.stockName = stockName; }

        public String getStockLocation() { return stockLocation; }
        public void setStockLocation(String stockLocation) { this.stockLocation = stockLocation; }

        public String getStockRemark() { return stockRemark; }
        public void setStockRemark(String stockRemark) { this.stockRemark = stockRemark; }

        public String getStockMethod() { return stockMethod; }
        public void setStockMethod(String stockMethod) { this.stockMethod = stockMethod; }
    }

    // 5. Unit
    public static class Unit {
        @NotNull @Size(min = 1, message = "Unit ID is required")
        private String unitID;

        @NotNull @Size(min = 1, message = "Unit Name is required")
        private String unitName;

        @NotNull @Size(min = 1, message = "SubUnit is required")
        private String subUnit;

        @NotNull @Size(min = 1, message = "Remark is required")
        private String unitRemark;

        // Getters and Setters
        public String getUnitID() { return unitID; }
        public void setUnitID(String unitID) { this.unitID = unitID; }

        public String getUnitName() { return unitName; }
        public void setUnitName(String unitName) { this.unitName = unitName; }

        public String getSubUnit() { return subUnit; }
        public void setSubUnit(String subUnit) { this.subUnit = subUnit; }

        public String getUnitRemark() { return unitRemark; }
        public void setUnitRemark(String unitRemark) { this.unitRemark = unitRemark; }
    }
    // 6. Warehouse
    public static class Warehouse {
        @NotNull @Size(min = 1, message = "Warehouse ID is required")
        private String wareHouseID;

        @NotNull @Size(min = 1, message = "Name is required")
        private String wareHouseName;

        @NotNull @Size(min = 1, message = "Address is required")
        private String wareHouseAddress;

        @NotNull @Size(min = 1, message = "Level is required")
        private String wareHouseLevel;

        @NotNull @Size(min = 1, message = "Location is required")
        private String wareHouseLocation;

        @NotNull @Size(min = 1, message = "Line Number is required")
        private String wareHouseLineNumber;

        // Getters and Setters
        public String getWareHouseID() { return wareHouseID; }
        public void setWareHouseID(String wareHouseID) { this.wareHouseID = wareHouseID; }

        public String getWareHouseName() { return wareHouseName; }
        public void setWareHouseName(String wareHouseName) { this.wareHouseName = wareHouseName; }

        public String getWareHouseAddress() { return wareHouseAddress; }
        public void setWareHouseAddress(String wareHouseAddress) { this.wareHouseAddress = wareHouseAddress; }

        public String getWareHouseLevel() { return wareHouseLevel; }
        public void setWareHouseLevel(String wareHouseLevel) { this.wareHouseLevel = wareHouseLevel; }

        public String getWareHouseLocation() { return wareHouseLocation; }
        public void setWareHouseLocation(String wareHouseLocation) { this.wareHouseLocation = wareHouseLocation; }

        public String getWareHouseLineNumber() { return wareHouseLineNumber; }
        public void setWareHouseLineNumber(String wareHouseLineNumber) { this.wareHouseLineNumber = wareHouseLineNumber; }
    }

    // 7. User (moved out of Warehouse class)
    public static class User {
        @NotNull @Size(min = 1, message = "Username is required")
        private String username;

        @NotNull @Size(min = 1, message = "Password is required")
        private String password;

        @NotNull @Size(min = 1, message = "Email is required")
        private String email;

        // Getters and Setters
        public String getUsername() { return username; }
        public void setUsername(String username) { this.username = username; }

        public String getPassword() { return password; }
        public void setPassword(String password) { this.password = password; }

        public String getEmail() { return email; }
        public void setEmail(String email) { this.email = email; }
    }


   
      
}
