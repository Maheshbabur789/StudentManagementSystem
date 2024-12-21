package com.mahesh.Services;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mahesh.EntityClasses.Attendance;


@Component
@Service
public class AttendanceService {

    @Autowired
    private HibernateTemplate hibernateTemplate;

    // Save attendance
    @Transactional
    public void saveAttendance(Attendance attendance) {
        hibernateTemplate.save(attendance);
    }

    // Get attendance for a specific student on a specific date
    @Transactional(readOnly = true)
    public Attendance getAttendanceByStudentAndDate(int studentId, Date date) {
        String hql = "FROM Attendance WHERE student.studentId = ? AND date = ?";
        List<Attendance> result = (List<Attendance>) hibernateTemplate.find(hql, studentId, date);
        return result.isEmpty() ? null : result.get(0); // Return the first match, or null if not found
    }

    // Get all attendance records for a specific student
    @Transactional(readOnly = true)
    public List<Attendance> getAttendanceByStudent(int studentId) {
        String hql = "FROM Attendance WHERE student.studentId = ?";
        return (List<Attendance>) hibernateTemplate.find(hql, studentId);
    }

    // Get all attendance records for a specific date
    @Transactional(readOnly = true)
    public List<Attendance> getAttendanceByDate(Date date) {
        String hql = "FROM Attendance WHERE date = ?";
        return (List<Attendance>) hibernateTemplate.find(hql, date);
    }
}
