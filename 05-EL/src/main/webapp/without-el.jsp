<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

	String username = request.getParameter("username");
	String email = request.getParameter("email");
	String address = request.getParameter("address");


%>

	<form action="" method="">
		<label for="username"> Username &nbsp;&nbsp;</label>
		<input type="text" name="username" id="username" value="<%= username %>" > <br><br>
		<label for="email"> Email &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
		<input type="email" name="email" id="email" value="<%= email %>" > <br><br>
		<label for="address"> Address &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
		<input type="text" name="address" id="address" value="<%= address %>" > <br><br>
		
		<button type="submit"> Display </button>
	</form> 
	<hr>
	
	<h3> The Result </h3>
	<%-- <% if(username.equals("") && email.equals("") && address.equals(""))
		{
		request.getC
		"Username = "+ username
		"Email = "+ email 
		"Address = "+ address
		}
	%> --%>

</body>
</html>