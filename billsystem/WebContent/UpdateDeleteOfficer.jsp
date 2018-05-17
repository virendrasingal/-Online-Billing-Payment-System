<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:#22B9B9">
<div class="container">
  <h2>Officer/Admin Record Update/Delete</h2>
 
  <table class="table">
    <thead>
      <tr class="danger">
        <th>EMPLOYEE ID NO.</th>
        <th>EMPLOYEE NAME</th>
        <th>E-MAIL</th>
        <th>GENDER</th>
        <th>DEPARTMENT</th>
        <th>USERTYPE</th>
         <th>UPDATE</th><th>DELETE</th>
      </tr>
    </thead>
    <tbody>
        
      
      
     <%
     try
     {
    	 Class.forName("com.mysql.jdbc.Driver");
    	 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/billsystem","root","rat");
    	 String query="select * from officerdemo";
    	 PreparedStatement ps=con.prepareStatement(query);
    	 ResultSet rs=ps.executeQuery();
    	 while(rs.next())
    	 {
    		 String s1=rs.getString(1);
    		 String s2=rs.getString(2);
    		 String s3=rs.getString(3);
    		 String s4=rs.getString(5);
    		 String s5=rs.getString(6);
    		 String s6=rs.getString(7);
    		 out.println("<tr class='warning'>");
    		 out.println("<td>"+s1+"</td>");
    		 out.println("<td>"+s2+"</td>");
    		 out.println("<td>"+s3+"</td>");
    		 out.println("<td>"+s4+"</td>");
    		 out.println("<td>"+s5+"</td>");
    		 out.println("<td>"+s6+"</td>");
    		 out.println("<td><a href='InfoUpdate.jsp?eid="+s1+"'>UPDATE</a></td>");
    		 out.println("<td><a href='InfoDelete.jsp?eid="+s1+"'>DELETE</td>");
    	 }
     }
     catch(Exception e)
     {
    	 e.printStackTrace();
     }
     %>
    </tbody>
  </table>
</div>
<div><center>
<table>
 <tr>
   <td><a href="adminhome.jsp"> <img src="images/back.gif"  class="fix1" height="100" width="100"></a></td>
	
 </tr>
  
   </table>
</center></div>


</body>
</html>