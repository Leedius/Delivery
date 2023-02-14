<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<div style="text-align: center;">
		<h2>치킨!</h2>
	</div>
	<div>
		<form action="order.do" method="post">
		<table>
			<tr>
				<td colspan="6" class="c1">치킨 종류와 상관 없이 무조건 만원!</td>
			</tr>
			<tr>
				<td style="padding-bottom: 20px">
					<input type="radio"	value="후라이드 치킨" name="menuName" checked>후라이드 치킨 
					<input type="radio" value="양념치킨" name="menuName">양념치킨 
					<input type="radio" value="간장치킨" name="menuName">간장치킨 
					<br>
					<input type="radio" value="고추바사삭" name="menuName">고추바사삭 
					<input type="radio" value="뿌링클" name="menuName">뿌링클 
					<input type="radio" value="매운핫치킨" name="menuName">매운핫치킨
				</td>
			</tr>
			<tr style="text-align: left;">
				<td colspan="6" class="c1" style="padding-bottom: 20px;">몇마리 <input type="number" value="1" name="chikenNum" min="1" max="10">
				</td>
			</tr>
			<tr>
				<td colspan="6" class="c1">추가할게요(추가 시 1000원)</td>
			</tr>
			<tr>
				<td style="padding-bottom: 20px">
					<input type="checkbox" value="양념 추가" name="addOrder">양념 추가 
					<input type="checkbox" value="머스타드 추가" name="addOrder">머스타드 추가 
					<input type="checkbox" value="콜라 추가" name="addOrder">콜라 추가
				</td>
			</tr>
			<tr>
				<td colspan="6" class="c1">요청사항</td>
			</tr>
			<tr>
				<td>
					<textarea rows="3" cols="60" name="requestText" style="resize: none;"></textarea>
				</td>
			</tr>
		</table>
		<div style="text-align: center;">
			<input type="submit" value="주문하러 가기">
		</div>
		</form>
	</div>
</body>
</html>