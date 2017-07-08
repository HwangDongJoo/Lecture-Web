<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	/* session.removeAttribute("id");
	session.removeAttribute("password"); */
	
	//session.invalidate();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:remove var="member" scope="session"/>
	<h1>세션 삭제 완료</h1>
	<a href="get.jsp">설정된 세션 보기</a>
</body>
</html>