<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	request.setCharacterEncoding("utf-8");
    	int score=Integer.parseInt(request.getParameter("score"));
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>점수 출력창</title>
<style>
	h1 {
		color: blue;
	}
</style>
</head>
<body>
	<h1> 시험점수 <%=score %>점</h1><br>
	<%
		if(score>=90){
	%>
	<h1> A학점입니다.</h1>
	<h2> 1등입니다.</h2>
	<%
		}else if(score>=80 && score<90){
	%>
	<h1> B학점입니다.</h1>
	<h2> 조금만 분발하세요.</h2>
	<%
		}else if(score>=70 && score<80){
	%>
	<h1> C학점입니다.</h1>
	<h2>많이 분발하세요.</h2>
	<%
		}else if(score>=60 && score<70){
	%>
	<h1> D학점입니다.</h1>
	<h2> 처음부터 차근차근</h2>
	<%
		}else{
	%>
	<h1> F학점입니다.</h1>
	<h2> 다시 시작합시다</h2>
	<%
		}
	%>
	<br>
	<a href="scoreTest.html">시험점수입력</a>
</body>
</html>