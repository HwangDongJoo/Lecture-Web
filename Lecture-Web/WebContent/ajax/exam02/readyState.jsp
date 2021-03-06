<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	var httpRequest = null;
	
	function getXMLHttpRequest(){
		if(window.ActiveXObject)
			return new ActiveXObject("Microsoft.XMLHTTP");
		if(window.XMLHttpRequest)
			return new XMLHttpRequest();
		return null;
	}
	
	function sendProcess(){
		httpRequest = getXMLHttpRequest();
		
		httpRequest.onreadystatechange = callbackFunction;
		httpRequest.open("POST", "/Lecture-Web/examMethod", true);
		httpRequest.send(null);
	}
	
	function callbackFunction(){
		/*
			readyState
			0: open()호출전
			1: open()호출, send()호출전
			2: send()호출, 서버응답전
			3: 서버응답, header전송, body미전송
			4: 클라이언트에게 body전송완료(응답완료)
		*/
		var debug = document.getElementById('debug');
		switch(httpRequest.readyState){
		case 1:
			debug.value += "Loading.......\n";
			break;
		case 2:
			debug.value += "Loaded......\n";
			break;
		case 3:
			debug.value += "Interactive .....\n";
			break;
		case 4:
			debug.value += "Complete!!!\n";
			if(httpRequest.status == 200){
				debug.value += "웹서버에서 정상적으로 수행...\n";
			} else {
				debug.value += "웹서버에서 오류 발생...\n";
				debug.value += "오류코드 : " + httpRequest.status + "\n";
				debug.value += "오류내용 : " + httpRequest.statusText + "\n";
			}
			break;
		}
		
		/*
			status(상태코드)
			200 : OK(처리완료)
			403 : 액세스 거부
			404 : FILE NOT FOUND
			405 : 서블릿 에러
			505 : 내부 서버 에러
		*/
	}
	
	function clearOnClick(){
		var debug = document.getElementById('debug');
		debug.value = "";
	}
</script>
</head>
<body>
	<textarea rows="10" cols="80" id="debug"></textarea>
	<input type="button" value="서버호출" onclick="sendProcess()" />
	<input type="button" value="초기화" onclick="clearOnClick()"/>
</body>
</html>