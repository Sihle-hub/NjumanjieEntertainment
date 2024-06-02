package com.example.demo.domain;

import java.sql.Time;
import java.util.Date;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class BookingArtist {

    @Id
    private String name;

    private Date date;

    private String startTime;

    private String endTime;

    private String venue;
    private String email;

    private String tel;

	public BookingArtist() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BookingArtist(String name, Date date, String startTime, String endTime, String venue, String email, String tel) {
		super();
		this.name = name;
		this.date = date;
		this.startTime = startTime;
		this.endTime = endTime;
		this.venue = venue;
		this.email = email;
		this.tel = tel;
	}

	
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setVenue(String venue) {
		this.venue = venue;
	}


	public void setEmail(String email) {
		this.email = email;
	}
	
	public void setDate(Date date) {
		this.date = date;
	}
	
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getName() {
		return name;
	}

	public String getVenue() {
		return venue;
	}

	public String getEmail() {
		return email;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public Date getDate() {
		return date;
	}

	public String getStartTime() {
		return startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	
   
    
}
