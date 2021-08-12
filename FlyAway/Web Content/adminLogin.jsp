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
	<form action="adminPage.jsp" method ="post">
		<div>
			<h2>Enter your admin account login credentials.</h2><br/>
			Username:<input type="text" name ="username"/><br/>
			Password:<input type="password" name="password"/><br/><br/>
			<input type="submit" name="Login" value ="Login"/>
		</div>
	</form>
	<%  
	if(request.getParameter("Login") != null)
	{
		String userName = request.getParameter("username");
		String pass = request.getParameter("password");
		
		ConnectionManagerImpl conn = new ConnectionManagerImpl();
		Connection con = conn.getConnection();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select * from admin");
		
		
		if(userName.equals(rs.getString(1)) && pass.equals(rs.getString(2)))
		{
			response.sendRedirect("adminPage.jsp");
		}
		else
		{
			response.sendRedirect("adminLogin.jsp");
		}
	}		
	%>
</body>
</html>