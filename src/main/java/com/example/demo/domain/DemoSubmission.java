package com.example.demo.domain;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class DemoSubmission {

	
	@Id
	@Column(name = "STAGE_NAME")
    private String id;
	
	private String name;
	private String surname;
	private String cellNumber;
	private String email;
	
	/*Links*/
	
	private String link1;
	private String link2;
	private String link3;
	private String sLink;
	private String aLink;
	private String yLink;
	private String auLink;
	public DemoSubmission() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DemoSubmission(String id, String name, String surname, String cellNumber, String email, String link1,
			String link2, String link3, String sLink, String aLink, String yLink, String auLink) {
		super();
		this.id = id;
		this.name = name;
		this.surname = surname;
		this.cellNumber = cellNumber;
		this.email = email;
		this.link1 = link1;
		this.link2 = link2;
		this.link3 = link3;
		this.sLink = sLink;
		this.aLink = aLink;
		this.yLink = yLink;
		this.auLink = auLink;
		
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSurname() {
		return surname;
	}
	public void setSurname(String surname) {
		this.surname = surname;
	}
	public String getCellNumber() {
		return cellNumber;
	}
	public void setCellNumber(String cellNumber) {
		this.cellNumber = cellNumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getLink1() {
		return link1;
	}
	public void setLink1(String link1) {
		this.link1 = link1;
	}
	public String getLink2() {
		return link2;
	}
	public void setLink2(String link2) {
		this.link2 = link2;
	}
	public String getLink3() {
		return link3;
	}
	public void setLink3(String link3) {
		this.link3 = link3;
	}
	public String getsLink() {
		return sLink;
	}
	public void setsLink(String sLink) {
		this.sLink = sLink;
	}
	public String getaLink() {
		return aLink;
	}
	public void setaLink(String aLink) {
		this.aLink = aLink;
	}
	public String getyLink() {
		return yLink;
	}
	public void setyLink(String yLink) {
		this.yLink = yLink;
	}
	public String getAuLink() {
		return auLink;
	}
	public void setAuLink(String auLink) {
		this.auLink = auLink;
	}
	

}
