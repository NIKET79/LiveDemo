package com.Contribute.Tech.Blog.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Contribute.Tech.Blog.Dao.UserDao;
import com.Contribute.Tech.Blog.entities.Message;
import com.Contribute.Tech.Blog.entities.User;
import com.Contribute.Tech.Blog.helper.ConnectionProvider;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Email=request.getParameter("user_email");
		String Password=request.getParameter("user_password");
		PrintWriter out =response.getWriter();
		
		UserDao dao=new UserDao(ConnectionProvider.getCOnnection());
		User user=dao.fetchUser(Email, Password);
		if(user!=null) {
			HttpSession session=request.getSession();
			session.setAttribute("CurrentUser", user);
			RequestDispatcher rd=request.getRequestDispatcher("Profile.jsp");
			rd.forward(request, response);
		}
		else {
			out.println("Invalid Details");
			Message message=new Message("Invalid Details ! try again","error","alert-danger");
			response.sendRedirect("Login.jsp");
			HttpSession session=request.getSession();
			session.setAttribute("msg", message);
		}
	}

}
