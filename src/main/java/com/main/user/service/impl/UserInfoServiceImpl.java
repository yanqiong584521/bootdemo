package com.main.user.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.main.user.dao.UserInfoDao;
import com.main.user.entity.User;
import com.main.user.service.UserInfoService;

@Service
public class UserInfoServiceImpl implements UserInfoService {
    @Resource
    private UserInfoDao userInfoDao;
    
    @Override
    public User findByUsername(String username) {
        System.out.println("UserInfoServiceImpl.findByUsername()");
        return userInfoDao.findByUsername(username);
    }
}