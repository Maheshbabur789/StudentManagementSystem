package com.mahesh.Daos;

import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.mahesh.EntityClasses.Admin;

import java.util.List;

@Component
public class AdminDao {

    @Autowired
    private HibernateTemplate hibernateTemplate;

    // Add an admin
    @Transactional
    public void addAdmin(Admin admin) {
        hibernateTemplate.save(admin);
    }

    // Validate admin login using email and password
    @Transactional
    public Admin validateLogin(String email, String password) {
        String hql = "FROM Admin WHERE email = :email AND password = :password";
        Query<Admin> query = (Query<Admin>) hibernateTemplate.getSessionFactory().getCurrentSession().createQuery(hql);
        query.setParameter("email", email);
        query.setParameter("password", password);
        return query.uniqueResult();  // Returns the Admin object or null if not found
    }

    // Get all admins
    @Transactional
    public List<Admin> getAllAdmins() {
        return (List<Admin>) hibernateTemplate.loadAll(Admin.class);  // Fetches all admins from the database
    }

    // Get an admin by ID
    @Transactional
    public Admin getAdminById(Long adminId) {
        return hibernateTemplate.get(Admin.class, adminId);  // Fetches an admin by their ID
    }

    // Update admin details
    @Transactional
    public void updateAdmin(Admin admin) {
        hibernateTemplate.update(admin);  // Updates the existing admin with new data
    }

    // Delete an admin by ID
    @Transactional
    public void deleteAdmin(Long adminId) {
        Admin admin = getAdminById(adminId);  // Retrieve the admin to be deleted
        if (admin != null) {
            hibernateTemplate.delete(admin);  // Deletes the admin if found
        } else {
            // Handle case where admin is not found (optional)
            // e.g., log or throw a custom exception
        }
    }

    // Get the total number of admins
    @Transactional
    public long getTotalAdmins() {
        String hql = "SELECT count(*) FROM Admin";
        Query<Long> query = hibernateTemplate.getSessionFactory().getCurrentSession().createQuery(hql, Long.class);
        return query.uniqueResult();  // Returns the total number of admins
    }
}
