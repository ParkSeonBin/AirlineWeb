<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "dbConn.jsp" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>항공권 변경</title>
</head>
<body>
	승객 > 항공권 변경
	<hr>
	<% String Where = request.getParameter("where");
		String Depart = request.getParameter("when"); %>
	<form action="p_changeSuccess.jsp" name="p_changeForm" method="get">
		<fieldset style="width:180px">
			<legend> 항공권 변경</legend><p>
				변경 전 항공권 <hr>
				<input type="hidden" name="b_where" value="<%=Where %>">
				<input type=hidden name="b_when" value="<%=Depart %>">
				<%	out.print("도착지 : "+Where); 
					out.print("<br>출발 시간 : "+Depart);%>
				<br><br>
				변경 후 항공편 <hr>
				도착지 : 
			<select name="c_where">
			<%
				String sql = "SELECT * FROM airtime";
			 	ResultSet rs = null;
			 	Statement stmt = null;
		        String bArrival = null;
		        String bDepart = null;

		       	stmt = conn.createStatement();
		  	 	rs = stmt.executeQuery(sql);

		       	while(rs.next()) {
		           	bArrival = rs.getString("arrival");	
		           	bDepart = rs.getString("depart");
			%> 
				    <option value=<%=bArrival+","+bDepart %>> <%=bArrival%>,<%=bDepart %>시</option> 
		    <%  
		       	}
		     %>
		     </select> <br><br>
			<div align="center">		
				<input type="submit" value=" Finish "> &nbsp;
				<input type="reset" value=" Cancel ">
			</div><br>
		</fieldset>
	</form>
</body>
</html>
