<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="d" tagdir="/WEB-INF/tags"%>
<%@ attribute name="state" %>

	<c:if test="${not empty message }">
		<div class="w-50  mx-auto alert alert-${state == 'danger' ? 'danger' : 'success' }" role="alert">${message }</div>
	</c:if>
