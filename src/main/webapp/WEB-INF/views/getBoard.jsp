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
	<d:navbar currentPage="check"></d:navbar>

	<div class="mx-auto w-50">
		<h1>${board.id }번 게시글 보기</h1>
		<div class="ui piled segments">
			<div class="ui segment">
				<p>Title : ${board.title }</p>
			</div>
			<div class="ui segment">
				<p>Body : ${board.body }</p>
			</div>
			<div class="ui segment">
				<img class="ui medium circular image" src="">
			</div>

			<div class="ui segment">
				<p>Writer : ${board.writer }</p>
			</div>
			<div class="ui segment">
				<p>Inserted : ${board.inserted }</p>
			</div>
		</div>
		<div class="ui buttons">
			<button class="ui yellow button" form="checkForm">Modify</button>
			<div class="or"></div>
			<button id="deleteButton" class="ui inverted red button" form="deleteCheck">Delete</button>
		</div>
	</div>

	<form action="/modify" id="checkForm">
		<input type="hidden" name="id" value="${board.id }">
	</form>

	<form action="/remove" id="deleteCheck">
		<input type="hidden" name="id" value="${board.id }">
	</form>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js" integrity="sha512-pumBsjNRGGqkPzKHndZMaAG+bir374sORyzM3uulLV14lN5LyykqNk8eEeUlUkB3U0M4FApyaHraT65ihJhDpQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script src="semantic/dist/semantic.min.js"></script>
	<script type="text/javascript">
		$("#deleteButton").click(function(e) {
			e.preventDefault();
			if (confirm("정말 삭제하시겠습니까?")) {
				$("#deleteCheck").submit();
			}

		});
	</script>
</body>
</html>


