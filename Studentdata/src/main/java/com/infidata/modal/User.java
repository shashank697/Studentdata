package com.infidata.modal;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="mytable")
public class User {
	
	@Id
	private int id;
	private String name;
	private String mobile;
	private String email;
	private String college;
	private String branch;
	private String semester;
	private String address;
	private String internship;
	private String batch;
	private String startdate;
	private String enddate;


	
	public User() {
		
	}
	
	
	public User(String name, String mobile, String email, String college, String branch,String semester,String address,String internship,String batch,String startdate,String enddate) {
		super();
		this.name = name;
		this.mobile = mobile;
		this.email = email;
		this.college = college;
		this.branch = branch;
		this.semester=semester;
		this.address=address;
		this.internship=internship;
		this.batch=batch;
		this.startdate=startdate;
		this.enddate=enddate;

	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public String getSemester() {
		return semester;
	}
	public void setSemester(String semester) {
		this.semester = semester;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getInternship() {
		return internship;
	}
	public void setInternship(String internship) {
		this.internship = internship;
	}
	public String getBatch() {
		return batch;
	}
	public void setBatch(String batch) {
		this.batch = batch;
	}
	public String getStartdate() {
		return startdate;
	}
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}
	public String getEnddate() {
		return enddate;
	}
	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", mobile=" + mobile + ", email=" + email
				+ ", college=" + college + ", branch=" + branch + ",semester=" + semester + ",address=" + address + ",internship=" + internship + ",batch=" + batch + ",startdate=" + startdate + ",enddate=" + enddate + "]";
	}
	
	
	
	

}
