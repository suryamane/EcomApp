<%@ page language="java" import= "java.util.List,com.bean.Products" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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

	<jsp:include page="header.jsp"/>
		<br>
<%-- <% ServletContext context = getServletContext();
		List<Products> product=(List<Products>)context.getAttribute("products");
		%> --%>
		<div class="container">
		<%Object imgsrc=request.getParameter("activeImage"); 
		 List<Products> product=(List<Products>)application.getAttribute("products");
			Products p=product.get(product.indexOf(imgsrc));
		%>
			 <div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">
					     <%=p.getCategory() %><small>
					     <%=p.getName() %>
					     </small>
					</h1>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8">
					<img class="img-responsive" src="http://placehold.it/750x500"
						alt="">
				</div>
				<div class="col-md-4">
					<h3>Project Description</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam
						viverra euismod odio, gravida pellentesque urna varius vitae. Sed
						dui lorem, adipiscing in adipiscing et, interdum nec metus. Mauris
						ultricies, justo eu convallis placerat, felis enim.</p>
					<h3>Project Details</h3>
					<ul>
						<li>Lorem Ipsum</li>
						<li>Dolor Sit Amet</li>
						<li>Consectetur</li>
						<li>Adipiscing Elit</li>
					</ul>
				</div>

				</div>
				<hr>
			</div>
			<%-- <% 
			}
			%> --%>
		<jsp:include page="footer.jsp"/> 
		</body>
</html>
