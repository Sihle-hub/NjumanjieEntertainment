package com.example.demo.domain;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;

@Entity
public class Artist {
	
	@Id
	@Column(name = "ARTIST_ID")
    private Long id;
	
	@Column(name = "ARTIST_NAME")
	private String name;
	
	@Lob
	@Column(columnDefinition = "longblob")
	private byte[] image;

	public Artist() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Artist(Long id, String name, byte[] image) {
		super();
		this.id = id;
		this.name = name;
		this.image = image;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public byte[] getImage() {
		return image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}


	
	

}
