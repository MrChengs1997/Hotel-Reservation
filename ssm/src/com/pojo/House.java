package com.pojo;

public class House {
	
	private Integer id;
	private String  housename;
	private String images;
	private Integer number;
	private Integer price;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getHousename() {
		return housename;
	}
	public void setHousename(String housename) {
		this.housename = housename;
	}
	public String getImages() {
		return images;
	}
	public void setImages(String images) {
		this.images = images;
	}
	public Integer getNumber() {
		return number;
	}
	public void setNumber(Integer number) {
		this.number = number;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public House(Integer id, String housename, String images, Integer number, Integer price) {
		super();
		this.id = id;
		this.housename = housename;
		this.images = images;
		this.number = number;
		this.price = price;
	}
	public House() {
		super();
	}
	
	
}
