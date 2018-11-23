<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:useBean id="dao" class="shivi.DataAccessObject.DbOperations"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

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
height: 10px;
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
<%
String aadhar=session.getAttribute("aadhar").toString();
	String vote=request.getParameter("vote");
	String res=dao.saveVote(aadhar, vote);
	if(res.equalsIgnoreCase("success"))
	{
		%>
		<table border="1" bgcolor="yellow" align="center">
		<caption>VOTE RESULT</caption>
		<tr><td>AADHAR</td><td><%out.print(aadhar); %></td></tr>
		<tr><td>VOTE</td><td><%out.print(vote); %></td></tr>
		<tr><td><input type="button" value="print" onclick="window.print()"/></td><td><input type="button" value="Another vote" onclick="voterLogin.jsp"/></td></tr>
		</table>
		
		
		
		<%
	}
	if(res.equalsIgnoreCase("error"))
	{
		
		request.getRequestDispatcher("error.jsp").forward(request, response);
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









