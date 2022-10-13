<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method=post action="update_ok">
		<input type="hidden" name="id" value="${bvo.id }">
		<table width="50%" border="0" align="center">
			<tr>
				<td><input type="text" name="title" placeholder="제목입력"
					value="${bvo.title }"></td>
			</tr>
			<tr>
				<td><input required type="text" name="name" placeholder="이름입력"
					value="${bvo.userid}"></td>
			</tr>
			<tr>
				<td><textarea cols="40" rows="5" name="content"
						placeholder="내용입력">${bvo.content }</textarea></td>
			</tr>
			<tr>
				<td><input type="password" name="pwd" placeholder="비밀번호입력"
					value="${bvo.pwd}"></td>
			</tr>
			<tr>
				<td><input type="submit" value="수정"></td>
			</tr>
		</table>
	</form>
</body>
</html>