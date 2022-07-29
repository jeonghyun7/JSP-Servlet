<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="sec01.ex01.*"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	MemberBean member = new MemberBean("cha", "1234", "차범근", "cha@test.com");
	request.setAttribute("member", member);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>foward2</title>
</head>
<body>
	<jsp:forward page="member2.jsp" />
</body>
</html>