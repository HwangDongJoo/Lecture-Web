<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="set.jsp" method="post">
		쿠키이름 : <input type="text" name="cName" size="20"/><br/>
		쿠키 값 : <input type="text" name="cValue" size="20"/><br/>
		유효시간(분) : <input type="text" name="cAge" size="20" /><br/>
		<input type="submit" value="쿠키전송"/>
	</form>
</body>
</html>