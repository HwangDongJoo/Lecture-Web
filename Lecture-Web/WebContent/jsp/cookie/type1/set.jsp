<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String cName = request.getParameter("cName");
	String cValue = request.getParameter("cValue");
	
	//쿠키생성
	Cookie cookie = new Cookie(cName, cValue);
	
	//쿠키 전송
	response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>쿠키설정 완료</h2>
	<a href="get.jsp">설정된 쿠키 확인</a>
</body>
</html>