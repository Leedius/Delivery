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
	margin: 0 auto;
}
.c1{
	font-weight: bolder;
}
</style>
</head>
<body>
	<div style="text-align: center">
		<h2>배달 정보</h2>
	</div>
	<div>
		<form action="customerInfo.do" method="post">
		<input value="${menuSelect.menuName }" name="menuName" type="hidden">
		<input value="${menuSelect.chikenNum }" name="chikenNum" type="hidden">
		<c:forEach items="${menuSelect.addOrder }" var="e">
		<input value="${e }" name="addOrder" type="hidden">
		</c:forEach>
		<input value="${menuSelect.requestText }" name="requestText" type="hidden">
		<table>
			<tr>
				<td class="c1">주문자</td>
			</tr>
			<tr>
				<td>
					<input type="text" name="customer" style="padding-bottom: 5px;">
				</td>
			</tr>
			<tr>
				<td class="c1">연락처</td>
			</tr>
			<tr>
				<td>
					<input type="tel" name="tell" placeholder="010-0000-0000 형태로 입력" style="padding-bottom: 5px;">
				</td>
			</tr>
			<tr>
				<td class="c1">배달주소</td>
			</tr>
			<tr>
				<td>
					<input type="text" name="location" style="padding-bottom: 5px;">
				</td>
			</tr>
		</table>
		<div style="text-align: center">
			<input type="submit" value="주문">
		</div>
		</form>
	</div>
</body>
</html>