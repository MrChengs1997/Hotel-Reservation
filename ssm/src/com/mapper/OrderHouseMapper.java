package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.Order;

public interface OrderHouseMapper {
	//查询房间剩余数量
	public int getHouseNumber(int id) throws Exception;
	
	//房间数量减一
	public void  DevHouseNumber(int id) throws Exception;
	
	//插入Order数据表
	public void insertOrder(Order order) throws Exception;
	
	//根据用户id进行查询订单
	public List<Order> getOrderByUserid(int id) throws Exception;
	

}
