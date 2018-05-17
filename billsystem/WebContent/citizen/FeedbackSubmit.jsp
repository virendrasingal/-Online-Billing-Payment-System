<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String s1=request.getParameter("cid");
String s2=request.getParameter("star");
String s3=request.getParameter("feedback");

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smpk","root","rat");
	String query="insert into complaintfeedback values(?,?,?)";
	PreparedStatement ps=con.prepareStatement(query);
	ps.setString(1,s1);
	ps.setString(2,s2);
	ps.setString(3,s3);
	int i=ps.executeUpdate();
	if(i!=0)
	{
		response.sendRedirect("../citizenhome.jsp");
	}
	
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>