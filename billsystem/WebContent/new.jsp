<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
<style>
.body{
	position: absolute;
	top: -20px;
	left: -20px;
	right: -40px;
	bottom: -40px;
	width: auto;
	height: auto;
	background-image: url(http://ginva.com/wp-content/uploads/2012/07/city-skyline-wallpapers-008.jpg);
	background-size: cover;
	-webkit-filter: blur(5px);
	z-index: 0;
	
}
.fix{
    position:fixed;
    bottom:0px;
    left:20%;
    }
.fix1{
    position:fixed;
    bottom:0px;
    left:90%;
    }
    #jk{
   
    left:70%;
    }</style>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <!-- For Google -->
    <link rel="author" href="https://plus.google.com/+Scoopthemes">
    <link rel="publisher" href="https://plus.google.com/+Scoopthemes">
    <!-- for Twitter -->          
    <meta name="twitter:card" content="photo">
    <meta name="twitter:site" content="">
    <meta name="twitter:title" content="">
    <meta name="twitter:description" content="">
    <meta name="twitter:image" content="">
    <meta name="twitter:url" content="">
    <!-- for Facebook OpenGraph -->          
    <meta property="og:title" content="" />
    <meta property="og:type" content="" />
    <meta property="og:image" content="" />
    <meta property="og:url" content="" />
    <meta property="og:description" content="" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!-- Canonical -->
    <link rel="canonical" href="">
<script src="https://www.w3schools.com/lib/w3.js"></script>
    <title>Sidebar Layout - Scoop Themes Template</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <!-- font Awesome CSS -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <!-- Main Styles CSS -->
    <link href="css/main.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body style="background:#ccccff">

    <div id="wrapper">

        <aside id="sideBar">
            <ul class="main-nav">
                <!-- Your Logo Or Site Name -->
                <li class="nav-brand">
                    <a href="#"><img src="img/skit.jpg" width="65" length="100" alt=""></a>
                </li>
                <!-- Search -->
                <li class="main-search">
                    <form action="#">
                        <input type="text" class="form-control search-input" placeholder="Search here...">
                        <i class="fa fa-search"></i>
                    </form>
                </li>
                <li>
                    <a href="RegisterAdOf.jsp">* Appoint An Officer/Admin</a>
                </li>
                <li>
                    <a href="ViewComplaint.jsp">* View Complaints</a>
                </li>
                <li>
                    <a href="bii.html">* Generate Bill Telephone</a>
                </li>
 
                <li>
                    <a href="bii1.html">* Generate Bill Newspaper</a>
                </li> 
                <li>
                    <a href="UpdateDeleteOfficer.jsp">* Update/Delete Any Officer/Admin</a>
                </li>
                
                <li>
                    <a href="admin.html">* Logout</a>
                </li>
            </ul>
        </aside>
		
        <!-- Main Section -->
        <section class="main-section">
            <!-- Add Your Content Inside -->
            <div class="content">
                <!-- Remove This Before You Start -->
               
                <img src="images/User-icon.png" align="right">
                <div class="col-xs-8">
                <table class="table">
                <thead>
                
                <%
try
{
				String s1=(String)session.getAttribute("eid");
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smpk","root","rat");
				String query="select * from officerdemo where eid="+s1;
				PreparedStatement ps=con.prepareStatement(query);
				ResultSet rs=ps.executeQuery();
				String name="";
				String male="";
				String dtype="";
				while(rs.next())
				{
					name=rs.getString("name");
					male=rs.getString("mail");
					dtype=rs.getString("dtype");
				}
				out.println("<tr class='danger'><th>OFFICER IDENTITY NUMBER IS:</th><th>"+s1+"</th></tr>");
out.println("<tr class='success'><th>USERNAME IS:</th><th>"+name+"</th></tr>");
out.println("<tr class='info'><th>EMAIL IS:</th><th>"+male+"</th></tr>");
out.println("<tr class='warning'><th>DEPARTMENT IS:</th><th>"+dtype+"</th></tr>");
}
catch(Exception e)
{
	e.printStackTrace();}
				%>
				</thead>
				</div>
				</table>
				<center><img id="jk" width="600" height="330" class="nature" src="images/Demo1.jpg" width="100%">
<img id="jk" width="600" height="330" class="nature" src="images/gst.jpg" width="100%">
<img id="jk" width="600" height="330" class="nature" src="images/jaipur.jpg" width="100%"></center>
				<a href="citizen.html"> <img src="images/back.gif"  class="fix1" height="100" width="100"></a>
				<a href="index.jsp" class="fix" height="10" width="10"><img src="images/home.gif"></a>
            </div>
            <!-- /.content -->
        </section>
        <!-- /.main-section -->


    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>

    <!-- Bootstrap JavaScript -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

    <!-- Custom JavaScript -->
    <script src="js/custom.js"></script>

    <!-- Call functions on document ready -->
    <script>
    
    w3.slideshow(".nature");
    
        $(document).ready(function() {
            // Call Menu Toggler
            appMaster.menuToggler();
            // Example Call anotherFunction
            appMaster.anotherFunction();
        });
    </script>

</body>

</html>
