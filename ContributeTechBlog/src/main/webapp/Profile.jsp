<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
		User user=(User)session.getAttribute("CurrentUser");
	if(user==null){
		response.sendRedirect("Login.jsp");
	}
	
	%>
<%@page import="com.Contribute.Tech.Blog.entities.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/mystyle.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
 .banner-background{
 	clip-path: polygon(30% 0%, 100% 0, 100% 44%, 100% 93%, 63% 100%, 30% 95%, 0 100%, 0 0);
 }
</style>
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-light primary-background">
		<a class="navbar-brand" href="Index.jsp"><span
			class="fa fa-laptop"></span>Tech Blogs</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#"><span
						class="fa fa-book"></span>Learn Tech <span class="sr-only">(current)</span></a>
				</li>

				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <span class="fa fa-check-square-o"></span>Categories
				</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="#">Programming Languages</a> <a
							class="dropdown-item" href="#">DBMS</a> <a class="dropdown-item"
							href="#">DataStructure</a>
						<!--  <div class="dropdown-divider"></div>-->
					</div></li>
				<li class="nav-item"><a class="nav-link" href="#"><span
						class="fa fa-phone-square"></span>Contact</a></li>
			</ul>
			<ul class="navbar-nav mr-right">

				<li class="nav-item"><span
						class="fa fa-user-circle"><a href="DisplayProfile.jsp"></span><%=user.getUserName()%></a></li>
				<li class="nav-item"><a class="nav-link" href="LogoutServlet"><span
						class="fa fa-user-plus"></span>Logout</a></li>
			</ul>
		</div>
	</nav>
	
</body>
</html>