<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원가입</h1>
	<form action ="/helloweb/join.jsp" method= "POST">
		
		이메일:<input type="text" name="email" value=""/>
		<br/><br/>
		
		비밀번호:<input type="password" name="password" />
		<br/><br/>
		
		생년:
		<select name="birthyear">
			<option value="1996">1996년</option>
			<option value="1997">1997년</option>
			<option value="1998">1998년</option>
		</select>
		<br/><br/>
		
		성별:
		여<input type="radio" name="gender" value="female" checked ="checked"/>
		남<input type="radio" name="gender" value="male"/>
		<br/><br/>
		
		취미:
		코딩 <input type="checkbox" name="hobby" value="coding"/>
		술먹기 <input type="checkbox" name="hobby" value="drink"/>
		요리 <input type="checkbox" name="hobby" value="cook"/>
		수영 <input type="checkbox" name="hobby" value="swimming"/>
		<br/><br/>
		자기소개:
		<textarea name = "profile">글 적어.</textarea>
		<input type="submit" value="가입" />
	</form>
</body>
</html>