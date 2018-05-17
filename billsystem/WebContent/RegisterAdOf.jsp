<!DOCTYPE html>
<html >
<head>

  <meta charset="UTF-8">
  <title>Sign Up</title>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
  <link rel="stylesheet" href="css/style3.css">
</head>

<body>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Sign Up Form</title>
        <link rel="stylesheet" href="css/normalize.css">
        <link href='https://fonts.googleapis.com/css?family=Nunito:400,300' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="css/main.css">
    </head>
    <body>

      <form name="myform" action="officeradmin.jsp" method="post" onsubmit="alert('All Details Are Submitted')">
      
        <h1>Officer/Admin Sign Up</h1>
        <%
        String s1="";
        for(int i=0;i<8;i++)
					{
					 s1+=(int)(Math.random()*9)+1;
					}
        out.println("<fieldset>");
        out.println("<legend><span class='number'>1</span>Your basic info</legend>");
        out.println("<label for='name'>Name:</label>");
        out.println("<input type='text' id='name' name='name' required='' minlength='8'>");
        
		  out.println("<label for='eid'>Eid:</label>");
        out.println("<input type='text' id='name' name='eid' minlength='7' value='"+s1+"' readonly='true'>");
        %>
        
		  
          <label for="mail">Email:</label>
          <input type="email" id="mail" name="mail" required="">
          
          <label for="password">Password:</label>
          <input type="password" id="password" name="password" required="" minlength="5">
          
          <label>Male:</label>
          <input type="radio" id="under_13" value="Male" name="male" required="required"><label for="under_13" class="light">Male</label><br>
          <input type="radio" id="over_13" value="Female" name="male" required="required"><label for="over_13" class="light">Female</label>
        </fieldset>
        
        <fieldset>
          <legend><span class="number">2</span>Department Information</legend>
          <label for="utype">Type Of Account Holder:</label><select name="utype" required="">
  <option value="">Select</option>
  <option value="Admin">Admin</option>
  <option value="officer">Officer</option>
</select>
		<label for="dept">Department Of Employer:</label><select name="dept" required="">
  <option value="">Select</option>
  <option value="Operational">Operational</option>
  <option value="Working">Working</option>
  <option value="Administration">Administration</option>
</select>
<label for="exp1">Job Experience:</label><select name="exp1" required="">
  <option value="">Select</option>
  <option value="Yes">Yes</option>
  <option value="No">No</option>
  </select>
        </fieldset>
        <button type="submit">Sign Up</button>
        
      </form>
      <div><center>
<table>
 <tr>
   <td><a href="adminhome.jsp"> <img src="images/back.gif"  class="fix1" height="100" width="100"></a></td>
	
 </tr>
  
   </table>
</center></div>

      
    </body>
</html>
  
  
</body>
</html>
