<%@ page import="java.sql.*" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>stars.css Demos</title>
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
<style>
@import url(http://fonts.googleapis.com/css?family=Roboto:500,100,300,700,400);

* {
  margin: 0;
  padding: 0;
  font-family: roboto;
}


.cont {
  width: 93%;
  max-width: 350px;
  text-align: center;
  margin: 4% auto;
  padding: 30px 0;
  background: pink;
  color: #EEE;
  border-radius: 5px;
  border: thin solid #444;
  overflow: hidden;
}

hr {
  margin: 20px;
  border: none;
  border-bottom: thin solid rgba(255,255,255,.1);
}

div.title { font-size: 2em; }

h1 span {
  font-weight: 300;
  color: #Fd4;
}

div.stars {
  width: 270px;
  display: inline-block;
}

input.star { display: none; }

label.star {
  float: right;
  padding: 10px;
  font-size: 36px;
  color: #444;
  transition: all .2s;
}

input.star:checked ~ label.star:before {
  content: '\f005';
  color: #FD4;
  transition: all .25s;
}

input.star-5:checked ~ label.star:before {
  color: #FE7;
  text-shadow: 0 0 20px #952;
}

input.star-1:checked ~ label.star:before { color: #F62; }

label.star:hover { transform: rotate(-15deg) scale(1.3); }

label.star:before {
  content: '\f006';
  font-family: FontAwesome;
}
</style>
<link href="http://www.cssscript.com/wp-includes/css/sticky.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>

<body style="background:#E5E8E8">
<center><h2 style="color:pink"><u>COMPLAINT FEEDBACK FORM</h2></u></center>
<div class="cont">
  <div class="stars">
  <%
  String s1=request.getParameter("cid");
  Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smpk","root","rat");
  String query="select * from complaint where cid=?";
  PreparedStatement ps=con.prepareStatement(query);
  ps.setString(1,s1);
 int i=0;
 ResultSet rs=ps.executeQuery();
 while(rs.next())
 {
	i=1;
 }
 String query1="select * from complaintofficer where cid=?";
 PreparedStatement ps1=con.prepareStatement(query1);
 ps1.setString(1,s1);
 ResultSet rs1=ps1.executeQuery();
 int j=0;
 while(rs1.next())
 {
 	j=1;
 }
if((i==0)&&(j==0))
{
	out.println("<script type='text/javascript'>");
	out.println("alert('Wrong Details!!Please log in again')");
	out.println("</script>");
	response.sendRedirect("SearchComplaint.jsp");
}
else
{
	
}
  out.println("<form action='FeedbackSubmit.jsp' onsubmit='YOUR DETAILS HAD SUBMITTED'>");
 
  %>
   
      <input class="star star-5" id="star-5-2" type="radio" value="5" name="star" required/>
      <label class="star star-5" for="star-5-2"></label>
      <input class="star star-4" id="star-4-2" type="radio" value="4" name="star"/>
      <label class="star star-4" for="star-4-2"></label>
      <input class="star star-3" id="star-3-2" type="radio" value="3" name="star"/>
      <label class="star star-3" for="star-3-2"></label>
      <input class="star star-2" id="star-2-2" type="radio" value="2" name="star"/>
      <label class="star star-2" for="star-2-2"></label>
      <input class="star star-1" id="star-1-2" type="radio" value="1" name="star"/>
      <label class="star star-1" for="star-1-2"></label>
      <% 
       out.println("COMPLAINT ID<input type='text' class='form-control' readonly='true' name='cid' value="+s1+">"); 
    		  %>
	   FeedBack<textarea class="form-control" rows="5" id="comment" name="feedback" placeholder="Enter Your FeedBack About Complaint Response" required></textarea>
	  <input type="submit" class="btn btn-success">
    </form>
    
  </div>
</div>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-46156385-1', 'cssscript.com');
  ga('send', 'pageview');

</script>
</body>
</html>
