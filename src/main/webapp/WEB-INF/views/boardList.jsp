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
	<d:navbar currentPage="home"></d:navbar>

	<div class="mx-auto w-50">
		<h1>게시판</h1>
		<table class="ui yellow table">
			<thead>
				<tr>
					<th>#</th>
					<th>Writer</th>
					<th>Title</th>
					<th>Inserted</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${boardList }" var="board">
					<c:url value="/getBoard" var="getLink">
						<c:param name="id">${board.id }</c:param>
					</c:url>
					<tr>
						<td>${board.id }</td>
						<td>${board.writer }</td>
						<td>
							<a href="${getLink }">${board.title }</a>
						</td>
						<td>${board.inserted }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<br />
	<!-- PAGINATION -->
	<div class="d-flex justify-content-center">
		<span class="ui pagination menu">
			<!-- 이전 버튼  -->
			<c:if test="${leftNum != 1 }">
				<a href="/boardList?pageNum=${prevButtonNum }" class="item">
					<i class="angle left icon"></i>
				</a>
			</c:if>
			<!-- 번호  -->
			<c:choose>
				<c:when test="${rightNum <= lastPagination }">
					<c:forEach begin="${leftNum }" end="${rightNum }" var="pageNum">
						<c:url value="/boardList" var="link">
							<c:param name="pageNum">${pageNum }</c:param>
						</c:url>
						<a href="${link }" class="item ${curretNum == pageNum ? 'active' : '' }"> ${pageNum } </a>
					</c:forEach>
				</c:when>
				<c:when test="${rightNum > lastPagination }">
					<c:forEach begin="${leftNum }" end="${lastPagination }" var="pageNum">
						<c:url value="/boardList" var="link">
							<c:param name="pageNum">${pageNum }</c:param>
						</c:url>
						<a href="${link }" class="${curretNum == pageNum ? 'active' : '' } item"> ${pageNum } </a>
					</c:forEach>
				</c:when>
			</c:choose>
			<!-- 다음 버튼  -->
			<c:if test="${nextButtonNum <= lastPagination }">
				<a href="/boardList?pageNum=${nextButtonNum }" class="item">
					<i class="angle right icon"></i>
				</a>
			</c:if>
		</span>
	</div>


	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js" integrity="sha512-pumBsjNRGGqkPzKHndZMaAG+bir374sORyzM3uulLV14lN5LyykqNk8eEeUlUkB3U0M4FApyaHraT65ihJhDpQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

</body>
</html>