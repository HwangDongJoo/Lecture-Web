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
	<%-- <c:set var="msg" value="hi jstl"/> --%>
	value속성만 지정 : <c:out value="JSTL"/><br/>
	msg변수 미설정 : <c:out value="${ msg }" default="설정된 msg변수 없음"/><br/>
	
	value속성에 태그가 들어있는경우(escapeXML=true) : 
	<c:out value="<hr/>" /><br/>
	value속성에 태그가 들어있는경우(escapeXML=false) : 
	<c:out value="<hr/>" escapeXml="false"/>
</body>
</html>