<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>This is a user form</h1>
	<form:form action="process-form" commandNae="User" method="post" modelAttribute="userForm">
		<div class="sub_field">
		<label>First Name</label>
		<form:input type="text" name="firstName" path="firstName"/>
		<form:errors path="firstName"/>
		</div>
		<div class="sub_field">
		<label>Last Name</label>
		<form:input type="text" name="lastName"/>
		<form:errors path="lastName"/>
		</div>
		<div class="sub_field">
		<label>User Name</label>
		<form:input type="text" name="userName" path="userName"/>
		<form:errors path="userName"/>
		</div>
		<label for="male">Male</label>
		<input type="radio" name="gender" id="male" value="male">
		<label for="female">Female</label>
		<input type="radio" name="gender" id="female" value="female"><br>
		Phone Number<input type="tel" name="contactInfo.phoneNumber"><br>
		Email<input type="email" name="contactInfo.email"><br>
		LinkedIn URL<input type="url" name="contactInfo.linkedInUrl"><br>
		Social Security Number<input type="number" name="privateInfo.ssn"><br>
		Credit Card<input type="cc-number" name="privateInfo.ccn"><br>
		Date of Birth<input type="date" name="privateInfo.dob"><br>
		<input type="submit" name="submit" value="submit"><br>
	</form:form>
	<label>Date:</label>
	${date }

</body>
</html>