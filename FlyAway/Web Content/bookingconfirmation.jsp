<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		out.print("<b>Payment successful. Thank you for booking your flight with FlyAway.</b><br/><br/>");
		out.print("<b><u>Your booking details:</b></u><br/><br/>");
		out.print("Name: " + session.getAttribute("firstname") + " " + session.getAttribute("lastname") + "<br/>");
		out.print("Departure date: " + session.getAttribute("date") +"<br/>");
		out.print("Departure City: " + session.getAttribute("source") + "<br/>");
		out.print("Arrival City: " + session.getAttribute("destination") + "<br/>");
		out.println("Number of passengers: " + session.getAttribute("passenger") + "<br/>");
		out.print("Ticket Price: " + session.getAttribute("ticketprice") + "<br/>");
		
		int passenger = Integer.parseInt((String)session.getAttribute("passenger") );
		int ticketprice = Integer.parseInt(((String)session.getAttribute("ticketprice")).substring(1));
		
		out.println("Total amount: $" + (ticketprice * passenger) + "<br/><br/>");		
		
		out.print("<a href=\"index.jsp\" >Home Page</a>");
	%>
</body>
</html>