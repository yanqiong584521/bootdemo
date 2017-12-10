package com.main.user.controller;

import java.util.List;

import javax.annotation.Resource;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.main.common.page.PageMessage;
import com.main.common.util.StringUtis;
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

	@RequestMapping("/getUsersPages")
	public PageMessage<ReportUsUser> getUsers(String pageNo, String pageSize){

		if (!StringUtis.isNotBlank(pageNo)) {
			pageNo = "1";
		}
		if (!StringUtis.isNotBlank(pageSize)) {
			pageSize = "5";
		}
		PageHelper.startPage(Integer.parseInt(pageNo), Integer.parseInt(pageSize));
		List<ReportUsUser> users = userService.getUsers();
		PageInfo<ReportUsUser> pageInfo = new PageInfo<ReportUsUser>(users);
		PageMessage<ReportUsUser> pageMessage = new PageMessage<ReportUsUser>();
		pageMessage.setTotalCount(pageInfo.getTotal());
		pageMessage.setRows(pageInfo.getList());
		return pageMessage;
	}
}
