package com.example.stockspring.dao;

import java.sql.SQLException;

import com.example.stockspring.model.User;

public interface UserDao {
	 public boolean insertUser(User user) throws SQLException;

	public User login(String username, String password);
	    
}
