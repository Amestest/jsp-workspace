<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Switch 문 활용한 JSP</title>
</head>
<body>
	<h1>Switch 활용 JSP</h1>
	<%
	int b = 3;
	switch (b){
		case 1:%>
		<span><%= b%>는 1 입니다.</span>
		<%	break;
		case 2: %>
			<span>b는 2 입니다.</span>
			<%break;
		case 3:%>
			<span>b는 3 입니다.</span>
			<% break;
		default: %>
			<span>b는 1, 2, 3에 해당하는 숫자가 아닙니다.</span>
			<% break;
	}%>
</body>
</html>