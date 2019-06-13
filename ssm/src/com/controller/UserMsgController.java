package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mapper.LoginUserMapper;
import com.mapper.OrderHouseMapper;
import com.pojo.Order;
import com.pojo.User;

@Controller
public class UserMsgController {
	
	 private ApplicationContext applicationContext;
     public ApplicationContext getApplication(){
           applicationContext = new ClassPathXmlApplicationContext("classpath:spring/applicationContext.xml");
           return applicationContext;
     }
	
	//去更新 个人信息页面
	@RequestMapping("/toupdate")
	public String msg(int userid,Model model) throws Exception{
		
		OrderHouseMapper m = (OrderHouseMapper) getApplication().getBean("orderMapper");
		 List<Order> orderList = 	m.getOrderByUserid(userid);
		
		
		LoginUserMapper mapper = (LoginUserMapper) getApplication().getBean("userLoginMapper");
		
		User user = mapper.getShowUser(userid);
		System.out.println(userid);
		model.addAttribute("orderList", orderList);
		model.addAttribute("updateuser",user);
		return "update";
	}
	
	//更新个人信息
	@RequestMapping("/updatemsg")
	public String updatemsg(User user,Model model) throws Exception{
		System.out.println(user);
		
		//查记录
		OrderHouseMapper m = (OrderHouseMapper) getApplication().getBean("orderMapper");
		 List<Order> orderList = 	m.getOrderByUserid(user.getUserid());
		
		LoginUserMapper mapper = (LoginUserMapper) getApplication().getBean("userLoginMapper");
		
		mapper.updateUser(user);
		model.addAttribute("orderList", orderList);
		model.addAttribute("showuser", user);
		return "usermsg";
	}

	
	
	//主页转向个人中心
	@RequestMapping("/toroommsg")
	public String toRooms(int id,Model model) throws Exception{

		//查记录
		OrderHouseMapper m = (OrderHouseMapper) getApplication().getBean("orderMapper");
		 List<Order> orderList = 	m.getOrderByUserid(id);
		
		LoginUserMapper mapper = (LoginUserMapper) getApplication().getBean("userLoginMapper");
		User user = mapper.getShowUser(id);
		
		model.addAttribute("orderList", orderList);
		model.addAttribute("showuser", user);
		return "usermsg";
	}
	
	
}
