<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="Sign.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>LogIn</title>
</head>
<body>
	<nav class="navbar navbar-default">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">

			<a class="navbar-brand active" href="#"><img class="img-circle"
				alt="Brand" src="views/logo.jpg"></a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<form id="shift" class="navbar-form navbar-right"
				action="LoginServlet" method="post">
				<div class="form-group">
					<%
						String message = (String) session.getAttribute("message");
					%>

					<p class="form"
						style="font-size: 14px; color: red; font-weight: bold; font-style: italic; float: left">
						<%if(message!=null)
							out.println(message);
						%>
					</p>
					<input type="text" class="form-control" placeholder="User Name"
						name="uname"> <input type="password" class="form-control"
						placeholder="Password" name="password">
				</div>
				<button class="btn btn-primary">SignIn</button>
			</form>

		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>
	<form action="LogIn" id="Create" action="#">
		<h3 class="display-4">Create Account</h3>
		<hr>

		<input type="text" placeholder="First Name" class="form-control" name="fname"> 
		<input type="text" placeholder="Last Name" class="form-control" name="lname"> 
		<input type="email" placeholder="Email" class="form-control" name="Email">
		<input type="text" placeholder="User Name" class="form-control" name="uname">
		<input type="password" placeholder="Password" class="form-control" name="pwd">
		<input type="number" placeholder="Mobile Number" class="form-control" name="mobile"> 
		<input type="date" placeholder="Date Of Birth" class="form-control" name="dob">
		<button class="btn btn-primary">Sign Up</button>
	</form>
</body>
</html>