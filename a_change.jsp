<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>항공편 변경</title>
</head>
<body>
	항공사 > 항공편 변경
	<hr>
	<% String Where = request.getParameter("where");
		String Depart = request.getParameter("when"); %>
	<form action="a_changeSuccess.jsp" name="changeFrom" method="get">
		<fieldset style="width:180px">
			<legend> 항공편 변경</legend><p>
				변경 전 항공편 <hr>
				<input type="hidden" name="b_where" value="<%=Where %>">
				<input type=hidden name="b_when" value="<%=Depart %>">
				<%	out.print("도착지 : "+Where); 
					out.print("<br>출발 시간 : "+Depart);%>
				<br><br>
				변경 후 항공편 <hr>
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
				<input type="reset" value=" Cancel ">
			</div><br>
		</fieldset>
	</form>
</body>
</html>
