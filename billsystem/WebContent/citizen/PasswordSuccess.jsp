<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String s1=request.getParameter("password");
String s2=(String)session.getAttribute("uid");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/billsystem","root","rat");
	String query="UPDATE logindetail SET password=?  WHERE uid=?";
	PreparedStatement ps=con.prepareStatement(query);
	ps.setString(1,s1);
	ps.setString(2,s2);
	int i=ps.executeUpdate();
	if(i!=0)
	{
		response.sendRedirect("../citizenhome.jsp");
	}
	else
	{
		response.sendRedirect("ChangePasswordForm.jsp");
	}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>