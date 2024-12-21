package com.mahesh.Controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mahesh.EntityClasses.Students;
import com.mahesh.Services.StudentService;

@Controller
public class StudentControllers {

    @Autowired
    StudentService studentService;

    // Display login form
    @GetMapping("/studentLogin")
    public String StudentLoginForm() {
        return "studentLogin";
    }

    // Handle student registration
    @PostMapping("/studentRegister")
    public String insertstudents(@ModelAttribute("studentRegister") Students stu) {
        studentService.addStudent(stu);
        return "studentRegistration";
    }

    // Handle student login
    @PostMapping("/studentLogin")
    public String studentLogin(@RequestParam("email") String email,
                                @RequestParam("password") String password,
                                RedirectAttributes redirectAttributes) {

        boolean isValid = studentService.validateLogin(email, password);

        if (isValid) {
            redirectAttributes.addFlashAttribute("message", "Login Successful! Welcome to the Dashboard.");
            return "studentHomePage";  
        } else {
            redirectAttributes.addFlashAttribute("message", "Invalid email or password. Please try again.");
            return "studentLogin";  
        }
    }

    // Show all students
    @GetMapping("/studentAllData")
    public ModelAndView loadStudents(ModelAndView model) {
        List<Students> students = studentService.getAllStu();
        model.setViewName("studentAllData");
        model.addObject("Students", students);
        return model;
    }

    // Edit student - Show the edit form with pre-filled data
    @GetMapping("/editStudent")
    public ModelAndView editStudent(@RequestParam("id") int studentId) {
        Students student = studentService.getAllStu().stream()
                                       .filter(stu -> stu.getId() == studentId)
                                       .findFirst()
                                       .orElse(null);

        ModelAndView modelAndView = new ModelAndView("editStudent");
        modelAndView.addObject("student", student);
        return modelAndView;
    }

    // Update student details after form submission
    @PostMapping("/updateStudent")
    public String updateStudent(@ModelAttribute("student") Students student) {
        studentService.updateStudent(student);
        return "redirect:/studentAllData";  // Redirect to the student list page after update
    }

    // Delete student by ID
    @GetMapping("/deleteStudent")
    public String deleteStudent(@RequestParam("id") int studentId) {
        studentService.deleteStudent(studentId);
        return "redirect:/studentAllData";  // Redirect to the student list page after deletion
    }
    
    
}
