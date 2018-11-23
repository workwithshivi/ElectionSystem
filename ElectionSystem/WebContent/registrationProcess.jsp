<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="shivi.javaBeans.RegistrationBean"  %>
    <jsp:useBean id="rbean" class="shivi.javaBeans.RegistrationBean"/>
    <jsp:setProperty property="*" name="rbean"/>
    
    <%@ page import="shivi.BusinessObject.RegistrationBO" %>
    <jsp:useBean id="rbo" class="shivi.BusinessObject.RegistrationBO"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>register</title>
</head>
<body>
<%
String res=rbo.getRegistrationData(rbean);
if(res=="done")
	
{
	out.print("Registered Successfully...");
	request.getRequestDispatcher("success.jsp").include(request, response);
}
else if(res=="already")
{
	out.print(" Voter already exist...");
	request.getRequestDispatcher("error.jsp").include(request, response);
}
else
{
	out.print(" Some error occured...");
	request.getRequestDispatcher("error.jsp").include(request, response);
}
%>

</body>
</html>