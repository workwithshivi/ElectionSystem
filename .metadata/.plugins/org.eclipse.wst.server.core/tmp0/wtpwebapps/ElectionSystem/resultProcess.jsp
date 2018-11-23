<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

 <jsp:useBean id="dao" class="shivi.DataAccessObject.DbOperations"/>

<%@ page import="java.util.List" %>
<%@ page import="shivi.javaBeans.resultBean" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>result</title>

<style type="text/css">
#main
{
width: 100%;
height: 100%;
border: 2px solid white;
}
#homeHead
{
background-color: limegreen;
border-radius:0px 0px 20px 20px;
}
#blank1
{
width: 100%;
height: 5%;
}
#homeBody
{
background-color: limegreen;
border-top:2px solid;
width: 100%;
height: 600px;
border: 2px;
border-color:limegreen;
border-radius:20px 20px 20px 20px;
}
#homeBody img
{
padding-left: 35%;
padding-top: 3%;
}
#vote
{
border:2px;
border-color: limegreen;
padding-top:1%;
padding-left: 45%;
padding-bottom:1%;
background-color: limegreen;
border-radius:0px 0px 20px 20px;
}
#blank2
{
width: 100%;
height:30px;
}
</style>
</head>
<body >
<div id="main">
<div id="homeHead">
<jsp:include page="header.jsp"></jsp:include>
</div>
<div id="blank1"></div>
<div id="homeBody">
<% String a=request.getParameter("admin");
String p=request.getParameter("password");
if(a.equalsIgnoreCase("admin") && p.equalsIgnoreCase("admin")) 
{
	resultBean rb=dao.declearResult();
	%>
	<table border="2" bgcolor="yellow">
	<caption>ELECTION RESULT</caption>
	<tr><th>PARTY</th><th>VOTE</th></tr>
	<tr><td>BJP</td><td><%out.print(rb.getBJP());%></td></tr>
	<tr><td>INC</td><td><%out.print(rb.getINC());%></td></tr>
	<tr><td>SP</td><td><%out.print(rb.getSP());%></td></tr>
	<tr><td>BSP</td><td><%out.print(rb.getBSP());%></td></tr>
	<tr><td>RLD</td><td><%out.print(rb.getRLD());%></td></tr>
	</table>
	Winner: <%out.print(rb.getWinner());%> vote:<%out.print(rb.getWinnerVote());%>
	<%
	}
else
{
	out.print("invalid admin");
}
%>   
</div>
<div id="vote">                                                   
<a href="voterLogin.jsp"><button>GO FOR VOTE</button></a>
</div>
<div id="blank2"></div>
<div id="homeFoot">
<jsp:include page="footer.jsp"></jsp:include>
</div>
</div>
</body>
</html>

