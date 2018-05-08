<%@ page import="java.util.List,com.bean.Products" language="java"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
/* /* Remove the navbar's default rounded borders and increase the bottom margin */
.navbar {
	margin-bottom: 50px;
	border-radius: 0;
}

/* Remove the jumbotron's default bottom margin */
.jumbotron {
	margin-bottom: 0;
}

/* Add a gray background color and some padding to the footer */
footer {
	background-color: #f2f2f2;
	padding: 25px;
}
*
/
</style>
<title>Home</title>
</head>
<body>
	<%--  <jsp:include page="header.jsp"/> --%>
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
	<div class="container">
		<div class="row">
			<%
				ServletContext context = getServletContext();
				List<Products> product = (List<Products>) context.getAttribute("products");
				for (Products p : product) {
			%>
			<div class="col-sm-4">
				<div class="panel panel-primary">
					<div class="panel-heading"><%=p.getCategory()%></div>
					<div class="panel-body">

						<a href="controllerServlet?action=description&id=<%=p.getId()%>">
							<%-- <input type="hidden" name="activeImage" value="
						 <%= p.getId() %>"> --%> <img
							src="views/
						<%=p.getImgsrc()%>
						"
							class="img-thumbnail" style="min-width: 75px" alt="Image">
						</a>
					</div>
					<div class="panel-footer">
						$<%=p.getPrice()%> 
						<a class="btn btn-primary" href="controllerServlet?action=add2Cart&id=
						<%= p.getId() %>
						" role="button">Add to Cart</a>
						<br>
						<%=p.getDescription()%>
					</div>
				</div>
			</div>


			<%
				}
			%>

		</div>


	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>