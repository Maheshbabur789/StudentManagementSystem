package com.mahesh.Controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mahesh.EntityClasses.Admin;
import com.mahesh.EntityClasses.Students;
import com.mahesh.Services.AdminService;

@Controller
public class AdminControllers {

    @Autowired
    AdminService adminService;

    // Home page
    @GetMapping("/")
    public String HomePage() {
        return "Home";
    }

    // Admin login page
    @GetMapping("/adminLogin")
    public String AdminLoginPage() {
        return "AdminLogin";
    }

    // Register admin page
    @RequestMapping(value="/register")
    public String RegisterForm() {
        return "Registration";
    }

    // Handle admin registration
    @PostMapping("/register")
    public String insertadmin(@ModelAttribute("register") Admin admin) {
        adminService.addAdmin(admin);
        return "redirect:/adminLogin";  // Redirect to login page after successful registration
    }

    
    @PostMapping("/adminLogin")
    public String processLogin(@RequestParam("email") String email,
                                @RequestParam("password") String password,
                                RedirectAttributes redirectAttributes) {

        Admin admin = adminService.validateLogin(email, password); 

        if (admin != null) {
            
            redirectAttributes.addFlashAttribute("message", "Login Successful! Welcome to the Dashboard.");
            return "dashboard";  
        } else {
            
            redirectAttributes.addFlashAttribute("message", "Invalid email or password. Please try again.");
            return "adminLogin";  
        }
    }

    
    @GetMapping("/manageUsers")
    public String ManageUsers() {
        return "ManageUsers";
    }

    
    @GetMapping("/Admin-Data")
    public ModelAndView loadAdminData(ModelAndView model) {
        List<Admin> admin = adminService.getAllAdmin();
        System.out.println("Admins retrieved: " + admin);
        model.setViewName("Admin-Data");
        model.addObject("Admin",admin);
        return model;  
    }
    
   
    
   
}
