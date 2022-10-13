<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="write_ok">
		<table width="400" align="center">
			<tr>
				<th>제목</th>
				<td><input type="text" name="title"></td>
			</tr>
			<tr>
				<th>아이디</th>
				<td><input type="text" name="userid"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea cols="40" rows="4" name="content"></textarea></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" size="5" name="pwd"></td>
			</tr>
			<tr>
				<td colspan="2" align="right">
					<input type="submit" value="저장"> 
				</td>
			</tr>
		</table>
	</form>
</body>
</html>