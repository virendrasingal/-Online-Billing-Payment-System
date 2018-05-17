<!DOCTYPE HTML>
<html>
<head>
<title>PASSWORD UPDATE</title>
<link href="../css/hk.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="Easy Subscribe Form Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<!--google fonts-->
<link href='//fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
</head>
<body>
  <div class="newsletter">
  	 <div class="newsletter-main">
  	 	<div class="stamp">
  	 	    <img src="../images/stamp.png" alt="">
  	 	</div>
  	 	<h1>UPDATE PASSWORD FORM</h1>
  	 	<h2>ENTER YOUR NEW PASSWORD</h2>
  	 	<div class="design">
  	 	   <img src="../images/design.png">
  	 	</div>
  	 	
  	 	
  	 	<form name="myForm" action="PasswordSuccess.jsp" onsubmit="return validateForm()">
  	 		<input type="text" name="password" minlength="10" required="true" value="Enter Your New Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter Your Current Password';}">
  	 		<input type="text" name="password1" minlength="10" required="true" value="Please Confirm Your Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter Your Current Password';}">
  	 		<input type="submit" value="Submit And Next">
  	 	</form>
  	 	<div class="design">
  	 	  <img src="../images/design.png">
  	 	</div>
  	 	<div class="tlg">
  	 		<div class="tlg-img">
  	 				 			
  	 		</div>
  	 		<div class="tlg-text">
  	 			
  	 			
  	 		</div>
  	 	  <div class="clear"> </div>
  	 	</div>
  	 </div>
  </div>
  <div class="copy-right">
		  <a href="../index2.jsp" target="_blank">JNN</a>
</div>
<script>
function validateForm()
{
	var x=document.forms["myForm"]["password"].value;
	var y=document.forms["myForm"]["password1"].value;
	if(x==y)
		{
			alert("Every Thing Is Right");
			return true;
		}
	else
		{
		alert("Please Reconfirm your password")
		return false;
		}
	}</script>
	
	<div><center>
<table>
 <tr>
   <td><a href="../citizenhome.jsp"> <img src="../images/back.gif"  class="fix1" height="100" width="100"></a></td>
	
 </tr>
  
   </table>
</center></div>
	
</body>
</html>