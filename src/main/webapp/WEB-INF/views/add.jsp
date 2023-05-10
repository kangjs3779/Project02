<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="d" tagdir="/WEB-INF/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="js/semantic/semantic.min.css">
</head>
<body>
	<d:navbar currentPage="add"></d:navbar>

	<div class="mx-auto w-50">
		<h1>게시글 추가하기</h1>
		<form action="add" method="post" class="ui form" enctype="multipart/form-data">
			<div class="field">
				<label for="title">Title</label>
				<input type="text" id="title" name="title">
			</div>
			<div class="field">
				<label for="body">Body</label>
				<textarea type="text" name="body"></textarea>
			</div>
			<div class="field">
				<label for="img">Files</label>
				<input type="file" name="files" id="img" class="form-control" id="img" aria-describedby="inputGroupFileAddon03" aria-label="Upload" multiple accept="image/*">

			</div>
			<div class="field">
				<label for="writer">Writer</label>
				<input type="text" id="writer" name="writer" />
			</div>
			<button class="ui yellow button" type="submit">Submit</button>
		</form>
	</div>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js" integrity="sha512-pumBsjNRGGqkPzKHndZMaAG+bir374sORyzM3uulLV14lN5LyykqNk8eEeUlUkB3U0M4FApyaHraT65ihJhDpQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

</body>
</html>