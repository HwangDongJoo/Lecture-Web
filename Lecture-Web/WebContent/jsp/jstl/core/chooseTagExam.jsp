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
	<c:choose>
		<c:when test="${ param.type eq 'S' }">
			<h2>관리자입니다</h2>
		</c:when>
		<c:when test="${ param.type eq 'U' }">
			<h2>일반사용자입니다</h2>
		</c:when>
		<c:otherwise>
			<h2>type파라미터가 설정되지 않았거나 파라미터 정보가 잘못 지정되었습니다</h2>
		</c:otherwise>
	</c:choose>
</body>
</html>