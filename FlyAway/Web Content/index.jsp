<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
	div{text-align: center;}
</style>
</head>
<body>
	<form action="searchresults.jsp" method="get">		
		<div>
		<h2 align="center">Book flights from the comfort of your home.</h2>	
		<label for="source"><b>Select Source:</b></label><br/>
		<select name="source" id="source">
			<option value="Mumbai">Mumbai</option>
			<option value="london">London</option>
			<option value="Newyork">New York</option>
			<option value="Sydney">Sydney</option>
		</select><br/><br/>
		
		<label for="destination"><b>Select Destination:</b></label><br/>
		<select name="destination" id="destination">
			<option value="Mumbai">Mumbai</option>
			<option value="London">London</option>
			<option value="Newyork">New York</option>
			<option value="Sydney">Sydney</option>
		</select><br/><br/>
		
		<label><b>Departure Date:</b></label><br/>
		<input type="date" name="date" required/><br/><br/>
		<label><b>Number of Passengers:</b></label><br/>
		<input type="number" name="passengers" min="1" required/><br/><br/>
		<input type="submit" value="Search Flights"/><br/><br/>
		<a href="adminLogin.jsp">Admin Login</a>		
		</div>
		
			
		
	</form>
</body>
</html>