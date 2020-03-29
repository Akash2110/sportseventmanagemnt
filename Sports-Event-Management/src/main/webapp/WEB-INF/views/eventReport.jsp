<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@include file="header.html" %>



	<form:form  method="get" modelAttribute="event">
		<center><table>

      <tr>
      
      <td>Event id</td>
      <td>Sports Name</td>
      <td>Event Name</td>
      <td>Date</td>
      <td>Time</td>
      <td>Venue</td>
      <td>NoOfSlots</td>
      
      </tr>
			<tr>

				<td value="${eve.getEventId()}">${eve.getEventId()}</td>
				<td value="${eve.getSportsName()}">${eve.getSportsName()}</td>
				<td value="${eve.getEventName()}">${eve.getEventName()}</td>
				<td value="${eve.getDate()}">${eve.getDate()}</td>
				<td value="${eve.getTime()}">${eve.getTime()}</td>
				<td value="${eve.getVenue()}">${eve.getVenue()}</td>
				<td value="${eve.getNoOfSlots()}">${eve.getNoOfSlots()}</td>
				
			</tr>

		</table></center>
	</form:form>
</body>
</html>