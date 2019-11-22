<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageName" value="게시물 리스트" />
<%@ include file="../part/head.jspf"%>
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
					<td><a href="./doDelete?id=${article.id }">삭제</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
<%@ include file="../part/foot.jspf"%>