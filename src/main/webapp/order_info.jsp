<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table{
	border: 1px solid black;
	border-collapse: separate;
	margin: 0 auto;
	border-radius: 20px;
}
thead{
	text-align: center;
	font-weight: bolder;
}
tbody{
	
}
tr,td{
}
</style>
</head>
<body>
	<div style="text-align: center">
		<h2>주문서</h2>
	</div>
	<div>
		<table style="width: 300px;">
			<thead>
				<tr>
					<td>주문정보</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>
						${menuSelect.menuName } (${menuSelect.chikenNum }마리)
					</td>
				</tr>
				<tr>
					<td>추가사항 : <c:forEach items="${menuSelect.addOrder }" var="e">${e }</c:forEach> </td>
				</tr>
				<tr>
					<td>주문 금액 : ${menuSelect.chikenNum *10000+menuSelect.addOrder.length*1000}원</td>
				</tr>
				<tr>
					<td>요청 사항 : ${menuSelect.requestText }</td>
				</tr>
			</tbody>
		</table>
		<br>
		<table style="width: 300px">
			<thead>
				<tr>
					<td>주문정보</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>주문자 : ${customerInfo.customer }</td>
				</tr>
				<tr>
					<td>연락처 : ${customerInfo.tell }</td>
				</tr>
				<tr>
					<td>배달주소 : ${customerInfo.location }</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>