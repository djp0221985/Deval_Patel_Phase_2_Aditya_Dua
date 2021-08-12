<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	<form action="booking.jsp" method="post">
		<div>
			<h2>Please enter the requested details to register.</h2>
			<label><b>First Name:</b></label><br/>
			<input type="text" name="fname" required/><br/><br/>
			<label><b>Last Name:</b></label><br/>
			<input type="text" name="lname" required/><br/><br/>
			<label><b>Email:</b></label><br/>
			<input type="email" name="email"  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required/><br/><br/>
			<label><b>Contact:</b></label><br/>
			<input type="text" name="phone" placeholder="xxx-xxx-xxxx" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}"required/><br/><br/>	
			<input type="submit" value="Register"/>
		</div>
	</form>
</body>
</html>