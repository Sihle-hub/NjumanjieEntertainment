package com.example.demo.domain;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;

@Entity
public class Music {
	
	@Id
	@Column(name = "MUSIC_ID")
    private Long id;
	
	@Column(name = "ARTIST_NAME")
	private String name;
	
	@Lob
	@Column(columnDefinition = "longblob")
	private byte[] music;
	
	@Column(name="MUSIC_TITLE")
	private String title;

	public Music() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Music(Long id, String name, String title , byte[] music) {
		super();
		this.id = id;
		this.name = name;
		this.music = music;
		this.title = title;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public byte[] getMusic() {
		return music;
	}

	public void setMusic(byte[] music) {
		this.music = music;
	}
	
	
	

}
