<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="common.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setAttribute("id", "hong");
	%>
	msg : <%= msg %><br/>
	msg : ${ msg }<br/>
	<h2>인클루드 전</h2>
	파라미터 미설정<br/>
	<jsp:include page="one.jsp" />
	파라미터 설정<br/>
	<jsp:include page="one.jsp">
		<jsp:param value="hong" name="id"/>
		<jsp:param value="23" name="age"/>
	</jsp:include>
	<h2>인클루드 후</h2>
	id : ${ id }<br/>
	phone : ${ phone }<br/>
</body>
</html>