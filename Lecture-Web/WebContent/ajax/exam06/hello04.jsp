<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#msgView{
		border : 1px solid red;
		width : 500px;
		height : 300px;
	}
</style>
<script src="/Lecture-Web/jquery/js/jquery-3.2.1.min.js"></script>
<script>
/*
 * 	url : 요청주소(문자열)
 	type : 메소드(문자열)
 	data : 파라미터(문자열, 객체)
 	success : 수신성공(함수)
 	error : 수신 실패(함수)
 	async : 동기/비동기 설정
 */
	$(document).ready(function(){
		$(':button').click(function(){
			$.ajax({
				url : 'hello.jsp',
				success : function(data){
					//$('#msgView').html(data);
					$('#msgView').append(data);
				}
			});
		});
	});
</script>
</head>
<body>
	<h2>서버에서 받은 메시지</h2>
	<div id="msgView"></div>
	<input type="button" value="서버에 자료요청"/>
</body>
</html>