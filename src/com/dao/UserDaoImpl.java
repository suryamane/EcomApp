package com.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.*;

import com.bean.User;

public class UserDaoImpl implements UserDao{

	static List<User> users = new ArrayList<User>();
	static {
	DBConnectionUtil conn = new DbConnections();
	
	try {
		Connection c1=conn.getConnection();
		Statement stmt=c1.createStatement();
		 ResultSet rs= stmt.executeQuery("select * from users;");
	 
	 while(rs.next())
	    {
	        User u= new User(rs.getString("username"),rs.getString("password"));
	        users.add(u);
	    }
	 
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

	}
	

	@Override
	public List<User> getUser() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean validateUser(User user) {

		for (User u : users) {
			if (user.getUsername().equals(u.getUsername()) && user.getPassword().equals(u.getPassword())) {

				return true;
			}
		}
		return false;

	}

	@Override
	public User addUser() {
		// TODO Auto-generated method stub
		return null;
	}

}
