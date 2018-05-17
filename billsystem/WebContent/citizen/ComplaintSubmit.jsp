<%@ page import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body> 
<%
try
{
	String s1=request.getParameter("name");
	String s2=request.getParameter("email");
	String s3=request.getParameter("phone");
	String cid=request.getParameter("cid");
	String s4=request.getParameter("complaint");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/billsystem","root","rat");	
	String query="insert into complaint values(?,?,?,?,?)";
	PreparedStatement ps=con.prepareStatement(query);
	ps.setString(1,cid);
	ps.setString(2,s1);
	ps.setString(3,s2);
	ps.setString(4,s3);
	ps.setString(5,s4);
	int i=ps.executeUpdate();
	if(i!=0)
	{
		response.sendRedirect("../citizenhome.jsp");
		
	}
	else
	{
		response.sendRedirect("Recomplaint.jsp");
	}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>T