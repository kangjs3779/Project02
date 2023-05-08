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
	<d:navbar currentPage="join"></d:navbar>

	<div class="mx-auto w-50">
		<h1>회원가입</h1>
		<div class="ui form">
			<div class="required field">
				<label for="id">ID</label>
				<input type="text" placeholder="id" id="id">
			</div>
			<div class="required field">
				<label for="password">Password</label>
				<input type="password" placeholder="password" id="password">
			</div>
			<div class="required field">
				<label for="address">Address</label>
				<input type="text" placeholder="address" id="address">
			</div>
			<div class="required field">
				<label for="number">Number</label>
				<input type="text" placeholder="010-xxxx-xxxx" id="number">
			</div>
			<button class="ui yellow button" type="submit">Join</button>
		</div>
	</div>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js" integrity="sha512-pumBsjNRGGqkPzKHndZMaAG+bir374sORyzM3uulLV14lN5LyykqNk8eEeUlUkB3U0M4FApyaHraT65ihJhDpQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

</body>
</html>