<%@ page import='java.sql.*' %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String uid=request.getParameter("uid");
String uname=request.getParameter("uname");
String fname=request.getParameter("fname");
String male=request.getParameter("male");
String dob=request.getParameter("date");
String age=request.getParameter("age");
String email=request.getParameter("email");
String mobile=request.getParameter("mobile");
String landline=request.getParameter("landline");
String area=request.getParameter("area");
String city=request.getParameter("city");
String address=request.getParameter("address");
String zip=request.getParameter("zip");
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/billsystem","root","rat");
				String query="update registration set name=?,fname=?,gender=?,dob=?,age=?,email=?,mobile=?,landline=?,area=?,city=?,address=?,zip=? where uid=?";
				PreparedStatement ps=con.prepareStatement(query);
				ps.setString(1,uname);
				ps.setString(2,fname);
				ps.setString(3,male);
				ps.setString(4,dob);
				ps.setString(5,age);
				ps.setString(6,email);
				ps.setString(7,mobile);
				ps.setString(8,landline);
				ps.setString(9,area);
				ps.setString(10,city);
				ps.setString(11,address);
				ps.setString(12,zip);
				ps.setString(13,uid);
				int i=ps.executeUpdate();
				if(i!=0)
				{
					response.sendRedirect("../citizenhome.jsp");
				}
				else
				{
					response.sendRedirect("UpdateProfile.jsp");
				}
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
%>
</body>
</html>