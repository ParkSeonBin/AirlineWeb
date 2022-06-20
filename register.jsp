<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>항공편 등록</title>
</head>
<body>
	항공사 > 항공편 등록
	<hr>
	<form name="registerFrom" action="registerSuccess.jsp" method="get">
		<fieldset style="width:180px">
			<legend> 항공편 등록</legend><p>
				도착지 : 
			<select name="where">
				<option value="choice"> 선택 </option>
				<option value="korea"> 한국 </option>
				<option value="japan"> 일본 </option>
				<option value="china"> 중국 </option>
				<option value="usa"> 미국 </option>
				<option value="russia"> 러시아 </option>
				<option value="france"> 프랑스 </option>
				<option value="italy"> 이탈리아 </option>
			</select> <br><br>
				출발 시간 : 
			<input type="text" name="time" size="10">시 <br><br>
			<div align="center">		
				<input type="submit" value=" Finish "> &nbsp;
				<input type="reset" value=" Cancel "> <%-- 안되네 --%>
			</div><br>
		</fieldset>
	</form>
</body>
</html>