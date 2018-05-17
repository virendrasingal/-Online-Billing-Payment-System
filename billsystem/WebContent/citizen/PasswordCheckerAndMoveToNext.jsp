<%@ page import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String s1=(String)session.getAttribute("uid");
String s2=request.getParameter("password");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smpk","root","rat");
	String query="select * from logindetail where uid="+s1;
	PreparedStatement ps=con.prepareStatement(query);
	ResultSet rs=ps.executeQuery();
	String password="";
	while(rs.next())
	{
		password=rs.getString(3);
	}
	if(password.equals(s2))
	{
		response.sendRedirect("ChangePasswordForm.jsp");
		
	}
	else
	{
		response.sendRedirect("CheckPassword.jsp");
		
	}
}
catch(Exception e)
{
	e.printStackTrace();
}
		
%>
</body>
</html>