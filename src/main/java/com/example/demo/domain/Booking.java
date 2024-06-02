package com.example.demo.domain;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;

@Entity
public class Booking {
	
	@Id
	private String name;
	
	@Lob
	@Column(columnDefinition = "longblob")
	private byte[] photo;

	public Booking() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Booking( byte[] photo, String name) {
		super();
	
		this.photo = photo;
		this.name = name;
		
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public byte[] getPhoto() {
		return photo;
	}

	public void setPhoto(byte[] photo) {
		this.photo = photo;
	}
	
	

}
