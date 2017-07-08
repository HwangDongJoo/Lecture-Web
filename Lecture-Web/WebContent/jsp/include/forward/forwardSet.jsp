<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>결과화면</h2>
	<c:if test="${ param.id == 'admin' }">
		<jsp:forward page="admin.jsp"/>
	</c:if>
	<c:if test="${ param.id != 'admin' }">
		<c:set var="id" value="${ param.id }" scope="request"/>
		<jsp:forward page="user.jsp"/>
			<%-- <jsp:param value="${ param.id }" name="id"/>
		</jsp:forward> --%>
	</c:if>
	<h2>결과화면</h2>
</body>
</html>