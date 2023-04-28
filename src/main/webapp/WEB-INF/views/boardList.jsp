<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>my project</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
	<h1>게시판</h1>

	<table class="table">
		<thead>
			<tr>
				<th>#</th>
				<th>Writer</th>
				<th>Title</th>
				<th>Inserted</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list }" var="list">
				<c:url value="/get/${list.id }" var="pageLink">
				</c:url>
				<tr>
					<td>${list.id }</td>
					<td>${list.writer }</td>
					<td>
						<a href="${pageLink }">${list.title }</a>
					</td>
					<td>${list.inserted }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>