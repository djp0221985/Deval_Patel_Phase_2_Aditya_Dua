<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import = "java.sql.ResultSet"%>
<%@page import ="com.util.ConnectionManagerImpl"%>
<%@page import = "java.sql.Connection"%>
<%@page import = "java.sql.Statement"%>


<% 
	ConnectionManagerImpl impl = new ConnectionManagerImpl();
	Connection con = impl.getConnection();
	
	String sql = "Select distinct airline from flights";	
	
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery(sql);
	
	rs = st.executeQuery(sql);
	
	while(rs.next())
	{
		out.print(" "+rs.getString(1)+"<br/>");	
	}
%>
	

	
	
		
		