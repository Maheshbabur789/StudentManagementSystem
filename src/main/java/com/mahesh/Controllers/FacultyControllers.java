package com.mahesh.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FacultyControllers {
	
	
	@GetMapping("/facultyLogin")
    public String StudentLoginForm() {
        return "FacultyLogin";
    }

}
