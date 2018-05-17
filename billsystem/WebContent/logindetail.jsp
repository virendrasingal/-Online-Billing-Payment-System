<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>LOGIN DETAILS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Awesome Register Form template Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free web designs for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="css/style1.css" rel="stylesheet" type="text/css" media="all" />
<!-- //Custom Theme files -->
<!-- web font --> 
<link href="//fonts.googleapis.com/css?family=Poiret+One&amp;subset=cyrillic,latin-ext" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Josefin+Sans:100,100i,300,300i,400,400i,600,600i,700,700i&amp;subset=latin-ext" rel="stylesheet">
<!-- //web font -->
</head>
<body>
<%
String uid1=(String)session.getAttribute("uid");
out.println("<div data-vide-bg='video/awesome'>");
out.println("<div class='main-w3layouts center-container'>");
		out.println("<h1>Login Detail Form</h1>");
				out.println("<div class='main-agileinfo'>");
						out.println("<div class='agileits-top'> ");
								out.println("<form name='myform' method='post' action='MainRegister.jsp' onsubmit='return validateform()''>  ");
										out.println("<i class='fa fa-user-o' aria-hidden='true'></i>");
												out.println("<input class='text' type='text' readonly='true' name='username' value="+uid1+">");
%>
	
	
					<input class="text email" type="email" name="email" placeholder="Alternate Email" required="">
					<input class="text" type="password" minlength="10" maxlength="20" name="password1" placeholder="Password" required="">
					<input class="text w3lpass" type="password" name="password2" minlength="10" maxlength="20" placeholder="Confirm Password" required="">
					<div class="wthree-text">  
						<label class="anim">
							<input type="checkbox" class="checkbox" required="">
							<span>I Agree To The Terms & Conditions</span> 
						</label>  
						<div class="clear"> </div>
					</div>   
					<input type="submit" value="SAVE & LOGIN" onsubmit="return validateform()">
				</form>
				<script>  
function validateform(){  
var name=document.myform.password1.value;  
var password=document.myform.password2.value;  
if (name==password){  
  alert("All Details Are Correct!!");  
  return true;  
}

else
{  
  alert("Details Are Not Correct!!");  
  return false;  
  }  
}  
</script>
			</div>	 
		</div>	
		<!-- copyright -->
		<div class="w3copyright-agile">
			<h2>&copy JAIPUR MINICIPAL CORPORATION DESIGNED BY.PARTH KAHNDELWAL & SHUBENDU MAL<a href="http://w3layouts.com/" target="_blank">W3layouts</a></h2>
		</div>
		<!-- //copyright -->	
	</div>	
	</div>	
	<!-- //main --> 
	<!-- js -->
	
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script src="js/jquery.vide.min.js"></script>
<!-- //js -->

</body>
</html>