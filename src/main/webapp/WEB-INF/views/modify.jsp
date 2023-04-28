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
	<h1>${boardPro02.id }번 게시글 수정 </h1>
	<form method="post">
		<input type="hidden" name="id" value="${boardPro02.id }" />
		<h3>
			title :
			<input type="text" name="title" value="${boardPro02.title }"  />
		</h3>
		<h3>
			body :
			<input type="text" name="body" value="${boardPro02.body }"  />
		</h3>
		<h3>
			writer :
			<input type="text" name="writer" value="${boardPro02.writer }"  />
		</h3>
		<h3>
			inserted
			<input type="text" name="inserted" value="${boardPro02.inserted }"  />
		</h3>
		<input type="submit" value="change" />
	</form>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>