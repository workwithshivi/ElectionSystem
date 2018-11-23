<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <jsp:useBean id="lbean" class="shivi.javaBeans.LoginBean"/>
    <jsp:setProperty property="*" name="lbean"/>
    <jsp:useBean id="dao" class="shivi.DataAccessObject.DbOperations"/>
    
    <jsp:useBean id="ldto" class="shivi.DataTransferObjects.LoginDto"/>
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
height: 5px;
}
#homeBody
{
background-color: limegreen;
border-top:2px solid;
width: 100%;
height: 600px;

border: 2px;
border-color:limegreen;
border-radius:20px 20px 0px 0px;

}
#homeBody a
{
padding-left: 45%;
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
<form action="voting.jsp">
<table align="center">
<caption>VOTER DETAILS</caption>

<%
ldto=dao.voterLogin(lbean); 
if(ldto==null){
	request.getRequestDispatcher("error.jsp").forward(request, response);
	}
else
{
session.setAttribute("aadhar", ldto.getAadhar());%>
	<tr><th>VOTER ID</th><td><%out.print(ldto.getVoterId()); %></td></tr>
	<tr><th>NAME</th><td><%	out.print(ldto.getVoterName()); %></td></tr>
	<tr><th>F NAME</th><td><%out.print(ldto.getFather()); %></td></tr>
	<tr><th>M NAME</th><td><%out.print(ldto.getMother()); %></td></tr>
	<tr><th>PHONE NO</th><td><%out.print(ldto.getPhone()); %></td></tr>
	<tr><th>AADHAR NO</th><td><%out.print(ldto.getAadhar());%></td></tr>
	<tr><th>D.O.B.</th><td><%out.print(ldto.getDob()); %></td></tr>
	<tr><th>ADDRESS</th><td><%out.print(ldto.getAddress()); %></td></tr>
	<tr><td><input type="submit" value="confirm"/></td><td><a href="voterLogin.jsp">NOTME</a></td></tr>
	<%}

%>
</table>
</form>
 </div>

<div id="blank2"></div>
<div id="homeFoot">
<jsp:include page="footer.jsp"></jsp:include>
</div>
</div>
</body>
</html>