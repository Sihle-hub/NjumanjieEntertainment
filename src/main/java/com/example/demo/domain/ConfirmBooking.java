package com.example.demo.domain;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class ConfirmBooking {
	
	@Id
	private String name;
	private String date;
	private String startTime;
	private String endTime;
	
	public ConfirmBooking() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ConfirmBooking(String name, String date, String startTime, String endTime) {
		super();
		this.name = name;
		this.date = date;
		this.startTime = startTime;
		this.endTime = endTime;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	
	
	

}
