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
<h1>Hotel Search</h1>
<form class="form" action="/searchBy" method="post">
<label for="searchTerm">City</label>
<select name = "city">
   <option value = null>Select</option>
   <option value = "New York, NY">New York, NY</option>
   <option value = "Austin, TX">Austin, TX</option>
   <option value = "Portland, OR">Portland, OR</option>
</select>  
<input type="submit"/>
</form>
</body>
</html>