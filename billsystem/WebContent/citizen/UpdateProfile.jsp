<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Event Registration Form Widget Flat Responsive Widget Template :: w3layouts</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Event Registration Form Widget Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<!-- //custom-theme -->
<link href="../css/avm.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script type="text/javascript" src="../js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- font-awesome-icons -->
<!-- //font-awesome-icons -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
</head>
<body>
<!-- banner -->
	<div class="center-container">
		<div class="main">
			<h1 class="w3layouts_head">Citizen Information Updation Form</h1>
				<div class="w3layouts_main_grid">
					<form action="UpdationDone.jsp" onsubmit="alert('Your All Details Are Correct!!!!Success')" method="post" class="w3_form_post">
						<div class="w3_agileits_main_grid w3l_main_grid">
							<span class="agileits_grid">
							<%
								String uid=(String)session.getAttribute("uid");
String s2="";
String s3="";
String s4="";
String s5="";
String s6="";
String s7="";
String s8="";
String s9="";
String s10="";
String s11="";
String s12="";
String s13="";	
								try
								{
								Class.forName("com.mysql.jdbc.Driver");
								Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/billsystem","root","rat");
								String query="select * from registration where uid="+uid;
								PreparedStatement ps=con.prepareStatement(query);
								ResultSet rs=ps.executeQuery();
								
								while(rs.next())
								{
									 s2=rs.getString(2);
									 s3=rs.getString(3);
									 s4=rs.getString(4);
									 s5=rs.getString(5);
									 s6=rs.getString(6);
									 s7=rs.getString(7);
									 s8=rs.getString(8);
									 s9=rs.getString(9);
									 s10=rs.getString(10);
									 s11=rs.getString(11);
									 s12=rs.getString(12);
									 s13=rs.getString(13);
								}		
								}
									catch(Exception e)
{
	
e.printStackTrace();
}
								out.println("<label>Your UID </label>");
								out.println("<input type='text' name='uid' readonly='true' value='"+uid+"'>");
							out.println("</span>");
						out.println("</div>");
						out.println("<div class='w3_agileits_main_grid w3l_main_grid'>");
							out.println("<span class='agileits_grid'>");
								out.println("<label>Your Name </label>");
							out.println("<input type='text' required='true'  name='uname' value="+s2+">");
							out.println("</span>");
						out.println("</div>");
						out.println("<div class='w3_agileits_main_grid w3l_main_grid'>");
						out.println("<span class='agileits_grid'>");
								out.println("<label>Father's Name </label>");
								out.println("<input type='text' required='true' name='fname' value="+s3+">");
								out.println("</span>");
						out.println("</div>");
						out.println("<div class='content-w3ls'>");
						out.println("<div class='form-w3ls'>");
							out.println("<div class='content-wthree2'>");
								out.println("<div class='grid-w3layouts1'>");
									out.println("<div class='w3-agile1'>");
										out.println("<label>Select Your Male&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>");
									out.println("<input type='text' required='true'  name='male' value='"+s4+"'>");
									out.println("</div>");
								out.println("</div>");
						
						out.println("<div class='agileits_w3layouts_main_grid w3ls_main_grid'>");
							out.println("<span class='agileinfo_grid'>");
								out.println("<label>Date Of Birth </label>");
								out.println("<div class='agileits_w3layouts_main_gridl'>");
									out.println("<input type='text' required='true'  name='date' value='"+s5+"'");out.println("<br/>");
								out.println("</div>");
								
									out.println("<div class='clear'> </div>");
							out.println("</span>");
						out.println("</div>");
					out.println("<div class='w3_agileits_main_grid w3l_main_grid'>");
							out.println("<span class='agileits_grid'>");
								out.println("<label>Enter Your Age </label>");
								out.println("<input type='text'  required='true'  name='age' minlength='1' placeholder='Please Enter Your Age' value='"+s6+"'>");
								out.println("</span>");
						out.println("</div>");
								out.println("<div class='clear'></div>");
							out.println("</div>");
						out.println("</div>");
					out.println("<div class='w3_agileits_main_grid w3l_main_grid'>");
							out.println("<span class='agileits_grid'>");
								out.println("<label>Enter Your Email </label>");
								out.println("<input type='email' minlength='7' name='email' placeholder='Please Enter Your Email Address' required='' value='"+s7+"'>");
								out.println("</span>");
						out.println("</div>");
								out.println("<div class='clear'></div>");
							out.println("</div>");
							out.println("<div class='w3_agileits_main_grid w3l_main_grid'>");
							out.println("<span class='agileits_grid'>");
								out.println("<label>Enter Your Mobile No. </label>");
								out.println("<input type='text' name='mobile' minlength='10' placeholder='Eg.8239562757' value='"+s8+"' required=''>");
								out.println("</span>");
						out.println("</div>");
								out.println("<div class='clear'></div>");
								
								out.println("<div class='w3_agileits_main_grid w3l_main_grid'>");
							out.println("<span class='agileits_grid'>");
								out.println("<label>Enter Your Landline </label>");
								out.println("<input type='text' name='landline' minlength='9' placeholder='Eg.0141-021212' value='"+s9+"' required=''>");
								out.println("</span>");
						out.println("</div>");
								out.println("<div class='clear'></div>");
									out.println("<div class='w3_agileits_main_grid w3l_main_grid'>");
							out.println("<span class='agileits_grid'>");
								out.println("<label>Enter Your Area </label>");
								out.println("<input type='text' name='area' minlength='4' placeholder='Name Of Area' value='"+s10+"' required=''>");
								out.println("</span>");
						out.println("</div>");
								out.println("<div class='clear'></div>");
								out.println("<div class='w3_agileits_main_grid w3l_main_grid'>");
							out.println("<span class='agileits_grid'>");
								out.println("<label>Enter Your City </label>");
								out.println("<input type='text' name='city' minlength='4' placeholder='Name Of City' value='"+s11+"' required=''>");
								out.println("</span>");
						out.println("</div>");
								out.println("<div class='clear'></div>");
									
									out.println("<div class='w3_agileits_main_grid w3l_main_grid'>");
							out.println("<span class='agileits_grid'>");
								out.println("<label>Enter Your Address </label>");
								out.println("<input type='text' name='address' minlength='10' placeholder='Eg.Sample Address,City,State' value='"+s12+"' required=''>");
								out.println("</span>");
						out.println("</div>");
								out.println("<div class='clear'></div>");
									out.println("<div class='w3_agileits_main_grid w3l_main_grid'>");
							out.println("<span class='agileits_grid'>");
								out.println("<label>Enter Your Zip </label>");
								out.println("<input type='text'  name='zip' placeholder='Only Numeric Value Allowed' minlength='6' maxlength='6' value='"+s13+"' required=''>");
								out.println("</span>");
						out.println("</div>");
								out.println("<div class='clear'></div>");
								out.println("<div class='w3_main_grid'>");
						out.println("<div class='w3_main_grid_right'>");
							out.println("<input type='submit' value='UPDATE INFO.'>");
						out.println("</div>");
					out.println("</div>");
				out.println("</form>");
	%>
								
			</div>
							</div>
							
							
						</div>
								
						</div>
						
					</div>
					
					
		<!-- Calendar -->
			<link rel="stylesheet" href="css/jquery-ui.css" />
				<script src="js/jquery-ui.js"></script>
					<script>
						$(function() {
							$( "#datepicker" ).datepicker();
						});
					</script>
		<!-- //Calendar -->
			<div class="w3layouts_copy_right">
				
			</div>
		</div>
	</div>
	
	<div><center>
<table>
 <tr>
   <td><a href="../citizenhome.jsp"> <img src="../images/back.gif"  class="fix1" height="100" width="100"></a></td>
	
 </tr>
  
   </table>
</center></div>
	
<!-- //footer -->
</body>
</html>