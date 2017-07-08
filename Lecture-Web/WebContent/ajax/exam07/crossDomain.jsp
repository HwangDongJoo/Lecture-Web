<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#searchResult {
		border : 1px solid red;
		width : 70%;
		height : 800px;
	}
</style>
<script src="/Lecture-Web/jquery/js/jquery-3.2.1.min.js"></script>
<script>
	$(document).ready(function(){
		$(':button').click(function(){
			$.ajax({
				url: "https://apis.daum.net/contents/movie",
				type: "get",
				data: {
					apikey : "ca04355fcc9192c0eee3f0cebf5c7144",
					q: "트랜스포머",
					result: 5,
					output: "json"
				},
				dataType: "jsonp",
				success: callback,
				error: function(jsonData){
					alert('error');
				}
			});
		});
	});
	
	function callback(jsonData){
		var itemList = jsonData.channel.item;
		
		for(var i=0; i<itemList.length; i++){
			var item = itemList[i];
			
			var title = item.title;
			var thumbnail = item.thumbnail;
			var trailer = item.movieId;
			
			console.log(title);
			console.log(thumbnail);
			console.log(trailer);
			
			$('#searchResult').append("<hr/>");
			$('#searchResult').append("<a href='"+title[0].link+"' target='_blank'>"+ title[0].content +"</a>");
			$('#searchResult').append("<br/>");
			//$('#searchResult').append("<embed src='"+trailer[0].link+"'/><br/>");
			$('#searchResult').append("<hr/>"); 
			//$('#searchResult').append(link);
			
		}
	}
</script>
</head>
<body>
	<h1>블로그 검색 페이지</h1>
	검색어 입력 : <input type="text" name="searchWord" size="20"/>
	<input type="button" value="검색"/>
	<br/>
	
	<h4>검색결과</h4>
	<div id="searchResult">
	</div>
</body>
</html>