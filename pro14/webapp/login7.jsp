<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 창</title>
</head>
<body>
	<form method="post" action="result7.jsp">
		<h1 style="text-align:center">로그인창</h1>
		<table align="center">
			<tr>
				<td width="200"><p align="right">아이디:</p></td>
				<td width="400"><input type="text" name="id" size="20">
			</td>
			<tr>
				<td width="200"><p align="right">비밀번호:</p></td>
				<td width="400"><input type="password" name="pwd" size="20">
			</td>
			<tr>
				<td width="200"><p>&nbsp;</p></td>
				<td width="400">
					<input type="submit" value="로그인">
					<input type="reset" value="다시 입력">
				</td>
			</tr>
			<tr>
				<td width="200"><p>&nbsp;</p></td>
				<td width="400">
					<a href="${pageContext.request.contextPath}/practice7/memberForm7.jsp">회원가입하기</a>
		</table>
		
	</form>
</body>
</html>