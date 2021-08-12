<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>You have successfully registered.</h2>
<form action="payment.jsp" method="post">
	<%   		
		session.setAttribute("firstname", request.getParameter("fname"));
		session.setAttribute("lastname", request.getParameter("lname"));
		session.setAttribute("email", request.getParameter("email"));
		session.setAttribute("phonenumber", request.getParameter("phone"));
		
		out.print("<b>Flight details:</b> </br>");
		out.print("<b>Departure City: </b>" + session.getAttribute("source") + "<br/>");
		out.print("<b>Arrival City: </b>" + session.getAttribute("destination") + "<br/>");
		out.print("<b>Airline: </b>" + session.getAttribute("airline") + "<br/>");
		int passenger = Integer.parseInt((String)session.getAttribute("passenger"));
		out.print("<b>Number of Passengers: </b>"+ passenger + "<br/>");
		int ticketprice = Integer.parseInt(((String)session.getAttribute("ticketprice")).substring(1));
		
		out.print("<b>Ticket Price per person: </b>" + ticketprice + "<br/>" );
		out.print("<b>Total amount:</b> " + (ticketprice * passenger) + "<br/>");
		out.print("<input type=\"submit\" value=\"Pay Now\" />");		
	%>
</form>
</body>
</html>