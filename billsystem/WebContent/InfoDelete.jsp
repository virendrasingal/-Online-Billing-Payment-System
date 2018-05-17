<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	try
{
		String eid=request.getParameter("eid");
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/billsystem","root","rat");
		String query="delete from officerdemo where eid="+eid;
		PreparedStatement ps=con.prepareStatement(query);
		int i=ps.executeUpdate();
		if(i!=0)
		{
			response.sendRedirect("UpdateDeleteOfficer.jsp");
		}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>