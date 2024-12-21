/*package com.mahesh.Controllers;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mahesh.EntityClasses.Attendance;
import com.mahesh.EntityClasses.Students;
import com.mahesh.Services.AttendanceService;
import com.mahesh.Services.StudentService;

@Controller
public class AttendanceController {

    @Autowired
    private AttendanceService attendanceService;

    @Autowired
    private StudentService studentService;

    @GetMapping("/markAttendance")
    public String markAttendance(@RequestParam("studentId") int studentId, Model model) {
        Students student = studentService.getStudentsById(studentId);
        model.addAttribute("student", student);
        model.addAttribute("attendance", new Attendance());
        return "markAttendance";
    }

    @PostMapping("/submitAttendance")
    public String submitAttendance(@RequestParam("studentId") int studentId,
                                   @RequestParam("status") String status,
                                   @RequestParam("date") Date date) {
        Attendance attendance = new Attendance();
        Students student = studentService.getStudentsById(studentId);
        attendance.setStu(student);
        attendance.setStatus(status);
        attendance.setDate(date);
        attendanceService.saveAttendance(attendance);
        return "redirect:/attendanceSummary?studentId=" + studentId;
    }

    @GetMapping("/attendanceSummary")
    public String viewAttendanceSummary(@RequestParam("studentId") int studentId, Model model) {
        model.addAttribute("attendanceList", attendanceService.getAttendanceByStudent(studentId));
        return "attendanceSummary";
    }
}
*/