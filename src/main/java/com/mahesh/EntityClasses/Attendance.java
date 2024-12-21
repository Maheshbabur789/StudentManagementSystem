package com.mahesh.EntityClasses;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Attendance {
	 @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private int attendanceId;

	    @ManyToOne
	    @JoinColumn(name = "student_id", nullable = false)
	    private Students stu;

	    @Column(name = "date", nullable = false)
	    private Date date;

	    @Column(name = "status", nullable = false)
	    private String status; // 'Present' or 'Absent'

		public int getAttendanceId() {
			return attendanceId;
		}

		public void setAttendanceId(int attendanceId) {
			this.attendanceId = attendanceId;
		}

		public Students getStu() {
			return stu;
		}

		public void setStu(Students stu) {
			this.stu = stu;
		}

		public Date getDate() {
			return date;
		}

		public void setDate(Date date) {
			this.date = date;
		}

		public String getStatus() {
			return status;
		}

		public void setStatus(String status) {
			this.status = status;
		}

	  
	}

