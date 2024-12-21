package com.mahesh.Daos;

import java.util.List;

import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.mahesh.EntityClasses.Students;

@Component
public class StudentDao {

    @Autowired
    private HibernateTemplate hibernateTemplate;

    // Add a new student
    @Transactional
    public void addStudent(Students stu) {
        hibernateTemplate.save(stu);
    }

    // Validate student login with email and password
    @Transactional
    public Students validateLogin(String email, String password) {
        String hql = "FROM Students WHERE email = :email AND password = :password";
        Query<Students> query = hibernateTemplate.getSessionFactory().getCurrentSession().createQuery(hql, Students.class);
        query.setParameter("email", email);
        query.setParameter("password", password);
        
        // Handling the case where no student is found (returns null)
        Students student = query.uniqueResult();
        return student;
    }

    // Get all students
    @Transactional
    public List<Students> getAllStudents() {
        return (List<Students>) hibernateTemplate.loadAll(Students.class);
    }

    // Get a student by ID
    @Transactional
    public Students getStudentById(int studentId) {
        return hibernateTemplate.get(Students.class, studentId); // Fetches the student by their ID
    }

    // Update student details
    @Transactional
    public void updateStudent(Students stu) {
        hibernateTemplate.update(stu); // Updates the existing student
    }

    // Delete a student by ID
    @Transactional
    public void deleteStudent(int studentId) {
        Students stu = getStudentById(studentId); // Retrieve the student to be deleted
        if (stu != null) {
            hibernateTemplate.delete(stu); // Deletes the student if found
        } else {
            // Handle case where student is not found (optional)
            // e.g., log or throw custom exception
        }
    }

    // Get the total number of students
    @Transactional
    public long getTotalStudents() {
        String hql = "SELECT count(*) FROM Students";
        Query<Long> query = hibernateTemplate.getSessionFactory().getCurrentSession().createQuery(hql, Long.class);
        return query.uniqueResult(); // Returns the total number of students
    }
}
