<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>contact us</title>

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
#homeBody img
{
width:300px;
height:399px;
padding-left: 40%;
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
<img alt="" src="images/shivi.jpg" >
<br> 
<table align="center"><tr><th>SHIVAM PUNIA</th></tr>
<tr><th>CSE-B 3rd YEAR(2018-19)</th></tr>
<tr><th>ROLL NO:- 1609710099</th></tr>
<tr><th>CONTACT NO: 7737685767</th></tr></table>  
</div>

<div id="blank2"></div>
<div id="homeFoot">
<jsp:include page="footer.jsp"></jsp:include>
</div>
</div>
</body>
</html>