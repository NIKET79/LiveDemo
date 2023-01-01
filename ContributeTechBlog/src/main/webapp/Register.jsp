<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/mystyle.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
.banner-background {
	clip-path: polygon(30% 0%, 100% 0, 100% 44%, 100% 93%, 63% 100%, 30% 95%, 0 100%, 0
		0);

}
input:invalid
{
  border: 1px solid red;
}
</style>
</head>
<%@ include file="normal_navBar.jsp"%>
<body>
	<main class="primary-background p-5 banner-background">
		<div class="container">
			<div class="col-md-5 offset-md-3">
				<div class="card">
					<div class="card-header text-center  ">
						<span class="fa fa-user-plus fa-3x"></span>
						<p>Register here</p>
					</div>
					<div class="card-body">
						<div class="form-check">
						<form action="RegisterServlet" method="post" class="contact-form">
							<div class="form-group">
								<label for="User_name">User Name</label> <input name="user_name"
									type="text" class="form-control" id="user_name"
									aria-describedby="emailHelp" placeholder="Enter Name"
									required="required">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									name="user_email" type="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="Enter email" required="required"> <small
									id="emailHelp" class="form-text text-muted">We'll never
									share your email with anyone else.</small>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									name="user_password" type="password" class="form-control"
									id="exampleInputPassword1" placeholder="Password"
									required="required">
							</div>
							<div class="form-check">
								<input name="condition" value="checked" type="checkbox"
									class="form-check-input" id="exampleCheck1" required="required">
								<label class="form-check-label" for="exampleCheck1">Agree
									terms and conditions</label>
							</div>
							<div class="form-group">
								<label for="Gender">Select gender</label><br> <input
									type="radio" id="Gender" name="user_gender" value="male">Male
								<input type="radio" id="Gender" name="user_gender"
									value="female">Female

							</div>
							<div class="form-group">
								<label for="About">About</label>
								<textarea name="user_about" class="form-control"
									placeholder="enter something about yourself"></textarea>
							</div>

							<br>

							 <input type="submit" class="btn btn-primary" value="Submit"/>
							<!-- <button type="submit" class="btn btn-primary">Submit</button> -->
						</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
	<!-- javascript -->
	<script src="https://code.jquery.com/jquery-3.6.1.min.js"
		integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ="
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>