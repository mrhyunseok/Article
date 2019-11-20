<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 추가</title>
</head>
<body>
	<h1>게시물 추가</h1>
	<form action="./doAdd" method="post">
	
		<div>
			<span>제목</span> <input type="text" placeholder="제목" name="title">
		</div>
		<div>
			<span>내용</span>
			<textarea placeholder="내용" name="body"></textarea>
		</div>
		<div>
			<span>전송</span> <input type="submit" value="전송"> <input
				type="reset" value="취소">
		</div>

	</form>
</body>
</html>