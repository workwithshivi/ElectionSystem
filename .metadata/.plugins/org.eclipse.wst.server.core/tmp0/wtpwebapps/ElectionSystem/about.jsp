<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>about</title>

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
<h3 align="center">Electoral system</h3>
<p>
An electoral system is a set of rules that determine how elections and referendums are conducted and how their results are determined. Political electoral systems are organized by governments, while non-political elections may take place in business, non-profit organisations and informal organisations.

Electoral systems consist of sets of rules that govern all aspects of the voting process: when elections occur, who is allowed to vote, who can stand as a candidate, how ballots are marked and cast, how the ballots are counted (electoral method), limits on campaign spending, and other factors that can affect the outcome. Political electoral systems are defined by constitutions and electoral laws, are typically conducted by election commissions, and can use multiple types of elections for different offices.

Some electoral systems elect a single winner to a unique position, such as prime minister, president or governor, while others elect multiple winners, such as members of parliament or boards of directors. There are a large number of variations in electoral systems, but the most common systems are first-past-the-post voting, the two-round (runoff) system, proportional representation and ranked or preferential voting. Some electoral systems, such as mixed systems, attempt to combine the benefits of non-proportional and proportional systems.

The study of formally defined electoral methods is called social choice theory or voting theory, and this study can take place within the field of political science, economics, or mathematics, and specifically within the subfields of game theory and mechanism design. Impossibility proofs such as Arrow's impossibility theorem demonstrates that when voters have three or more alternatives, it is not possible to design a ranked voting electoral system that reflects the preferences of individuals in a global preference of the community, present in countries with proportional representation and plurality voting.
</p>


</div>

<div id="blank2"></div>
<div id="homeFoot">
<jsp:include page="footer.jsp"></jsp:include>
</div>
</div>
</body>
</html>