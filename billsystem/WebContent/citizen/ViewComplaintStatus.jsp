<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>VIEW COMPLAINT STATUS</title>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

  
      <link rel="stylesheet" href="../css/sps.css">

  
</head>

<body>


  <section>
  <!--for demo wrap-->
  <h1>VIEW COMPLAINT STATUS</h1>
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>COMPLAINT ID</th>
          <th>CITIZEN ID</th>
          <th>VIEW STATUS</th>
          <th>DETAILS</th>
          
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
       <%
       String s1=(String)session.getAttribute("uid");
       try{
       	Class.forName("com.mysql.jdbc.Driver");
       	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smpk","root","rat");	
       	String query="select * from complaint where uid="+s1;
       	PreparedStatement ps=con.prepareStatement(query);
       	ResultSet rs=ps.executeQuery();
       	int i=0;
       	String s2="";
       	String s3="";
       	while(rs.next())
       	{
       		i=1;
       		 s2=rs.getString(1);
       		 s3=rs.getString(2);
       		out.println("<tr>");
       		out.println("<td>"+s2+"</td>");
       		out.println("<td>"+s3+"</td>");
       		out.println("<td>COMPLAINT UNSOLVED</td>");
       		out.println("<td><b>VIEW DETAIL</b></td>");
       		out.println("</tr>");
       	}
       	String quey="select * from complaintofficer where uid="+s1;
       	PreparedStatement ps1=con.prepareStatement(quey);
       	ResultSet rs1=ps1.executeQuery();
       	int j=0;
       	while(rs1.next())
       	{
       		j=1;
       		String s6=rs1.getString("cid");
       		String s7=rs1.getString("uid");
       		out.println("<tr>");
       		out.println("<td>"+s6+"</td>");
       		out.println("<td>"+s7+"</td>");
       		out.println("<td>COMPLAINT SOLVED</td>");
       		out.println("<td><a href='FullComplaint.jsp?cid="+s6+"'>VIEW FULL DISCRIPTION</a></td>");
       		out.println("</tr>");
       	}
       }
       catch(Exception e){
       	e.printStackTrace();
       }
       %>
       
      </tbody>
    </table>
  </div>
</section>



  
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="../js/sps.js"></script>

</body>
</html>
