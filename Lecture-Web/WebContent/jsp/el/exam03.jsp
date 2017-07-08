<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//객체등록 : 공유영역.setAttribute("이름", "값");
	//객체조회 : 공유영역.getAttribute("이름");
	//공유영역 4가지 : pageContext, request, session, application
	
	//pageContext 영역에 msg 이름으로 "pageContext영역에 저장"으로 객체등록
	pageContext.setAttribute("msg", "pageContext영역에 저장");

	request.setAttribute("msg", "request영역에 저장");

	String message = (String)pageContext.getAttribute("msg");
	
	//request 영역에 id이름으로 "hong" 객체 등록
	request.setAttribute("id", "hong");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	empty msg : ${ empty msg }<br/>
	request msg : ${ msg }<br/>
	id : ${ id }<br/>
	
	message : <%= message %><br/>
	request msg : <%= request.getAttribute("msg") %><br/>
	request msg : ${ requestScope.msg }<br/>
	
	
	
</body>
</html>