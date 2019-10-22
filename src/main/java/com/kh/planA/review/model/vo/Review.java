package com.kh.planA.review.model.vo;

import java.sql.Date;

public class Review {

	private int rId;
	private String userId;
	private String nickname;
	private Date rDate;
	private String rTag;
	private String country;
	private String rTitle;
	private String rContent;
	private String photo1;
	private String photo2;
	private int rLock;
	
	public Review() {
	}

	public Review(int rId, String userId, String nickname, Date rDate, String rTag, String country, String rTitle,
			String rContent, String photo1, String photo2, int rLock) {
		super();
		this.rId = rId;
		this.userId = userId;
		this.nickname = nickname;
		this.rDate = rDate;
		this.rTag = rTag;
		this.country = country;
		this.rTitle = rTitle;
		this.rContent = rContent;
		this.photo1 = photo1;
		this.photo2 = photo2;
		this.rLock = rLock;
	}

	public int getrId() {
		return rId;
	}

	public void setrId(int rId) {
		this.rId = rId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public Date getrDate() {
		return rDate;
	}

	public void setrDate(Date rDate) {
		this.rDate = rDate;
	}

	public String getrTag() {
		return rTag;
	}

	public void setrTag(String rTag) {
		this.rTag = rTag;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getrTitle() {
		return rTitle;
	}

	public void setrTitle(String rTitle) {
		this.rTitle = rTitle;
	}

	public String getrContent() {
		return rContent;
	}

	public void setrContent(String rContent) {
		this.rContent = rContent;
	}

	public String getPhoto1() {
		return photo1;
	}

	public void setPhoto1(String photo1) {
		this.photo1 = photo1;
	}

	public String getPhoto2() {
		return photo2;
	}

	public void setPhoto2(String photo2) {
		this.photo2 = photo2;
	}

	public int getrLock() {
		return rLock;
	}

	public void setrLock(int rLock) {
		this.rLock = rLock;
	}
	
	
}
