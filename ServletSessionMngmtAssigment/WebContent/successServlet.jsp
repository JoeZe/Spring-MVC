<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

	<% if(request.getParameter("removeCart")!=null){
			if(request.getParameter("samsung")!=null){
				
				
				out.print(session.getAttribute("samsung"));
			}

	        Enumeration e = (Enumeration) (session.getAttributeNames());

	        while ( e.hasMoreElements())
	        {
	            Object tring;
	            if((tring = e.nextElement())!=null)
	            {
	            	out.print(session.getValue((String) tring).toString());
	            	if(session.getValue((String) tring).toString().contains("samsung")){
	            		request.removeAttribute("samsung");
	            		session.removeAttribute("samsung");
	            	}
	    			if(session.getValue((String) tring).toString().contains("Nokia")){
	            		request.removeAttribute("Nokia");
	            		session.removeAttribute("Nokia");
	    			}
	    			if(session.getValue((String) tring).toString().contains("LG")){
	            		request.removeAttribute("LG");
	            		session.removeAttribute("LG");
	    			}
	    			if(session.getValue((String) tring).toString().contains("Apple")){
	            		request.removeAttribute("Apple");
	            		session.removeAttribute("Apple");
	    			}
	    			if(session.getValue((String) tring).toString().contains("Dell")){
	            		request.removeAttribute("Dell");
	            		session.removeAttribute("Dell");
	    			}
	    			if(session.getValue((String) tring).toString().contains("Lenovo")){
	            		request.removeAttribute("Lenovo");
	            		session.removeAttribute("Lenovo");
	    			}
	    			if(session.getValue((String) tring).toString().contains("Rolex")){
	            		request.removeAttribute("Rolex");
	            		session.removeAttribute("Rolex");
	    			}
	    			if(session.getValue((String) tring).toString().contains("Chopard")){
	            		request.removeAttribute("Chopard");
	            		session.removeAttribute("Chopard");
	    			}
	    			if(session.getValue((String) tring).toString().contains("Blancpain")){
	            		request.removeAttribute("Blancpain");
	            		session.removeAttribute("Blancpain");
	    			}
	    	
	            }

	        }
	        response.sendRedirect("cartServlet.jsp");
	}%>
<%String ss=request.getParameter("samsung");

String n=request.getParameter("Nokia");

String lg=request.getParameter("LG");%>
<body>
	<a href="homePage.jsp">Home</a><br>
	<p style="color:green">You have successfully purchased the Following items</p><br>
	<ul>
	<% if(request.getParameter("purchase")!=null){
		if(ss!=null){
			out.print("<li>"+ss+"</li>");

		}
		if(n!=null){
			out.print("<li>"+n+"</li>");
	
			}
		if(lg!=null){
			out.print("<li>"+lg+"</li>");
			}
	}%>
	</ul>
	<%session.invalidate(); %>
</body>
</html>