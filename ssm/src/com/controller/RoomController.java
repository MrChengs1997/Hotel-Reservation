package com.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mapper.HouseMapper;
import com.mapper.LoginUserMapper;
import com.mapper.OrderHouseMapper;
import com.pojo.House;
import com.pojo.Order;
import com.pojo.Room;
import com.pojo.User;

@RequestMapping("/reserve")
@Controller
public class RoomController {
	 private ApplicationContext applicationContext;
     public ApplicationContext getApplication(){
           applicationContext = new ClassPathXmlApplicationContext("classpath:spring/applicationContext.xml");
           return applicationContext;
     }
     
	
	//跳转至房间的具体信息
	@RequestMapping("/show")
	public String toShowRoom(Integer id,Model model) throws Exception{
		//System.out.println(id);
		HouseMapper mapper = (HouseMapper) getApplication().getBean("houseMapper");
		House house = mapper.findUserById(id);
		model.addAttribute("room", house);
		return "room";
	}
	
	


	

	

	
	//处理订单信息
		@RequestMapping("/suremsg")
		public String sureMsg(int userid,int id,String name,String  phone,
				int many,String createtime,
				int days,Model model) throws Exception{
		
			
			Order order = new Order(null, name, userid, id, many, createtime, days, phone);
					
			OrderHouseMapper mapper = (OrderHouseMapper) getApplication().getBean("orderMapper");
			
			
			LoginUserMapper m = (LoginUserMapper) getApplication().getBean("userLoginMapper");
			//查询数量
			int num = mapper.getHouseNumber(id);
			//查询user
			User u = m.getShowUser(userid);
//			//查看订单
		    List<Order> orderList = 	mapper.getOrderByUserid(userid);
			
			if(num > 0){
				mapper.insertOrder(order);
				mapper.DevHouseNumber(id);
				model.addAttribute("showuser", u);
				model.addAttribute("orderList", orderList);
				return "usermsg";
			}else{
				return "room";
			}
			
			//return "index";
		}
	
	
	
}
