package com.main.user.service;

import com.main.user.entity.User;

public interface UserInfoService {
    /**通过username查找用户信息;*/
    public User findByUsername(String username);
}