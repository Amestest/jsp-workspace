<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HamburgerList</title>
</head>
<body>
<h1>BurgerList</h1>
<table border="2">
	<thead>
	<tr>
	<th>Name</th>
	<th>Price</th>
	<th>Description</th>
	</tr>
	</thead>
	<tbody>
	<c:forEach var="burger" items="${burger}">
	<tr>
		<td>${burger.name }</td>
		<td>${burger.price }</td>
		<td>${burger.description}</td>
	</tr>
	</c:forEach>
	</tbody>
	</table>
	<h2>Add burger</h2>
	<form action="/addBurger" method="post">
		이름 : <input type="text" name="name"/>
		가격 : <input type="text" name="price"/>
		내용 : <input type="text" name="description"/>
		추가 : <input type="submit" value="saveBurger"/>	
	</form>
</body>
</html>