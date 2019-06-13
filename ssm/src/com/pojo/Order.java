package com.pojo;



public class Order {
	
	private Integer orderid;
	private String names;
	private int userid;
	private int id;
	private int many;
	private String createtime;
	private int days;
	private String phone;
	public Order(Integer orderid, String names, int userid, int id, int many, String createtime, int days,
			String phone) {
		super();
		this.orderid = orderid;
		this.names = names;
		this.userid = userid;
		this.id = id;
		this.many = many;
		this.createtime = createtime;
		this.days = days;
		this.phone = phone;
	}
	public Integer getOrderid() {
		return orderid;
	}
	public void setOrderid(Integer orderid) {
		this.orderid = orderid;
	}
	public String getNames() {
		return names;
	}
	public void setNames(String names) {
		this.names = names;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getMany() {
		return many;
	}
	public void setMany(int many) {
		this.many = many;
	}
	public String getCreatetime() {
		return createtime;
	}
	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}
	public int getDays() {
		return days;
	}
	public void setDays(int days) {
		this.days = days;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Order() {
		super();
	}
	
	
}
