<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<String> names = new ArrayList<>();
	names.add("홍길동");
	names.add("고길동");
	names.add("박길동");

	pageContext.setAttribute("names", names);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	첫번째 이름 : <%= names.get(0) %><br/>
	두번째 이름 : <%= names.get(1) %><br/>
	세번째 이름 : <%= names.get(2) %><br/>
	
	첫번째 이름 : ${ names[0] }<br/>
	두번째 이름 : ${ names[1] }<br/>
	세번째 이름 : ${ names[2] }<br/>
</body>
</html>