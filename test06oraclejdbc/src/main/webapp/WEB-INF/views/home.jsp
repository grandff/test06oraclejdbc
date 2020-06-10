<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
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
			<h1>Hello world!</h1>
	
			<P>The time on the server is ${serverTime}.</P>
	
	
			<div class="media">
				<div class="media-body">
					<h5 class="mt-0">Student</h5>
					${student }
				</div>
			</div>
	
			<div class="media">
				<div class="media-body">
					<h5 class="mt-0">Student2</h5>
					${student2 }
				</div>
			</div>
			
			<div class="text-center">
				<a href="/insert.do" class="btn btn-primary">입력</a> 
				<a href="/selectAll.do" class="btn btn-secondary">목록</a>
			</div>			
		</div>
</body>
</html>
