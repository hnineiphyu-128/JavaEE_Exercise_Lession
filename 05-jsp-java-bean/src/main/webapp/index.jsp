<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h2></h2>
	<form action="create-product.jsp" method="post">
		<label> Name &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
		<input type="text" name="name"><br><br>
		<label> CategoryName &nbsp; </label>
		<input type="text" name="categoryName"><br><br>
		<label> Price &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
		<input type="text" name="price"><br><br>
		
		<button type="submit"> Add New Product </button>
	</form>
	


</body>
</html>