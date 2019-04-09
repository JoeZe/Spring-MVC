
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart</title>
</head>


<body>
	<center><h1>NetBazaar</h1></center>
	<center><h3>Products in Cart</h3></center><br>
	
	<a href="homePage.jsp">Home</a><br>
	<form method="post" action="successServlet.jsp">
	<%	if(request.getParameter("addCart")!=null){
			if(request.getParameter("samsung")!=null){
				
				session.setAttribute("samsung", "<input type='checkbox' name='samsung' value='Samsung Price 25000'>Samsung Price 25000 <br>");
				out.print(session.getAttribute("samsung"));
			}
			if(request.getParameter("Nokia")!=null){
				session.setAttribute("Nokia", "<input type='checkbox' name='Nokia' value='Nokia Price 15000'>Nokia Price 15000 <br>");
				out.print(session.getAttribute("Nokia"));
			}
			if(request.getParameter("LG")!=null){
				session.setAttribute("LG", "<input type='checkbox' name='LG' value='LG Price 5000'>LG Price 5000 <br>");
				out.print(session.getAttribute("LG"));
			}
			if(request.getParameter("Apple")!=null){
				session.setAttribute("Apple", request.getParameter("Apple"));
				out.print(session.getAttribute("Apple"));
			}
			if(request.getParameter("Dell")!=null){
				session.setAttribute("Dell", request.getParameter("Dell"));
				out.print(session.getAttribute("Dell"));
			}
			if(request.getParameter("Lenovo")!=null){
				session.setAttribute("Lenovo", request.getParameter("Lenovo"));
				out.print(session.getAttribute("Lenovo"));
			}
			if(request.getParameter("Rolex")!=null){
				session.setAttribute("Rolex", request.getParameter("Rolex"));
				out.print(session.getAttribute("Rolex"));
			}
			if(request.getParameter("Chopard")!=null){
				session.setAttribute("Chopard", request.getParameter("Chopard"));
				out.print(session.getAttribute("Chopard"));
			}
			if(request.getParameter("Blancpain")!=null){
				session.setAttribute("Blancpain", request.getParameter("Blancpain"));
				out.print(session.getAttribute("Blancpain"));
			}
		}else{

	        Enumeration e = (Enumeration) (session.getAttributeNames());
	
	        while ( e.hasMoreElements())
	        {
	            Object tring;
	            if((tring = e.nextElement())!=null)
	            {
	                out.println(session.getValue((String) tring));
	                out.println("<br/>");
	            }
	
	        }
		}


%>		
		<input type="submit" name="removeCart"  value="Remove from Cart">		
		<input type="submit" name="purchase" value="Purchase">

	</form>
	
</body>
</html>