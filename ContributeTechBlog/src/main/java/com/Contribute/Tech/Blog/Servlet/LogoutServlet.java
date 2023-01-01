package com.Contribute.Tech.Blog.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Contribute.Tech.Blog.entities.Message;

@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException {
		HttpSession session=request.getSession();
		session.removeAttribute("CurrentUser");
		Message msg=new Message("successfully Logout!! ","sucess" ,"alert-success");
		session.setAttribute("msg", msg);
		response.sendRedirect("Login.jsp");
	}
}
