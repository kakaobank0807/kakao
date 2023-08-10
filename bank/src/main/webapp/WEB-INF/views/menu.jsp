<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<nav>
		<ul>
			<li onclick="link('index')" class="index">kakaobank</li>
			<li onclick="link('tradeList')">거래 내역</li>
			<li onclick="link('trade')">이체</li>
			<li onclick="link('join')">회원가입</li>
			<c:choose>
				<c:when test="${sessionScope.mname eq null}">
					<li class="login" onclick="link('login')">로그인</li>
				</c:when>
				<c:otherwise>
					<li class="mypage" onclick="link('mypage')">내정보</li>
					<li class="login" onclick="link('logout')">로그아웃</li>
				</c:otherwise>
			</c:choose>
		</ul>
	</nav>
	<script>
	function link(url) {
		location.href="./"+url
	}
	</script>