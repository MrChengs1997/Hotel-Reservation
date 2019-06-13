package com.mapper;

import org.apache.ibatis.annotations.Param;

import com.pojo.User;

public interface LoginUserMapper {
	
	//登陆检测
	public int LoginByName(@Param("username")String username,@Param("password")String password) throws Exception;
	//登陆获取全部信息
	public  User getUser(String name) throws Exception;
	
	//登陆注册
	public void toLogin(User user) throws Exception;
	
	//根据id进行查询
	public  User getShowUser(int id) throws Exception;    
	
	//根据id进行修改信息
	public void updateUser(User  user) throws Exception;
}
