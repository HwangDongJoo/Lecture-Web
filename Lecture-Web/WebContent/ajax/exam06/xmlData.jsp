<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="httpRequest.js"></script>
<script>
	function sendOnClick(){
		sendProcess("POST", "sample.xml", null, callback);
	}
	
	function callback(){
		var msg = '';
		if(httpRequest.readyState == 4){
			if(httpRequest.status == 200){
				//alert("서버 응답 요청");
				var xmlDoc = httpRequest.responseXML;
				var memberList = xmlDoc.getElementsByTagName("member");
				console.log(memberList);
				
				msg += '회원수: ' + memberList.length + "명\n";
				
				for(var i=0; i<memberList.length; i++){
					var mem = memberList[i];
					console.log(mem.getElementsByTagName("id"));
					var id = mem.getElementsByTagName("id")[0].firstChild.nodeValue;
					var name = mem.getElementsByTagName("name")[0].firstChild.nodeValue;
					console.log(id);
					console.log(name);
					msg += 'id: ' + id + "\n";
					msg += 'name: ' + name + "\n";
				}
				
			}
		}
		debugTrace(msg);
	}
	
	function debugTrace(msg) {
		var debug = document.getElementById("debug");
		debug.value += msg;
	}
	
	//#debug 초기화 버튼 만들고 초기화
</script>
</head>
<body>
	<h1>XML Data 응답예제</h1>
	<form>
		<textarea rows="10" cols="80" id="debug"></textarea>
		<input type="button" value="서버에 자료요청" onclick="sendOnClick()"/>
	</form>
</body>
</html>