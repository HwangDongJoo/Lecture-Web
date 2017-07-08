<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	String[] names = {"홍길동", "고길동", "강길동", "한길동", "최길동"};
	pageContext.setAttribute("names", names);
	pageContext.setAttribute("length", names.length);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:forEach var="name" items="${ names }" varStatus="loop">
		${ loop.index } : ${ loop.count } : ${ loop.first } : ${ loop.last } : ${ name }<br/>
	</c:forEach>
	<br/>
	
	<c:forEach var="name" items="${ names }" varStatus="loop">
		<c:if test="${ not loop.first }">,&nbsp;</c:if>
		${ name }
	</c:forEach>
	<br/>
	
	<c:forEach var="name" items="${ names }" varStatus="loop">
		${ name }
		<c:if test="${ not loop.last }">,&nbsp;</c:if>
	</c:forEach>
	<br/>
	
	<%-- <c:set var="cnt" value="1"/> --%>
	<c:forEach var="name" items="${ names }">
		<%-- <c:if test="${ cnt ne 1 }">,&nbsp;</c:if> --%>
		<c:if test="${ name != names[0] }">,&nbsp;</c:if>
		${ name }
		<%-- <c:set var="cnt" value="${ cnt+1 }"/> --%>
	</c:forEach>
	<br/>

	<c:forEach var="i" begin="0" end="${length-1 }">
		<c:if test="${ i!=0 }">
			,&nbsp;
		</c:if>
		${ names[i] }
	</c:forEach>
	<br/>
	
	1 - 10 사이의 정수 출력<br/>
	<c:forEach var="i" begin="1" end="10">
		${ i }&nbsp;
	</c:forEach>
	<br/>
	
	년도 선택 :
	<select>
		<c:forEach var="year" begin="1990" end="2017" step="2">
			<option>${ year }</option>
		</c:forEach>
	</select>
	<br/>
</body>
</html>