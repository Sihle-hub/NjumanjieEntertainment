package com.example.demo.domain;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;

@Entity
public class Photo {
	
	@Id
	@Column(name = "PHOTO_ID")
    private Long id;
	
	@Lob
	@Column(columnDefinition = "longblob")
	private byte[] photo;

	public Photo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Photo(Long id, byte[] photo) {
		super();
		this.id = id;
		this.photo = photo;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public byte[] getPhoto() {
		return photo;
	}

	public void setPhoto(byte[] photo) {
		this.photo = photo;
	}
	
	

}
