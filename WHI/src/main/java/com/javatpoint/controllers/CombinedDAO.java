package com.javatpoint.controllers;

import org.springframework.jdbc.core.JdbcTemplate;

import com.javatpoint.controllers.Models.Category;
import com.javatpoint.controllers.Models.Customer;
import com.javatpoint.controllers.Models.Stock;
import com.javatpoint.controllers.Models.Supplier;
import com.javatpoint.controllers.Models.Unit;
import com.javatpoint.controllers.Models.Warehouse;

public class CombinedDAO {

    private JdbcTemplate jdbcTemplate;
    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) { this.jdbcTemplate = jdbcTemplate; }

    
    
    public void saveCustomer(Customer c) {
        jdbcTemplate.update("INSERT INTO customer VALUES (?, ?, ?, ?)",
            c.getCustomerID(), c.getCustomerName(), c.getCustomerPh(), c.getCustomerAddress());
    }

    public void saveCategory(Category c) {
        jdbcTemplate.update("INSERT INTO category VALUES (?, ?, ?)",
            c.getCategoryID(), c.getCategoryName(), c.getCategoryRemark());
    }

    public void saveSupplier(Supplier s) {
        jdbcTemplate.update("INSERT INTO supplier VALUES (?, ?, ?, ?)",
            s.getSupplierID(), s.getSupplierName(), s.getSupplierPh(), s.getSupplierAddress());
    }

    public void saveStock(Stock s) {
        jdbcTemplate.update("INSERT INTO stock VALUES (?, ?, ?, ?, ?)",
            s.getStockID(), s.getStockName(), s.getStockLocation(), s.getStockRemark(), s.getStockMethod());
    }

    public void saveUnit(Unit u) {
        jdbcTemplate.update("INSERT INTO unit VALUES (?, ?, ?, ?)",
            u.getUnitID(), u.getUnitName(), u.getSubUnit(), u.getUnitRemark());
    }

    public void saveWarehouse(Warehouse w) {
        jdbcTemplate.update("INSERT INTO warehouse VALUES (?, ?, ?, ?, ?, ?)",
            w.getWareHouseID(), w.getWareHouseName(), w.getWareHouseAddress(), w.getWareHouseLevel(),
            w.getWareHouseLocation(), w.getWareHouseLineNumber());
    }
}
