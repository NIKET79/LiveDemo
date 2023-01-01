package com.Contribute.Tech.Blog.entities;
public class User {
	private int id;
	private String UserName;
	private String Email;
	private String password;
	private  String Gender;
	private String About;
	private java.sql.Timestamp timeStamp;
	private String profile;
	public User(int id, String userName, String email, String password, String gender, String about,
			java.sql.Timestamp timeStamp) {
		this.id = id;
		UserName = userName;
		Email = email;
		this.password = password;
		Gender = gender;
		About = about;
		this.timeStamp = timeStamp;
	}
	public User() {		
	}
	
	public User(String email, String password) {
		Email = email;
		this.password = password;
	}
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public User(String userName, String email, String password, String gender, String about) {
		UserName = userName;
		Email = email;
		this.password = password;
		Gender = gender;
		About = about;
		
	}
	public User(int id, String userName, String email, String gender, String about) {
		super();
		this.id = id;
		UserName = userName;
		Email = email;
		Gender = gender;
		About = about;
	}
	//	Getters And Setters
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		Gender = gender;
	}
	public String getAbout() {
		return About;
	}
	public void setAbout(String about) {
		About = about;
	}
	public java.sql.Timestamp getTimeStamp() {
		return timeStamp;
	}
	public void setTimeStamp(java.sql.Timestamp timeStamp) {
		this.timeStamp = timeStamp;
	}
}
	