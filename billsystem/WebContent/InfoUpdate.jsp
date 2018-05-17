<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
  <link rel="stylesheet" href="css/style3.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form name="myform" action="UpdationDone.jsp" method="post" onsubmit="alert('All Details Are Updated')">
<%
try
{
	String s1=request.getParameter("eid");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/billsystem","root","rat");
	String query="select * from officerdemo where eid="+s1;
	PreparedStatement ps=con.prepareStatement(query);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
		String s2=rs.getString(2);
		String s3=rs.getString(3);
		String s5=rs.getString(5);
		String s6=rs.getString(6);
		String s7=rs.getString(7);
		
		

		out.println("<fieldset>");
        out.println("<legend><span class='number'>1</span>Your basic info</legend>");
        out.println("<label for='name'>Name:</label>");
        out.println("<input type='text' id='name' value='"+s2+"' name='name' required='' minlength='8'>");
        
		  out.println("<label for='eid'>Eid:</label>");
        out.println("<input type='text' id='name' name='eid' minlength='6' value='"+s1+"' readonly='true'>");
        
        out.println("<label for='mail'>Email:</label>");
        out.println("<input type='text' id='name' name='mail' minlength='6' value='"+s3+"' required>");
        
        
        out.println("<label>Male:</label>");
        out.println("<input type='text' id='name' name='male' minlength='4' value='"+s5+"' required>");
      out.println("</fieldset>");
      
      out.println("<fieldset>");
        out.println("<legend><span class='number'>2</span>Department Information</legend>");
        out.println("<label for='utype'>Type Of Account Holder:</label>");
        		out.println("<input type='text' id='name' name='utype' minlength='8' value='"+s6+"' required>");
		out.println("<label for='dept'>Department Of Employer:</label>");
		out.println("<input type='text' id='name' name='dtype' minlength='6' value='"+s7+"' required>");

      out.println("</fieldset>");
      out.println("<button type='submit'>UPDATE</button>");
      
    out.println("</form>");
		
	}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
		  
         
</body>
</html>