package com.mahesh.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.mahesh.Daos.AdminDao;
import com.mahesh.EntityClasses.Admin;
import com.mahesh.EntityClasses.Students;

@Component
@Service
public class AdminService {
	
	@Autowired
	AdminDao admindao;
	
	public void addAdmin(Admin admin) {
		admindao.addAdmin(admin);
	}
	// In AdminService.java getAllAdmin
	public Admin validateLogin(String email, String password) {
	    return admindao.validateLogin(email, password);  // Returns Admin object if login is successful, otherwise null
	}

	public List<Admin> getAllAdmin() {
	    return admindao.getAllAdmins();
	}
	

   
}
