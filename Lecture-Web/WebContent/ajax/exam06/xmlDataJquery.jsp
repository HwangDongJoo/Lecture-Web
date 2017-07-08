<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="/Lecture-Web/jquery/js/jquery-3.2.1.min.js"></script>
<script src="httpRequest.js"></script>
<script>
	function sendOnClick(){
		sendProcess("POST", "sample.xml", null, callback);
	}
	
	function callback(){
		var msg = '';
		if(httpRequest.readyState == 4){
			if(httpRequest.status == 200){
				//var xmlDoc = $.parseXML(httpRequest.responseText);
				var xmlDoc = httpRequest.responseXML;
				var memberList = $(xmlDoc).find('member');
				console.log(memberList);
				
				msg += '회원수: ' + memberList.length + "명\n";
				
				memberList.each(function(index){
					console.log(index + " : " + this);
					var id = $(this).find('id').text();
					var name = $(this).find('name').text();
					msg += 'id: ' + id + "\n";
					msg += 'name: ' + name + "\n";
				});
			}
		}
		debugTrace(msg);
	}
	
	function debugTrace(msg) {
		var debug = document.getElementById("debug");
		debug.value += msg;
	}
	
	function clearOnClick(){
		var debug = document.getElementById("debug");
		debug.value ="";
	}
</script>
</head>
<body>
	<h1>XML Data 응답예제</h1>
	<form>
		<textarea rows="10" cols="80" id="debug"></textarea>
		<input type="button" value="서버에 자료요청" onclick="sendOnClick()"/>
		<input type="button" value="초기화" onclick="clearOnClick()"/>
	</form>
</body>
</html>