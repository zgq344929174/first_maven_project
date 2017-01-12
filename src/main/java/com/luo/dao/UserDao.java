package com.luo.dao;

import java.util.List;

import com.luo.domain.User;

public interface UserDao {
	
	/**
	 * @param userId
	 * @return User
	 */
	public User selectUserById(Integer userId);  
	
	public List<User> selectAllUser();

}
