<jsp:useBean id="obj" class="p1.Registration">
<jsp:setProperty name="obj" property="*"/>
</jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<%
int i=obj.register();
if(i!=0)
{

response.sendRedirect("login.html");
}
else
{
out.println("<h1>Registration Not Done</h1>");
}%></center>
</body>
</html>