package com.javatpoint.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class UserController {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @RequestMapping("/login")
    public String showLoginForm(Model model) {
        model.addAttribute("user", new Models.User());
        return "login";
    }

    @RequestMapping(value = "/doLogin", method = RequestMethod.POST)
    public String login(@ModelAttribute("user") Models.User user, Model model) {
        String sql = "SELECT COUNT(*) FROM users WHERE username=? AND password=?";
        int count = jdbcTemplate.queryForObject(sql, new Object[]{user.getUsername(), user.getPassword()}, Integer.class);

        if (count == 1) {
            return "home"; // or dashboard
        } else {
            model.addAttribute("error", "Invalid credentials");
            return "login";
        }
    }

    @RequestMapping("/signup")
    public String showSignupForm(Model model) {
        model.addAttribute("user", new Models.User());
        return "signup";
    }

    @RequestMapping(value = "/doSignup", method = RequestMethod.POST)
    public String signup(@ModelAttribute("user") Models.User user, Model model) {
        String checkSql = "SELECT COUNT(*) FROM users WHERE username=?";
        int count = jdbcTemplate.queryForObject(checkSql, new Object[]{user.getUsername()}, Integer.class);

        if (count > 0) {
            model.addAttribute("error", "Username already exists");
            return "signup";
        } else {
            String insertSql = "INSERT INTO users (username, password, email) VALUES (?, ?, ?)";
            jdbcTemplate.update(insertSql, user.getUsername(), user.getPassword(), user.getEmail());
            return "redirect:/login";
        }
    }
}
