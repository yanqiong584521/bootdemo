package com.main.user.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.user.dao.UserDao;
import com.main.user.entity.ReportUsUser;
import com.main.user.service.IUserService;

@Service
public class UserService implements IUserService{

	@Autowired
	UserDao userDao;
	
	public List<ReportUsUser> getUsers() {
		
		List<ReportUsUser> users = userDao.select();
//		List<User> users = new ArrayList<User>();
		return users;
	}

	
}
