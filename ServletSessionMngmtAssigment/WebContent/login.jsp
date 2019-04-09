<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%
	String message=null;
	if(request.getParameter("login")!=null){
	
		String userName=request.getParameter("username");
		String password=request.getParameter("password");
		if("tom".equals(userName)&&"jerry".equalsIgnoreCase(password)){
			response.sendRedirect("homePage.jsp");

		}else{
			message="Password and Username does not match";
			response.sendRedirect("index.html");
			
		}
		
		
	}
%>
<body>

</body>
</html>