<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="d" tagdir="/WEB-INF/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>my project</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
	<d:navbar />

	<h1>${boardPro02.id }번게시글수정</h1>

	<div class="w-50 mx-auto">
		<form method="post" id="modifyForm">
			<div class="form-floating">
				<textarea class="form-control" placeholder="Leave a title here" id="title" name="title">${boardPro02.title }</textarea>
				<label for="title">title</label>
			</div>
			<br>
			<div class="form-floating">
				<textarea class="form-control" name="body" placeholder="Leave a comment here" id="body" style="height: 100px">${boardPro02.body }</textarea>
				<label for="body">Comments</label>
			</div>
			<br>
			<div class="form-floating">
				<textarea class="form-control" placeholder="Leave a writer here" id="writer" name="writer">${boardPro02.writer }</textarea>
				<label for="writer">writer</label>
			</div>
			<br>
			<div class="form-floating">
				<input type="hidden" class="form-control" placeholder="Leave a title here" id="inserted" name="inserted" value="${boardPro02.inserted }" />
			</div>
			<input type="submit" value="change" id="modifyButton" class="btn btn-outline-success" />
		</form>
	</div>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js" integrity="sha512-pumBsjNRGGqkPzKHndZMaAG+bir374sORyzM3uulLV14lN5LyykqNk8eEeUlUkB3U0M4FApyaHraT65ihJhDpQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

	<script type="text/javascript">
		$("#modifyButton").click(function(e) {
			e.preventDefault();

			const ok = confirm("수정하시겠습니까?");
			if (ok) {
				$("#modifyForm").submit();
			}
		});
	</script>
</body>
</html>