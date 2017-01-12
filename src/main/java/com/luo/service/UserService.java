package com.luo.service;

import java.util.List;

import com.luo.domain.User;

public interface UserService {
	User selectUserById(Integer userId);  
	
	List<User> selectAllUser();
	
}
