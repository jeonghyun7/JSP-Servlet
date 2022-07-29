<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>redirectTest</title>
</head>
<body>
	<c:redirect url="member1.jsp" >
		<c:param name="id" value="${'hyun'}" />
		<c:param name="pwd" value="${'7777'}" />
		<c:param name="name" value="${'이정현'}" />
		<c:param name="age"/>
		<c:param name="height" />
		<c:param name="email" value="${'hyun@test.com'}" />
	</c:redirect>
</body>
</html>