<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
	<title>Home</title>
</head>

<body>
	<b>Navigation:</b>
	<a href="/vote">Vote for Pizza Options here</a>
	<a href="">Review Options</a>


	<h1>Booked Parties</h1>
	
			
			<ul>
				<c:forEach var="parties" items="${ parties }">
					<li><b>${ parties.getName() }  ${ parties.getDate() }</b></li>
			</c:forEach>
			</ul>
</body>
</html>