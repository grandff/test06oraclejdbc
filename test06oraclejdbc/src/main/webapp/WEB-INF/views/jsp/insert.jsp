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
	</head>
<body>
<div class="container">
	<h1 class="display-4">등록 화면</h1>
	<form name="form1" action="insertOK.do" method="post">
		<div class="form-group">
			<label for="exampleInputEmail1">이름</label>
			<input type="text" class="form-control" name="name" id="name" aria-describedby="nameHelp" placeholder="Enter name">
			<small id="nameHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">번호</label>
			<input type="text" name="tel" class="form-control" id="exampleInputPassword1" placeholder="tel">
		</div>		  
		<div class="text-center">
			<button type="submit" class="btn btn-primary">등록하기</button>
			<a href="/selectAll.do" class="btn btn-secondary">목록</a>
			<a href="/"  class="btn btn-primary">홈으로</a>
		</div>
	</form>				
</div>
</body>
</html>