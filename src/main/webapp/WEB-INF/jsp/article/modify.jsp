<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageName" value="게시물 수정" />
<%@ include file="../part/head.jspf"%>
<form action="./doModify" method="POST">

	<input type="hidden" name="id" value="${article.id}">
	<div>
		<span> 제목 </span>
		<div>
			<input name="title" type="text" placeholder="제목"
				autofocus="autofocus" value="${article.title}">
		</div>
	</div>

	<div>
		<span> 내용 </span>
		<div>
			<textarea name="body" placeholder="내용">${article.body}</textarea>
		</div>
	</div>

	<div>
		<span> 수정 </span>
		<div>
			<input type="submit" value="수정"> <input type="reset"
				value="취소" onclick="history.back();">
		</div>
	</div>
</form>
<%@ include file="../part/foot.jspf"%>