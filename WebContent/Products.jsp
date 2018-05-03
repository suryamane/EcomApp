<%@ page import= "java.util.List,com.bean.Products" language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1"%>
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
} */
</style>
<title>Home</title>
</head>
<body>
	<jsp:include page="header.jsp"/> 

	<div class="container">
		<div class="row">
		<% ServletContext context = getServletContext();
		List<Products> product=(List<Products>)context.getAttribute("products");
        	for( Products p: product)
        	{
           
     %>
			<div class="col-sm-4">
				<div class="panel panel-primary">
					<div class="panel-heading"><%= p.getCategory() %></div>
					<div class="panel-body">
						<a href="description.jsp">
						<img src="views/
						<%=p.getImgsrc() %>
						"
						 class="img-thumbnail" name="activeImage" value="
						 <%=p.getId() %>
						 "style="min-width:75px" alt="Image"></a>
					</div>
					<div class="panel-footer">$<%=p.getPrice() %>
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
	<jsp:include page="footer.jsp"/> 
</body>
</html>