package com.pojo;

import java.util.Date;

public class Time {
	
	private Date createtime;
	private Date leavetime;
	public Date getCreatetime() {
		return createtime;
	}
	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
	public Date getLeavetime() {
		return leavetime;
	}
	public void setLeavetime(Date leavetime) {
		this.leavetime = leavetime;
	}
	public Time(Date createtime, Date leavetime) {
		super();
		this.createtime = createtime;
		this.leavetime = leavetime;
	}
	public Time() {
		super();
	}
	@Override
	public String toString() {
		return "Time [createtime=" + createtime + ", leavetime=" + leavetime + "]";
	}
	
	

}
