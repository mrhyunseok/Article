<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageName" value="게시물 상세페이지" />
<%@ include file="../part/head.jspf"%>
	<table border="1">
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
				<td>
				<a href="./modify?id=${article.id }">수정</a>
				<a onclick="if(confirm('삭제하시겠습니까?') == false) return false;" href="./doDelete?id=${article.id }" >삭제</a></td>
			</tr>
		</tbody>
	</table>
	<a href="./add">게시물 추가</a>
	<a href="./list">게시물 리스트</a>
<%@ include file="../part/foot.jspf"%>