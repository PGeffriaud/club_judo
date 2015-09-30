<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet"> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
<title>Club Judo</title>
</head>
<body>
<div class="container">
	<div class="row col-md-12"><%@ include file="jspf/header.jspf" %></div>
	<c:if test="${not empty sessionScope.login}">
		<div class="row">
		
			<div class="col-md-11">
				<p class="text-left lead">Utilisateur: <c:out value="${sessionScope.login}"/></p>
			</div>
			<div class="col-md-1">
				<form action="${pageContext.request.contextPath}/logout" method="POST">
					<input type="submit" value="Logout" class="btn btn-danger">
				</form>
			</div>
		</div>
	</c:if>
	<div class="row">
		<div class="col-md-3">
			<%@ include file="jspf/menu.jspf" %>
		</div>
		<div class="col-md-9">
			<c:if test="${not empty requestScope.page}">
				<td class="page"><jsp:include page="jspf/${requestScope.page}.jspf" /></td>
			</c:if>
			<c:if test="${empty requestScope.page}">
				<td class="page"><jsp:include page="jspf/accueil.jspf" /></td>
			</c:if>
		</div>
	</div>
	<div class="row col-md-12"><%@ include file="jspf/footer.jspf" %></div>
</div>

</body>
</html>