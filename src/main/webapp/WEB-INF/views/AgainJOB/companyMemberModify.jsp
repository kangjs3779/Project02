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
	<h1>회원 정보 수정하기</h1>

	<div class="w-25 p-3 d-inline-block">
		<form action="/AginJOB/companyMemberModify" method="post">
			<div class="form-floating mb-3">
				<input value="${companyMember.id }" type="text" class="form-control" id="inputId" >
				<label for="inputId">아이디</label>
			</div>
			<div class="form-floating mb-3">
				<input value="${companyMember.password }" type="password" class="form-control" id="inputPassword" ></input>
				<label for="inputPassword">비밀번호</label>
			</div>
			<div class="form-floating mb-3">
				<input value="${companyMember.companyName }" type="password" class="form-control" id="inputPasswordCheck" ></input>
				<label for="inputPasswordCheck">기업명</label>
			</div>
			<div class="form-floating mb-3">
				<input value="" type="password" class="form-control" id="inputPasswordCheck" ></input>
				<label for="inputPasswordCheck">업종명</label>
			</div>
			<div class="form-floating mb-3">
				<input value="${companyMember.businessNumber }" type="number" class="form-control" id="inputBusinessNumber" ></input>
				<label for="inputBusinessNumber">사업자등록번호</label>
			</div>
			<div class="form-floating mb-3">
				<input value="${companyMember.manager }" type="text" class="form-control" id="inputManager" ></input>
				<label for="inputManager">담당자명</label>
			</div>
			<div class="form-floating mb-3">
				<input value="${companyMember.phone } " type="password" class="form-control" id="inputPhoneNumber" ></input>
				<label for="inputPhoneNumber">휴대전화</label>
			</div>
			<div class="form-floating mb-3">
				<input value="${companyMember.email } " type="password" class="form-control" id="inputPasswordCheck" ></input>
				<label for="inputPasswordCheck">이메일</label>
			</div>
			<input type="submit" value="수정" class="btn btn-primary">
		</form>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js" integrity="sha512-pumBsjNRGGqkPzKHndZMaAG+bir374sORyzM3uulLV14lN5LyykqNk8eEeUlUkB3U0M4FApyaHraT65ihJhDpQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

</body>
</html>