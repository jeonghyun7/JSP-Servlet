<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 다운로드 요청하기</title>
</head>
<body>
	<form method="post" action="result.jsp" >
		<!-- 다운로드할 파일 이름을 매개변수로 전달함 -->
		<input type=hidden name="param1" value="ex01.jpg" /> <br>
		<input type=hidden name="param2" value="ex02.jpg" /> <br>
		<input type="submit" value="이미지 다운로드">
	</form>
</body>
</html>