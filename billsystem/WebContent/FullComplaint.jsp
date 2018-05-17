<%@ page import="java.sql.*" %>
<%@ page import="java.util.Random"%>
<!DOCTYPE html>
<html>
<head>
<title>Citizen Complaint Form</title>
<!-- custom-theme -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Recruitment Enquiry Form web template Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //custom-theme -->
<link href="css/style5.css" rel="stylesheet" type="text/css" media="all" />
<link href="//fonts.googleapis.com/css?family=News+Cycle:400,700" rel="stylesheet">
</head>
<body>
		<div class="center-container">
			<div class="w3layouts-head">
				<h1 class="agile-head text-center">Citizen Complaint Form</h1>
			</div>	
			<div class='content-w3ls'>
			<div class='form-w3layouts'>					
			<form action='ViewComplaint.jsp' method='post'">
			<%
			String cid=request.getParameter("cid");
			 String s1="";
			 String s2="";
			 String s3="";
			 String s4="";
			 String s5="";
			 
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/billsystem","root","rat");
				String query="select * from complaint where cid="+cid;
				PreparedStatement ps=con.prepareStatement(query);
			
				ResultSet rs=ps.executeQuery();
				
				while(rs.next())
				{
					  s1=rs.getString(1);
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
			
					out.println("<div class='form-control'> ");
					out.println("<label class='header'>COMPLAINT ID<span>:</span></label>");
					
					for(int i=0;i<8;i++)
					{
					 cid+=(int)(Math.random()*9)+1;
					}
							out.println("<input type='text' id='name' name='cid' readonly='true' required='' value="+s1+">");
									out.println("</div>");
							out.println("<div class='form-control'> ");
									out.println("<label class='header'>UID OF CITIZEN<span>:</span></label>");
											out.println("<input type='text' id='name' name='name' readonly='true' required='' value="+s2+">");
													out.println("</div>");
				
															out.println("<div class='form-control'>");	
																	out.println("<label class='header'>EMAIL ADDRESS OF CITIZEN <span>:</span></label>");
																			out.println("<input type='email' id='email' name='email'  readonly='true' required='' value="+s3+">");
																					out.println("</div>");
				
																							out.println("<div class='form-control'>	");
																									out.println("<label class='header'>MOBILE NUMBER OF CITIZEN <span>:</span></label>");	
																											out.println("<input type='tel' id='usrtel' name='phone'  readonly='true' required='' value="+s4+">");
																													out.println("</div>	");
																													out.println("<div class='form-control'>");
																															out.println("<label class='enquiry'>COMPLAINT DISCRIPTION<span>:</span></label>");
																																	out.println("<textarea id='message' name='complaintd' readonly>"+s5+"</textarea>");
																																			out.println("<div class='clear'></div>");
																																					out.println("</div>");
			%>
		
						

						
						<div class="form-control w3ls-end">
							<input type="submit" class="register" value="BACK">
							<div class="clear"></div>
						</div>	
					</form>
				</div>
			</div>
			<div class="agileits-w3layouts-copyright text-center">
				<p class="w3ls-copyright">&copy PARTH KHANDELWAL & SHUBENDU MAL</a></p>
			</div>	
		</div>	
</body>
</html>

