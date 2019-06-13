package com.mapper;

import java.util.List;

import org.apache.cxf.endpoint.ClientImpl.EchoContext;

import com.pojo.House;
import com.pojo.Room;

public interface HouseMapper {
	//主页根据id进行动态显示
	public House findUserById(int id) throws Exception;

	//查询全部的房间信息
	public List<House> AllHouse() throws Exception;

}
