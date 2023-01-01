package com.Contribute.Tech.Blog.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Set;
import com.Contribute.Tech.Blog.entities.User;

public class UserDao {
	private Connection con;

	public UserDao(Connection con) {
		this.con = con;
	}
	public boolean saveUser(User user){
		boolean executed=false;
		try {
			
			String query="insert into register(UserName,Email,Password,Gender,About) values(?,?,?,?,?) ";
			java.sql.PreparedStatement stmt=con.prepareStatement(query);
			stmt.setString(1,user.getUserName());
			stmt.setString(2, user.getEmail());
			stmt.setString(3, user.getPassword());
			stmt.setString(4, user.getGender());
			stmt.setString(5, user.getAbout());
			stmt.executeUpdate();
			executed=true;
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return executed;
	}
	public User fetchUser(String email,String password){
		User user=null;
		try {
			
			String query="select * from register where Email=? and Password=?";
			java.sql.PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				user=new User();
				user.setId(rs.getInt("id"));
				user.setUserName(rs.getString("UserName"));
				user.setEmail(rs.getString("Email"));
				user.setPassword(rs.getString("Password"));
				user.setAbout(rs.getString("About"));
				user.setGender(rs.getString("Gender"));
				user.setTimeStamp(rs.getTimestamp("regdate"));
				user.setProfile(rs.getString("profile"));
			}
		}catch (Exception e) {
			System.out.println(e);
		}
		

		return user;
	}
	public boolean Update_details(int id,String email,String name,String about,String gender) {
		boolean bool=false;
		try {
			String Query="update register set UserName=? , Email=? , About=? , Gender=? where id=?";
			PreparedStatement stmt=con.prepareStatement(Query);
			stmt.setString(1, name);
			stmt.setString(2, email);
			stmt.setString(3, about);
			stmt.setString(4, gender);
			stmt.setInt(5, id);
			stmt.executeUpdate();  
			bool=true;
			
		}catch (Exception e) {
			System.out.println(e);
		}
		return bool;
	}

}
