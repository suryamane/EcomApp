<%@ page language="java" import="java.util.List,com.bean.Products"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Description</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body>

	<%-- <jsp:include page="header.jsp"/> --%>
	<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#"><img class="img-circle"
				style="width: 45px; height: 30px;" alt="Brand" src="views/logo.jpg"></a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
				<li><a href="#">Products</a></li>
				<li><a href="#">Deals</a></li>
				<li><a href="#">Stores</a></li>

			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <span class="glyphicon glyphicon-user"></span>
						<%
							out.println(session.getAttribute("uname"));
						%>
				</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="#">Your Account</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Settings</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="controllerServlet?action=logout">LogOut</a>
					</div></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <span
						class="glyphicon glyphicon-shopping-cart"></span> Cart
				</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="#"> <span> <img
								src="views/iphonex.jpg" height=50 width=50 alt="item" /> <span
								style="text-align: right">Item name</span> <span
								style="text-align: right">$price</span>
						</span>


						</a>
					</div></li>
			</ul>
		</div>
	</div>
	</nav>
	<br>
	<%-- <% ServletContext context = getServletContext();
		List<Products> product=(List<Products>)context.getAttribute("products");
		%> --%>
	<div class="container">
		<%
			Products p = (Products) request.getAttribute("product");
		%>
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">
					<%=p.getCategory()%>:<small> <%=p.getName()%>
					</small>
				</h1>
			</div>
		</div>
		<div class="row">
			<div class="col-md-8">
				<img class="img-responsive"
					src="views/
					<%=p.getImgsrc()%>
					" width=750 height=500
					"
						alt="">
			</div>
			<div class="col-md-4">
				<h3><%=p.getDescription()%></h3>
				<h3>
					$<%=p.getPrice()%></h3>
					
					
			<a class="btn btn-primary" href="controllerServlet?action=add2Cart&id=<%= p.getId() %>" role="button">Add to Cart</a>
				<!-- <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam
						viverra euismod odio, gravida pellentesque urna varius vitae. Sed
						dui lorem, adipiscing in adipiscing et, interdum nec metus. Mauris
						ultricies, justo eu convallis placerat, felis enim.</p>
					<h3>Project Details</h3>
					<ul>
						<li>Lorem Ipsum</li>
						<li>Dolor Sit Amet</li>
						<li>Consectetur</li>
						<li>Adipiscing Elit</li>
					</ul> -->
			</div>

		</div>
		<hr>
	</div>

	<jsp:include page="footer.jsp" />
</body>
</html>
