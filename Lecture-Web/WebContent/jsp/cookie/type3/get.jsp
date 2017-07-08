<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//사용자가 보내준 쿠키를 추출
	Cookie[] cookies = request.getCookies();
	
	StringBuilder sb = new StringBuilder();

	for(Cookie cookie : cookies){
		String cName = cookie.getName();
		cName = URLDecoder.decode(cName, "utf-8");
		String cValue = cookie.getValue();
		cValue = URLDecoder.decode(cValue, "utf-8");
		
		sb.append("쿠키이름 : " + cName + ", ");
		sb.append("쿠키값 : " + cValue + "<br/>");
		
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>설정된 쿠키 정보</h1>
	<%= sb.toString() %>
	<a href="makeForm.jsp">쿠키 설정</a>
</body>
</html>