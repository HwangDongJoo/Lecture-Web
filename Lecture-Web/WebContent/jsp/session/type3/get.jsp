<%@page import="kr.co.bit.member.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberVO member = (MemberVO)session.getAttribute("member");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		if(member != null){
	%>
		설정된 id : <%= member.getId() %><br/>
		설정된 password : <%= member.getPassword() %><br/>
	<hr/>
	<%
		} else {
	%>
		설정된 세션 정보 없음<br/>
	<%
		}
	%>
	<a href="remove.jsp">세션삭제</a>
</body>
</html>