<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="d" tagdir="/WEB-INF/tags"%>
<%@ attribute name="currentPage" %>
<div class="mx-auto w-50 ">
	<div class="ui secondary pointing menu">
		<a href="/boardList" class="item ${currentPage == 'home' ? 'active' : '' }"> Home </a>
		<a href="/add" class="item ${currentPage == 'add' ? 'active' : '' }"> Add </a>
		<a href="/memberList" class="item ${currentPage == 'member' ? 'active' : '' }"> Member </a>
		<c:if test="${currentPage == 'modify' }">
			<a class="item active"> Modify </a>
		</c:if>
		<c:if test="${currentPage == 'check' }">
			<a class="item active"> Check </a>
		</c:if>
		<div class="right menu">
			<a href="/login" class="ui item ${currentPage == 'login' ? 'active' : '' }"> Login </a>
			<a href="/join" class="ui item ${currentPage == 'join' ? 'active' : '' }"> Join </a>
		</div>
	</div>
</div>
<br />