<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bank</title>
<script src="./js/jquery-3.7.0.min.js"></script>
<link rel="stylesheet" href="./css/index.css">
<link rel="stylesheet" href="./css/menu.css">
<script type="text/javascript">
</script>
</head>
<body>
<%@ include file="menu.jsp" %>
	<div class="background">
	<div class="h">이미 모두의 은행<br>
	지금은 카카오뱅크</div>
	<div class="t">한 사람, 한 사람을 위해 시작한 은행이<br>
	더 많은 사람들이 찾는 모두의 은행이 되었습니다.</div>
	<div class="t">보내고, 받고, 모으고, 쓰는<br>
	당신의 모든 일이 바뀌고 있습니다.</div>
	<button onclick="location.href='./mypage'"><img class="lion-img" alt="" src="./img/lion.png">&nbsp;내 계좌 보러가기</button>
	</div>
</body>
</html>