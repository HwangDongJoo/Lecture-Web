<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="/Lecture-Web/jquery/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
		src="//apis.daum.net/maps/maps3.js?apikey=ca04355fcc9192c0eee3f0cebf5c7144"></script>
<title>Insert title here</title>
<script>
	$(document).ready(function(){
		var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
		var options = { //지도를 생성할 때 필요한 기본 옵션
			center: new daum.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
			level: 3 //지도의 레벨(확대, 축소 정도)
		};
		var map = new daum.maps.Map(container, options); //지도 생성 및 객체 리턴
		
		function setCenter() {            
		    // 이동할 위도 경도 위치를 생성합니다 
		    var moveLatLon = new daum.maps.LatLng(37.494866, 127.027582);
		    
		    // 지도 중심을 이동 시킵니다
		    map.setCenter(moveLatLon);
		}
		
		function setBounds(){
			var moveLatLon = new daum.maps.LatLng(37.494866, 127.027582);
			map.setBounds(bounds);
		}
		
		$("#btn01").click(function(){
			setCenter();
		});
		
	});
	
	
</script>
</head>
<body>
	<h1>지도 예제</h1>
	<div id="map" style="width:500px;height:400px;"></div>
	<button id="btn01">범위 재설정 하기</button>
</body>
</html>