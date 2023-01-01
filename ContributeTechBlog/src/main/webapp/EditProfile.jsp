<%@page import="com.Contribute.Tech.Blog.entities.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%
		User user=(User)session.getAttribute("CurrentUser");
	if(user==null){
		response.sendRedirect("Login.jsp");
	}
	
	%>
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
<div class="container rounded bg-white mt-5 mb-5">
    <div class="row">
        <div class="col-md-3 border-right">
            <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" width="150px" src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg"><span class="font-weight-bold"><%user.getUserName(); %></span><span class="text-black-50"><% user.getUserName(); %></span><span> </span></div>
        </div>
        <div class="col-md-5 border-right">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h4 class="text-right">Profile Settings</h4>
                </div>
              	<form action="updateServlet" method="post">
              		<div class="row mt-2">
                    <div class="col-md-12"><label class="labels">Name</label><input type="text" class="form-control" placeholder="enter email id"  name="update_name"value="<%= user.getUserName() %>"></div>
                     </div>
                     <div class="row mt-3">
                    <div class="col-md-12"><label class="labels">Email</label><input type="text" class="form-control" placeholder="enter email id" name="update_email" value="<%= user.getEmail() %>"></div>
                	</div>
                	  <div class="row mt-3">
                    <div class="col-md-6"><label class="labels">About</label><textarea  rows="5" cols="5" class="form-control" name="update_about" placeholder=""><%= user.getAbout() %></textarea></div>
                    <div class="col-md-6"><label class="labels">Gender</label><input type="text" class="form-control" name="update_gender" value="<%= user.getGender() %>" placeholder="state"></div>
                	</div>
                	<div class="mt-5 text-center"><input type="submit" class="btn btn-primary profile-button" value="save profile" ></div>
              	</form>
            </div>
        </div>

</div>
</div>
</body>
</html>