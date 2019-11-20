<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 상세페이지</title>
</head>
<body>
	<h1>게시물 상세페이지</h1>
	<table>
		<thead>
			<tr>
				<th>id</th>
				<th>제목</th>
				<th>내용</th>
				<th>비고</th>
			</tr>
		</thead>
		<tbody>

			<tr>
				<td>${article.id }</td>
				<td>${article.title }</td>
				<td>${article.body }</td>
				<td>${article.id }</td>
			</tr>
		</tbody>
	</table>
</body>
</html>