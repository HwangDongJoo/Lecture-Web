<%@page import="java.sql.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = session.getId();
	int interval = session.getMaxInactiveInterval();
	
	//유효시간 변경
	session.setMaxInactiveInterval(2);
	int interval2 = session.getMaxInactiveInterval();
	
	//마지막 접근시간
	long lastTime = session.getLastAccessedTime();	//long형으로 나옴
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 hh시 mm분 ss초");
	String accessTime = sdf.format(new Date(lastTime));
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	id(Session ID) : <%= id %><br/>
	기존 유효시간 : <%= interval %><br/>
	변경 유효시간 : <%= interval2 %><br/>
	마지막 접근 시간 : <%= accessTime %><br/>
</body>
</html>