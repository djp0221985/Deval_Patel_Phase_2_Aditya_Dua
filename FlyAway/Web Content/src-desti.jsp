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
	<% 
	ConnectionManagerImpl impl = new ConnectionManagerImpl();
	Connection con = impl.getConnection();
	
	String sql = "Select distinct source from flights";	
	
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery(sql);
	
	rs = st.executeQuery(sql);
	out.print("<b>List of Source Cities</b><br/><br/>");
	while(rs.next())
	{
		out.print(" "+rs.getString(1)+"<br/>");
	}
	
    sql = "Select distinct destination from flights";	
    rs = st.executeQuery(sql);
	out.print("<br/><b>List of Destination Cities</b><br/><br/>");
	while(rs.next())
	{
		out.print(" "+rs.getString(1)+"<br/>");	

	}
%>
</body>
</html>