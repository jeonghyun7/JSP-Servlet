<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>json 제이쿼리 활용 예제 4</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
	$(function () {
		$("#checkJson").click(function () {
			var jsonStr =
				'{"members":[{"name":"박지성","age":"25","gender":"남자","nickname":"날센돌이"}'
					+', {"name":"손흥민","age":"30","gender":"남자","nickname":"탱크"}] }';
			var jsonInfo = JSON.parse(jsonStr);
			var output = "회원정보<br>";
			output += "=======<br>";
			for (var i in jsonInfo.members) {
				output += "이름: " + jsonInfo.members[i].name + "<br>";
				output += "나이: " + jsonInfo.members[i].age + "<br>";
				output += "성별: " + jsonInfo.members[i].gender + "<br>";
				output += "별명: " + jsonInfo.members[i].nickname + "<br><br><br>";
			}
			$("#output").html(output);
		});
	});
</script>
</head>
<body>
	<div id="checkJson">출력</div><br><br>
	<div id="output"></div>
</body>
</html>