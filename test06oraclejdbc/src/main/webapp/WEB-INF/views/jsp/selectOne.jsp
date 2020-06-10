<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Insert title here</title>
		<!-- 부트스트랩 -->
    	<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
    	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    	<script src="/resources/js/bootstrap.min.js"></script>
	</head>ad>
<body>
	<h1>결과</h1>
	<h2>이름 : ${model.name }</h2>
	<h2>번호 : ${model.tel }</h2>
	<div>
		<form name="form1" action="updateOK.do" method="post">
			${model.num }
			<input type="hidden" name="num" placeholder = "번호" value="${model.num }"/>
			<input type="text" name="name" placeholder = "이름" value="${model.name }"/>
			<input type="text" name="tel" placeholder = "번호" value="${model.tel }"/>			
			<input type="submit">				
		</form>
	</div>	
</body>
</html>