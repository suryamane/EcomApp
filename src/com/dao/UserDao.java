package com.dao;

import java.util.List;

import com.bean.User;

public interface UserDao {

	List<User> getUser();
	User addUser();
	boolean validateUser(User user);
}
