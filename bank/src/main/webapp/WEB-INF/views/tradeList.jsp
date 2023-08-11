<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>tradeList</title>
<link rel="stylesheet" href="./css/menu.css">
<script src="./js/jquery-3.7.0.min.js"></script>
<script type="text/javascript">
	function linkPage(pageNo){
		location.href = "./tradeList?pageNo="+pageNo;
	}	
</script>
</head>
<body>
<%@ include file="menu.jsp" %>
	<h1>사용 계좌</h1>
	${list2[0].maccount }
	<h1>잔액</h1>
	${list2[0].mmoney } 원
	<h1>거래내역 조회</h1>
	<table>
            <thead>
                <tr>
                    <td>거래번호</td>
                    <td>거래시간</td>
                    <td>출금계좌번호</td>
                    <td>입금계좌번호</td>
                    <td>출금회원번호</td>
                    <td>입금회원번호</td>
                    <td>거래금액</td>
                </tr>
                <tbody>
					<c:forEach items="${list }" var="i">
						<tr>
							<td class="a">${i.tno }</td>
							<td class="a">${i. ttime }</td>
							<td class="a">${i.toaccount }</td>
							<td class="a">${i.tipaccount}</td>
							<td class="a">${i.tname}</td>
							<td class="a">${i.tipname}</td> 
							<td class="a">${i.tmoney }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
	<ui:pagination paginationInfo = "${paginationInfo}"
	type="image"
	jsFunction="linkPage"/>
	
</body>
</html>