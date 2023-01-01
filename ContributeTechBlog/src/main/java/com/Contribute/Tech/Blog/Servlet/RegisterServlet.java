package com.Contribute.Tech.Blog.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Contribute.Tech.Blog.Dao.UserDao;
import com.Contribute.Tech.Blog.entities.User;
import com.Contribute.Tech.Blog.helper.ConnectionProvider;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user_name=request.getParameter("user_name");
		String user_email=request.getParameter("user_email");
		String user_password=request.getParameter("user_password");
		String user_gender=request.getParameter("user_gender");
		String user_about=request.getParameter("user_about");
		User user=new User(user_name,user_email,user_password,user_gender,user_about);	
		PrintWriter out =response.getWriter();
		UserDao  dao=new UserDao(ConnectionProvider.getCOnnection());
		if(dao.saveUser(user)) {
			out.println("done");
		}
		else {
			out.println("error");
		}
	}

}
