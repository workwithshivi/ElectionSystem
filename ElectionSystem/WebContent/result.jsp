<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>admin login</title>

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
<form action="resultProcess.jsp">
<table align="center">
<caption>ADMIN LOGIN</caption>
<tr><th>ADMIN NAME</th><td><input type="text" name="admin"  placeholder="name" required></td></tr>
<tr><th>PASSWORD</th><td><input type="password" name="password"  placeholder="password" maxlength="12" required></td></tr>
<tr><td><input type="submit" value="LOGIN" align="center"></td></tr>
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