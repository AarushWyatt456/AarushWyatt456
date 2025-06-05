package com.javatpoint.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import com.javatpoint.controllers.Models.*;

@Controller
public class MultiFormController {

	  @Autowired
	    CombinedDAO dao;
	    
	    // Home page - redirects to login
	    @GetMapping("/")
	    public String home() {
	        return "redirect:/loginForm";
	    }
	    
	    // Login Form
	    @GetMapping("/loginForm")
	    public String showLoginForm(Model model) {
	        model.addAttribute("user", new User());
	        return "login";
	    }
	    
	    // Login Processing
	    @PostMapping("/loginUser")
	    public String loginUser(@ModelAttribute("user") User user, HttpSession session) {
	        // In a real application, you would validate against database
	        // For now, we'll just check if username and password are not empty
	        if(user.getUsername() != null && !user.getUsername().isEmpty() && 
	           user.getPassword() != null && !user.getPassword().isEmpty()) {
	            session.setAttribute("user", user);
	            return "redirect:/dashboard";
	        }
	        return "redirect:/loginForm?error";
	    }
	    
	    // Dashboard
	    @GetMapping("/dashboard")
	    public String showDashboard(HttpSession session) {
	        if(session.getAttribute("user") == null) {
	            return "redirect:/loginForm";
	        }
	        return "dashboard";
	    }
	    
	    // Logout
	    @GetMapping("/logout")
	    public String logout(HttpSession session) {
	        session.invalidate();
	        return "redirect:/loginForm";
	    }
	    
	    // Signup Form
	    @GetMapping("/signupForm")
	    public String showSignupForm(Model model) {
	        model.addAttribute("user", new User());
	        return "sigup";
	    }
	    
	    // Signup Processing
	    @PostMapping("/registerUser")
	    public String registerUser(@Valid @ModelAttribute("user") User user, 
	                              BindingResult result) {
	        if(result.hasErrors()) {
	            return "sigup";
	        }
	        // Save user to database in real application
	        return "redirect:/loginForm?registered";
	    }

    //  CUSTOMER
    @GetMapping("/customerForm")
    public String showCustomerForm(Model model) {
        model.addAttribute("customer", new Customer());
        return "customer";
    }

    @PostMapping("/submitCustomer")
    public String submitCustomer(@Valid @ModelAttribute("customer") Customer customer,
                                 BindingResult result) {
        if (result.hasErrors()) {
            return "customer";
        }
        dao.saveCustomer(customer);
        return "cc";
    }

    // ====================== CATEGORY ======================
    @GetMapping("/categoryForm")
    public String showCategoryForm(Model model) {
        model.addAttribute("category", new Category());
        return "category";
    }

    @PostMapping("/submitCategory")
    public String submitCategory(@Valid @ModelAttribute("category") Category category,
                                 BindingResult result) {
        if (result.hasErrors()) {
            return "category";
        }
        dao.saveCategory(category);
        return "cgc";
    }

    // ====================== SUPPLIER ======================
    @GetMapping("/supplierForm")
    public String showSupplierForm(Model model) {
        model.addAttribute("supplier", new Supplier());
        return "supplier";
    }

    @PostMapping("/submitSupplier")
    public String submitSupplier(@Valid @ModelAttribute("supplier") Supplier supplier,
                                 BindingResult result) {
        if (result.hasErrors()) {
            return "supplier";
        }
        dao.saveSupplier(supplier);
        return "sc";
    }

    // ====================== STOCK ======================
    @GetMapping("/stockForm")
    public String showStockForm(Model model) {
        model.addAttribute("stock", new Stock());
        return "stock";
    }

    @PostMapping("/submitStock")
    public String submitStock(@Valid @ModelAttribute("stock") Stock stock,
                              BindingResult result) {
        if (result.hasErrors()) {
            return "stock";
        }
        dao.saveStock(stock);
        return "stc";
    }

    // ====================== UNIT ======================
    @GetMapping("/unitForm")
    public String showUnitForm(Model model) {
        model.addAttribute("unit", new Unit());
        return "unit";
    }

    @PostMapping("/submitUnit")
    public String submitUnit(@Valid @ModelAttribute("unit") Unit unit,
                             BindingResult result) {
        if (result.hasErrors()) {
            return "unit";
        }
        dao.saveUnit(unit);
        return "uc";
    }

    // ====================== WAREHOUSE ======================
    @GetMapping("/warehouseForm")
    public String showWarehouseForm(Model model) {
        model.addAttribute("warehouse", new Warehouse());
        return "warehouse";
    }

    @PostMapping("/submitWarehouse")
    public String submitWarehouse(@Valid @ModelAttribute("warehouse") Warehouse warehouse,
                                  BindingResult result) {
    	
        if (result.hasErrors()) {
            return "warehouse";
        }
        dao.saveWarehouse(warehouse);
        System.out.println("WareHouse show -------------------------------------------");
        return "whc";
    }

    // ====================== CONFIRMATION PAGE ======================
    @GetMapping("/confirmation")
    public String showConfirmation() {
        return "confirmation";
    }
}
