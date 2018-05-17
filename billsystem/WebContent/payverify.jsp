<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%
String cno=request.getParameter("cno");
String cvv=request.getParameter("cvv");
String dob=request.getParameter("dob");
String c="null";

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/billsystem","root","rat");
String query="insert into cdetail values(?,?,?,?)";
PreparedStatement ps1=con.prepareStatement(query);
ps1.setString(1,cno);
ps1.setString(2,cvv);
ps1.setString(3,dob);
ps1.setString(4,c);
int i=ps1.executeUpdate();

session.setAttribute("cno",cno);

if(i==1)
{
	out.println("<b><h2 style='color:red'><marquee>Details Submitted Now Fill Following Details</h2></marquee></b>");
	%>
	<%@ include file="payverifydone.jsp" %>  
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