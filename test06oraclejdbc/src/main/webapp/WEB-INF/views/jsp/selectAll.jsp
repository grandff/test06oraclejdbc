<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
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
		<h1 class="display-4">목록 화면</h1>
		
		<table class="table table-dark">
			<thead>
				<tr>
					<th>번호</th>
					<th>이름</th>
					<th>연락처</th>
					<th>비고</th>
				</tr>
			</thead>
			<tbody>
			<!-- 목록 on -->
				<c:forEach var="vo" items="${list }" >
				<tr>
					<td><a href="selectOne.do?name=${vo.name }&tel=${vo.tel}&num=${vo.num}">${vo.num }</a></td>
					<td><a href="selectOne.do?name=${vo.name }&tel=${vo.tel}&num=${vo.num}">${vo.name }</a></td>
					<td>${vo.tel }</td>
					<td><a href="deleteOK.do?num=${vo.num }">삭제</a></td>
				</tr>
				</c:forEach>								
			<!-- 목록 off -->
			</tbody>
		</table>		
	</div>
</body>
</html>