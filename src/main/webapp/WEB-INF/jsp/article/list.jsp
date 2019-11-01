<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 리스트</title>
</head>
<body>
	<h1>게시물 리스트</h1>
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
			<c:forEach items="${list}" var="article">

				<tr>
					<td>${article.id }</td>
					<td>${article.title }</td>
					<td>${article.body }</td>
					<td>${article.id }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>