<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="com.springwork.model.*" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
<div class="user_table">
	<div>
		<label>First Name</label>
		${mUser.firstName}<br>
		<label>Last Name</label>
		${mUser.lastName}<br>
		<label>User Name</label>
		${mUser.userName}<br>
		<label>Gender</label>
		${mUser.gender}<br>
		<label>SSN</label>
		${mUser.privateInfo.ssn}<br>
		<label>CCN</label>
		${mUser.privateInfo.ccn}<br>
		<label>Date of Birth</label>
		${mUser.privateInfo.dob}<br>
		<label>Email</label>
		${mUser.contactInfo.email}<br>
		<label>Phone#</label>
		${mUser.contactInfo.phoneNumber}<br>
		<label>URL</label>
		${mUser.contactInfo.linkedInUrl}<br>

	</div>

</div>
<label>Date:</label>
${date}
</body>
</html>