<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body {
	background-image: url("drawable/eventAdd.jpg");
	background-repeat: no-repeat;
	background-size: cover;
}


#fadeout {
	opacity: 1;
	transition: 1s opacity;
	text-align: center;
	font-size: 32px;
}


</style>



<script type="text/javascript">
	window.onload = function() {
		window.setTimeout(fadeout, 1000); //8 seconds
	}

	function fadeout() {
		document.getElementById('fadeout').style.opacity = '0';
	}
	
</script>


</head>
<body>
	<%@include file="header.html"%>
	
	
	<%
		
		String fail = (String) request.getAttribute("fail");
		
		if (fail != null && fail.length() != 0)
			out.println( " <div  style='margin-top:50px;' id='fadeout'>" + fail + "</div> "  );
	%>

	<center>
		<form:form style="margin-top:90px; " action="eventReport" method="get"
			modelAttribute="event">
			<form:select path="eventId">

				<c:forEach var="list" items="${li}">

					<option id="id" value="${list.getEventId()}">${list.getEventId()}</option>

				</c:forEach>
			</form:select>
			<form:select path="eventName">
				<c:forEach var="list" items="${li}">
					<option id="id" value="${list.getEventId()}">${list.getEventName()}</option>


				</c:forEach>

			</form:select>
			<form:select path="sportsName">

				<c:forEach var="list" items="${li}">

					<option id="id" value="${list.getEventId()}">${list.getSportsName()}</option>

				</c:forEach>
			</form:select>
			<a href="eventReport"><input type="submit" value="submit"></a>
		</form:form>




	</center>
</body>
</html>