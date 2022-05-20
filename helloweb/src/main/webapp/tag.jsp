<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>hello World</h1>
	<h2>hello World</h2>
	<h3>hello World</h3>
	<h4>hello World</h4>
	<h5>hello World</h5>
	<h6>hello World</h6>
	
	<table border = "1" cellspacing="0" cellpadding="10">
	<tr>
		<th>글번호</th>  
		<th>글제목</th>
		<th>작성자</th>
	</tr>
	
	<tr>
		<td>2</td>
		<td>안녕</td>
		<td>둘리</td>
	
	</tr>
	
	<tr>
		<td>1</td>
		<td>안녕하세요.</td>
		<td>마이콜</td>
	</tr>
	</table>
	<img src="http://localhost:8080/helloweb/assets/images/sponge.png" style="width:120px"></img>
	<img src="/helloweb/assets/images/sponge.png" style="width:120px"/> 
	<img src="assets/images/sponge.png" style="width:120px"/>
	<p>
		문장 1 입니다~~~~<br>
		문장 2 입니다~~~~<br>
		문장 3 입니다~~~~<br>
	</p>
	<br>
	<a href="/helloweb/hello?name=김현석">hello로 가기</a>
	<br/>
	<a href="form.jsp">폼으로 가기</a>
</body>
</html>