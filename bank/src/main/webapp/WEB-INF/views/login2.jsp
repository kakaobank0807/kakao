<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<script src="./js/jquery-3.7.0.min.js"></script>
<link rel="stylesheet" href="./css/menu.css">
<script type="text/javascript">
let text = "";
$(function(){
	alert("아이디,비밀번호를 잘못 입력하셨습니다.");
	$(".login").click(function(){
		let msg = document.getElementById("loginmsg");
		let id = $("#id").val();
		let pw = $("#pw").val();
		if(id.length < 4){
			text = "아이디는 4글자 이상이어야 합니다.";
			msg.innerHTML = text;
			id.focus();
			return false;
		} else {
			if(pw.length < 4){
				text = "암호는 4글자 이상이어야 합니다.";
				msg.innerHTML = text;
				pw.focus();
				return false;
			} else {
				$("#loginForm").submit();
			}
		}	
	});
});
</script>
</head>
<body>
<%@ include file="menu.jsp" %>	
	
	<form action="./login" method="post" id = "loginForm">
		<input name="id" id="id" maxlength="20" type="text" placeholder="ID를 입력하세요.">
		<br>
		<input name="pw" id="pw" maxlength="20" type="password" placeholder="PW를 입력하세요.">
		<br>
		<button class="login" id = "loginbutton" type="button">로그인</button>
	</form>
	<button class="joinbutton">
		<a href="./join">회원가입</a>
	</button>
	<br>
	<span id="loginmsg"></span>
</body>
</html>