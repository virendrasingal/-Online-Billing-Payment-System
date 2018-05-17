<%@ page import="java.sql.*" %>
<html >
<head>
  <meta charset="UTF-8">
  <title>Responsive Table</title>
  
  
  
      <link rel="stylesheet" href="css/pk.css">

  
</head>

<body>
      <table>
      <thead>
        <tr>
          <th>COMPLAINT ID</th>
          <th>CITIZEN UID</th>
         <th>VIEW COMPLAINT</th>
        </tr>
      <thead>
      <tbody>
        <%
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/billsystem","root","rat");
			String query="select * from complaint";
			PreparedStatement ps=con.prepareStatement(query);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				String s1=rs.getString(1);
				String s2=rs.getString(2);
				String s3=rs.getString(3);
				String s4=rs.getString(4);
				String s5=rs.getString(5);
			out.println("<tr>");
         out.println(" <td>"+s1+"</td>");
        out.println(" <td>"+s2+"</td>");
         out.println("<td><a href='FullComplaint.jsp?cid="+s1+"'><b>View Complaint</a></td>");
		
        out.println("</tr>");
}	}
catch(Exception e)
{
e.printStackTrace();
}
		%>
		
      </tbody>
    <table/>
      
 <div><center>
<table>
 <tr>
   <td><a href="adminhome.jsp"> <img src="images/back.gif"  class="fix1" height="100" width="100"></a></td>
	
 </tr>
  
   </table>
</center></div>

  
  
</body>
</html>
