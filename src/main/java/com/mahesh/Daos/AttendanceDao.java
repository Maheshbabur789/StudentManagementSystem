package com.mahesh.Daos;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.mahesh.EntityClasses.Attendance;

@Component
public class AttendanceDao {

    @Autowired
    private HibernateTemplate hibernateTemplate;

    // Save Attendance Record
    public void saveAttendance(Attendance attendance) {
        hibernateTemplate.save(attendance);  // Saves the attendance object to the DB
    }

    // Get Attendance by Student ID and Date
    public Attendance getAttendanceByStudentAndDate(int studentId, Date date) {
        String hql = "FROM Attendance WHERE student.studentId = ? AND date = ?";
        List<Attendance> result = (List<Attendance>) hibernateTemplate.find(hql, studentId, date);
        return result.isEmpty() ? null : result.get(0); // Returns the first match, or null if not found
    }

    // Get All Attendance Records for a Specific Student
    public List<Attendance> getAttendanceByStudent(int studentId) {
        String hql = "FROM Attendance WHERE student.studentId = ?";
        return (List<Attendance>) hibernateTemplate.find(hql, studentId);
    }

    // Get All Attendance Records for a Specific Date
    public List<Attendance> getAttendanceByDate(Date date) {
        String hql = "FROM Attendance WHERE date = ?";
        return (List<Attendance>) hibernateTemplate.find(hql, date);
    }
}
