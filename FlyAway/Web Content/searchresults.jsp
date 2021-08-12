<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import = "java.sql.ResultSet"%>
<%@page import ="com.util.ConnectionManagerImpl"%>
<%@page import = "java.sql.Connection"%>
<%@page import = "java.sql.Statement"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="register.jsp" method="post">
	<%
		String src = request.getParameter("source");
		String desti = request.getParameter("destination");
		session.setAttribute("date", request.getParameter("date"));
		session.setAttribute("passenger", request.getParameter("passengers"));
		session.setAttribute("source", src);
		session.setAttribute("destination", desti);
		
		ConnectionManagerImpl impl = new ConnectionManagerImpl();
		Connection con = impl.getConnection();
		
		String sql = "Select * from flights where source = '"+src+"' and destination = '"+desti+"'";	
		
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(sql);
		
		boolean record = false;
		rs = st.executeQuery(sql);
		
		while(rs.next())
		{
			out.print("<b>Departure City:</b> " + rs.getString(2) + " <br/>" + "<b> Arrival City:</b> " + rs.getString(3) + " <br/>" + "<b>Airline:</b> " +
			rs.getString(4) + " <br/>" + "<b>Ticket Price: </b>" + rs.getString(5));		
			session.setAttribute("airline", rs.getString(4));
			session.setAttribute("ticketprice", rs.getString(5));	
			record = true;
		}
		
		if(record)
		{
			out.print("<br/><input type=\"submit\" value=\"Book\" />");					
		}
		else
		{
			out.println("No flights available");
			out.print("<a href=\"index.jsp\" >Search flights</a>");
		}		
	%>
	</form>
</body>
</html>