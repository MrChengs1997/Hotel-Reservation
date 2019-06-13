package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mapper.LoginUserMapper;
import com.pojo.User;

@Controller
public class LoginController {
	//登陆页面
	
	 private ApplicationContext applicationContext;
     public ApplicationContext getApplication(){
           applicationContext = new ClassPathXmlApplicationContext("classpath:spring/applicationContext.xml");
           return applicationContext;
     }
	
     //主界面
	@RequestMapping("/login")
	public String toLogin(){
		return "login";
	}
	
	//进行登陆
	@RequestMapping("/toindex")
	public String toIndex(String username,String pwd,Model model,HttpSession session) throws Exception{
		LoginUserMapper mapper = (LoginUserMapper) getApplication().getBean("userLoginMapper");
		int a =mapper.LoginByName(username,pwd);
		User user = mapper.getUser(username);
		if(a > 0){
			
			session.setAttribute("userid", user.getUserid());
			model.addAttribute("user", user);
			return "forward:/index";
		}else{
			session.setAttribute("msg", "账号或者密码不正确，请重新登陆！");
			return "forward:/login";
		}
	}
	
	//前往注册页面
	@RequestMapping("/register")
	public String register(){
		return "register";
	}

	//注册
	@RequestMapping("/toregister")
	public String to(String username,String password,String sex,int age,String phone,HttpSession session) throws Exception{
		User user = new User(null, username, password, phone, age, sex);
		LoginUserMapper mapper = (LoginUserMapper) getApplication().getBean("userLoginMapper");
		mapper.toLogin(user);
		session.setAttribute("msg", "注册成功，请进行登陆！");
		return "redirect:/login";
	}
}
