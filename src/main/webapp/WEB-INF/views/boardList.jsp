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
	<!-- navbar -->
	<d:navbar state="home" />
	<!-- danger alert -->
	<d:alert state="${message == '성공적으로 삭제되었습니다.' ? 'danger' : 'success' }" />

	<div class="w-75 mx-auto">
		<h1>게시글 확인 </h1>
	</div>
	<!-- List -->
	<div class="w-75  mx-auto">
		<div class="d-flex justify-content-end">
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
		</div>


		<!-- pagination form-->
		<div class="mx-auto">
			<nav aria-label="Page navigation example">
				<ul class="pagination">
					<!-- prev button -->
					<li class="page-item">
						<a class="page-link" href="#">Previous</a>
					</li>
					<!-- pagination -->
					<c:forEach begin="${leftPagination }" end="${rightPagination }" var="pageNum">
						<c:url value="/boardList" var="page">
							<c:param name="currentPage">${pageNum }</c:param>
						</c:url>

						<li class="page-item ${param.currentPage == pageNum ? 'active' : '' } ">
							<a class="page-link" href="${page }">${pageNum }</a>
						</li>
					</c:forEach>
					<!-- next button -->
					<li class="page-item">
						<a class="page-link" href="${page }">Next</a>
					</li>
				</ul>
			</nav>

		</div>
	</div>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js" integrity="sha512-pumBsjNRGGqkPzKHndZMaAG+bir374sORyzM3uulLV14lN5LyykqNk8eEeUlUkB3U0M4FApyaHraT65ihJhDpQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

</body>
</html>