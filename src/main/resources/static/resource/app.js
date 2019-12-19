
	function addFormsubmit(form) {
		form.title.value = form.title.value.trim();
		if (form.title.value.length == 0) {
			alert('제목을 입력해주세요');
			form.title.focus();
			return false;

		}
		form.body.value = form.body.value.trim();
		if (form.body.value.length == 0) {
			alert('내용을 입력해주세요');
			form.body.focus();
			return false;
		}
		form.submit();
	}

function modifyFormsubmit(form) {
	form.title.value = form.title.value.trim();
	if (form.title.value.length == 0) {
		alert('제목은 공백일수 없습니다.');
		form.title.focus();
		return false;

	}
	form.body.value = form.body.value.trim();
	if (form.body.value.length == 0) {
		alert('내용은 공백일수없습니다.');
		form.body.focus();
		return false;
	}
	form.submit();
}
