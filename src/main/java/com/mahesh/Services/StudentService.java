package com.mahesh.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mahesh.Daos.StudentDao;
import com.mahesh.EntityClasses.Students;

@Service
public class StudentService {

    @Autowired
    private StudentDao studentDao;

    // Add a new student
    public void addStudent(Students stu) {
        studentDao.addStudent(stu);
    }

    // Validate student login with email and password
    public boolean validateLogin(String email, String password) {
        Students stu = studentDao.validateLogin(email, password);
        return stu != null;
    }

    // Get all students
    public List<Students> getAllStu() {
        return studentDao.getAllStudents();
    }

    // Edit student details
    public void updateStudent(Students stu) {
        studentDao.updateStudent(stu);
    }

    // Delete a student by ID
    public void deleteStudent(int studentId) {
        studentDao.deleteStudent(studentId);
    }
}
