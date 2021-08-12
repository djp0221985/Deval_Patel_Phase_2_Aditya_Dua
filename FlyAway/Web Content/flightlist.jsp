<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import = "java.sql.ResultSet"%>
<%@page import ="com.util.ConnectionManagerImpl"%>
<%@page import = "java.sql.Connection"%>
<%@page import = "java.sql.Statement"%>
<%@ page import = "java.sql.DriverManager" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	Class.forName("com.mysql.cj.jdbc.Driver");			
	
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/flyaway", "root", "Patel@1985");			
	Statement st = con.createStatement();
	
	ResultSet rs = st.executeQuery("select * from flights");
	
	while(rs.next())
	{
		out.print("Flight Number: "+ rs.getInt(1) + " Source: " + rs.getString(2) + " Destination: " + rs.getString(3) + 
				" Airline: " + rs.getString(4) + " Ticket Price : " + rs.getString(5) + "<br/>");		
	}
	%>	
</body>
</html>