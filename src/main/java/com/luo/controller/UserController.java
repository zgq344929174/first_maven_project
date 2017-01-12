package com.luo.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.luo.domain.User;
import com.luo.service.UserService;

@Controller  
public class UserController {  
	
    @Resource  
    private UserService userService;  
      
    @RequestMapping("/")
    public ModelAndView getIndex(){      
        ModelAndView mav = new ModelAndView("index");   
        User user = userService.selectUserById(1);  
        mav.addObject("user", user);   
        return mav;    
    }    
    
    @RequestMapping("/getalluser")
    public ModelAndView getAllUser(){      
        ModelAndView mav = new ModelAndView("getalluser");   
        List<User> userList = userService.selectAllUser();
        String users = JSON.toJSONString(userList);
        mav.addObject("users", users);   
        return mav;    
    }   
}  
