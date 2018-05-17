<%@ page import="java.sql.*" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String s1=request.getParameter("eid");
	String s2=request.getParameter("name");
	String s3=request.getParameter("mail");
	String s4=request.getParameter("male");
	String s5=request.getParameter("utype");
	String s6=request.getParameter("dtype");
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/billsystem","root","rat");	
		String query="UPDATE officerdemo SET name=?,mail=?,male=?,utype=?,dtype=? WHERE eid=?";
		PreparedStatement ps=con.prepareStatement(query);
		ps.setString(1,s2);
		ps.setString(2,s3);
		ps.setString(3,s4);
		ps.setString(4,s5);
		ps.setString(5,s6);
		ps.setString(6,s1);
		
		int i=ps.executeUpdate();
		if(i!=0)
		{
			response.sendRedirect("UpdateDeleteOfficer.jsp");
		}
		else
		{
			response.sendRedirect("InfoUpdate.jsp");
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
%>
</body>
</html>