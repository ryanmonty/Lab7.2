<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
	<thead>
		<tr>
			<th>Name</th>
			<th>City</th>
			<th>Price Per Night</th>
			<th></th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="hotel" items="${hotels}">
			<tr>
				<td><a href="/detail?id=${hotel.id}">${hotel.name}</a></td>
				<td>${hotel.city}</td>
				<td>${hotel.pricePerNight}</td>
			</tr>
			<br>
		</c:forEach>
	</tbody>
	</table>
</body>
</html>