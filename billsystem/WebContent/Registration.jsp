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
String fname=request.getParameter("fname");
String male=request.getParameter("male");
String dob=request.getParameter("dob");
String age=request.getParameter("age");
String email=request.getParameter("email");
String mobile=request.getParameter("mobile");
String landline=request.getParameter("landline");
String area=request.getParameter("area");
String city=request.getParameter("city");
String address=request.getParameter("address");
String zip=request.getParameter("zip");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/billsystem","root","rat");
String query="insert into registration values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
PreparedStatement ps1=con.prepareStatement(query);
ps1.setString(1,uid);
ps1.setString(2,uname);
ps1.setString(3,fname);
ps1.setString(4,male);
ps1.setString(5,dob);
ps1.setString(6,age);
ps1.setString(7,email);
ps1.setString(8,mobile);
ps1.setString(9,landline);
ps1.setString(10,area);
ps1.setString(11,city);
ps1.setString(12,address);
ps1.setString(13,zip);
int i=ps1.executeUpdate();

session.setAttribute("uid",uid);

if(i==1)
{
	out.println("<b><h2 style='color:red'><marquee>Details Submitted Now Fill Following Details</h2></marquee></b>");
	%>
	<%@ include file="logindetail.jsp" %>  
	<% 
}
else
{
	out.println("<script type='text/javascript'>");
	out.println("alert('Please Check Your Details')");
	out.println("</script>");
	
}
%>
</body>
</html>