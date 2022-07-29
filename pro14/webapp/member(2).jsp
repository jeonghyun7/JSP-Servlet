<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%
	request.setCharacterEncoding("utf-8");
	String id = (String)request.getAttribute("member.id");
	String pwd = (String)request.getAttribute("member.pwd");
	String name = (String)request.getAttribute("member.name");
	String email = (String)request.getAttribute("member.email");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member2 실습</title>
</head>
<body>
	<table border=1 align="center">
		<tr align="center" bgcolor="#99ccff">
			<td width="20%"><b>아이디</b></td>
			<td width="20%"><b>비밀번호</b></td>
			<td width="20%"><b>이름</b></td>
			<td width="20%"><b>이메일</b></td>
		</tr>
		<tr align="center">
			<td>${member.id}</td>
			<td>${member.pwd}</td>
			<td>${member.name}</td>
			<td>${member.email}</td>
		</tr>
	</table>
</body>
</html>