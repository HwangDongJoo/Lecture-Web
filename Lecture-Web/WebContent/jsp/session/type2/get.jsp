<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("id");
	String password = (String)session.getAttribute("password");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	설정된 id : <%= id %><br/>
	설정된 password : <%= password %><br/>
	<hr/>
	설정된 id : ${ sessionScope.id }<br/>
	설정된 password : ${ sessionScope.password }<br/>
	
	<a href="remove.jsp">세션삭제</a>
</body>
</html>