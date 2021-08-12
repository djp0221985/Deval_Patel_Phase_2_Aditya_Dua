<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="bookingconfirmation.jsp" method="post">
	
	Name on the card: <input type="text" name="cardname"required/><br/><br/>
	Card Number:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name="cardnumber" placeholder="xxxx-xxxx-xxxx-xxxx" pattern ="[0-9]{4}-[0-9]{4}-[0-9]{4}-[0-9]{4}" required/><br/><br/>
	Expiry date:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <input type="text" name="expiry" placeholder="00/00" pattern="[0-12]{2}/[0-9]{2}" required/><br/><br/>
	CVV:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <input type="password" name="cvv" placeholder="xxx" pattern="[0-9]{3}" required/><br/><br/>	
	<input type="submit" value="Place Order"/>
	<%
		
	%>
	</form>
</body>
</html>