<jsp:useBean id="obj" class="p1.GeneralLogin">
<jsp:setProperty name="obj" property="*"/>
</jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int i=obj.adminlogin();
if(i!=0)
{
	String s1=request.getParameter("user");
	String s2=request.getParameter("password");
	session.setAttribute("eid",s1);
	response.sendRedirect("adminhome.jsp");
}
else
{
	response.sendRedirect("admin.html");
}
%>
</body>
</html>