package com.example.demo.domain;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;

@Entity
public class Videos {
	
	@Id
	@Column(name = "VIDEO_ID")
    private Long id;
	
	@Lob
	@Column(columnDefinition = "longblob")
	private byte[] video;

	public Videos() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Videos(Long id, byte[] video) {
		super();
		this.id = id;
		this.video = video;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public byte[] getVideo() {
		return video;
	}

	public void setVideo(byte[] video) {
		this.video = video;
	}
	
}
