<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vote</title>
</head>
<body>
	<b>Navigation:</b>
	<a href="/">Parties</a>
	<a href="">Review Options</a>
	
	<h1>Pizza Options</h1>
	
	<table>
		<thead>
			<tr>
				<th>Name</th>
				<th>Description</th>
				<th>Votes</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="partyoptions" items="${ partyoptions }">
				<tr>
			  		<td>${ partyoptions.getName() }</td>
					<td>${ partyoptions.getDescription() }</td>
					<td>${ partyoptions.getVotes() }</td>
					<td><a href="/edit/${ partyoptions.getId() }">Vote</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<h2>Add an Option</h2>
	
	<form method="post" action="/add">
		Name:<input type="text" name="name"/>Description:<input type="text" name="description" />
		<input type="submit" value="add" />
	</form>
			
</body>
</html>