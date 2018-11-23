<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VOTING</title>

<style type="text/css">
#registrationBody
{
border: 2px solid;
background-color: grey;
}
#registrationBody table
{
padding-top: 10px;
}
</style>
</head>
<body>

<div id="registrationHead">
<jsp:include page="header.jsp"></jsp:include>
</div>

<div id="registrationBody">
<form action="voteProcess.jsp">
<table align="center" border="2" bgcolor="yellow">
<caption>VOTING BY (AADHAR:<%
Object ss=session.getAttribute("aadhar");
out.print(ss);%></caption>
<tr><th><img alt="BJP" src="images/bjp.jpg"></th><td>BJP<input type="radio" name="vote" value="BJP"></td></tr>
<tr><th><img alt="INC" src="images/INC1.png"></th><td>INC<input type="radio" name="vote" value="INC"></td></tr>
<tr><th><img alt="SP" src="images/SP.png"></th><td>SP<input type="radio" name="vote" value="SP"></td></tr>
<tr><th><img alt="BSP" src="images/BSP.png"></th><td>BSP<input type="radio" name="vote" value="BSP"></td></tr>
<tr><th><img alt="RLD" src="images/RLD.png"></th><td>RLD<input type="radio" name="vote" value="RLD"></td></tr>

<tr><td colspan="2"><input type="submit" value="VOTE" align="center"></td></tr>
</table>
</form>
</div>

<div id="registrationFoot">
<jsp:include page="footer.jsp"></jsp:include>
</div>

</body>
</html>