<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="kr.co.bit.board.BoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 콜렉션
	List<BoardVO> boardList = new ArrayList<>();
	BoardVO b = new BoardVO();
	b.setNo(0);
	b.setTitle("성공");
	
	boardList.add(b);
	
	//2. 자바빈즈 + 배열
	BoardVO[] bo = {b};
	
	//3. 맵객체 + 배열
	Map<String, String> boardMap = new HashMap<>();
	boardMap.put("no", "0");
	boardMap.put("title","성공");
	Map[] boardMapList = {boardMap};
	
	//4. 맵객체 + 콜렉션
	Map<String, String> boardMap2 = new HashMap<>();
	boardMap2.put("title", "성공");
	
	List<Map<String, String>> boardMapList2 = new ArrayList<>();
	boardMapList2.add(boardMap2);
	
	pageContext.setAttribute("boardList", boardList);
	pageContext.setAttribute("bo", bo);
	pageContext.setAttribute("boardMapList", boardMapList);
	pageContext.setAttribute("boardMapList2",boardMapList2);
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	콜렉션 성공/실패 ? ${ boardList[0].title }<br/> <!-- 성공 출력 -->
	자바빈즈 + 배열 성공/실패 ? ${ bo[0].title }<br/>
	맵 + 배열 성공/실패 ? ${ boardMapList[0].title }<br/>
	맵 + 콜랙션 성공/실패 ? ${ boardMapList2[0].title }<br/>
</body>
</html>