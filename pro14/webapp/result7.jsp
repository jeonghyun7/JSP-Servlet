<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과창</title>
</head>
<body>
	<c:if test="${empty param.id }">
		아이디를 입력하세요.<br>
		<a href="login7.jsp">로그인창</a>
	</c:if>
	<c:if test="${not empty param.id}">
		<h1> 환영합니다. <c:out value="${param.id }" />님!!!</h1>
	</c:if>
</body>
</html>