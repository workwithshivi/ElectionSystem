<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>REGISTRATION</title>

<style type="text/css">
#registrationBody
{
width:100%;
height:600px;
background-color: grey;
border-radius:20px 20px 20px 20px;
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
<form action="registrationProcess.jsp">
<table align="center" border="2" bgcolor="yellow">
<caption>VOTER REGISTRATION</caption>
<tr><th>NAME</th><td><input type="text" name="voterName" required></td></tr>
<tr><th>F NAME</th><td><input type="text" name="father" required></td></tr>
<tr><th>M NAME</th><td><input type="text" name="mother" required></td></tr>
<tr><th>PHONE NO</th><td><input type="phone" name="phone" maxlength="10" required></td></tr>
<tr><th>AADHAR NO</th><td><input type="phone" name="aadhar" maxlength="12" required></td></tr>
<tr><th>D.O.B.</th><td><input type="date" name="dob" required></td></tr>
<tr><th>ADDRESS</th><td><input type="text" name="address" required></td></tr>
<tr><td colspan="2"><input type="submit" value="REGISTER" align="center"></td></tr>
</table>
</form>
</div>

<div id="registrationFoot">
<jsp:include page="footer.jsp"></jsp:include>
</div>

</body>
</html>