<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="lavender">
<%

String uid=(String)session.getAttribute("uid");
String s2="";
String s3="";
String s4="";
String s5="";



try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/billsystem","root","rat");
String query="select * from bill where uid="+uid;
PreparedStatement ps=con.prepareStatement(query);
ResultSet rs=ps.executeQuery();

while(rs.next())
{
	 s2=rs.getString(2);
	 s3=rs.getString(3);
	 s4=rs.getString(4);
	 s5=rs.getString(5);
	 
}		
}
	catch(Exception e)
{

e.printStackTrace();
}

if(s5==null)
{
	out.println("<center><h2>No bill available for payment</h2></center>");
}

else
{
out.println("<center><br><br><br><br><br><br><br><br><form action=citizen/billpayment.jsp>");
out.println("<label>Your UID </label>");
out.println("<input type='text' name='uid' readonly='true' value='"+uid+"'>");
out.println("<br><br>");
out.println("<label>Your Name </label>");
out.println("<input type='text' name='uname' readonly='true' value='"+s2+"'>");
out.println("<br><br>");
out.println("<label>Your Bill Amount </label>");
out.println("<input type='text' name='billamount' readonly='true' value='"+s3+"'>");
out.println("<br><br>");
out.println("<label>GST </label>");
out.println("<input type='text' name='gst' readonly='true' value='"+s4+"'>");
out.println("<br><br>");
out.println("<label>Total amount </label>");
out.println("<input type='text' name='total amount' readonly='true' value='"+s5+"'>");
out.println("<br><br><br><input type=submit value=Proceed Payment>");
out.println("</form></center>");
}
%>

<div><center>
<table>
 <tr>
   <td><a href="citizenhome.jsp"> <img src="images/back.gif"  class="fix1" height="100" width="100"></a></td>
	
 </tr>
  
   </table>
</center></div>


</body>
</html>