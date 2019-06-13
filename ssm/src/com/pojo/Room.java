package com.pojo;

public class Room {
	
	private Integer id;
	private String showmsg;
	private String showimage;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getShowmsg() {
		return showmsg;
	}
	public void setShowmsg(String showmsg) {
		this.showmsg = showmsg;
	}
	public String getShowimage() {
		return showimage;
	}
	public void setShowimage(String showimage) {
		this.showimage = showimage;
	}
	public Room(Integer id, String showmsg, String showimage) {
		super();
		this.id = id;
		this.showmsg = showmsg;
		this.showimage = showimage;
	}
	public Room() {
		super();
	}
	

}
