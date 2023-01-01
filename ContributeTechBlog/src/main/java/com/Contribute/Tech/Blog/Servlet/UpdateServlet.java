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

import org.apache.catalina.Session;

import com.Contribute.Tech.Blog.Dao.UserDao;
import com.Contribute.Tech.Blog.entities.User;
import com.Contribute.Tech.Blog.helper.ConnectionProvider;

/**
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/updateServlet")
public class UpdateServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("update_name");
		String email=request.getParameter("update_email");
		String about=request.getParameter("update_about");
		String gender=request.getParameter("update_gender");
		UserDao userdao=new UserDao(ConnectionProvider.getCOnnection());
		HttpSession session=request.getSession();
		User user=(User)session.getAttribute("CurrentUser");
		int id=user.getId();
		User user2=new User(id, name, email, gender, about);
		session.setAttribute("CurrentUser", user2);
		Boolean bool=userdao.Update_details(id, email, name, about, gender);
		PrintWriter out=response.getWriter();
		if(bool=true) {
			RequestDispatcher rd=request.getRequestDispatcher("DisplayProfile.jsp");
			rd.forward(request, response);
		}
		else {
			out.println("False");
		}
	}

}
