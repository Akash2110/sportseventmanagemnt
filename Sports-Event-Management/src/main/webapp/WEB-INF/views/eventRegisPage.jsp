<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Roboto:400,700"
	rel="stylesheet">
<title>Register</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
body {
	color: #999;
	background-image: url("drawable/eventAdd.jpg");
	background-repeat: no-repeat;
	background-size: cover;
	font-family: 'Roboto', sans-serif;
}

.form-control, .form-control:focus, .input-group-addon {
	border-color: #e1e1e1;
	border-radius: 9px;
}

.signup-form {
	width: 390px;
	margin: 0 auto;
	padding: 30px 0;
	border-radius: 9px;
	margin-top: 80px;
}

.signup-form h2 {
	color: #636363;
	margin: 0 0 15px;
	text-align: center;
}

.signup-form .lead {
	font-size: 14px;
	margin-bottom: 30px;
	text-align: center;
}

.signup-form form {
	border-radius: 1px;
	margin-bottom: 15px;
	background: #fff;
	border: 1px solid #f3f3f3;
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	padding: 30px;
}

.signup-form .form-group {
	margin-bottom: 20px;
}

.btn {
	
}

.btn:hover {
	
}

.signup-form label {
	font-weight: normal;
	font-size: 13px;
}

.signup-form .form-control {
	min-height: 38px;
	box-shadow: none !important;
	border-width: 0 0 1px 0;
}

.signup-form .input-group-addon {
	max-width: 42px;
	text-align: center;
	background: none;
	border-width: 0 0 1px 0;
	padding-left: 5px;
}

.signup-form .btn {
	font-size: 16px;
	font-weight: bold;
	background: linear-gradient(to bottom left, #EF8D9C 40%, #FFC39E 100%);
	border-color: light grey;
	border-radius: 20px;
	border: none;
	min-width: 140px;
	outline: none !important;
}

.signup-form .btn:hover, .signup-form .btn:focus {
	background: linear-gradient(to top right, #EF8D9C 40%, #FFC39E 100%);
}

.signup-form a {
	color: #19aa8d;
	text-decoration: none;
}

.signup-form a:hover {
	text-decoration: underline;
}

.signup-form .fa {
	font-size: 21px;
}

.signup-form .fa-paper-plane {
	font-size: 17px;
}

.signup-form .fa-check {
	color: #fff;
	left: 9px;
	top: 18px;
	font-size: 7px;
	position: absolute;
}
.error
{
color:red;}
</style>
<script>


function verify()
{
 if(document.frm.eventId.value=="" || document.frm.eventName.value=="" || document.frm.sportsName.value=="" || document.frm.date.value=="" || document.frm.time.value=="" || document.frm.venue.value=="")
 {
  alert('Please update the highlighted mandatory fields');
 }
 
 
}

function validateForm()
{
	
    if(document.frm.firstName.value=="")
    {
      
      document.frm.firstName.focus();
      return false;
    }
   
    return true;
}
</script>
</head>
<body>
<%@include file="header.html" %>
	<div class="signup-form">
		<form:form name="frm" action="eventRegister" method="post" modelAttribute="event" onsubmit="return validateForm()">
			<h2>Make Your Event</h2>
			
					<div class="form-group">
							<div class="input-group">
								
								<form:input path="eventId" class="form-control" name="eventId"
									placeholder="Event Id"/>
							</div>
						</div>

					<form:errors path="eventId" class="error"></form:errors>
				
			
					<div class="form-group">
							<div class="input-group">
								
								<form:input class="form-control" path="eventName"
									name="eventName"  placeholder="Event Name" />
							</div>
						</div>

					<form:errors path="eventName" class="error"></form:errors>
				
				
					<div class="form-group">
							<div class="input-group">
								
								<form:input class="form-control" path="sportsName"
									name="sportsName"  placeholder="Sports Name" />
							</div>
						</div>
					<form:errors path="sportsName" class="error"></form:errors>
				


				
					<td><div class="form-group">
							<div class="input-group">
								
								<form:input  type="date" class="form-control" name="Date" path="Date"
									 placeholder="Date" />
							</div>
						</div>

				<form:errors path="Date" class="error"></form:errors>
				
				
					<div class="form-group">
							<div class="input-group">
								
								<form:input  path="time" class="form-control" name="time"
									placeholder="Time"  />
							</div>
						</div>
					<form:errors path="time" class="error"></form:errors>
			
				
					<div class="form-group">
							<div class="input-group">
								
									<i class="fa fa-check"></i>
								</span>
								<form:input path="venue" class="form-control" name="venue"
									placeholder="Venue"  />
							</div>
						</div>

					<form:errors path="venue" class="error"></form:errors>
			
				
					<div class="form-group">
							<div class="input-group">
								
								<form:input class="form-control" name="noOfSlots"
									path="noOfSlots"  placeholder="No Of Slots" />
							</div>
						</div>

					<form:errors path="noOfSlots" class="error"></form:errors>
				
					<div class="form-group">
							<input type="submit" name="Register" value="Register" onclick="verify()"
								class="btn btn-primary btn-block btn-lg" />
						</div>
			
				
					</form:form>
</body>
</html>

