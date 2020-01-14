<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageName" value="회원가입" />
<%@ include file="../part/head.jspf"%>
<script>
	function JoinForm(form) {
		form.loginId.value = form.loginId.value.trim();
		if (form.loginId.value == 0) {
			alert("아이디를 입력해주세요");
			form.loginId.focus();

			return false;
		}
		form.loginPw.value = form.loginPw.value.trim();
		if (form.loginPw.value == 0) {
			alert('비밀번호를 입력해주세요');
			form.loginPw.focus();
			return false;
		}
		form.loginPwCheck.value = form.loginPwCheck.value.trim();
		if (form.loginPwCheck.value == 0) {
			alert('비밀번호를 다시한번 입력해주세요');
			form.loginPwCheck.focus();
			return false;

		}
		if (form.loginPw.value != form.loginPwCheck.value) {
			alert('비밀번호를 재확인해주세요');
			form.loginPw.value = "";
			form.loginPwCheck.value = "";
			form.loginPw.focus();
			return false;
		}
		form.submit();
	}
</script>
<form action="./doJoin" method="post"
	onsubmit="JoinForm(this); return false;">
	<div>
		<span>아이디</span> <br> <input type="text" placeholder="아이디"
			name="loginId" autofocus="autofocus">
	</div>
	<div>
		<span>비밀번호</span><br> <input type="password" placeholder="비밀번호"
			name="loginPw">
	</div>
	<div>
		<span>비밀번호 확인</span><br> <input type="password"
			placeholder="비밀번호확인" name="loginPwCheck">

	</div>

	<div>
		<span>회원가입</span> <br> <input type="submit" value="회원가입">
		<input type="reset" value="취소">
	</div>
</form>
<%@ include file="../part/foot.jspf"%>