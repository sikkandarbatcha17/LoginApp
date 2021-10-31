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
		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
	
		if(session.getAttribute("username")==null)
		{
			response.sendRedirect("Login.jsp");
		}
	%>
	Welcome ${username}
	
	<form action="seach" method="get">
		<input type="text" placeholder="Enter the EventId" name="eventId">
		<input type="submit" value="search"> 
	</form>
	
	<form action="Logout">
		<input type="submit" value="logout">
	</form>
</body>
</html>