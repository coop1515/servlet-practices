<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String email = request.getParameter("email");
String password = request.getParameter("password");
String birthYear = request.getParameter("birthyear");
String gender = request.getParameter("gender");
String[] hobbies = request.getParameterValues("hobby");
String profile = request.getParameter("profile");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>결과</h1>
	<%=email%>
	<br>
	<br>
	<%=password%>
	<br>
	<br>
	<%=birthYear%>
	<br>
	<br>
	<%=gender%>
	<br>
	<br>
	<% for(String hobby : hobbies){ %>
		<%=hobby%><br/><br>
	<% if (hobby == null) break;}%>
	
	<p>
	<%=profile %>
	</p>
	
	<a href="form.jsp"> 회원가입</a>
</body>
</html>