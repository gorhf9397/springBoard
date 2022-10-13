<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table width="50%" border="1" align="center">
		<tr>
			<td>제목</td>
			<td align="center">${bvo.title}</td>
		</tr>
		<tr>
			<td>작성자</td>
			<td align="center">${bvo.userid}</td>
		</tr>
		<tr>
			<td>내용</td>
			<td align="center" height="400">${bvo.content}</td>
		</tr>
		<tr>
			<td>조회수</td>
			<td align="center">${bvo.readnum}</td>
		</tr>
		<tr>
			<td>작성일</td>
			<td align="center">${bvo.writeday}</td>
		</tr>
		<tr>
			<td colspan="2" align="right">
				<a href="update?id=${bvo.id}">수정</a> 
				<a href="list">목록</a> 
				<a href="#" onclick="view()">삭제</a>
			</td>
		</tr>
		<tr id="del">
			<td colspan="2" align="right">
				<form method="post" action="delete">
					<input type="hidden" name="id" value="${bvo.id}">
					비번<input type="password" name="pwd"> <input type="submit"
						value="삭제">
				</form>
			</td>
		</tr>
	</table>
	<script>
		function view() {
			document.getElementById("del").style.display = "table-row";
		}
	</script>
	<style>
#del {
	display: none;
}
</style>
</body>
</html>