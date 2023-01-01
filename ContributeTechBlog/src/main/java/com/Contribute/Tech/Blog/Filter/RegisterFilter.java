package com.Contribute.Tech.Blog.Filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet Filter implementation class RegisterFilter
 */
@WebFilter("/RegisterServlet")
public class RegisterFilter implements Filter {
       
    public RegisterFilter() {
    
    }
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		String user_name=request.getParameter("user_name");
		String user_email=request.getParameter("user_email");
		String user_password=request.getParameter("user_password");
		String user_gender=request.getParameter("user_gender");
		String user_about=request.getParameter("user_about");
		PrintWriter out=response.getWriter();
			if(user_password.length()>=8 || (user_password.contains("@"))|| user_password.contains("!")|| user_password.contains("#") || user_password.contains("%") || user_password.contains("&")) {
				chain.doFilter(request, response);
			}
			else if(user_name!=null || user_email!=null || user_password!=null || user_gender!=null ) {
				chain.doFilter(request, response);	
			}
			
		
		
		}
	

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
