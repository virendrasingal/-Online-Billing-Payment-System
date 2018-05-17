<%@ page import="java.sql.*"%>
<jsp:useBean id="obj" class="p1.Registration2">
<jsp:setProperty name="obj" property="*"/>
</jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int i=obj.citizenlogin();
if(i!=0)
{
	String uid=(String)session.getAttribute("uid");
	
	
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/billsystem","root","rat");
		String query="update bill1 set totalamount=? where uid=?";
		PreparedStatement ps=con.prepareStatement(query);
		ps.setString(1,null);
		ps.setString(2,uid);
		
	
		 i=ps.executeUpdate();
		if(i!=0)
		{
	
	response.sendRedirect("success.html");

		}
		
		else
		{
			out.println("Payment Failure");
		}
		
	 }
	
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
}		
	
else
{
	response.sendRedirect("fail.html");
}
%>
</body>
</html>