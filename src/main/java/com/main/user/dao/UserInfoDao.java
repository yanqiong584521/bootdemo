package com.main.user.dao;

import com.main.user.entity.User;

public interface UserInfoDao {
    /**通过username查找用户信息;*/
    public User findByUsername(String username);
}