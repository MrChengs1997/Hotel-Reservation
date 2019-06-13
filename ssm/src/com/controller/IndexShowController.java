package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mapper.HouseMapper;

import com.pojo.House;

@Controller
public class IndexShowController {
	
	 private ApplicationContext applicationContext;
     public ApplicationContext getApplication(){
           applicationContext = new ClassPathXmlApplicationContext("classpath:spring/applicationContext.xml");
           return applicationContext;
     }
     
     
	//主页的数据显示
     @RequestMapping("/index")
	public String show(Model model,HttpSession session) throws Exception{
         HouseMapper mapper =  (HouseMapper) getApplication().getBean("houseMapper");

         	//单人间
			 House	house1 = mapper.findUserById(1);
			 //双人间
			 House	house2 = mapper.findUserById(2);
			 //豪华间
			 House	house3 = mapper.findUserById(3);
			 
			 model.addAttribute("house1", house1);
			 model.addAttribute("house2", house2);
			 model.addAttribute("house3", house3);
        
		return "index";
	}
	
     //跳转至  房间列表
     @RequestMapping("/toList")
     public String toListRoom(Model model) throws Exception{
    	 HouseMapper mapper =  (HouseMapper) getApplication().getBean("houseMapper");

    	 List<House> houseList = mapper.AllHouse();
    	 model.addAttribute("houseList", houseList);
    	 return "rooms-list";
     }
	

}
