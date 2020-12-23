<%@page import="com.mmit.scope.Counter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1 style="display: inline-block; padding-right: 30px;"> Scope Object </h1>
	<a href="counter"> Count Up </a>
	<table border="1" cellspacing="0" cellpadding="10">
		<thead>
			<tr>
				<th> Application Scope </th>
				<th> Session Scope </th>
				<th> Request Scope </th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>
					<%
						Counter appCounter = (Counter)application.getAttribute("counter");
						out.println((appCounter == null) ? 0 : appCounter.getCount());
					%>
				</td>
				<td>
					<%
						Counter sessionCounter = (Counter)session.getAttribute("counter");
						out.println((sessionCounter == null) ? 0 : sessionCounter.getCount());
					%>
				</td>
				<td>
					<%
						Counter reqCounter = (Counter)request.getAttribute("counter");
						out.println((reqCounter == null) ? 0 : reqCounter.getCount());
					%>
				</td>
			</tr>
		</tbody>
	</table>	

</body>
</html>