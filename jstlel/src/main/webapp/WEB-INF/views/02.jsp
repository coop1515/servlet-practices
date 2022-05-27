<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>객체의 저장범위</h4>
	${vo.no }<br/>
	${vo.name }<br/>
	
	==============================<br/>
	${sessionScope.vo.no }<br/>
	${sessionScope.vo.name }<br/>
	<!--  el이 session보다 request를 먼저 찾기때문에 이름이 같으면 request를 불러옴.
	session을 부르고 싶으면 명시해주면 됨.-->
</body>
</html>