package com.main.user.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.main.user.entity.ReportUsUser;
import com.main.user.service.IUserService;

@RestController
@RequestMapping("/user")
public class UserController {
	
	@Resource
	private IUserService userService;

	@RequestMapping("/getUsers")
	public List<ReportUsUser> getUsers(){
		
		return userService.getUsers();
	}
}
