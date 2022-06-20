<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>항공권 예매</title>
</head>
<body>
	승객 > 항공권 예매
	<hr>
	<form action="reserveSuccess.jsp" name="reserveForm" method="get">
		<fieldset style="width:180px">
			<legend> 항공권 예매</legend><p>
				도착지 : <br>
			<select name="where">
			<%
				String sql = "SELECT * FROM airtime";
				
		       	ResultSet rs = null;

		       	Statement stmt = null;
		        String Arrival = null;
		        String Depart = null;

		       	stmt = conn.createStatement();
		  	 	rs = stmt.executeQuery(sql);

		       	while(rs.next()) {
		           	Arrival = rs.getString("arrival");	
		           	Depart = rs.getString("depart");
			%> 
				    <option value=<%=Arrival+","+Depart %>> <%=Arrival%>,<%=Depart %>시</option> 
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