package com.main.user.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.main.user.entity.ReportUsUser;

public interface UserDao {

	public List<ReportUsUser> select();

	public ReportUsUser getByUserId(@Param("userId") String userId);

}
