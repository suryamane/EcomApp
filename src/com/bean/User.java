package com.bean;

import java.util.Date;

public class User {

	private String username;
	private String password;
//	private String fname;
//	private String lname;
//	private Date dob;
//	private String email;
		
	public User(String username, String password) {
		
		this.username = username;
		this.password = password;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	
}
