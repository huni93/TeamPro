<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>로그인</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<style>
body {
	min-height: 100vh;
	background: -webkit-gradient(linear, left bottom, right top, from(#92b5db),
		to(#1d466c));
	background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%);
}

.input-form {
	max-width: 680px;
	margin-top: 80px;
	padding: 32px;
	background: #fff;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
}
</style>
<script>
function passChk(form) {
	if(form.chgpass.value !=form.chgpass1.value){
		alert("변경 비밀번호와 재입력 번호가 다릅니다.")
		form.chgpass1.value="";
		form.chgpass1.focus()
		return false
	}
	return true;
}
</script>
</head>
<body>
	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<h4 class="mb-3  center">비밀번호변경</h4>
				<form class="validation-form" novalidate action="memberPassPro"
				onsubmit = "return passChk(this)" method="post">

					<div class="row">
					
						<div class="col-md-12 mb-3">
							<label for="pass">현재비밀번호</label> <input type="password"
								class="form-control" id="pass" placeholder="" value=""
								name="pass" required>
							<div class="invalid-feedback">비밀번호을 입력해주세요.</div>
						</div>
						
						<div class="col-md-12 mb-3">
							<label for="pass">변경비밀번호</label> <input type="password"
								class="form-control" id="pass" placeholder="" value=""
								name="chgpass" required>
							<div class="invalid-feedback">비밀번호을 입력해주세요.</div>
						</div>
						
						<div class="col-md-12 mb-3">
							<label for="pass">변경번호확인</label> <input type="password"
								class="form-control" id="pass" placeholder="" value=""
								name="chgpass1" required>
							<div class="invalid-feedback">비밀번호을 입력해주세요.</div>
						</div>
					</div>


					<div class="mb-4"></div>
					<button class="btn btn-primary btn-lg btn-block" type="submit">비밀번호 변경</button>
				</form>
			</div>
		</div>
		<footer class="my-3 text-center text-small">
			<p class="mb-1">&copy; 2021 YD</p>
		</footer>
	</div>
	<script> window.addEventListener('load', () => { const forms = document.getElementsByClassName('validation-form'); Array.prototype.filter.call(forms, (form) => { form.addEventListener('submit', function (event) { if (form.checkValidity() === false) { event.preventDefault(); event.stopPropagation(); } form.classList.add('was-validated'); }, false); }); }, false); </script>
</body>
</html>