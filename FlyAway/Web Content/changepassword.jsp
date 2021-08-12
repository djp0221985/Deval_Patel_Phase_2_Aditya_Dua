<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import = "com.util.*, java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
	div{text-align : center;}
</style>
</head>
<body>
	<form action="changepassword.jsp" method="post">
		Username<br/><input type="text" name ="username"/><br/>
		Password<br/><input type="password" name="password"/><br/><br/>
		<input type="submit" name="changePass" value ="Change Password"/>
	</form>
	
	<%
		if(request.getParameter("changePass") != null)
		{
			String uname = request.getParameter("username");
			String pass = request.getParameter("password");
			boolean updated = false;
			
			ConnectionManagerImpl conn = new ConnectionManagerImpl();
			Connection con = conn.getConnection();
			Statement st = con.createStatement();
			st.execute("update admin set password='"+pass+"' where username ='"+uname+"'");
			updated=true;
			
			if(updated)
			{
				out.println("Password updated successfully!");
				out.print("<br/><a href=\"adminPage.jsp\">Go to Admin Page</a>");
			}				
		}
	%>
</body>
</html>