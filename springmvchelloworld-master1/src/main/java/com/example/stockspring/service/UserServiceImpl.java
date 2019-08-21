package com.example.stockspring.service;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.stockspring.dao.UserDao;
import com.example.stockspring.dao.UserDaoImpl;
import com.example.stockspring.model.User;

@Service
public class UserServiceImpl implements UserService{
	
	
	private UserDao userDao=new UserDaoImpl();


	@Override
	public User insertUser(User user) throws SQLException {
		 userDao.insertUser(user);
		 return null;
	}

	@Override
	public User login(String username, String password) {
		// TODO Auto-generated method stub
		
		return userDao.login(username,password);
	}			 

}
