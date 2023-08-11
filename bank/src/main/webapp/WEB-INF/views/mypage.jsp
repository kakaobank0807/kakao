<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mypage</title>
<link rel="stylesheet" href="./css/menu.css">
</head>
<body>
<%@ include file="menu.jsp" %>
	<div class=middle>
    <table>
        <tr>
            <th>ID</th>
            <td>${list[0].mid}</td>
        </tr>
        <tr>
            <th>이름</th>
            <td>${list[0].mname}</td>
        </tr>
        <tr>
            <th>계좌번호</th>
            <td>${list[0].maccount}</td>
        </tr>
    </table>
	</div>
</body>
</html>