<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%
String uid=request.getParameter("uid");
String uname=request.getParameter("name");
String b_amt=request.getParameter("b_amt");
String gst=request.getParameter("gst");
String t_amt=request.getParameter("t_amt");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/billsystem","root","rat");
String query="insert into bill1 values(?,?,?,?,?)";
PreparedStatement ps1=con.prepareStatement(query);
ps1.setString(1,uid);
ps1.setString(2,uname);
ps1.setString(3,b_amt);
ps1.setString(4,gst);
ps1.setString(5,t_amt);
int i=ps1.executeUpdate();

session.setAttribute("uid",uid);

if(i==1)
{
	out.println("<b><h2 style='color:green'><marquee>New Newspaper Bill Genterated for Customer "+uname+"</h2></marquee></b>");
%>	<div><center>
<table>
<tr>
<td><a href="adminhome.jsp"> <img src="images/back.gif"  class="fix1" height="100" width="100"></a></td>

</tr>

</table>
</center></div>

	<% 
}
else
{
	out.println("<b><h2 style='color:red'><marquee>New Bill NOT Genterated</h2></marquee></b>");
}
%>
</body>
</html>